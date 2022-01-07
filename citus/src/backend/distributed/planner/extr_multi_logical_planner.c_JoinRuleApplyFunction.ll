; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_planner.c_JoinRuleApplyFunction.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_planner.c_JoinRuleApplyFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JoinRuleApplyFunction.ruleApplyFunctionInitialized = internal global i32 0, align 4
@ApplyReferenceJoin = common dso_local global i32 0, align 4
@RuleApplyFunctionArray = common dso_local global i32** null, align 8
@REFERENCE_JOIN = common dso_local global i64 0, align 8
@ApplyLocalJoin = common dso_local global i32 0, align 4
@LOCAL_PARTITION_JOIN = common dso_local global i64 0, align 8
@ApplySingleHashPartitionJoin = common dso_local global i32 0, align 4
@SINGLE_HASH_PARTITION_JOIN = common dso_local global i64 0, align 8
@ApplySingleRangePartitionJoin = common dso_local global i32 0, align 4
@SINGLE_RANGE_PARTITION_JOIN = common dso_local global i64 0, align 8
@ApplyDualPartitionJoin = common dso_local global i32 0, align 4
@DUAL_PARTITION_JOIN = common dso_local global i64 0, align 8
@ApplyCartesianProduct = common dso_local global i32 0, align 4
@CARTESIAN_PRODUCT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64)* @JoinRuleApplyFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @JoinRuleApplyFunction(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  store i32* null, i32** %3, align 8
  %4 = load i32, i32* @JoinRuleApplyFunction.ruleApplyFunctionInitialized, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = load i32**, i32*** @RuleApplyFunctionArray, align 8
  %8 = load i64, i64* @REFERENCE_JOIN, align 8
  %9 = getelementptr inbounds i32*, i32** %7, i64 %8
  store i32* @ApplyReferenceJoin, i32** %9, align 8
  %10 = load i32**, i32*** @RuleApplyFunctionArray, align 8
  %11 = load i64, i64* @LOCAL_PARTITION_JOIN, align 8
  %12 = getelementptr inbounds i32*, i32** %10, i64 %11
  store i32* @ApplyLocalJoin, i32** %12, align 8
  %13 = load i32**, i32*** @RuleApplyFunctionArray, align 8
  %14 = load i64, i64* @SINGLE_HASH_PARTITION_JOIN, align 8
  %15 = getelementptr inbounds i32*, i32** %13, i64 %14
  store i32* @ApplySingleHashPartitionJoin, i32** %15, align 8
  %16 = load i32**, i32*** @RuleApplyFunctionArray, align 8
  %17 = load i64, i64* @SINGLE_RANGE_PARTITION_JOIN, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  store i32* @ApplySingleRangePartitionJoin, i32** %18, align 8
  %19 = load i32**, i32*** @RuleApplyFunctionArray, align 8
  %20 = load i64, i64* @DUAL_PARTITION_JOIN, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  store i32* @ApplyDualPartitionJoin, i32** %21, align 8
  %22 = load i32**, i32*** @RuleApplyFunctionArray, align 8
  %23 = load i64, i64* @CARTESIAN_PRODUCT, align 8
  %24 = getelementptr inbounds i32*, i32** %22, i64 %23
  store i32* @ApplyCartesianProduct, i32** %24, align 8
  store i32 1, i32* @JoinRuleApplyFunction.ruleApplyFunctionInitialized, align 4
  br label %25

25:                                               ; preds = %6, %1
  %26 = load i32**, i32*** @RuleApplyFunctionArray, align 8
  %27 = load i64, i64* %2, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load i32*, i32** %3, align 8
  ret i32* %34
}

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
