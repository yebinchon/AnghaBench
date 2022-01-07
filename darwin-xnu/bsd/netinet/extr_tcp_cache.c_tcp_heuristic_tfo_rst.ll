; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristic_tfo_rst.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristic_tfo_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32 }
%struct.tcp_cache_key_src = type { i32 }

@TFO_S_SYN_DATA_SENT = common dso_local global i32 0, align 4
@TCPCACHE_F_TFO_DATA_RST = common dso_local global i32 0, align 4
@TCPCACHE_F_TFO_REQ_RST = common dso_local global i32 0, align 4
@TFO_S_COOKIE_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_heuristic_tfo_rst(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca %struct.tcp_cache_key_src, align 4
  %4 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %6 = call i32 @tcp_cache_key_src_create(%struct.tcpcb* %5, %struct.tcp_cache_key_src* %3)
  %7 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %8 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TFO_S_SYN_DATA_SENT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @TCPCACHE_F_TFO_DATA_RST, align 4
  %15 = load i32, i32* @TCPCACHE_F_TFO_REQ_RST, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %19 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TFO_S_COOKIE_REQ, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @TCPCACHE_F_TFO_REQ_RST, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @tcp_heuristic_inc_counters(%struct.tcp_cache_key_src* %3, i32 %27)
  ret void
}

declare dso_local i32 @tcp_cache_key_src_create(%struct.tcpcb*, %struct.tcp_cache_key_src*) #1

declare dso_local i32 @tcp_heuristic_inc_counters(%struct.tcp_cache_key_src*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
