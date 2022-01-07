; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_kernel_policy_get_new_id.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_kernel_policy_get_new_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@necp_kernel_policy_get_new_id.necp_last_kernel_socket_policy_id = internal global i64 0, align 8
@necp_kernel_policy_get_new_id.necp_last_kernel_ip_policy_id = internal global i64 0, align 8
@NECP_KERNEL_POLICY_ID_NONE = common dso_local global i64 0, align 8
@necp_kernel_policy_lock = common dso_local global i32 0, align 4
@LCK_RW_ASSERT_EXCLUSIVE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NECP_KERNEL_POLICY_ID_FIRST_VALID_SOCKET = common dso_local global i64 0, align 8
@NECP_KERNEL_POLICY_ID_FIRST_VALID_IP = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to find a free socket kernel policy ID.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to find a free IP kernel policy ID.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Allocate kernel policy id failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @necp_kernel_policy_get_new_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @necp_kernel_policy_get_new_id(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i64, i64* @NECP_KERNEL_POLICY_ID_NONE, align 8
  store i64 %7, i64* %4, align 8
  %8 = load i32, i32* @LCK_RW_ASSERT_EXCLUSIVE, align 4
  %9 = call i32 @LCK_RW_ASSERT(i32* @necp_kernel_policy_lock, i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %1
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %36, %12
  %15 = load i64, i64* @necp_kernel_policy_get_new_id.necp_last_kernel_socket_policy_id, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* @necp_kernel_policy_get_new_id.necp_last_kernel_socket_policy_id, align 8
  %17 = load i64, i64* @necp_kernel_policy_get_new_id.necp_last_kernel_socket_policy_id, align 8
  %18 = load i64, i64* @NECP_KERNEL_POLICY_ID_FIRST_VALID_SOCKET, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load i64, i64* @necp_kernel_policy_get_new_id.necp_last_kernel_socket_policy_id, align 8
  %22 = load i64, i64* @NECP_KERNEL_POLICY_ID_FIRST_VALID_IP, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20, %14
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = call i32 @NECPLOG0(i32 %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %30 = load i64, i64* @NECP_KERNEL_POLICY_ID_NONE, align 8
  store i64 %30, i64* %2, align 8
  br label %76

31:                                               ; preds = %24
  %32 = load i64, i64* @NECP_KERNEL_POLICY_ID_FIRST_VALID_SOCKET, align 8
  store i64 %32, i64* @necp_kernel_policy_get_new_id.necp_last_kernel_socket_policy_id, align 8
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %20
  %35 = load i64, i64* @necp_kernel_policy_get_new_id.necp_last_kernel_socket_policy_id, align 8
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %34
  %37 = load i64, i64* %4, align 8
  %38 = call i32* @necp_kernel_socket_policy_find(i64 %37)
  %39 = icmp ne i32* %38, null
  br i1 %39, label %14, label %40

40:                                               ; preds = %36
  br label %66

41:                                               ; preds = %1
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %61, %41
  %44 = load i64, i64* @necp_kernel_policy_get_new_id.necp_last_kernel_ip_policy_id, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* @necp_kernel_policy_get_new_id.necp_last_kernel_ip_policy_id, align 8
  %46 = load i64, i64* @necp_kernel_policy_get_new_id.necp_last_kernel_ip_policy_id, align 8
  %47 = load i64, i64* @NECP_KERNEL_POLICY_ID_FIRST_VALID_IP, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* @LOG_ERR, align 4
  %54 = call i32 @NECPLOG0(i32 %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i64, i64* @NECP_KERNEL_POLICY_ID_NONE, align 8
  store i64 %55, i64* %2, align 8
  br label %76

56:                                               ; preds = %49
  %57 = load i64, i64* @NECP_KERNEL_POLICY_ID_FIRST_VALID_IP, align 8
  store i64 %57, i64* @necp_kernel_policy_get_new_id.necp_last_kernel_ip_policy_id, align 8
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %43
  %60 = load i64, i64* @necp_kernel_policy_get_new_id.necp_last_kernel_ip_policy_id, align 8
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %59
  %62 = load i64, i64* %4, align 8
  %63 = call i32* @necp_kernel_ip_output_policy_find(i64 %62)
  %64 = icmp ne i32* %63, null
  br i1 %64, label %43, label %65

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65, %40
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @NECP_KERNEL_POLICY_ID_NONE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* @LOG_ERR, align 4
  %72 = call i32 @NECPLOG0(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i64, i64* @NECP_KERNEL_POLICY_ID_NONE, align 8
  store i64 %73, i64* %2, align 8
  br label %76

74:                                               ; preds = %66
  %75 = load i64, i64* %4, align 8
  store i64 %75, i64* %2, align 8
  br label %76

76:                                               ; preds = %74, %70, %52, %27
  %77 = load i64, i64* %2, align 8
  ret i64 %77
}

declare dso_local i32 @LCK_RW_ASSERT(i32*, i32) #1

declare dso_local i32 @NECPLOG0(i32, i8*) #1

declare dso_local i32* @necp_kernel_socket_policy_find(i64) #1

declare dso_local i32* @necp_kernel_ip_output_policy_find(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
