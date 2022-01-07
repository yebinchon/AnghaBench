; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_get_new_route_rule_id.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_get_new_route_rule_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@necp_get_new_route_rule_id.necp_last_route_rule_id = internal global i64 0, align 8
@necp_get_new_route_rule_id.necp_last_aggregate_route_rule_id = internal global i64 0, align 8
@necp_kernel_policy_lock = common dso_local global i32 0, align 4
@LCK_RW_ASSERT_EXCLUSIVE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NECP_FIRST_VALID_ROUTE_RULE_ID = common dso_local global i64 0, align 8
@NECP_FIRST_VALID_AGGREGATE_ROUTE_RULE_ID = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to find a free route rule id.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@necp_route_rules = common dso_local global i32 0, align 4
@necp_route_rule_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to find a free aggregate route rule id.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Allocate route rule ID failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @necp_get_new_route_rule_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @necp_get_new_route_rule_id(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @LCK_RW_ASSERT_EXCLUSIVE, align 4
  %11 = call i32 @LCK_RW_ASSERT(i32* @necp_kernel_policy_lock, i32 %10)
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %34, %9
  %14 = load i64, i64* @necp_get_new_route_rule_id.necp_last_route_rule_id, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* @necp_get_new_route_rule_id.necp_last_route_rule_id, align 8
  %16 = load i64, i64* @necp_get_new_route_rule_id.necp_last_route_rule_id, align 8
  %17 = load i64, i64* @NECP_FIRST_VALID_ROUTE_RULE_ID, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load i64, i64* @necp_get_new_route_rule_id.necp_last_route_rule_id, align 8
  %21 = load i64, i64* @NECP_FIRST_VALID_AGGREGATE_ROUTE_RULE_ID, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19, %13
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @LOG_ERR, align 4
  %28 = call i32 @NECPLOG0(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %73

29:                                               ; preds = %23
  %30 = load i64, i64* @NECP_FIRST_VALID_ROUTE_RULE_ID, align 8
  store i64 %30, i64* @necp_get_new_route_rule_id.necp_last_route_rule_id, align 8
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %19
  %33 = load i64, i64* @necp_get_new_route_rule_id.necp_last_route_rule_id, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %32
  %35 = load i64, i64* %4, align 8
  %36 = call i32* @necp_lookup_route_rule_locked(i32* @necp_route_rules, i64 %35)
  %37 = icmp ne i32* %36, null
  br i1 %37, label %13, label %38

38:                                               ; preds = %34
  br label %65

39:                                               ; preds = %1
  %40 = load i32, i32* @LCK_RW_ASSERT_EXCLUSIVE, align 4
  %41 = call i32 @LCK_RW_ASSERT(i32* @necp_route_rule_lock, i32 %40)
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %60, %39
  %44 = load i64, i64* @necp_get_new_route_rule_id.necp_last_aggregate_route_rule_id, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* @necp_get_new_route_rule_id.necp_last_aggregate_route_rule_id, align 8
  %46 = load i64, i64* @necp_get_new_route_rule_id.necp_last_aggregate_route_rule_id, align 8
  %47 = load i64, i64* @NECP_FIRST_VALID_AGGREGATE_ROUTE_RULE_ID, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @LOG_ERR, align 4
  %54 = call i32 @NECPLOG0(i32 %53, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %73

55:                                               ; preds = %49
  %56 = load i64, i64* @NECP_FIRST_VALID_AGGREGATE_ROUTE_RULE_ID, align 8
  store i64 %56, i64* @necp_get_new_route_rule_id.necp_last_aggregate_route_rule_id, align 8
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %43
  %59 = load i64, i64* @necp_get_new_route_rule_id.necp_last_aggregate_route_rule_id, align 8
  store i64 %59, i64* %4, align 8
  br label %60

60:                                               ; preds = %58
  %61 = load i64, i64* %4, align 8
  %62 = call i32* @necp_lookup_route_rule_locked(i32* @necp_route_rules, i64 %61)
  %63 = icmp ne i32* %62, null
  br i1 %63, label %43, label %64

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %64, %38
  %66 = load i64, i64* %4, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @LOG_ERR, align 4
  %70 = call i32 @NECPLOG0(i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %73

71:                                               ; preds = %65
  %72 = load i64, i64* %4, align 8
  store i64 %72, i64* %2, align 8
  br label %73

73:                                               ; preds = %71, %68, %52, %26
  %74 = load i64, i64* %2, align 8
  ret i64 %74
}

declare dso_local i32 @LCK_RW_ASSERT(i32*, i32) #1

declare dso_local i32 @NECPLOG0(i32, i8*) #1

declare dso_local i32* @necp_lookup_route_rule_locked(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
