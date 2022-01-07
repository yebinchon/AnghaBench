; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_lro.c_tcp_lro_flush_flows.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_lro.c_tcp_lro_flush_flows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lro_flow = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mbuf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@tcp_lro_lock = common dso_local global i32 0, align 4
@TCP_LRO_NUM_FLOWS = common dso_local global i32 0, align 4
@lro_flow_list = common dso_local global %struct.lro_flow* null, align 8
@lrodebug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"tcp_lro_flush_flows: len =%d n_pkts = %d %d %d \0A\00", align 1
@tcp_now = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tcp_lro_flush_flows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_lro_flush_flows() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.lro_flow*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  %6 = call i32 @lck_mtx_lock(i32* @tcp_lro_lock)
  br label %7

7:                                                ; preds = %65, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @TCP_LRO_NUM_FLOWS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %68

11:                                               ; preds = %7
  %12 = load %struct.lro_flow*, %struct.lro_flow** @lro_flow_list, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %12, i64 %14
  store %struct.lro_flow* %15, %struct.lro_flow** %3, align 8
  %16 = load %struct.lro_flow*, %struct.lro_flow** %3, align 8
  %17 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %65

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i32 (...) @calculate_tcp_clock()
  store i32 1, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* @lrodebug, align 4
  %27 = icmp sge i32 %26, 2
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load %struct.lro_flow*, %struct.lro_flow** %3, align 8
  %30 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.lro_flow*, %struct.lro_flow** %3, align 8
  %33 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.lro_flow*, %struct.lro_flow** %3, align 8
  %39 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @tcp_now, align 4
  %42 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %37, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %28, %25
  %44 = load i32, i32* @tcp_now, align 4
  %45 = load %struct.lro_flow*, %struct.lro_flow** %3, align 8
  %46 = getelementptr inbounds %struct.lro_flow, %struct.lro_flow* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %1, align 4
  %50 = call %struct.mbuf* @tcp_lro_eject_flow(i32 %49)
  store %struct.mbuf* %50, %struct.mbuf** %2, align 8
  %51 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %52 = icmp ne %struct.mbuf* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %43
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = call i32 @lck_mtx_unlock(i32* @tcp_lro_lock)
  %59 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %60 = call i32 @lro_update_flush_stats(%struct.mbuf* %59)
  %61 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %62 = call i32 @lro_proto_input(%struct.mbuf* %61)
  %63 = call i32 @lck_mtx_lock(i32* @tcp_lro_lock)
  br label %64

64:                                               ; preds = %53, %43
  br label %65

65:                                               ; preds = %64, %11
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  br label %7

68:                                               ; preds = %7
  %69 = call i32 @lck_mtx_unlock(i32* @tcp_lro_lock)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @calculate_tcp_clock(...) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.mbuf* @tcp_lro_eject_flow(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @lro_update_flush_stats(%struct.mbuf*) #1

declare dso_local i32 @lro_proto_input(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
