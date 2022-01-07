; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_cache_hash_src.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_cache_hash_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_cache_key_src = type { i64, %struct.TYPE_4__, %struct.ifnet* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ifnet = type { i32 }
%struct.tcp_heuristic_key = type { %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_cache_key_src*, %struct.tcp_heuristic_key*)* @tcp_cache_hash_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_cache_hash_src(%struct.tcp_cache_key_src* %0, %struct.tcp_heuristic_key* %1) #0 {
  %3 = alloca %struct.tcp_cache_key_src*, align 8
  %4 = alloca %struct.tcp_heuristic_key*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tcp_cache_key_src* %0, %struct.tcp_cache_key_src** %3, align 8
  store %struct.tcp_heuristic_key* %1, %struct.tcp_heuristic_key** %4, align 8
  %10 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %11 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %10, i32 0, i32 2
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %5, align 8
  store i32 4, i32* %6, align 4
  %13 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %14 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AF_INET6, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %2
  %19 = load i64, i64* @AF_INET6, align 8
  %20 = load %struct.tcp_heuristic_key*, %struct.tcp_heuristic_key** %4, align 8
  %21 = getelementptr inbounds %struct.tcp_heuristic_key, %struct.tcp_heuristic_key* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %23 = load i64, i64* @AF_INET6, align 8
  %24 = load %struct.tcp_heuristic_key*, %struct.tcp_heuristic_key** %4, align 8
  %25 = getelementptr inbounds %struct.tcp_heuristic_key, %struct.tcp_heuristic_key* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ifnet_get_netsignature(%struct.ifnet* %22, i64 %23, i32* %6, i32* %7, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @ENOENT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31, %18
  %36 = load %struct.tcp_heuristic_key*, %struct.tcp_heuristic_key** %4, align 8
  %37 = getelementptr inbounds %struct.tcp_heuristic_key, %struct.tcp_heuristic_key* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %40 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = call i32 @memcpy(i32* %38, i32* %41, i32 4)
  br label %43

43:                                               ; preds = %35, %31
  br label %70

44:                                               ; preds = %2
  %45 = load i64, i64* @AF_INET, align 8
  %46 = load %struct.tcp_heuristic_key*, %struct.tcp_heuristic_key** %4, align 8
  %47 = getelementptr inbounds %struct.tcp_heuristic_key, %struct.tcp_heuristic_key* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %49 = load i64, i64* @AF_INET, align 8
  %50 = load %struct.tcp_heuristic_key*, %struct.tcp_heuristic_key** %4, align 8
  %51 = getelementptr inbounds %struct.tcp_heuristic_key, %struct.tcp_heuristic_key* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ifnet_get_netsignature(%struct.ifnet* %48, i64 %49, i32* %6, i32* %7, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @ENOENT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @EINVAL, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57, %44
  %62 = load %struct.tcp_heuristic_key*, %struct.tcp_heuristic_key** %4, align 8
  %63 = getelementptr inbounds %struct.tcp_heuristic_key, %struct.tcp_heuristic_key* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %66 = getelementptr inbounds %struct.tcp_cache_key_src, %struct.tcp_cache_key_src* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @memcpy(i32* %64, i32* %67, i32 4)
  br label %69

69:                                               ; preds = %61, %57
  br label %70

70:                                               ; preds = %69, %43
  ret void
}

declare dso_local i32 @ifnet_get_netsignature(%struct.ifnet*, i64, i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
