; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristic_do_ecn_with_address.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristic_do_ecn_with_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%union.sockaddr_in_4_6 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.tcp_cache_key_src = type { i64, %struct.TYPE_7__, %struct.ifnet* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_heuristic_do_ecn_with_address(%struct.ifnet* %0, %union.sockaddr_in_4_6* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %union.sockaddr_in_4_6*, align 8
  %5 = alloca %struct.tcp_cache_key_src, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %union.sockaddr_in_4_6* %1, %union.sockaddr_in_4_6** %4, align 8
  %6 = call i32 @memset(%struct.tcp_cache_key_src* %5, i32 0, i32 24)
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %5, i32 0, i32 2
  store %struct.ifnet* %7, %struct.ifnet** %8, align 8
  %9 = call i32 (...) @calculate_tcp_clock()
  %10 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %4, align 8
  %11 = bitcast %union.sockaddr_in_4_6* %10 to %struct.TYPE_6__*
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AF_INET6, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %5, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %4, align 8
  %20 = bitcast %union.sockaddr_in_4_6* %19 to %struct.TYPE_5__*
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @memcpy(i32* %18, i32* %21, i32 4)
  %23 = load i64, i64* @AF_INET6, align 8
  %24 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %5, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  br label %42

25:                                               ; preds = %2
  %26 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %4, align 8
  %27 = bitcast %union.sockaddr_in_4_6* %26 to %struct.TYPE_6__*
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AF_INET, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %5, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %4, align 8
  %36 = bitcast %union.sockaddr_in_4_6* %35 to %struct.TYPE_8__*
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = call i32 @memcpy(i32* %34, i32* %37, i32 4)
  %39 = load i64, i64* @AF_INET, align 8
  %40 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %5, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %32, %25
  br label %42

42:                                               ; preds = %41, %16
  %43 = call i32 @tcp_heuristic_do_ecn_common(%struct.tcp_cache_key_src* %5)
  ret i32 %43
}

declare dso_local i32 @memset(%struct.tcp_cache_key_src*, i32, i32) #1

declare dso_local i32 @calculate_tcp_clock(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @tcp_heuristic_do_ecn_common(%struct.tcp_cache_key_src*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
