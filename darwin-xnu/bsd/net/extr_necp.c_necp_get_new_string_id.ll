; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_get_new_string_id.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_get_new_string_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@necp_get_new_string_id.necp_last_string_id = internal global i32 0, align 4
@necp_kernel_policy_lock = common dso_local global i32 0, align 4
@LCK_RW_ASSERT_EXCLUSIVE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to find a free app UUID.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@necp_account_id_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Allocate string id failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @necp_get_new_string_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_get_new_string_id() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %4 = load i32, i32* @LCK_RW_ASSERT_EXCLUSIVE, align 4
  %5 = call i32 @LCK_RW_ASSERT(i32* @necp_kernel_policy_lock, i32 %4)
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %22, %0
  %8 = load i32, i32* @necp_get_new_string_id.necp_last_string_id, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @necp_get_new_string_id.necp_last_string_id, align 4
  %10 = load i32, i32* @necp_get_new_string_id.necp_last_string_id, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @LOG_ERR, align 4
  %17 = call i32 @NECPLOG0(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %34

18:                                               ; preds = %12
  store i32 1, i32* @necp_get_new_string_id.necp_last_string_id, align 4
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %18, %7
  %21 = load i32, i32* @necp_get_new_string_id.necp_last_string_id, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %2, align 4
  %24 = call i32* @necp_lookup_string_with_id_locked(i32* @necp_account_id_list, i32 %23)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %7, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @LOG_ERR, align 4
  %31 = call i32 @NECPLOG0(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %2, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %32, %29, %15
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @LCK_RW_ASSERT(i32*, i32) #1

declare dso_local i32 @NECPLOG0(i32, i8*) #1

declare dso_local i32* @necp_lookup_string_with_id_locked(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
