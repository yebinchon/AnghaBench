; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_join_order.c_JoinRuleName.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_join_order.c_JoinRuleName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JoinRuleName.ruleNamesInitialized = internal global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"reference join\00", align 1
@RuleNameArray = common dso_local global i8** null, align 8
@REFERENCE_JOIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"local partition join\00", align 1
@LOCAL_PARTITION_JOIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"single hash partition join\00", align 1
@SINGLE_HASH_PARTITION_JOIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"single range partition join\00", align 1
@SINGLE_RANGE_PARTITION_JOIN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"dual partition join\00", align 1
@DUAL_PARTITION_JOIN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"cartesian product\00", align 1
@CARTESIAN_PRODUCT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @JoinRuleName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @JoinRuleName(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  store i8* null, i8** %3, align 8
  %4 = load i32, i32* @JoinRuleName.ruleNamesInitialized, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %1
  %7 = call i8* @strdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = load i8**, i8*** @RuleNameArray, align 8
  %9 = load i64, i64* @REFERENCE_JOIN, align 8
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9
  store i8* %7, i8** %10, align 8
  %11 = call i8* @strdup(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i8**, i8*** @RuleNameArray, align 8
  %13 = load i64, i64* @LOCAL_PARTITION_JOIN, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  store i8* %11, i8** %14, align 8
  %15 = call i8* @strdup(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i8**, i8*** @RuleNameArray, align 8
  %17 = load i64, i64* @SINGLE_HASH_PARTITION_JOIN, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  store i8* %15, i8** %18, align 8
  %19 = call i8* @strdup(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %20 = load i8**, i8*** @RuleNameArray, align 8
  %21 = load i64, i64* @SINGLE_RANGE_PARTITION_JOIN, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  store i8* %19, i8** %22, align 8
  %23 = call i8* @strdup(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %24 = load i8**, i8*** @RuleNameArray, align 8
  %25 = load i64, i64* @DUAL_PARTITION_JOIN, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  store i8* %23, i8** %26, align 8
  %27 = call i8* @strdup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i8**, i8*** @RuleNameArray, align 8
  %29 = load i64, i64* @CARTESIAN_PRODUCT, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  store i8* %27, i8** %30, align 8
  store i32 1, i32* @JoinRuleName.ruleNamesInitialized, align 4
  br label %31

31:                                               ; preds = %6, %1
  %32 = load i8**, i8*** @RuleNameArray, align 8
  %33 = load i64, i64* %2, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %3, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = icmp ne i8* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
