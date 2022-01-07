; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_add_interface_flow.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_add_interface_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_client_flow = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.necp_client_flow_registration = type { i32, i32, i32 }

@necp_flow_cache = common dso_local global i32 0, align 4
@MCR_SLEEP = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to allocate interface flow\00", align 1
@necp_if_flow_count = common dso_local global i32 0, align 4
@flow_chain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.necp_client_flow* (%struct.necp_client_flow_registration*, i32)* @necp_client_add_interface_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.necp_client_flow* @necp_client_add_interface_flow(%struct.necp_client_flow_registration* %0, i32 %1) #0 {
  %3 = alloca %struct.necp_client_flow*, align 8
  %4 = alloca %struct.necp_client_flow_registration*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.necp_client_flow*, align 8
  store %struct.necp_client_flow_registration* %0, %struct.necp_client_flow_registration** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @necp_flow_cache, align 4
  %8 = load i32, i32* @MCR_SLEEP, align 4
  %9 = call %struct.necp_client_flow* @mcache_alloc(i32 %7, i32 %8)
  store %struct.necp_client_flow* %9, %struct.necp_client_flow** %6, align 8
  %10 = load %struct.necp_client_flow*, %struct.necp_client_flow** %6, align 8
  %11 = icmp eq %struct.necp_client_flow* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @LOG_ERR, align 4
  %14 = call i32 @NECPLOG0(i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store %struct.necp_client_flow* null, %struct.necp_client_flow** %3, align 8
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.necp_client_flow*, %struct.necp_client_flow** %6, align 8
  %17 = call i32 @memset(%struct.necp_client_flow* %16, i32 0, i32 12)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.necp_client_flow*, %struct.necp_client_flow** %6, align 8
  %20 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %4, align 8
  %22 = getelementptr inbounds %struct.necp_client_flow_registration, %struct.necp_client_flow_registration* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.necp_client_flow*, %struct.necp_client_flow** %6, align 8
  %25 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %4, align 8
  %28 = getelementptr inbounds %struct.necp_client_flow_registration, %struct.necp_client_flow_registration* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.necp_client_flow*, %struct.necp_client_flow** %6, align 8
  %31 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = call i32 @OSIncrementAtomic(i32* @necp_if_flow_count)
  %34 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %4, align 8
  %35 = getelementptr inbounds %struct.necp_client_flow_registration, %struct.necp_client_flow_registration* %34, i32 0, i32 0
  %36 = load %struct.necp_client_flow*, %struct.necp_client_flow** %6, align 8
  %37 = load i32, i32* @flow_chain, align 4
  %38 = call i32 @LIST_INSERT_HEAD(i32* %35, %struct.necp_client_flow* %36, i32 %37)
  %39 = load %struct.necp_client_flow*, %struct.necp_client_flow** %6, align 8
  store %struct.necp_client_flow* %39, %struct.necp_client_flow** %3, align 8
  br label %40

40:                                               ; preds = %15, %12
  %41 = load %struct.necp_client_flow*, %struct.necp_client_flow** %3, align 8
  ret %struct.necp_client_flow* %41
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
