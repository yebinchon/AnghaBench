; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_cache_set_cookie_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_cache_set_cookie_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_cache_key_src = type { i32 }
%struct.tcp_cache_head = type { i32 }
%struct.tcp_cache = type { i64, i32 }

@TFO_COOKIE_LEN_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_cache_key_src*, i32*, i64)* @tcp_cache_set_cookie_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_cache_set_cookie_common(%struct.tcp_cache_key_src* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.tcp_cache_key_src*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tcp_cache_head*, align 8
  %8 = alloca %struct.tcp_cache*, align 8
  store %struct.tcp_cache_key_src* %0, %struct.tcp_cache_key_src** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %4, align 8
  %10 = call %struct.tcp_cache* @tcp_getcache_with_lock(%struct.tcp_cache_key_src* %9, i32 1, %struct.tcp_cache_head** %7)
  store %struct.tcp_cache* %10, %struct.tcp_cache** %8, align 8
  %11 = load %struct.tcp_cache*, %struct.tcp_cache** %8, align 8
  %12 = icmp eq %struct.tcp_cache* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %36

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @TFO_COOKIE_LEN_MAX, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i64, i64* @TFO_COOKIE_LEN_MAX, align 8
  br label %22

20:                                               ; preds = %14
  %21 = load i64, i64* %6, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i64 [ %19, %18 ], [ %21, %20 ]
  %24 = load %struct.tcp_cache*, %struct.tcp_cache** %8, align 8
  %25 = getelementptr inbounds %struct.tcp_cache, %struct.tcp_cache* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.tcp_cache*, %struct.tcp_cache** %8, align 8
  %27 = getelementptr inbounds %struct.tcp_cache, %struct.tcp_cache* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.tcp_cache*, %struct.tcp_cache** %8, align 8
  %31 = getelementptr inbounds %struct.tcp_cache, %struct.tcp_cache* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @memcpy(i32 %28, i32* %29, i64 %32)
  %34 = load %struct.tcp_cache_head*, %struct.tcp_cache_head** %7, align 8
  %35 = call i32 @tcp_cache_unlock(%struct.tcp_cache_head* %34)
  br label %36

36:                                               ; preds = %22, %13
  ret void
}

declare dso_local %struct.tcp_cache* @tcp_getcache_with_lock(%struct.tcp_cache_key_src*, i32, %struct.tcp_cache_head**) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @tcp_cache_unlock(%struct.tcp_cache_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
