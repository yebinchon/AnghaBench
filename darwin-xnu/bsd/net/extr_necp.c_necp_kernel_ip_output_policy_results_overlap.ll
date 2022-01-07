; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_kernel_ip_output_policy_results_overlap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_kernel_ip_output_policy_results_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_kernel_ip_output_policy = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NECP_KERNEL_POLICY_RESULT_SKIP = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy*)* @necp_kernel_ip_output_policy_results_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_kernel_ip_output_policy_results_overlap(%struct.necp_kernel_ip_output_policy* %0, %struct.necp_kernel_ip_output_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.necp_kernel_ip_output_policy*, align 8
  %5 = alloca %struct.necp_kernel_ip_output_policy*, align 8
  store %struct.necp_kernel_ip_output_policy* %0, %struct.necp_kernel_ip_output_policy** %4, align 8
  store %struct.necp_kernel_ip_output_policy* %1, %struct.necp_kernel_ip_output_policy** %5, align 8
  %6 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %4, align 8
  %7 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_SKIP, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %4, align 8
  %13 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %5, align 8
  %16 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %11
  %22 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %4, align 8
  %23 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %21
  %28 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %5, align 8
  %29 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %4, align 8
  %32 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %27, %21
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %27
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %38, %36, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
