; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_kernel_ip_output_policy_delete.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_kernel_ip_output_policy_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_kernel_ip_output_policy = type { i32* }

@necp_kernel_policy_lock = common dso_local global i32 0, align 4
@LCK_RW_ASSERT_EXCLUSIVE = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@M_NECP_IP_POLICY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @necp_kernel_ip_output_policy_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_kernel_ip_output_policy_delete(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.necp_kernel_ip_output_policy*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.necp_kernel_ip_output_policy* null, %struct.necp_kernel_ip_output_policy** %4, align 8
  %5 = load i32, i32* @LCK_RW_ASSERT_EXCLUSIVE, align 4
  %6 = call i32 @LCK_RW_ASSERT(i32* @necp_kernel_policy_lock, i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.necp_kernel_ip_output_policy* @necp_kernel_ip_output_policy_find(i32 %7)
  store %struct.necp_kernel_ip_output_policy* %8, %struct.necp_kernel_ip_output_policy** %4, align 8
  %9 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %4, align 8
  %10 = icmp ne %struct.necp_kernel_ip_output_policy* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %4, align 8
  %13 = load i32, i32* @chain, align 4
  %14 = call i32 @LIST_REMOVE(%struct.necp_kernel_ip_output_policy* %12, i32 %13)
  %15 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %4, align 8
  %16 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %4, align 8
  %21 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @ifnet_release(i32* %22)
  %24 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %4, align 8
  %25 = getelementptr inbounds %struct.necp_kernel_ip_output_policy, %struct.necp_kernel_ip_output_policy* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %19, %11
  %27 = load %struct.necp_kernel_ip_output_policy*, %struct.necp_kernel_ip_output_policy** %4, align 8
  %28 = load i32, i32* @M_NECP_IP_POLICY, align 4
  %29 = call i32 @FREE_ZONE(%struct.necp_kernel_ip_output_policy* %27, i32 8, i32 %28)
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @LCK_RW_ASSERT(i32*, i32) #1

declare dso_local %struct.necp_kernel_ip_output_policy* @necp_kernel_ip_output_policy_find(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.necp_kernel_ip_output_policy*, i32) #1

declare dso_local i32 @ifnet_release(i32*) #1

declare dso_local i32 @FREE_ZONE(%struct.necp_kernel_ip_output_policy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
