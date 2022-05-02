//===--- FuncNameObfuscatorCheck.cpp - clang-tidy -------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "FuncNameObfuscatorCheck.h"
#include "clang/AST/ASTContext.h"
#include "clang/ASTMatchers/ASTMatchFinder.h"
#include "outputfile.h"

#include <iostream>
#include <fstream>

using namespace clang::ast_matchers;

#define FUNC_MASK "FUNC_"
static int count = 0;
static std::map<std::string, int> mask_map;

namespace clang {
namespace tidy {
namespace readability {

void FuncNameObfuscatorCheck::registerMatchers(MatchFinder *Finder) {
  // FIXME: Add matchers.
  auto function = functionDecl();

  Finder->addMatcher(function.bind("decl"), this);

  Finder->addMatcher(callExpr(callee(function)).bind("call"), this);

  Finder->addMatcher(declRefExpr().bind("ref"), this);
}

void FuncNameObfuscatorCheck::check(const MatchFinder::MatchResult &Result) {
  // FIXME: Add callback implementation.
  if(const auto *MatchedDecl = Result.Nodes.getNodeAs<FunctionDecl>("decl")) {
//  if (MatchedDecl->getName().startswith("FUNC0"))
//    return;
    std::string func_name = MatchedDecl->getName();
    std::string mask;
    if(mask_map.find(func_name) != mask_map.end()) {
      mask = FUNC_MASK+std::to_string(mask_map[func_name]);
    }
    else {
      mask_map.insert(std::pair<std::string, int>(func_name, count));
      mask = FUNC_MASK+std::to_string(count++);
      if(!outputfile.is_open())
        outputfile.open("nametomask.csv");
      outputfile << func_name << "," << mask << "\n";
    }
    diag(MatchedDecl->getLocation(), "function %0 is unmasked")
        << MatchedDecl;
  
    auto removalStartLocation = MatchedDecl->getLocation();
    auto removalEndLocation = removalStartLocation.getLocWithOffset(MatchedDecl->getName().size()-1);
    auto removalRange = SourceRange(removalStartLocation, removalEndLocation);
    diag(removalStartLocation, "Mask function", DiagnosticIDs::Note)
        << FixItHint::CreateInsertion(removalStartLocation, mask) << FixItHint::CreateRemoval(removalRange);
  }
  else if(const auto *MatchedExpr = Result.Nodes.getNodeAs<CallExpr>("call")) {
    auto func_name = MatchedExpr->getDirectCallee()->getName();
    auto removalStartLocation = MatchedExpr->getExprLoc();
    auto removalEndLocation = removalStartLocation.getLocWithOffset(MatchedExpr->getDirectCallee()->getName().size()-1);
    auto removalRange = SourceRange(removalStartLocation, removalEndLocation);
    std::string mask = FUNC_MASK+std::to_string(mask_map[func_name]);

    diag(MatchedExpr->getExprLoc(), "Mask function")
      << FixItHint::CreateInsertion(MatchedExpr->getExprLoc(), mask) << FixItHint::CreateRemoval(removalRange);
  }
  else if(const auto *MatchedExpr = Result.Nodes.getNodeAs<DeclRefExpr>("ref")) {
    if(!isa<FunctionDecl>(MatchedExpr->getDecl())) { return; }
    auto func_name = MatchedExpr->getDecl()->getName();
    
    auto removalStartLocation = MatchedExpr->getExprLoc();
    auto removalEndLocation = removalStartLocation.getLocWithOffset(func_name.size()-1);
    auto removalRange = SourceRange(removalStartLocation, removalEndLocation);
    std::string mask = FUNC_MASK+std::to_string(mask_map[func_name]);
    diag(MatchedExpr->getExprLoc(), "Mask function")
      << FixItHint::CreateInsertion(MatchedExpr->getExprLoc(), mask) << FixItHint::CreateRemoval(removalRange);
  }
}

} // namespace readability
} // namespace tidy
} // namespace clang
