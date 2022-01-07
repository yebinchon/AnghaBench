; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristic_do_ecn_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_heuristic_do_ecn_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_cache_key_src = type { i32 }
%struct.tcp_heuristics_head = type { i32 }
%struct.tcp_heuristic = type { i64, i64, i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@disable_tcp_heuristics = common dso_local global i64 0, align 8
@tcp_now = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ECN_RETRY_LIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_cache_key_src*)* @tcp_heuristic_do_ecn_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_heuristic_do_ecn_common(%struct.tcp_cache_key_src* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcp_cache_key_src*, align 8
  %4 = alloca %struct.tcp_heuristics_head*, align 8
  %5 = alloca %struct.tcp_heuristic*, align 8
  %6 = alloca i32, align 4
  store %struct.tcp_cache_key_src* %0, %struct.tcp_cache_key_src** %3, align 8
  %7 = load i32, i32* @TRUE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i64, i64* @disable_tcp_heuristics, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* %2, align 4
  br label %60

12:                                               ; preds = %1
  %13 = load %struct.tcp_cache_key_src*, %struct.tcp_cache_key_src** %3, align 8
  %14 = call %struct.tcp_heuristic* @tcp_getheuristic_with_lock(%struct.tcp_cache_key_src* %13, i32 0, %struct.tcp_heuristics_head** %4)
  store %struct.tcp_heuristic* %14, %struct.tcp_heuristic** %5, align 8
  %15 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %5, align 8
  %16 = icmp eq %struct.tcp_heuristic* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %60

19:                                               ; preds = %12
  %20 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %5, align 8
  %21 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @tcp_now, align 4
  %24 = call i64 @TSTMP_GT(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %6, align 4
  br label %56

28:                                               ; preds = %19
  %29 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %5, align 8
  %30 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ECN_RETRY_LIMIT, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %5, align 8
  %36 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %28
  %38 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %5, align 8
  %39 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ECN_RETRY_LIMIT, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %5, align 8
  %45 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %37
  %47 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %5, align 8
  %48 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ECN_RETRY_LIMIT, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %5, align 8
  %54 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %46
  br label %56

56:                                               ; preds = %55, %26
  %57 = load %struct.tcp_heuristics_head*, %struct.tcp_heuristics_head** %4, align 8
  %58 = call i32 @tcp_heuristic_unlock(%struct.tcp_heuristics_head* %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %17, %10
  %61 = load i32, i32* %2, align 4
  ret i32 %61
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
