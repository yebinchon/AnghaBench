//===--- VarNameObfuscatorCheck.cpp - clang-tidy -------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "VarNameObfuscatorCheck.h"
#include "clang/AST/ASTContext.h"
#include "clang/ASTMatchers/ASTMatchFinder.h"
#include "outputfile.h"

#include <iostream>
#include <fstream>
//#include "clang/AST/Decl.h"

using namespace clang::ast_matchers;

#define VAR_MASK "VAR_"
static int count = 0;
static std::map<clang::SourceLocation, int> mask_map;

std::ofstream outputfile;

namespace clang {
namespace tidy {
namespace readability {

void VarNameObfuscatorCheck::registerMatchers(MatchFinder *Finder) {
  // FIXME: Add matchers.
  auto variable = varDecl();

  Finder->addMatcher(variable.bind("decl"), this);

  Finder->addMatcher(declRefExpr().bind("ref"), this);
}

void VarNameObfuscatorCheck::check(const MatchFinder::MatchResult &Result) {
  // FIXME: Add callback implementation.
  if(const auto *MatchedDecl = Result.Nodes.getNodeAs<VarDecl>("decl")) {
    std::string var_name = MatchedDecl->getName();
    if(var_name.size() == 0) return;

    auto removalStartLocation = MatchedDecl->getLocation();
    auto removalEndLocation = removalStartLocation.getLocWithOffset(MatchedDecl->getName().size()-1);
    auto removalRange = SourceRange(removalStartLocation, removalEndLocation);

    std::string mask;

    if(mask_map.find(removalStartLocation) != mask_map.end()) {
      mask = VAR_MASK+std::to_string(mask_map[removalStartLocation]);
    }
    else {
      mask_map.insert(std::pair<clang::SourceLocation, int>(removalStartLocation, count));
      mask = VAR_MASK+std::to_string(count++);
      if(!outputfile.is_open())
        outputfile.open("nametomask.csv");
      outputfile << var_name << "," << mask << "\n";
    }
    diag(MatchedDecl->getLocation(), "variable %0 is unmasked")
        << MatchedDecl;
    diag(removalStartLocation, "Mask variable", DiagnosticIDs::Note)
        << FixItHint::CreateInsertion(removalStartLocation, mask) << FixItHint::CreateRemoval(removalRange);
  }
  else if(const auto *MatchedExpr = Result.Nodes.getNodeAs<DeclRefExpr>("ref")) {
    if(!isa<VarDecl>(MatchedExpr->getDecl())) { return; }
    auto decl_expr = MatchedExpr->getDecl();
    auto var_name = decl_expr->getName();
    auto declLocation = decl_expr->getLocation();
    auto removalStartLocation = MatchedExpr->getExprLoc();
    auto removalEndLocation = removalStartLocation.getLocWithOffset(var_name.size()-1);
    auto removalRange = SourceRange(removalStartLocation, removalEndLocation);
    std::string mask = VAR_MASK+std::to_string(mask_map[declLocation]);

    diag(MatchedExpr->getLocation(), "Mask variable")
      << FixItHint::CreateInsertion(MatchedExpr->getExprLoc(), mask) << FixItHint::CreateRemoval(removalRange);
  }
}

} // namespace readability
} // namespace tidy
} // namespace clang
//isa<VarDecl>(declaration)
