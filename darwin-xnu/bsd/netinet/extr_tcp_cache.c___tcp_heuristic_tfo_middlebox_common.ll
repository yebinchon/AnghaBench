; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c___tcp_heuristic_tfo_middlebox_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c___tcp_heuristic_tfo_middlebox_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_heuristic = type { i32, i64, i64, i64 }

@tcp_now = common dso_local global i64 0, align 8
@tcp_ecn_timeout = common dso_local global i32 0, align 4
@tcp_backoff_maximum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_heuristic*)* @__tcp_heuristic_tfo_middlebox_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tcp_heuristic_tfo_middlebox_common(%struct.tcp_heuristic* %0) #0 {
  %2 = alloca %struct.tcp_heuristic*, align 8
  %3 = alloca i64, align 8
  store %struct.tcp_heuristic* %0, %struct.tcp_heuristic** %2, align 8
  %4 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %2, align 8
  %5 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %66

9:                                                ; preds = %1
  %10 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %2, align 8
  %11 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %2, align 8
  %13 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %9
  %17 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %2, align 8
  %18 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* @tcp_now, align 8
  %21 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %2, align 8
  %22 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %2, align 8
  %26 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %2, align 8
  %30 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %16
  %35 = load i32, i32* @tcp_ecn_timeout, align 4
  %36 = call i8* @tcp_min_to_hz(i32 %35)
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %2, align 8
  %39 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %16
  br label %41

41:                                               ; preds = %40, %9
  %42 = load i64, i64* @tcp_now, align 8
  %43 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %2, align 8
  %44 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %2, align 8
  %48 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %2, align 8
  %50 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = mul nsw i64 %51, 2
  store i64 %52, i64* %50, align 8
  %53 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %2, align 8
  %54 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load i32, i32* @tcp_backoff_maximum, align 4
  %58 = call i8* @tcp_min_to_hz(i32 %57)
  %59 = icmp ugt i8* %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %41
  %61 = load i32, i32* @tcp_ecn_timeout, align 4
  %62 = call i8* @tcp_min_to_hz(i32 %61)
  %63 = ptrtoint i8* %62 to i64
  %64 = load %struct.tcp_heuristic*, %struct.tcp_heuristic** %2, align 8
  %65 = getelementptr inbounds %struct.tcp_heuristic, %struct.tcp_heuristic* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %8, %60, %41
  ret void
}

declare dso_local i8* @tcp_min_to_hz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
