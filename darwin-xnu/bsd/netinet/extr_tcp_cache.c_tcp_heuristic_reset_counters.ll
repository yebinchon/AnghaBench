; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristic_reset_counters.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristic_reset_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_cache_key_src = type { i32 }
%struct.tcp_heuristics_head = type { i32 }
%struct.tcp_heuristic = type { i64, i64, i64, i64, i64, i64, i64 }

@TCPCACHE_F_TFO_DATA = common dso_local global i32 0, align 4
@TCPCACHE_F_TFO_REQ = common dso_local global i32 0, align 4
@TCPCACHE_F_TFO_DATA_RST = common dso_local global i32 0, align 4
@TCPCACHE_F_TFO_REQ_RST = common dso_local global i32 0, align 4
@TCPCACHE_F_ECN = common dso_local global i32 0, align 4
@TCPCACHE_F_MPTCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_cache_key_src*, i32)* @tcp_heuristic_reset_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_heuristic_reset_counters(%struct.tcp_cache_key_src* %0, i32 %1) #0 {
  %3 = alloca %struct.tcp_cache_key_src*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_heuristics_head*, align 8
  %6 = alloca %struct.tcp_heuristic*, align 8
  store %struct.tcp_cache_key_src* %0, %struct.tcp_cache_key_src** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %8 = call %struct.tcp_heuristic* @tcp_getheuristic_with_lock(%struct.tcp_cache_key_src* %7, i32 0, %struct.tcp_heuristics_head** %5)
  store %struct.tcp_heuristic* %8, %struct.tcp_heuristic** %6, align 8
  %9 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %10 = icmp eq %struct.tcp_heuristic* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %65

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @TCPCACHE_F_TFO_DATA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %19 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %18, i32 0, i32 6
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @TCPCACHE_F_TFO_REQ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %27 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @TCPCACHE_F_TFO_DATA_RST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %35 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @TCPCACHE_F_TFO_REQ_RST, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %43 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @TCPCACHE_F_ECN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %51 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %53 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @TCPCACHE_F_MPTCP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %6, align 8
  %61 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.tcp_heuristics_head*, %struct.tcp_heuristics_head** %5, align 8
  %64 = call i32 @tcp_heuristic_unlock(%struct.tcp_heuristics_head* %63)
  br label %65

65:                                               ; preds = %62, %11
  ret void
}

declare dso_local %struct.tcp_heuristic* @tcp_getheuristic_with_lock(%struct.tcp_cache_key_src*, i32, %struct.tcp_heuristics_head**) #1

declare dso_local i32 @tcp_heuristic_unlock(%struct.tcp_heuristics_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
