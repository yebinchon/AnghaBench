; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_find_client_and_lock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_find_client_and_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_client = type { i32, %struct.necp_client*, i32 }
%struct.necp_client_flow_registration = type { i32, %struct.necp_client_flow_registration*, i32 }

@_necp_client_flow_global_tree = common dso_local global i32 0, align 4
@necp_client_flow_global_tree = common dso_local global i32 0, align 4
@_necp_client_global_tree = common dso_local global i32 0, align 4
@necp_client_global_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.necp_client* (i32)* @necp_find_client_and_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.necp_client* @necp_find_client_and_lock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.necp_client*, align 8
  %4 = alloca %struct.necp_client_flow_registration, align 8
  %5 = alloca %struct.necp_client_flow_registration*, align 8
  %6 = alloca %struct.necp_client, align 8
  store i32 %0, i32* %2, align 4
  %7 = call i32 (...) @NECP_CLIENT_TREE_ASSERT_LOCKED()
  store %struct.necp_client* null, %struct.necp_client** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @necp_client_id_is_flow(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = call i32 (...) @NECP_FLOW_TREE_LOCK_SHARED()
  %13 = getelementptr inbounds %struct.necp_client_flow_registration, %struct.necp_client_flow_registration* %4, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @uuid_copy(i32 %14, i32 %15)
  %17 = load i32, i32* @_necp_client_flow_global_tree, align 4
  %18 = call %struct.necp_client_flow_registration* @RB_FIND(i32 %17, i32* @necp_client_flow_global_tree, %struct.necp_client_flow_registration* %4)
  store %struct.necp_client_flow_registration* %18, %struct.necp_client_flow_registration** %5, align 8
  %19 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %5, align 8
  %20 = icmp ne %struct.necp_client_flow_registration* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %5, align 8
  %23 = getelementptr inbounds %struct.necp_client_flow_registration, %struct.necp_client_flow_registration* %22, i32 0, i32 1
  %24 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %23, align 8
  %25 = bitcast %struct.necp_client_flow_registration* %24 to %struct.necp_client*
  store %struct.necp_client* %25, %struct.necp_client** %3, align 8
  br label %26

26:                                               ; preds = %21, %11
  %27 = call i32 (...) @NECP_FLOW_TREE_UNLOCK()
  br label %37

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @uuid_copy(i32 %30, i32 %31)
  %33 = load i32, i32* @_necp_client_global_tree, align 4
  %34 = bitcast %struct.necp_client* %6 to %struct.necp_client_flow_registration*
  %35 = call %struct.necp_client_flow_registration* @RB_FIND(i32 %33, i32* @necp_client_global_tree, %struct.necp_client_flow_registration* %34)
  %36 = bitcast %struct.necp_client_flow_registration* %35 to %struct.necp_client*
  store %struct.necp_client* %36, %struct.necp_client** %3, align 8
  br label %37

37:                                               ; preds = %28, %26
  %38 = load %struct.necp_client*, %struct.necp_client** %3, align 8
  %39 = icmp ne %struct.necp_client* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.necp_client*, %struct.necp_client** %3, align 8
  %42 = bitcast %struct.necp_client* %41 to %struct.necp_client_flow_registration*
  %43 = call i32 @NECP_CLIENT_LOCK(%struct.necp_client_flow_registration* %42)
  br label %44

44:                                               ; preds = %40, %37
  %45 = load %struct.necp_client*, %struct.necp_client** %3, align 8
  ret %struct.necp_client* %45
}

declare dso_local i32 @NECP_CLIENT_TREE_ASSERT_LOCKED(...) #1

declare dso_local i64 @necp_client_id_is_flow(i32) #1

declare dso_local i32 @NECP_FLOW_TREE_LOCK_SHARED(...) #1

declare dso_local i32 @uuid_copy(i32, i32) #1

declare dso_local %struct.necp_client_flow_registration* @RB_FIND(i32, i32*, %struct.necp_client_flow_registration*) #1

declare dso_local i32 @NECP_FLOW_TREE_UNLOCK(...) #1

declare dso_local i32 @NECP_CLIENT_LOCK(%struct.necp_client_flow_registration*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
