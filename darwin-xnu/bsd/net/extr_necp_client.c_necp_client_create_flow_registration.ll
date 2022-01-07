; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_create_flow_registration.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_create_flow_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_client_flow_registration = type { i32, %struct.necp_client*, i32, i32, i32 }
%struct.necp_fd_data = type { i32 }
%struct.necp_client = type { i32 }

@necp_flow_registration_cache = common dso_local global i32 0, align 4
@MCR_SLEEP = common dso_local global i32 0, align 4
@IFSCOPE_NONE = common dso_local global i32 0, align 4
@NSTAT_IFNET_IS_UNKNOWN_TYPE = common dso_local global i32 0, align 4
@_necp_client_flow_tree = common dso_local global i32 0, align 4
@_necp_fd_flow_tree = common dso_local global i32 0, align 4
@_necp_client_flow_global_tree = common dso_local global i32 0, align 4
@necp_client_flow_global_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.necp_client_flow_registration* (%struct.necp_fd_data*, %struct.necp_client*)* @necp_client_create_flow_registration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.necp_client_flow_registration* @necp_client_create_flow_registration(%struct.necp_fd_data* %0, %struct.necp_client* %1) #0 {
  %3 = alloca %struct.necp_client_flow_registration*, align 8
  %4 = alloca %struct.necp_fd_data*, align 8
  %5 = alloca %struct.necp_client*, align 8
  %6 = alloca %struct.necp_client_flow_registration*, align 8
  store %struct.necp_fd_data* %0, %struct.necp_fd_data** %4, align 8
  store %struct.necp_client* %1, %struct.necp_client** %5, align 8
  %7 = load %struct.necp_fd_data*, %struct.necp_fd_data** %4, align 8
  %8 = call i32 @NECP_FD_ASSERT_LOCKED(%struct.necp_fd_data* %7)
  %9 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %10 = call i32 @NECP_CLIENT_ASSERT_LOCKED(%struct.necp_client* %9)
  %11 = load i32, i32* @necp_flow_registration_cache, align 4
  %12 = load i32, i32* @MCR_SLEEP, align 4
  %13 = call %struct.necp_client_flow_registration* @mcache_alloc(i32 %11, i32 %12)
  store %struct.necp_client_flow_registration* %13, %struct.necp_client_flow_registration** %6, align 8
  %14 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %6, align 8
  %15 = icmp eq %struct.necp_client_flow_registration* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.necp_client_flow_registration* null, %struct.necp_client_flow_registration** %3, align 8
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %6, align 8
  %19 = call i32 @memset(%struct.necp_client_flow_registration* %18, i32 0, i32 32)
  %20 = load i32, i32* @IFSCOPE_NONE, align 4
  %21 = load i32, i32* @NSTAT_IFNET_IS_UNKNOWN_TYPE, align 4
  %22 = call i32 @combine_interface_details(i32 %20, i32 %21)
  %23 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %6, align 8
  %24 = getelementptr inbounds %struct.necp_client_flow_registration, %struct.necp_client_flow_registration* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %6, align 8
  %26 = getelementptr inbounds %struct.necp_client_flow_registration, %struct.necp_client_flow_registration* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @necp_generate_client_id(i32 %27, i32 1)
  %29 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %6, align 8
  %30 = getelementptr inbounds %struct.necp_client_flow_registration, %struct.necp_client_flow_registration* %29, i32 0, i32 2
  %31 = call i32 @LIST_INIT(i32* %30)
  %32 = load i32, i32* @_necp_client_flow_tree, align 4
  %33 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %34 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %33, i32 0, i32 0
  %35 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %6, align 8
  %36 = call i32 @RB_INSERT(i32 %32, i32* %34, %struct.necp_client_flow_registration* %35)
  %37 = load i32, i32* @_necp_fd_flow_tree, align 4
  %38 = load %struct.necp_fd_data*, %struct.necp_fd_data** %4, align 8
  %39 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %38, i32 0, i32 0
  %40 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %6, align 8
  %41 = call i32 @RB_INSERT(i32 %37, i32* %39, %struct.necp_client_flow_registration* %40)
  %42 = call i32 (...) @NECP_FLOW_TREE_LOCK_EXCLUSIVE()
  %43 = load i32, i32* @_necp_client_flow_global_tree, align 4
  %44 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %6, align 8
  %45 = call i32 @RB_INSERT(i32 %43, i32* @necp_client_flow_global_tree, %struct.necp_client_flow_registration* %44)
  %46 = call i32 (...) @NECP_FLOW_TREE_UNLOCK()
  %47 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %48 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %6, align 8
  %49 = getelementptr inbounds %struct.necp_client_flow_registration, %struct.necp_client_flow_registration* %48, i32 0, i32 1
  store %struct.necp_client* %47, %struct.necp_client** %49, align 8
  %50 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %6, align 8
  %51 = getelementptr inbounds %struct.necp_client_flow_registration, %struct.necp_client_flow_registration* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %6, align 8
  store %struct.necp_client_flow_registration* %52, %struct.necp_client_flow_registration** %3, align 8
  br label %53

53:                                               ; preds = %17, %16
  %54 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %3, align 8
  ret %struct.necp_client_flow_registration* %54
}

declare dso_local i32 @NECP_FD_ASSERT_LOCKED(%struct.necp_fd_data*) #1

declare dso_local i32 @NECP_CLIENT_ASSERT_LOCKED(%struct.necp_client*) #1

declare dso_local %struct.necp_client_flow_registration* @mcache_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.necp_client_flow_registration*, i32, i32) #1

declare dso_local i32 @combine_interface_details(i32, i32) #1

declare dso_local i32 @necp_generate_client_id(i32, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.necp_client_flow_registration*) #1

declare dso_local i32 @NECP_FLOW_TREE_LOCK_EXCLUSIVE(...) #1

declare dso_local i32 @NECP_FLOW_TREE_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
