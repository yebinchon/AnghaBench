; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_add_socket_flow.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_add_socket_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_client_flow_registration = type { i32 }
%struct.inpcb = type { i32 }
%struct.necp_client_flow = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.inpcb* }

@necp_flow_cache = common dso_local global i32 0, align 4
@MCR_SLEEP = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate socket flow\00", align 1
@TRUE = common dso_local global i32 0, align 4
@necp_socket_flow_count = common dso_local global i32 0, align 4
@flow_chain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.necp_client_flow_registration*, %struct.inpcb*)* @necp_client_add_socket_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @necp_client_add_socket_flow(%struct.necp_client_flow_registration* %0, %struct.inpcb* %1) #0 {
  %3 = alloca %struct.necp_client_flow_registration*, align 8
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.necp_client_flow*, align 8
  store %struct.necp_client_flow_registration* %0, %struct.necp_client_flow_registration** %3, align 8
  store %struct.inpcb* %1, %struct.inpcb** %4, align 8
  %6 = load i32, i32* @necp_flow_cache, align 4
  %7 = load i32, i32* @MCR_SLEEP, align 4
  %8 = call %struct.necp_client_flow* @mcache_alloc(i32 %6, i32 %7)
  store %struct.necp_client_flow* %8, %struct.necp_client_flow** %5, align 8
  %9 = load %struct.necp_client_flow*, %struct.necp_client_flow** %5, align 8
  %10 = icmp eq %struct.necp_client_flow* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @LOG_ERR, align 4
  %13 = call i32 @NECPLOG0(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.necp_client_flow*, %struct.necp_client_flow** %5, align 8
  %16 = call i32 @memset(%struct.necp_client_flow* %15, i32 0, i32 24)
  %17 = load i32, i32* @TRUE, align 4
  %18 = load %struct.necp_client_flow*, %struct.necp_client_flow** %5, align 8
  %19 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %21 = load %struct.necp_client_flow*, %struct.necp_client_flow** %5, align 8
  %22 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store %struct.inpcb* %20, %struct.inpcb** %23, align 8
  %24 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %25 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.necp_client_flow*, %struct.necp_client_flow** %5, align 8
  %28 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = call i32 @OSIncrementAtomic(i32* @necp_socket_flow_count)
  %31 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %3, align 8
  %32 = getelementptr inbounds %struct.necp_client_flow_registration, %struct.necp_client_flow_registration* %31, i32 0, i32 0
  %33 = load %struct.necp_client_flow*, %struct.necp_client_flow** %5, align 8
  %34 = load i32, i32* @flow_chain, align 4
  %35 = call i32 @LIST_INSERT_HEAD(i32* %32, %struct.necp_client_flow* %33, i32 %34)
  br label %36

36:                                               ; preds = %14, %11
  ret void
}

declare dso_local %struct.necp_client_flow* @mcache_alloc(i32, i32) #1

declare dso_local i32 @NECPLOG0(i32, i8*) #1

declare dso_local i32 @memset(%struct.necp_client_flow*, i32, i32) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.necp_client_flow*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
