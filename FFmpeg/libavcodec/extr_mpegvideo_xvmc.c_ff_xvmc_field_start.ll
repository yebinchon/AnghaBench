; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_xvmc.c_ff_xvmc_field_start.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_xvmc.c_ff_xvmc_field_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.MpegEncContext* }
%struct.MpegEncContext = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_14__, i64, i32, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64* }
%struct.xvmc_pix_fmt = type { i64, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i64, i32, i32 }

@AV_XVMC_ID = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Render token doesn't look as expected.\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Rendering surface contains %i unprocessed blocks.\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Rendering surface doesn't provide enough block structures to work with.\0A\00", align 1
@XVMC_SECOND_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*, i32)* @ff_xvmc_field_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_xvmc_field_start(%struct.TYPE_17__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.MpegEncContext*, align 8
  %9 = alloca %struct.xvmc_pix_fmt*, align 8
  %10 = alloca %struct.xvmc_pix_fmt*, align 8
  %11 = alloca %struct.xvmc_pix_fmt*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load %struct.MpegEncContext*, %struct.MpegEncContext** %14, align 8
  store %struct.MpegEncContext* %15, %struct.MpegEncContext** %8, align 8
  %16 = load %struct.MpegEncContext*, %struct.MpegEncContext** %8, align 8
  %17 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.xvmc_pix_fmt*
  store %struct.xvmc_pix_fmt* %24, %struct.xvmc_pix_fmt** %11, align 8
  %25 = load %struct.MpegEncContext*, %struct.MpegEncContext** %8, align 8
  %26 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 1, %27
  %29 = add nsw i32 4, %28
  store i32 %29, i32* %12, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = call i32 @assert(%struct.TYPE_17__* %30)
  %32 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %33 = icmp ne %struct.xvmc_pix_fmt* %32, null
  br i1 %33, label %34, label %69

34:                                               ; preds = %3
  %35 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %36 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AV_XVMC_ID, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %69, label %40

40:                                               ; preds = %34
  %41 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %42 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %40
  %46 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %47 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %45
  %51 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %52 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @INT_MAX, align 4
  %55 = sdiv i32 %54, 384
  %56 = icmp ugt i32 %53, %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %50
  %58 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %59 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @INT_MAX, align 4
  %62 = sdiv i32 %61, 64
  %63 = icmp ugt i32 %60, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %66 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %64, %57, %50, %45, %40, %34, %3
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %70, i32 %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %209

73:                                               ; preds = %64
  %74 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %75 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %74, i32 0, i32 10
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = load i32, i32* @AV_LOG_ERROR, align 4
  %81 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %82 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %81, i32 0, i32 10
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %79, i32 %80, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %83)
  store i32 -1, i32* %4, align 4
  br label %209

85:                                               ; preds = %73
  %86 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %87 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %126, label %90

90:                                               ; preds = %85
  %91 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %92 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %95 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = mul nsw i32 %96, %97
  %99 = icmp slt i32 %93, %98
  br i1 %99, label %126, label %100

100:                                              ; preds = %90
  %101 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %102 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %105 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp sge i32 %103, %106
  br i1 %107, label %126, label %108

108:                                              ; preds = %100
  %109 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %110 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %113 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %117 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %120 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %118, %121
  %123 = mul nsw i32 %115, %122
  %124 = sub nsw i32 %114, %123
  %125 = icmp sgt i32 %111, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %108, %100, %90, %85
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %128 = load i32, i32* @AV_LOG_ERROR, align 4
  %129 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %127, i32 %128, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %209

130:                                              ; preds = %108
  %131 = load %struct.MpegEncContext*, %struct.MpegEncContext** %8, align 8
  %132 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %135 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %134, i32 0, i32 9
  store i32 %133, i32* %135, align 4
  %136 = load %struct.MpegEncContext*, %struct.MpegEncContext** %8, align 8
  %137 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %143

141:                                              ; preds = %130
  %142 = load i32, i32* @XVMC_SECOND_FIELD, align 4
  br label %143

143:                                              ; preds = %141, %140
  %144 = phi i32 [ 0, %140 ], [ %142, %141 ]
  %145 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %146 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %145, i32 0, i32 8
  store i32 %144, i32* %146, align 8
  %147 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %148 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %147, i32 0, i32 7
  store i32* null, i32** %148, align 8
  %149 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %150 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %149, i32 0, i32 6
  store i32* null, i32** %150, align 8
  %151 = load %struct.MpegEncContext*, %struct.MpegEncContext** %8, align 8
  %152 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  switch i32 %153, label %208 [
    i32 129, label %154
    i32 130, label %155
    i32 128, label %181
  ]

154:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  br label %209

155:                                              ; preds = %143
  %156 = load %struct.MpegEncContext*, %struct.MpegEncContext** %8, align 8
  %157 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 2
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to %struct.xvmc_pix_fmt*
  store %struct.xvmc_pix_fmt* %164, %struct.xvmc_pix_fmt** %10, align 8
  %165 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %10, align 8
  %166 = icmp ne %struct.xvmc_pix_fmt* %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %155
  store i32 -1, i32* %4, align 4
  br label %209

168:                                              ; preds = %155
  %169 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %10, align 8
  %170 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @AV_XVMC_ID, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  store i32 -1, i32* %4, align 4
  br label %209

175:                                              ; preds = %168
  %176 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %10, align 8
  %177 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %176, i32 0, i32 5
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %180 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %179, i32 0, i32 7
  store i32* %178, i32** %180, align 8
  br label %181

181:                                              ; preds = %143, %175
  %182 = load %struct.MpegEncContext*, %struct.MpegEncContext** %8, align 8
  %183 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i64*, i64** %186, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 2
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to %struct.xvmc_pix_fmt*
  store %struct.xvmc_pix_fmt* %190, %struct.xvmc_pix_fmt** %9, align 8
  %191 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %9, align 8
  %192 = icmp ne %struct.xvmc_pix_fmt* %191, null
  br i1 %192, label %195, label %193

193:                                              ; preds = %181
  %194 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  store %struct.xvmc_pix_fmt* %194, %struct.xvmc_pix_fmt** %9, align 8
  br label %195

195:                                              ; preds = %193, %181
  %196 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %9, align 8
  %197 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @AV_XVMC_ID, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  store i32 -1, i32* %4, align 4
  br label %209

202:                                              ; preds = %195
  %203 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %9, align 8
  %204 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %203, i32 0, i32 5
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %11, align 8
  %207 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %206, i32 0, i32 6
  store i32* %205, i32** %207, align 8
  store i32 0, i32* %4, align 4
  br label %209

208:                                              ; preds = %143
  store i32 -1, i32* %4, align 4
  br label %209

209:                                              ; preds = %208, %202, %201, %174, %167, %154, %126, %78, %69
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32 @assert(%struct.TYPE_17__*) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
