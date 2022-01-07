; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_flow_ecn_perf_stats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_flow_ecn_perf_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet_stats_per_flow = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.if_tcp_ecn_perf_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@TCP_RTTVAR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet_stats_per_flow*, %struct.if_tcp_ecn_perf_stat*)* @tcp_flow_ecn_perf_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_flow_ecn_perf_stats(%struct.ifnet_stats_per_flow* %0, %struct.if_tcp_ecn_perf_stat* %1) #0 {
  %3 = alloca %struct.ifnet_stats_per_flow*, align 8
  %4 = alloca %struct.if_tcp_ecn_perf_stat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ifnet_stats_per_flow* %0, %struct.ifnet_stats_per_flow** %3, align 8
  store %struct.if_tcp_ecn_perf_stat* %1, %struct.if_tcp_ecn_perf_stat** %4, align 8
  %7 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %7, i32 0, i32 12
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %4, align 8
  %11 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %9
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %17 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %16, i32 0, i32 11
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %4, align 8
  %20 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %18
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  %25 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %26 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %25, i32 0, i32 10
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %4, align 8
  %29 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %35 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %34, i32 0, i32 9
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %4, align 8
  %38 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  %43 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %44 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %43, i32 0, i32 8
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %47 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %51 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %55 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %4, align 8
  %59 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  %64 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %65 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %68 = ashr i32 %66, %67
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %2
  %72 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %73 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sge i32 %74, 16
  br i1 %75, label %76, label %99

76:                                               ; preds = %71
  %77 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %4, align 8
  %78 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %4, align 8
  %84 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %98

85:                                               ; preds = %76
  %86 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %4, align 8
  %87 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = shl i32 %89, 4
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %92, %93
  %95 = ashr i32 %94, 4
  %96 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %4, align 8
  %97 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %85, %81
  br label %99

99:                                               ; preds = %98, %71, %2
  %100 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %101 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @TCP_RTTVAR_SHIFT, align 4
  %104 = ashr i32 %102, %103
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %99
  %108 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %109 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp sge i32 %110, 16
  br i1 %111, label %112, label %135

112:                                              ; preds = %107
  %113 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %4, align 8
  %114 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %4, align 8
  %120 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %134

121:                                              ; preds = %112
  %122 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %4, align 8
  %123 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = shl i32 %125, 4
  %127 = load i32, i32* %6, align 4
  %128 = sub nsw i32 %126, %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %128, %129
  %131 = ashr i32 %130, 4
  %132 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %4, align 8
  %133 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %121, %117
  br label %135

135:                                              ; preds = %134, %107, %99
  %136 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %137 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %4, align 8
  %140 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %138
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 4
  %145 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %146 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %135
  %150 = load %struct.if_tcp_ecn_perf_stat*, %struct.if_tcp_ecn_perf_stat** %4, align 8
  %151 = getelementptr inbounds %struct.if_tcp_ecn_perf_stat, %struct.if_tcp_ecn_perf_stat* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %149, %135
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
