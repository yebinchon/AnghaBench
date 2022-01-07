; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristics_ecn_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristics_ecn_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_tcp_ecn_cache = type { i64, i64, i64, i64, i64, i64 }
%struct.ifnet = type { i32 }
%union.sockaddr_in_4_6 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.tcp_cache_key_src = type { i64, %struct.TYPE_7__, %struct.ifnet* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@TCPCACHE_F_ECN = common dso_local global i32 0, align 4
@TCPCACHE_F_ECN_DROPRST = common dso_local global i32 0, align 4
@TCPCACHE_F_ECN_DROPRXMT = common dso_local global i32 0, align 4
@TCPCACHE_F_ECN_SYNRST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_heuristics_ecn_update(%struct.necp_tcp_ecn_cache* %0, %struct.ifnet* %1, %union.sockaddr_in_4_6* %2) #0 {
  %4 = alloca %struct.necp_tcp_ecn_cache*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %union.sockaddr_in_4_6*, align 8
  %7 = alloca %struct.tcp_cache_key_src, align 8
  store %struct.necp_tcp_ecn_cache* %0, %struct.necp_tcp_ecn_cache** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  store %union.sockaddr_in_4_6* %2, %union.sockaddr_in_4_6** %6, align 8
  %8 = call i32 @memset(%struct.tcp_cache_key_src* %7, i32 0, i32 24)
  %9 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %10 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %7, i32 0, i32 2
  store %struct.ifnet* %9, %struct.ifnet** %10, align 8
  %11 = call i32 (...) @calculate_tcp_clock()
  %12 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %6, align 8
  %13 = bitcast %union.sockaddr_in_4_6* %12 to %struct.TYPE_6__*
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AF_INET6, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %7, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %6, align 8
  %22 = bitcast %union.sockaddr_in_4_6* %21 to %struct.TYPE_5__*
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @memcpy(i32* %20, i32* %23, i32 4)
  %25 = load i64, i64* @AF_INET6, align 8
  %26 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %7, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  br label %44

27:                                               ; preds = %3
  %28 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %6, align 8
  %29 = bitcast %union.sockaddr_in_4_6* %28 to %struct.TYPE_6__*
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AF_INET, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %7, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %6, align 8
  %38 = bitcast %union.sockaddr_in_4_6* %37 to %struct.TYPE_8__*
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = call i32 @memcpy(i32* %36, i32* %39, i32 4)
  %41 = load i64, i64* @AF_INET, align 8
  %42 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %7, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %34, %27
  br label %44

44:                                               ; preds = %43, %18
  %45 = load %struct.necp_tcp_ecn_cache*, %struct.necp_tcp_ecn_cache** %4, align 8
  %46 = getelementptr inbounds %struct.necp_tcp_ecn_cache, %struct.necp_tcp_ecn_cache* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @TCPCACHE_F_ECN, align 4
  %51 = call i32 @tcp_heuristic_reset_counters(%struct.tcp_cache_key_src* %7, i32 %50)
  br label %96

52:                                               ; preds = %44
  %53 = load %struct.necp_tcp_ecn_cache*, %struct.necp_tcp_ecn_cache** %4, align 8
  %54 = getelementptr inbounds %struct.necp_tcp_ecn_cache, %struct.necp_tcp_ecn_cache* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @TCPCACHE_F_ECN, align 4
  %59 = call i32 @tcp_heuristic_inc_counters(%struct.tcp_cache_key_src* %7, i32 %58)
  br label %95

60:                                               ; preds = %52
  %61 = load %struct.necp_tcp_ecn_cache*, %struct.necp_tcp_ecn_cache** %4, align 8
  %62 = getelementptr inbounds %struct.necp_tcp_ecn_cache, %struct.necp_tcp_ecn_cache* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @TCPCACHE_F_ECN_DROPRST, align 4
  %67 = call i32 @tcp_heuristic_inc_counters(%struct.tcp_cache_key_src* %7, i32 %66)
  br label %94

68:                                               ; preds = %60
  %69 = load %struct.necp_tcp_ecn_cache*, %struct.necp_tcp_ecn_cache** %4, align 8
  %70 = getelementptr inbounds %struct.necp_tcp_ecn_cache, %struct.necp_tcp_ecn_cache* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @TCPCACHE_F_ECN_DROPRXMT, align 4
  %75 = call i32 @tcp_heuristic_inc_counters(%struct.tcp_cache_key_src* %7, i32 %74)
  br label %93

76:                                               ; preds = %68
  %77 = load %struct.necp_tcp_ecn_cache*, %struct.necp_tcp_ecn_cache** %4, align 8
  %78 = getelementptr inbounds %struct.necp_tcp_ecn_cache, %struct.necp_tcp_ecn_cache* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @TCPCACHE_F_ECN_SYNRST, align 4
  %83 = call i32 @tcp_heuristic_inc_counters(%struct.tcp_cache_key_src* %7, i32 %82)
  br label %92

84:                                               ; preds = %76
  %85 = load %struct.necp_tcp_ecn_cache*, %struct.necp_tcp_ecn_cache** %4, align 8
  %86 = getelementptr inbounds %struct.necp_tcp_ecn_cache, %struct.necp_tcp_ecn_cache* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i32 @tcp_heuristic_ecn_aggressive_common(%struct.tcp_cache_key_src* %7)
  br label %91

91:                                               ; preds = %89, %84
  br label %92

92:                                               ; preds = %91, %81
  br label %93

93:                                               ; preds = %92, %73
  br label %94

94:                                               ; preds = %93, %65
  br label %95

95:                                               ; preds = %94, %57
  br label %96

96:                                               ; preds = %95, %49
  ret void
}

declare dso_local i32 @memset(%struct.tcp_cache_key_src*, i32, i32) #1

declare dso_local i32 @calculate_tcp_clock(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @tcp_heuristic_reset_counters(%struct.tcp_cache_key_src*, i32) #1

declare dso_local i32 @tcp_heuristic_inc_counters(%struct.tcp_cache_key_src*, i32) #1

declare dso_local i32 @tcp_heuristic_ecn_aggressive_common(%struct.tcp_cache_key_src*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
