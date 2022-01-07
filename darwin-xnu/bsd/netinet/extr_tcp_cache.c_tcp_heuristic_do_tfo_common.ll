; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristic_do_tfo_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristic_do_tfo_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_cache_key_src = type { i32 }
%struct.tcp_heuristics_head = type { i32 }
%struct.tcp_heuristic = type { i64, i32, i32 }

@disable_tcp_heuristics = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@tcp_now = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_cache_key_src*)* @tcp_heuristic_do_tfo_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_heuristic_do_tfo_common(%struct.tcp_cache_key_src* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcp_cache_key_src*, align 8
  %4 = alloca %struct.tcp_heuristics_head*, align 8
  %5 = alloca %struct.tcp_heuristic*, align 8
  store %struct.tcp_cache_key_src* %0, %struct.tcp_cache_key_src** %3, align 8
  %6 = load i64, i64* @disable_tcp_heuristics, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @TRUE, align 4
  store i32 %9, i32* %2, align 4
  br label %44

10:                                               ; preds = %1
  %11 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %12 = call %struct.tcp_heuristic* @tcp_getheuristic_with_lock(%struct.tcp_cache_key_src* %11, i32 0, %struct.tcp_heuristics_head** %4)
  store %struct.tcp_heuristic* %12, %struct.tcp_heuristic** %5, align 8
  %13 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %5, align 8
  %14 = icmp eq %struct.tcp_heuristic* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %2, align 4
  br label %44

17:                                               ; preds = %10
  %18 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %5, align 8
  %19 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %40

23:                                               ; preds = %17
  %24 = load i32, i32* @tcp_now, align 4
  %25 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %5, align 8
  %26 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @TSTMP_GT(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %5, align 8
  %32 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @tcp_now, align 4
  %34 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %5, align 8
  %35 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %40

36:                                               ; preds = %23
  %37 = load %struct.tcp_heuristics_head*, %struct.tcp_heuristics_head** %4, align 8
  %38 = call i32 @tcp_heuristic_unlock(%struct.tcp_heuristics_head* %37)
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %30, %22
  %41 = load %struct.tcp_heuristics_head*, %struct.tcp_heuristics_head** %4, align 8
  %42 = call i32 @tcp_heuristic_unlock(%struct.tcp_heuristics_head* %41)
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %36, %15, %8
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.tcp_heuristic* @tcp_getheuristic_with_lock(%struct.tcp_cache_key_src*, i32, %struct.tcp_heuristics_head**) #1

declare dso_local i64 @TSTMP_GT(i32, i32) #1

declare dso_local i32 @tcp_heuristic_unlock(%struct.tcp_heuristics_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
