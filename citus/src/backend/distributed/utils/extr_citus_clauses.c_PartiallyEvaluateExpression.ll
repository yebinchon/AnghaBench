; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_clauses.c_PartiallyEvaluateExpression.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_clauses.c_PartiallyEvaluateExpression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@Const = common dso_local global i32 0, align 4
@PARAM_SUBLINK = common dso_local global i32 0, align 4
@IsVarNode = common dso_local global i32 0, align 4
@QTW_DONT_COPY_QUERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PartiallyEvaluateExpression(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @Const, align 4
  %12 = call i64 @IsA(i32* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %2
  %15 = load i32*, i32** %4, align 8
  store i32* %15, i32** %3, align 8
  br label %62

16:                                               ; preds = %9
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @nodeTag(i32* %17)
  switch i32 %18, label %57 [
    i32 132, label %19
    i32 135, label %30
    i32 133, label %30
    i32 136, label %30
    i32 134, label %30
    i32 137, label %30
    i32 139, label %30
    i32 128, label %30
    i32 129, label %30
    i32 130, label %30
    i32 138, label %30
    i32 131, label %51
  ]

19:                                               ; preds = %16
  %20 = load i32*, i32** %4, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %6, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PARAM_SUBLINK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32*, i32** %4, align 8
  store i32* %28, i32** %3, align 8
  br label %62

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %29
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @IsVarNode, align 4
  %33 = call i32 @FindNodeCheck(i32* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @expression_tree_mutator(i32* %36, i32* (i32*, i32*)* @PartiallyEvaluateExpression, i32* %37)
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %3, align 8
  br label %62

40:                                               ; preds = %30
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @exprType(i32* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @exprTypmod(i32* %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @exprCollation(i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i64 @citus_evaluate_expr(i32* %41, i32 %43, i32 %45, i32 %47, i32* %48)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %3, align 8
  br label %62

51:                                               ; preds = %16
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @QTW_DONT_COPY_QUERY, align 4
  %55 = call i64 @query_tree_mutator(i32* %52, i32* (i32*, i32*)* @PartiallyEvaluateExpression, i32* %53, i32 %54)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %3, align 8
  br label %62

57:                                               ; preds = %16
  %58 = load i32*, i32** %4, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i64 @expression_tree_mutator(i32* %58, i32* (i32*, i32*)* @PartiallyEvaluateExpression, i32* %59)
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %3, align 8
  br label %62

62:                                               ; preds = %57, %51, %40, %35, %27, %14
  %63 = load i32*, i32** %3, align 8
  ret i32* %63
}

declare dso_local i64 @IsA(i32*, i32) #1

declare dso_local i32 @nodeTag(i32*) #1

declare dso_local i32 @FindNodeCheck(i32*, i32) #1

declare dso_local i64 @expression_tree_mutator(i32*, i32* (i32*, i32*)*, i32*) #1

declare dso_local i64 @citus_evaluate_expr(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @exprType(i32*) #1

declare dso_local i32 @exprTypmod(i32*) #1

declare dso_local i32 @exprCollation(i32*) #1

declare dso_local i64 @query_tree_mutator(i32*, i32* (i32*, i32*)*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
