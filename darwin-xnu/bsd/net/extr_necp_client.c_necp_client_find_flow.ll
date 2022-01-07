; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_find_flow.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_find_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_client_flow_registration = type { i32 }
%struct.necp_client = type { i32 }

@_necp_client_flow_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.necp_client_flow_registration* (%struct.necp_client*, i32)* @necp_client_find_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.necp_client_flow_registration* @necp_client_find_flow(%struct.necp_client* %0, i32 %1) #0 {
  %3 = alloca %struct.necp_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.necp_client_flow_registration*, align 8
  %6 = alloca %struct.necp_client_flow_registration, align 4
  store %struct.necp_client* %0, %struct.necp_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.necp_client*, %struct.necp_client** %3, align 8
  %8 = call i32 @NECP_CLIENT_ASSERT_LOCKED(%struct.necp_client* %7)
  store %struct.necp_client_flow_registration* null, %struct.necp_client_flow_registration** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @necp_client_id_is_flow(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.necp_client_flow_registration, %struct.necp_client_flow_registration* %6, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @uuid_copy(i32 %14, i32 %15)
  %17 = load i32, i32* @_necp_client_flow_tree, align 4
  %18 = load %struct.necp_client*, %struct.necp_client** %3, align 8
  %19 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %18, i32 0, i32 0
  %20 = call %struct.necp_client_flow_registration* @RB_FIND(i32 %17, i32* %19, %struct.necp_client_flow_registration* %6)
  store %struct.necp_client_flow_registration* %20, %struct.necp_client_flow_registration** %5, align 8
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.necp_client*, %struct.necp_client** %3, align 8
  %23 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %22, i32 0, i32 0
  %24 = call %struct.necp_client_flow_registration* @RB_ROOT(i32* %23)
  store %struct.necp_client_flow_registration* %24, %struct.necp_client_flow_registration** %5, align 8
  br label %25

25:                                               ; preds = %21, %12
  %26 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %5, align 8
  ret %struct.necp_client_flow_registration* %26
}

declare dso_local i32 @NECP_CLIENT_ASSERT_LOCKED(%struct.necp_client*) #1

declare dso_local i64 @necp_client_id_is_flow(i32) #1

declare dso_local i32 @uuid_copy(i32, i32) #1

declare dso_local %struct.necp_client_flow_registration* @RB_FIND(i32, i32*, %struct.necp_client_flow_registration*) #1

declare dso_local %struct.necp_client_flow_registration* @RB_ROOT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
