; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristics_tfo_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristics_tfo_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_tcp_tfo_cache = type { i32, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifnet = type { i32 }
%union.sockaddr_in_4_6 = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.tcp_cache_key_src = type { i64, %struct.TYPE_9__, %struct.TYPE_8__, %struct.ifnet* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@TCPCACHE_F_TFO_REQ = common dso_local global i32 0, align 4
@TCPCACHE_F_TFO_DATA = common dso_local global i32 0, align 4
@TCPCACHE_F_TFO_REQ_RST = common dso_local global i32 0, align 4
@TCPCACHE_F_TFO_DATA_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_heuristics_tfo_update(%struct.necp_tcp_tfo_cache* %0, %struct.ifnet* %1, %union.sockaddr_in_4_6* %2, %union.sockaddr_in_4_6* %3) #0 {
  %5 = alloca %struct.necp_tcp_tfo_cache*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %union.sockaddr_in_4_6*, align 8
  %8 = alloca %union.sockaddr_in_4_6*, align 8
  %9 = alloca %struct.tcp_cache_key_src, align 8
  store %struct.necp_tcp_tfo_cache* %0, %struct.necp_tcp_tfo_cache** %5, align 8
  store %struct.ifnet* %1, %struct.ifnet** %6, align 8
  store %union.sockaddr_in_4_6* %2, %union.sockaddr_in_4_6** %7, align 8
  store %union.sockaddr_in_4_6* %3, %union.sockaddr_in_4_6** %8, align 8
  %10 = call i32 @memset(%struct.tcp_cache_key_src* %9, i32 0, i32 32)
  %11 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %12 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %9, i32 0, i32 3
  store %struct.ifnet* %11, %struct.ifnet** %12, align 8
  %13 = call i32 (...) @calculate_tcp_clock()
  %14 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %8, align 8
  %15 = bitcast %union.sockaddr_in_4_6* %14 to %struct.TYPE_7__*
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AF_INET6, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %9, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %7, align 8
  %24 = bitcast %union.sockaddr_in_4_6* %23 to %struct.TYPE_6__*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = call i32 @memcpy(i32* %22, i32* %25, i32 4)
  %27 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %9, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %8, align 8
  %30 = bitcast %union.sockaddr_in_4_6* %29 to %struct.TYPE_6__*
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = call i32 @memcpy(i32* %28, i32* %31, i32 4)
  %33 = load i64, i64* @AF_INET6, align 8
  %34 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %9, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  br label %58

35:                                               ; preds = %4
  %36 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %8, align 8
  %37 = bitcast %union.sockaddr_in_4_6* %36 to %struct.TYPE_7__*
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AF_INET, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %9, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %7, align 8
  %46 = bitcast %union.sockaddr_in_4_6* %45 to %struct.TYPE_10__*
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = call i32 @memcpy(i32* %44, i32* %47, i32 4)
  %49 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %9, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %8, align 8
  %52 = bitcast %union.sockaddr_in_4_6* %51 to %struct.TYPE_10__*
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = call i32 @memcpy(i32* %50, i32* %53, i32 4)
  %55 = load i64, i64* @AF_INET, align 8
  %56 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %9, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %42, %35
  br label %58

58:                                               ; preds = %57, %20
  %59 = load %struct.necp_tcp_tfo_cache*, %struct.necp_tcp_tfo_cache** %5, align 8
  %60 = getelementptr inbounds %struct.necp_tcp_tfo_cache, %struct.necp_tcp_tfo_cache* %59, i32 0, i32 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load i32, i32* @TCPCACHE_F_TFO_REQ, align 4
  %65 = load i32, i32* @TCPCACHE_F_TFO_DATA, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @TCPCACHE_F_TFO_REQ_RST, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @TCPCACHE_F_TFO_DATA_RST, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @tcp_heuristic_reset_counters(%struct.tcp_cache_key_src* %9, i32 %70)
  br label %72

72:                                               ; preds = %63, %58
  %73 = load %struct.necp_tcp_tfo_cache*, %struct.necp_tcp_tfo_cache** %5, align 8
  %74 = getelementptr inbounds %struct.necp_tcp_tfo_cache, %struct.necp_tcp_tfo_cache* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32, i32* @TCPCACHE_F_TFO_REQ, align 4
  %79 = load i32, i32* @TCPCACHE_F_TFO_REQ_RST, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @tcp_heuristic_reset_counters(%struct.tcp_cache_key_src* %9, i32 %80)
  br label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.necp_tcp_tfo_cache*, %struct.necp_tcp_tfo_cache** %5, align 8
  %84 = getelementptr inbounds %struct.necp_tcp_tfo_cache, %struct.necp_tcp_tfo_cache* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i32, i32* @TCPCACHE_F_TFO_REQ, align 4
  %89 = load i32, i32* @TCPCACHE_F_TFO_DATA, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @tcp_heuristic_inc_counters(%struct.tcp_cache_key_src* %9, i32 %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.necp_tcp_tfo_cache*, %struct.necp_tcp_tfo_cache** %5, align 8
  %94 = getelementptr inbounds %struct.necp_tcp_tfo_cache, %struct.necp_tcp_tfo_cache* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @TCPCACHE_F_TFO_REQ, align 4
  %99 = call i32 @tcp_heuristic_inc_counters(%struct.tcp_cache_key_src* %9, i32 %98)
  br label %100

100:                                              ; preds = %97, %92
  %101 = load %struct.necp_tcp_tfo_cache*, %struct.necp_tcp_tfo_cache** %5, align 8
  %102 = getelementptr inbounds %struct.necp_tcp_tfo_cache, %struct.necp_tcp_tfo_cache* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i32, i32* @TCPCACHE_F_TFO_REQ_RST, align 4
  %107 = load i32, i32* @TCPCACHE_F_TFO_DATA_RST, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @tcp_heuristic_inc_counters(%struct.tcp_cache_key_src* %9, i32 %108)
  br label %110

110:                                              ; preds = %105, %100
  %111 = load %struct.necp_tcp_tfo_cache*, %struct.necp_tcp_tfo_cache** %5, align 8
  %112 = getelementptr inbounds %struct.necp_tcp_tfo_cache, %struct.necp_tcp_tfo_cache* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* @TCPCACHE_F_TFO_REQ_RST, align 4
  %117 = call i32 @tcp_heuristic_inc_counters(%struct.tcp_cache_key_src* %9, i32 %116)
  br label %118

118:                                              ; preds = %115, %110
  %119 = load %struct.necp_tcp_tfo_cache*, %struct.necp_tcp_tfo_cache** %5, align 8
  %120 = getelementptr inbounds %struct.necp_tcp_tfo_cache, %struct.necp_tcp_tfo_cache* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = call i32 @tcp_heuristic_tfo_middlebox_common(%struct.tcp_cache_key_src* %9)
  br label %125

125:                                              ; preds = %123, %118
  %126 = load %struct.necp_tcp_tfo_cache*, %struct.necp_tcp_tfo_cache** %5, align 8
  %127 = getelementptr inbounds %struct.necp_tcp_tfo_cache, %struct.necp_tcp_tfo_cache* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load %struct.necp_tcp_tfo_cache*, %struct.necp_tcp_tfo_cache** %5, align 8
  %132 = getelementptr inbounds %struct.necp_tcp_tfo_cache, %struct.necp_tcp_tfo_cache* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.necp_tcp_tfo_cache*, %struct.necp_tcp_tfo_cache** %5, align 8
  %135 = getelementptr inbounds %struct.necp_tcp_tfo_cache, %struct.necp_tcp_tfo_cache* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @tcp_cache_set_cookie_common(%struct.tcp_cache_key_src* %9, i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %130, %125
  ret void
}

declare dso_local i32 @memset(%struct.tcp_cache_key_src*, i32, i32) #1

declare dso_local i32 @calculate_tcp_clock(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @tcp_heuristic_reset_counters(%struct.tcp_cache_key_src*, i32) #1

declare dso_local i32 @tcp_heuristic_inc_counters(%struct.tcp_cache_key_src*, i32) #1

declare dso_local i32 @tcp_heuristic_tfo_middlebox_common(%struct.tcp_cache_key_src*) #1

declare dso_local i32 @tcp_cache_set_cookie_common(%struct.tcp_cache_key_src*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
