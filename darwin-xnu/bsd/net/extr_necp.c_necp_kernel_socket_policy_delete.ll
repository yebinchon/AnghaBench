; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_kernel_socket_policy_delete.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_kernel_socket_policy_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_kernel_socket_policy = type { i32*, i32*, i32* }

@necp_kernel_policy_lock = common dso_local global i32 0, align 4
@LCK_RW_ASSERT_EXCLUSIVE = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@M_NECP = common dso_local global i32 0, align 4
@M_NECP_SOCKET_POLICY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @necp_kernel_socket_policy_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_kernel_socket_policy_delete(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.necp_kernel_socket_policy*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.necp_kernel_socket_policy* null, %struct.necp_kernel_socket_policy** %4, align 8
  %5 = load i32, i32* @LCK_RW_ASSERT_EXCLUSIVE, align 4
  %6 = call i32 @LCK_RW_ASSERT(i32* @necp_kernel_policy_lock, i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.necp_kernel_socket_policy* @necp_kernel_socket_policy_find(i32 %7)
  store %struct.necp_kernel_socket_policy* %8, %struct.necp_kernel_socket_policy** %4, align 8
  %9 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %10 = icmp ne %struct.necp_kernel_socket_policy* %9, null
  br i1 %10, label %11, label %57

11:                                               ; preds = %1
  %12 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %13 = load i32, i32* @chain, align 4
  %14 = call i32 @LIST_REMOVE(%struct.necp_kernel_socket_policy* %12, i32 %13)
  %15 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %16 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %21 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @ifnet_release(i32* %22)
  %24 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %25 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %19, %11
  %27 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %28 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %33 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @M_NECP, align 4
  %36 = call i32 @FREE(i32* %34, i32 %35)
  %37 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %38 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %31, %26
  %40 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %41 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %46 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @M_NECP, align 4
  %49 = call i32 @FREE(i32* %47, i32 %48)
  %50 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %51 = getelementptr inbounds %struct.necp_kernel_socket_policy, %struct.necp_kernel_socket_policy* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %44, %39
  %53 = load %struct.necp_kernel_socket_policy*, %struct.necp_kernel_socket_policy** %4, align 8
  %54 = load i32, i32* @M_NECP_SOCKET_POLICY, align 4
  %55 = call i32 @FREE_ZONE(%struct.necp_kernel_socket_policy* %53, i32 24, i32 %54)
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %2, align 4
  br label %59

57:                                               ; preds = %1
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @LCK_RW_ASSERT(i32*, i32) #1

declare dso_local %struct.necp_kernel_socket_policy* @necp_kernel_socket_policy_find(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.necp_kernel_socket_policy*, i32) #1

declare dso_local i32 @ifnet_release(i32*) #1

declare dso_local i32 @FREE(i32*, i32) #1

declare dso_local i32 @FREE_ZONE(%struct.necp_kernel_socket_policy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
