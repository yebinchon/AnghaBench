; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_lim_activity_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_lim_activity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_lim_perf_stat = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i32, i64 }

@nstat_lim_min_tx_pkts = common dso_local global i64 0, align 8
@nstat_lim_min_rx_pkts = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NSTAT_LIM_DL_MAX_BANDWIDTH_THRESHOLD = common dso_local global i64 0, align 8
@NSTAT_LIM_UL_MAX_BANDWIDTH_THRESHOLD = common dso_local global i64 0, align 8
@NSTAT_LIM_UL_MIN_RTT_THRESHOLD = common dso_local global i64 0, align 8
@NSTAT_LIM_CONN_TIMEOUT_PERCENT_THRESHOLD = common dso_local global i32 0, align 4
@NSTAT_LIM_PACKET_LOSS_PERCENT_THRESHOLD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_lim_perf_stat*)* @nstat_lim_activity_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nstat_lim_activity_check(%struct.if_lim_perf_stat* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.if_lim_perf_stat*, align 8
  store %struct.if_lim_perf_stat* %0, %struct.if_lim_perf_stat** %3, align 8
  %4 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %5 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @nstat_lim_min_tx_pkts, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %11 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @nstat_lim_min_rx_pkts, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %17 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %9, %1
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %122

22:                                               ; preds = %15
  %23 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %24 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 10
  %27 = sext i32 %26 to i64
  %28 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %29 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sdiv i64 %27, %30
  %32 = mul nsw i64 %31, 100
  %33 = trunc i64 %32 to i32
  %34 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %35 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %37 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 10
  %40 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %41 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sdiv i32 %39, %42
  %44 = mul nsw i32 %43, 100
  %45 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %46 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %48 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 10
  %51 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %52 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %50, %53
  %55 = mul nsw i32 %54, 100
  %56 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %57 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 8
  %58 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %59 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %58, i32 0, i32 9
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %22
  %63 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %64 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %63, i32 0, i32 9
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NSTAT_LIM_DL_MAX_BANDWIDTH_THRESHOLD, align 8
  %67 = icmp sle i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %70 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %69, i32 0, i32 10
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %62, %22
  %72 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %73 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %72, i32 0, i32 11
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %78 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %77, i32 0, i32 11
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NSTAT_LIM_UL_MAX_BANDWIDTH_THRESHOLD, align 8
  %81 = icmp sle i64 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %84 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %83, i32 0, i32 12
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NSTAT_LIM_UL_MIN_RTT_THRESHOLD, align 8
  %87 = icmp sge i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82, %76
  %89 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %90 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %89, i32 0, i32 13
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %82
  %92 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %93 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %94, 20
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %98 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @NSTAT_LIM_CONN_TIMEOUT_PERCENT_THRESHOLD, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %104 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %103, i32 0, i32 13
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %96, %91
  %106 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %107 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %106, i32 0, i32 14
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @nstat_lim_min_tx_pkts, align 8
  %110 = icmp sge i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %113 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @NSTAT_LIM_PACKET_LOSS_PERCENT_THRESHOLD, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %3, align 8
  %119 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %118, i32 0, i32 13
  store i32 1, i32* %119, align 8
  br label %120

120:                                              ; preds = %117, %111, %105
  %121 = load i32, i32* @TRUE, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %120, %20
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
