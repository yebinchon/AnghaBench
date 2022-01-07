; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_ifnet_compute_percentages.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_ifnet_compute_percentages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_tcp_ecn_perf_stat = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_tcp_ecn_perf_stat*)* @nstat_ifnet_compute_percentages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nstat_ifnet_compute_percentages(%struct.if_tcp_ecn_perf_stat* %0) #0 {
  %2 = alloca %struct.if_tcp_ecn_perf_stat*, align 8
  store %struct.if_tcp_ecn_perf_stat* %0, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %3 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %4 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %9 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %14 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 10
  %17 = mul nsw i32 %16, 100
  %18 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %19 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %17, %20
  %22 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %23 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  br label %27

24:                                               ; preds = %7, %1
  %25 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %26 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %25, i32 0, i32 2
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %12
  %28 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %29 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %34 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %39 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 10
  %42 = mul nsw i32 %41, 100
  %43 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %44 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %42, %45
  %47 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %48 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  br label %52

49:                                               ; preds = %32, %27
  %50 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %51 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %50, i32 0, i32 5
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %37
  %53 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %54 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %52
  %58 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %59 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %62 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %57
  %67 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %68 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 10
  %71 = mul nsw i32 %70, 100
  %72 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %73 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %76 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %74, %77
  %79 = sdiv i32 %71, %78
  %80 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %81 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 4
  br label %85

82:                                               ; preds = %57, %52
  %83 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %2, align 8
  %84 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %83, i32 0, i32 7
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %66
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
