; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_kernel_socket_policy_results_overlap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_kernel_socket_policy_results_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_kernel_socket_policy = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NECP_KERNEL_POLICY_RESULT_DROP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@NECP_KERNEL_POLICY_RESULT_SOCKET_FILTER = common dso_local global i64 0, align 8
@NECP_KERNEL_POLICY_RESULT_ROUTE_RULES = common dso_local global i64 0, align 8
@NECP_KERNEL_POLICY_RESULT_USE_NETAGENT = common dso_local global i64 0, align 8
@NECP_KERNEL_POLICY_RESULT_NETAGENT_SCOPED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@NECP_KERNEL_POLICY_RESULT_SKIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy*)* @necp_kernel_socket_policy_results_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_kernel_socket_policy_results_overlap(%struct.necp_kernel_socket_policy* %0, %struct.necp_kernel_socket_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.necp_kernel_socket_policy*, align 8
  %5 = alloca %struct.necp_kernel_socket_policy*, align 8
  store %struct.necp_kernel_socket_policy* %0, %struct.necp_kernel_socket_policy** %4, align 8
  store %struct.necp_kernel_socket_policy* %1, %struct.necp_kernel_socket_policy** %5, align 8
  %6 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %7 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_DROP, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %3, align 4
  br label %86

13:                                               ; preds = %2
  %14 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %15 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_SOCKET_FILTER, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %37, label %19

19:                                               ; preds = %13
  %20 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %21 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_ROUTE_RULES, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %19
  %26 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %27 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_USE_NETAGENT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %33 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_NETAGENT_SCOPED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %25, %19, %13
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %3, align 4
  br label %86

39:                                               ; preds = %31
  %40 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %41 = call i32 @necp_kernel_socket_result_is_trigger_service_type(%struct.necp_kernel_socket_policy* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %45 = call i32 @necp_kernel_socket_result_is_trigger_service_type(%struct.necp_kernel_socket_policy* %44)
  store i32 %45, i32* %3, align 4
  br label %86

46:                                               ; preds = %39
  %47 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %48 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_SKIP, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %46
  %53 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %54 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %57 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %3, align 4
  br label %86

62:                                               ; preds = %52
  %63 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %64 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %62
  %69 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %5, align 8
  %70 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %73 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %71, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %68, %62
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %3, align 4
  br label %86

79:                                               ; preds = %68
  %80 = load i32, i32* @TRUE, align 4
  store i32 %80, i32* %3, align 4
  br label %86

81:                                               ; preds = %46
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %79, %77, %60, %43, %37, %11
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @necp_kernel_socket_result_is_trigger_service_type(%struct.necp_kernel_socket_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
