; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_cache_get_cookie_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_cache_get_cookie_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_cache_key_src = type { i32 }
%struct.tcp_cache_head = type { i32 }
%struct.tcp_cache = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_cache_key_src*, i32*, i64*)* @tcp_cache_get_cookie_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_cache_get_cookie_common(%struct.tcp_cache_key_src* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_cache_key_src*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.tcp_cache_head*, align 8
  %9 = alloca %struct.tcp_cache*, align 8
  store %struct.tcp_cache_key_src* %0, %struct.tcp_cache_key_src** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %5, align 8
  %11 = call %struct.tcp_cache* @tcp_getcache_with_lock(%struct.tcp_cache_key_src* %10, i32 1, %struct.tcp_cache_head** %8)
  store %struct.tcp_cache* %11, %struct.tcp_cache** %9, align 8
  %12 = load %struct.tcp_cache*, %struct.tcp_cache** %9, align 8
  %13 = icmp eq %struct.tcp_cache* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

15:                                               ; preds = %3
  %16 = load %struct.tcp_cache*, %struct.tcp_cache** %9, align 8
  %17 = getelementptr inbounds %struct.tcp_cache, %struct.tcp_cache* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.tcp_cache_head*, %struct.tcp_cache_head** %8, align 8
  %22 = call i32 @tcp_cache_unlock(%struct.tcp_cache_head* %21)
  store i32 0, i32* %4, align 4
  br label %46

23:                                               ; preds = %15
  %24 = load %struct.tcp_cache*, %struct.tcp_cache** %9, align 8
  %25 = getelementptr inbounds %struct.tcp_cache, %struct.tcp_cache* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @VERIFY(i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.tcp_cache*, %struct.tcp_cache** %9, align 8
  %34 = getelementptr inbounds %struct.tcp_cache, %struct.tcp_cache* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.tcp_cache*, %struct.tcp_cache** %9, align 8
  %37 = getelementptr inbounds %struct.tcp_cache, %struct.tcp_cache* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @memcpy(i32* %32, i32 %35, i64 %38)
  %40 = load %struct.tcp_cache*, %struct.tcp_cache** %9, align 8
  %41 = getelementptr inbounds %struct.tcp_cache, %struct.tcp_cache* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %7, align 8
  store i64 %42, i64* %43, align 8
  %44 = load %struct.tcp_cache_head*, %struct.tcp_cache_head** %8, align 8
  %45 = call i32 @tcp_cache_unlock(%struct.tcp_cache_head* %44)
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %23, %20, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.tcp_cache* @tcp_getcache_with_lock(%struct.tcp_cache_key_src*, i32, %struct.tcp_cache_head**) #1

declare dso_local i32 @tcp_cache_unlock(%struct.tcp_cache_head*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
