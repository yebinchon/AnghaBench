; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_framerate.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_framerate.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32**, i32** }
%struct.TYPE_9__ = type { i64, i64, i64, double, i64, i32, %struct.TYPE_10__*, i64, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Interlaced frame found - the output will not be correct.\0A\00", align 1
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Ignoring frame without PTS.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Ignoring frame with same PTS.\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"PTS discontinuity.\0A\00", align 1
@FFERROR_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i32**, i32*** %17, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %8, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @FF_FILTER_FORWARD_STATUS_BACK(i32* %24, i32* %25)
  br label %27

27:                                               ; preds = %179, %169, %1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = call i32 @process_work_frame(%struct.TYPE_11__* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %192

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ff_filter_frame(i32* %38, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %192

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @ff_inlink_consume_frame(i32* %45, %struct.TYPE_10__** %9)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %192

51:                                               ; preds = %44
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %53 = icmp ne %struct.TYPE_10__* %52, null
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = load i32, i32* @AV_LOG_WARNING, align 4
  %62 = call i32 @av_log(%struct.TYPE_11__* %60, i32 %61, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = load i32, i32* @AV_LOG_WARNING, align 4
  %72 = call i32 @av_log(%struct.TYPE_11__* %70, i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %73 = call i32 @av_frame_free(%struct.TYPE_10__** %9)
  br label %74

74:                                               ; preds = %69, %63
  br label %75

75:                                               ; preds = %74, %51
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %77 = icmp ne %struct.TYPE_10__* %76, null
  br i1 %77, label %78, label %105

78:                                               ; preds = %75
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 10
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @av_rescale_q(i64 %81, i32 %84, i32 %87)
  store i64 %88, i64* %10, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = icmp ne %struct.TYPE_10__* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %78
  %94 = load i64, i64* %10, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %94, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = load i32, i32* @AV_LOG_WARNING, align 4
  %102 = call i32 @av_log(%struct.TYPE_11__* %100, i32 %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %103 = call i32 @av_frame_free(%struct.TYPE_10__** %9)
  br label %104

104:                                              ; preds = %99, %93, %78
  br label %105

105:                                              ; preds = %104, %75
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %107 = icmp ne %struct.TYPE_10__* %106, null
  br i1 %107, label %108, label %170

108:                                              ; preds = %105
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 6
  %111 = call i32 @av_frame_free(%struct.TYPE_10__** %110)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 6
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 8
  store %struct.TYPE_10__* %122, %struct.TYPE_10__** %124, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %130, %133
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  store i64 %134, i64* %136, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 3
  store double -1.000000e+00, double* %138, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %108
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %145 = load i32, i32* @AV_LOG_WARNING, align 4
  %146 = call i32 @av_log(%struct.TYPE_11__* %144, i32 %145, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 4
  store i64 %149, i64* %151, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 7
  store i64 0, i64* %153, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 6
  %156 = call i32 @av_frame_free(%struct.TYPE_10__** %155)
  br label %157

157:                                              ; preds = %143, %108
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 4
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %163, %157
  br label %27

170:                                              ; preds = %105
  %171 = load i32*, i32** %6, align 8
  %172 = call i64 @ff_inlink_acknowledge_status(i32* %171, i32* %5, i64* %10)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %170
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 5
  store i32 1, i32* %181, align 8
  br label %27

182:                                              ; preds = %174
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %5, align 4
  %185 = load i64, i64* %10, align 8
  %186 = call i32 @ff_outlink_set_status(i32* %183, i32 %184, i64 %185)
  store i32 0, i32* %2, align 4
  br label %192

187:                                              ; preds = %170
  %188 = load i32*, i32** %7, align 8
  %189 = load i32*, i32** %6, align 8
  %190 = call i32 @FF_FILTER_FORWARD_WANTED(i32* %188, i32* %189)
  %191 = load i32, i32* @FFERROR_NOT_READY, align 4
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %187, %182, %49, %37, %32
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK(i32*, i32*) #1

declare dso_local i32 @process_work_frame(%struct.TYPE_11__*) #1

declare dso_local i32 @ff_filter_frame(i32*, i32) #1

declare dso_local i32 @ff_inlink_consume_frame(i32*, %struct.TYPE_10__**) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_10__**) #1

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

declare dso_local i64 @ff_inlink_acknowledge_status(i32*, i32*, i64*) #1

declare dso_local i32 @ff_outlink_set_status(i32*, i32, i64) #1

declare dso_local i32 @FF_FILTER_FORWARD_WANTED(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
