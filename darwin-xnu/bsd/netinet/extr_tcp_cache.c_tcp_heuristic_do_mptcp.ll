; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristic_do_mptcp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristic_do_mptcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.tcpcb = type { i32 }
%struct.tcp_cache_key_src = type { i32 }
%struct.tcp_heuristics_head = type { i32 }
%struct.tcp_heuristic = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@disable_tcp_heuristics = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@tcp_now = common dso_local global i32 0, align 4
@MPTE_FIRSTPARTY = common dso_local global i32 0, align 4
@tcpstat = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_heuristic_do_mptcp(%struct.tcpcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcp_cache_key_src, align 4
  %5 = alloca %struct.tcp_heuristics_head*, align 8
  %6 = alloca %struct.tcp_heuristic*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcp_heuristics_head* null, %struct.tcp_heuristics_head** %5, align 8
  %7 = load i64, i64* @disable_tcp_heuristics, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %2, align 4
  br label %55

11:                                               ; preds = %1
  %12 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %13 = call i32 @tcp_cache_key_src_create(%struct.tcpcb* %12, %struct.tcp_cache_key_src* %4)
  %14 = call %struct.tcp_heuristic* @tcp_getheuristic_with_lock(%struct.tcp_cache_key_src* %4, i32 0, %struct.tcp_heuristics_head** %5)
  store %struct.tcp_heuristic* %14, %struct.tcp_heuristic** %6, align 8
  %15 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %16 = icmp eq %struct.tcp_heuristic* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %2, align 4
  br label %55

19:                                               ; preds = %11
  %20 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %21 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @tcp_now, align 4
  %24 = call i64 @TSTMP_GT(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %31

27:                                               ; preds = %19
  %28 = load %struct.tcp_heuristics_head*, %struct.tcp_heuristics_head** %5, align 8
  %29 = call i32 @tcp_heuristic_unlock(%struct.tcp_heuristics_head* %28)
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %2, align 4
  br label %55

31:                                               ; preds = %26
  %32 = load %struct.tcp_heuristics_head*, %struct.tcp_heuristics_head** %5, align 8
  %33 = icmp ne %struct.tcp_heuristics_head* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.tcp_heuristics_head*, %struct.tcp_heuristics_head** %5, align 8
  %36 = call i32 @tcp_heuristic_unlock(%struct.tcp_heuristics_head* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %39 = call %struct.TYPE_5__* @tptomptp(%struct.tcpcb* %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MPTE_FIRSTPARTY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tcpstat, i32 0, i32 1), align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tcpstat, i32 0, i32 1), align 4
  br label %53

50:                                               ; preds = %37
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tcpstat, i32 0, i32 0), align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tcpstat, i32 0, i32 0), align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %27, %17, %9
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @tcp_cache_key_src_create(%struct.tcpcb*, %struct.tcp_cache_key_src*) #1

declare dso_local %struct.tcp_heuristic* @tcp_getheuristic_with_lock(%struct.tcp_cache_key_src*, i32, %struct.tcp_heuristics_head**) #1

declare dso_local i64 @TSTMP_GT(i32, i32) #1

declare dso_local i32 @tcp_heuristic_unlock(%struct.tcp_heuristics_head*) #1

declare dso_local %struct.TYPE_5__* @tptomptp(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
