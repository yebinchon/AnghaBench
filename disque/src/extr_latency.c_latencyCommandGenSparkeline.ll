; ModuleID = '/home/carl/AnghaBench/disque/src/extr_latency.c_latencyCommandGenSparkeline.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_latency.c_latencyCommandGenSparkeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.latencyTimeSeries = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sequence = type { i64 }

@LATENCY_TS_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ds\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%dm\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%dh\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%dd\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"%s - high %lu ms, low %lu ms (all time high %lu ms)\0A\00", align 1
@LATENCY_GRAPH_COLS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SPARKLINE_FILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @latencyCommandGenSparkeline(i8* %0, %struct.latencyTimeSeries* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.latencyTimeSeries*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sequence*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [64 x i8], align 16
  store i8* %0, i8** %3, align 8
  store %struct.latencyTimeSeries* %1, %struct.latencyTimeSeries** %4, align 8
  %14 = call %struct.sequence* (...) @createSparklineSequence()
  store %struct.sequence* %14, %struct.sequence** %6, align 8
  %15 = call i32 (...) @sdsempty()
  store i32 %15, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %149, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @LATENCY_TS_LEN, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %152

20:                                               ; preds = %16
  %21 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %22 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @LATENCY_TS_LEN, align 4
  %27 = srem i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %29 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  br label %149

38:                                               ; preds = %20
  %39 = load %struct.sequence*, %struct.sequence** %6, align 8
  %40 = getelementptr inbounds %struct.sequence, %struct.sequence* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %45 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %9, align 8
  store i64 %51, i64* %8, align 8
  br label %93

52:                                               ; preds = %38
  %53 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %54 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %52
  %64 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %65 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %9, align 8
  br label %72

72:                                               ; preds = %63, %52
  %73 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %74 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %72
  %84 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %85 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %83, %72
  br label %93

93:                                               ; preds = %92, %43
  %94 = call i32 @time(i32* null)
  %95 = sext i32 %94 to i64
  %96 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %97 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %95, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %106, 60
  br i1 %107, label %108, label %112

108:                                              ; preds = %93
  %109 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @snprintf(i8* %109, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %110)
  br label %135

112:                                              ; preds = %93
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 3600
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %117 = load i32, i32* %11, align 4
  %118 = sdiv i32 %117, 60
  %119 = call i32 @snprintf(i8* %116, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  br label %134

120:                                              ; preds = %112
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 86400
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %125 = load i32, i32* %11, align 4
  %126 = sdiv i32 %125, 3600
  %127 = call i32 @snprintf(i8* %124, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  br label %133

128:                                              ; preds = %120
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %130 = load i32, i32* %11, align 4
  %131 = sdiv i32 %130, 86400
  %132 = call i32 @snprintf(i8* %129, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %128, %123
  br label %134

134:                                              ; preds = %133, %115
  br label %135

135:                                              ; preds = %134, %108
  %136 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %137 = call i8* @zstrdup(i8* %136)
  store i8* %137, i8** %12, align 8
  %138 = load %struct.sequence*, %struct.sequence** %6, align 8
  %139 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %140 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = call i32 @sparklineSequenceAddSample(%struct.sequence* %138, i64 %146, i8* %147)
  br label %149

149:                                              ; preds = %135, %37
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %16

152:                                              ; preds = %16
  %153 = load i32, i32* %7, align 4
  %154 = load i8*, i8** %3, align 8
  %155 = load i64, i64* %9, align 8
  %156 = load i64, i64* %8, align 8
  %157 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %158 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @sdscatprintf(i32 %153, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %154, i64 %155, i64 %156, i64 %159)
  store i32 %160, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %168, %152
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* @LATENCY_GRAPH_COLS, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %161
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @sdscatlen(i32 %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %5, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %5, align 4
  br label %161

171:                                              ; preds = %161
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @sdscatlen(i32 %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.sequence*, %struct.sequence** %6, align 8
  %176 = load i32, i32* @LATENCY_GRAPH_COLS, align 4
  %177 = load i32, i32* @SPARKLINE_FILL, align 4
  %178 = call i32 @sparklineRender(i32 %174, %struct.sequence* %175, i32 %176, i32 4, i32 %177)
  store i32 %178, i32* %7, align 4
  %179 = load %struct.sequence*, %struct.sequence** %6, align 8
  %180 = call i32 @freeSparklineSequence(%struct.sequence* %179)
  %181 = load i32, i32* %7, align 4
  ret i32 %181
}

declare dso_local %struct.sequence* @createSparklineSequence(...) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @zstrdup(i8*) #1

declare dso_local i32 @sparklineSequenceAddSample(%struct.sequence*, i64, i8*) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i8*, i64, i64, i64) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @sparklineRender(i32, %struct.sequence*, i32, i32, i32) #1

declare dso_local i32 @freeSparklineSequence(%struct.sequence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
