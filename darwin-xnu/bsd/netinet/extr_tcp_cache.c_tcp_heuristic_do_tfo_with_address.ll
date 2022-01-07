; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristic_do_tfo_with_address.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristic_do_tfo_with_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_heuristic_do_tfo_with_address(%struct.ifnet* %0, %union.sockaddr_in_4_6* %1, %union.sockaddr_in_4_6* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %union.sockaddr_in_4_6*, align 8
  %9 = alloca %union.sockaddr_in_4_6*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.tcp_cache_key_src, align 8
  store %struct.ifnet* %0, %struct.ifnet** %7, align 8
  store %union.sockaddr_in_4_6* %1, %union.sockaddr_in_4_6** %8, align 8
  store %union.sockaddr_in_4_6* %2, %union.sockaddr_in_4_6** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = call i32 @memset(%struct.tcp_cache_key_src* %12, i32 0, i32 32)
  %14 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %15 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %12, i32 0, i32 3
  store %struct.ifnet* %14, %struct.ifnet** %15, align 8
  %16 = call i32 (...) @calculate_tcp_clock()
  %17 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %9, align 8
  %18 = bitcast %union.sockaddr_in_4_6* %17 to %struct.TYPE_7__*
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AF_INET6, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %12, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %8, align 8
  %27 = bitcast %union.sockaddr_in_4_6* %26 to %struct.TYPE_6__*
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @memcpy(i32* %25, i32* %28, i32 4)
  %30 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %12, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %9, align 8
  %33 = bitcast %union.sockaddr_in_4_6* %32 to %struct.TYPE_6__*
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @memcpy(i32* %31, i32* %34, i32 4)
  %36 = load i64, i64* @AF_INET6, align 8
  %37 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %12, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  br label %61

38:                                               ; preds = %5
  %39 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %9, align 8
  %40 = bitcast %union.sockaddr_in_4_6* %39 to %struct.TYPE_7__*
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AF_INET, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %12, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %8, align 8
  %49 = bitcast %union.sockaddr_in_4_6* %48 to %struct.TYPE_10__*
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = call i32 @memcpy(i32* %47, i32* %50, i32 4)
  %52 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %12, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6** %9, align 8
  %55 = bitcast %union.sockaddr_in_4_6* %54 to %struct.TYPE_10__*
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = call i32 @memcpy(i32* %53, i32* %56, i32 4)
  %58 = load i64, i64* @AF_INET, align 8
  %59 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %12, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %45, %38
  br label %61

61:                                               ; preds = %60, %23
  %62 = call i64 @tcp_heuristic_do_tfo_common(%struct.tcp_cache_key_src* %12)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i64*, i64** %10, align 8
  %66 = load i64*, i64** %11, align 8
  %67 = call i32 @tcp_cache_get_cookie_common(%struct.tcp_cache_key_src* %12, i64* %65, i64* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = load i64*, i64** %11, align 8
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %69, %64
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %6, align 4
  br label %75

73:                                               ; preds = %61
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @memset(%struct.tcp_cache_key_src*, i32, i32) #1

declare dso_local i32 @calculate_tcp_clock(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @tcp_heuristic_do_tfo_common(%struct.tcp_cache_key_src*) #1

declare dso_local i32 @tcp_cache_get_cookie_common(%struct.tcp_cache_key_src*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
