; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_flow_lim_stats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_flow_lim_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet_stats_per_flow = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.if_lim_perf_stat = type { i32, i32, i64, i32, i32, i32, i8*, i8*, i32, i32, i32, i32 }

@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@TCP_RTTVAR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet_stats_per_flow*, %struct.if_lim_perf_stat*)* @tcp_flow_lim_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_flow_lim_stats(%struct.ifnet_stats_per_flow* %0, %struct.if_lim_perf_stat* %1) #0 {
  %3 = alloca %struct.ifnet_stats_per_flow*, align 8
  %4 = alloca %struct.if_lim_perf_stat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ifnet_stats_per_flow* %0, %struct.ifnet_stats_per_flow** %3, align 8
  store %struct.if_lim_perf_stat* %1, %struct.if_lim_perf_stat** %4, align 8
  %7 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %7, i32 0, i32 11
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %11 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %9
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %17 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %16, i32 0, i32 10
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %20 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %18
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 8
  %25 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %26 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %25, i32 0, i32 9
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %29 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %35 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %38 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  %43 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %44 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %2
  %48 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %49 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %50, 8000
  store i32 %51, i32* %49, align 8
  %52 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %53 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %52, i32 0, i32 7
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %56 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @max(i8* %54, i32 %57)
  %59 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %60 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %59, i32 0, i32 7
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %47, %2
  %62 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %63 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %68 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 8000
  store i32 %70, i32* %68, align 4
  %71 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %72 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %71, i32 0, i32 6
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %75 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @max(i8* %73, i32 %76)
  %78 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %79 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %66, %61
  %81 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %82 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %85 = ashr i32 %83, %84
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %116

88:                                               ; preds = %80
  %89 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %90 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp sge i32 %91, 16
  br i1 %92, label %93, label %116

93:                                               ; preds = %88
  %94 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %95 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %101 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %115

102:                                              ; preds = %93
  %103 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %104 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = shl i32 %106, 4
  %108 = load i32, i32* %6, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %109, %110
  %112 = ashr i32 %111, 4
  %113 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %114 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %102, %98
  br label %116

116:                                              ; preds = %115, %88, %80
  %117 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %118 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @TCP_RTTVAR_SHIFT, align 4
  %121 = ashr i32 %119, %120
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %152

124:                                              ; preds = %116
  %125 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %126 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp sge i32 %127, 16
  br i1 %128, label %129, label %152

129:                                              ; preds = %124
  %130 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %131 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %137 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  br label %151

138:                                              ; preds = %129
  %139 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %140 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = shl i32 %142, 4
  %144 = load i32, i32* %6, align 4
  %145 = sub nsw i32 %143, %144
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %145, %146
  %148 = ashr i32 %147, 4
  %149 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %150 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %138, %134
  br label %152

152:                                              ; preds = %151, %124, %116
  %153 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %154 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %159 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %162 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  br label %173

163:                                              ; preds = %152
  %164 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %165 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %168 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @min(i64 %166, i64 %169)
  %171 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %172 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %171, i32 0, i32 2
  store i64 %170, i64* %172, align 8
  br label %173

173:                                              ; preds = %163, %157
  %174 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %175 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 8
  %178 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %179 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %178, i32 0, i32 7
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %173
  %183 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %184 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %182, %173
  %188 = load %struct.ifnet_stats_per_flow*, %struct.ifnet_stats_per_flow** %3, align 8
  %189 = getelementptr inbounds %struct.ifnet_stats_per_flow, %struct.ifnet_stats_per_flow* %188, i32 0, i32 6
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.if_lim_perf_stat*, %struct.if_lim_perf_stat** %4, align 8
  %192 = getelementptr inbounds %struct.if_lim_perf_stat, %struct.if_lim_perf_stat* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %190
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %192, align 8
  ret void
}

declare dso_local i8* @max(i8*, i32) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
