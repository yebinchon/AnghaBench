; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_get_new_uuid_id.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_get_new_uuid_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@necp_get_new_uuid_id.necp_last_service_uuid_id = internal global i64 0, align 8
@necp_get_new_uuid_id.necp_last_app_uuid_id = internal global i64 0, align 8
@necp_kernel_policy_lock = common dso_local global i32 0, align 4
@LCK_RW_ASSERT_EXCLUSIVE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NECP_FIRST_VALID_SERVICE_ID = common dso_local global i64 0, align 8
@NECP_FIRST_VALID_APP_ID = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to find a free service UUID.\0A\00", align 1
@NECP_NULL_SERVICE_ID = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to find a free app UUID.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Allocate uuid ID failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @necp_get_new_uuid_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @necp_get_new_uuid_id(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  %7 = load i32, i32* @LCK_RW_ASSERT_EXCLUSIVE, align 4
  %8 = call i32 @LCK_RW_ASSERT(i32* @necp_kernel_policy_lock, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %1
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %35, %11
  %14 = load i64, i64* @necp_get_new_uuid_id.necp_last_service_uuid_id, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* @necp_get_new_uuid_id.necp_last_service_uuid_id, align 8
  %16 = load i64, i64* @necp_get_new_uuid_id.necp_last_service_uuid_id, align 8
  %17 = load i64, i64* @NECP_FIRST_VALID_SERVICE_ID, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load i64, i64* @necp_get_new_uuid_id.necp_last_service_uuid_id, align 8
  %21 = load i64, i64* @NECP_FIRST_VALID_APP_ID, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19, %13
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @LOG_ERR, align 4
  %28 = call i32 @NECPLOG0(i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* @NECP_NULL_SERVICE_ID, align 8
  store i64 %29, i64* %2, align 8
  br label %75

30:                                               ; preds = %23
  %31 = load i64, i64* @NECP_FIRST_VALID_SERVICE_ID, align 8
  store i64 %31, i64* @necp_get_new_uuid_id.necp_last_service_uuid_id, align 8
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %19
  %34 = load i64, i64* @necp_get_new_uuid_id.necp_last_service_uuid_id, align 8
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %33
  %36 = load i64, i64* %4, align 8
  %37 = call i32* @necp_uuid_lookup_uuid_with_service_id_locked(i64 %36)
  %38 = icmp ne i32* %37, null
  br i1 %38, label %13, label %39

39:                                               ; preds = %35
  br label %65

40:                                               ; preds = %1
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %60, %40
  %43 = load i64, i64* @necp_get_new_uuid_id.necp_last_app_uuid_id, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* @necp_get_new_uuid_id.necp_last_app_uuid_id, align 8
  %45 = load i64, i64* @necp_get_new_uuid_id.necp_last_app_uuid_id, align 8
  %46 = load i64, i64* @NECP_FIRST_VALID_APP_ID, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @LOG_ERR, align 4
  %53 = call i32 @NECPLOG0(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i64, i64* @NECP_NULL_SERVICE_ID, align 8
  store i64 %54, i64* %2, align 8
  br label %75

55:                                               ; preds = %48
  %56 = load i64, i64* @NECP_FIRST_VALID_APP_ID, align 8
  store i64 %56, i64* @necp_get_new_uuid_id.necp_last_app_uuid_id, align 8
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %42
  %59 = load i64, i64* @necp_get_new_uuid_id.necp_last_app_uuid_id, align 8
  store i64 %59, i64* %4, align 8
  br label %60

60:                                               ; preds = %58
  %61 = load i64, i64* %4, align 8
  %62 = call i32* @necp_uuid_lookup_uuid_with_app_id_locked(i64 %61)
  %63 = icmp ne i32* %62, null
  br i1 %63, label %42, label %64

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @NECP_NULL_SERVICE_ID, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* @LOG_ERR, align 4
  %71 = call i32 @NECPLOG0(i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i64, i64* @NECP_NULL_SERVICE_ID, align 8
  store i64 %72, i64* %2, align 8
  br label %75

73:                                               ; preds = %65
  %74 = load i64, i64* %4, align 8
  store i64 %74, i64* %2, align 8
  br label %75

75:                                               ; preds = %73, %69, %51, %26
  %76 = load i64, i64* %2, align 8
  ret i64 %76
}

declare dso_local i32 @LCK_RW_ASSERT(i32*, i32) #1

declare dso_local i32 @NECPLOG0(i32, i8*) #1

declare dso_local i32* @necp_uuid_lookup_uuid_with_service_id_locked(i64) #1

declare dso_local i32* @necp_uuid_lookup_uuid_with_app_id_locked(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
