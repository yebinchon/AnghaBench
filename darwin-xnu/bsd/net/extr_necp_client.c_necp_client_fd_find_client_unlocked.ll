; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_fd_find_client_unlocked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_fd_find_client_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_client = type { i32, %struct.necp_client*, i32 }
%struct.necp_fd_data = type { i32, i32 }
%struct.necp_client_flow_registration = type { i32, %struct.necp_client_flow_registration*, i32 }

@_necp_fd_flow_tree = common dso_local global i32 0, align 4
@_necp_client_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.necp_client* (%struct.necp_fd_data*, i32)* @necp_client_fd_find_client_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.necp_client* @necp_client_fd_find_client_unlocked(%struct.necp_fd_data* %0, i32 %1) #0 {
  %3 = alloca %struct.necp_fd_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.necp_client*, align 8
  %6 = alloca %struct.necp_client_flow_registration, align 8
  %7 = alloca %struct.necp_client_flow_registration*, align 8
  %8 = alloca %struct.necp_client, align 8
  store %struct.necp_fd_data* %0, %struct.necp_fd_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %10 = call i32 @NECP_FD_ASSERT_LOCKED(%struct.necp_fd_data* %9)
  store %struct.necp_client* null, %struct.necp_client** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @necp_client_id_is_flow(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.necp_client_flow_registration, %struct.necp_client_flow_registration* %6, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @uuid_copy(i32 %16, i32 %17)
  %19 = load i32, i32* @_necp_fd_flow_tree, align 4
  %20 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %21 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %20, i32 0, i32 1
  %22 = call %struct.necp_client_flow_registration* @RB_FIND(i32 %19, i32* %21, %struct.necp_client_flow_registration* %6)
  store %struct.necp_client_flow_registration* %22, %struct.necp_client_flow_registration** %7, align 8
  %23 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %7, align 8
  %24 = icmp ne %struct.necp_client_flow_registration* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %7, align 8
  %27 = getelementptr inbounds %struct.necp_client_flow_registration, %struct.necp_client_flow_registration* %26, i32 0, i32 1
  %28 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %27, align 8
  %29 = bitcast %struct.necp_client_flow_registration* %28 to %struct.necp_client*
  store %struct.necp_client* %29, %struct.necp_client** %5, align 8
  br label %30

30:                                               ; preds = %25, %14
  br label %42

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @uuid_copy(i32 %33, i32 %34)
  %36 = load i32, i32* @_necp_client_tree, align 4
  %37 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %38 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %37, i32 0, i32 0
  %39 = bitcast %struct.necp_client* %8 to %struct.necp_client_flow_registration*
  %40 = call %struct.necp_client_flow_registration* @RB_FIND(i32 %36, i32* %38, %struct.necp_client_flow_registration* %39)
  %41 = bitcast %struct.necp_client_flow_registration* %40 to %struct.necp_client*
  store %struct.necp_client* %41, %struct.necp_client** %5, align 8
  br label %42

42:                                               ; preds = %31, %30
  %43 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  ret %struct.necp_client* %43
}

declare dso_local i32 @NECP_FD_ASSERT_LOCKED(%struct.necp_fd_data*) #1

declare dso_local i64 @necp_client_id_is_flow(i32) #1

declare dso_local i32 @uuid_copy(i32, i32) #1

declare dso_local %struct.necp_client_flow_registration* @RB_FIND(i32, i32*, %struct.necp_client_flow_registration*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
