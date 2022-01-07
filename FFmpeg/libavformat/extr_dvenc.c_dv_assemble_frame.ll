; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dvenc.c_dv_assemble_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dvenc.c_dv_assemble_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_12__*, i32, i32*, %struct.TYPE_11__**, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Can't process DV frame #%d. Insufficient audio data or severe sync problem.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Unexpected frame size, %d != %d\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@MAX_AUDIO_FRAME_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"Can't process DV frame #%d. Insufficient video data or severe sync problem.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*, i32, i32**)* @dv_assemble_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dv_assemble_frame(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2, i32* %3, i32 %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32** %5, i32*** %13, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 7
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32**, i32*** %13, align 8
  store i32* %19, i32** %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %155 [
    i32 128, label %26
    i32 129, label %70
  ]

26:                                               ; preds = %6
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* %32, i32 %33, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %31, %26
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %39, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* %47, i32 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %54)
  %56 = load i32, i32* @ENOSYS, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %7, align 4
  br label %251

58:                                               ; preds = %38
  %59 = load i32**, i32*** %13, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memcpy(i32* %60, i32* %61, i32 %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %156

70:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %90, %70
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 6
  %81 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %81, i64 %83
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = icmp ne %struct.TYPE_11__* %78, %85
  br label %87

87:                                               ; preds = %77, %71
  %88 = phi i1 [ false, %71 ], [ %86, %77 ]
  br i1 %88, label %89, label %93

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %71

93:                                               ; preds = %87
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @av_fifo_size(i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* @MAX_AUDIO_FRAME_SIZE, align 4
  %105 = mul nsw i32 100, %104
  %106 = icmp sge i32 %103, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %93
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* @AV_LOG_ERROR, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* %108, i32 %109, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %107, %93
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 5
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %11, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @av_fifo_generic_write(i32 %121, i32* %122, i32 %123, i32* null)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 3
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @dv_audio_frame_size(%struct.TYPE_12__* %127, i32 %130, i32 %135)
  %137 = mul nsw i32 4, %136
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 5
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @av_fifo_size(i32 %145)
  %147 = icmp sle i32 %138, %146
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %14, align 4
  %150 = shl i32 %148, %149
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %156

155:                                              ; preds = %6
  br label %156

156:                                              ; preds = %155, %114, %58
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %161, label %250

161:                                              ; preds = %156
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 1
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 1, %168
  %170 = icmp eq i32 %165, %169
  br i1 %170, label %171, label %250

171:                                              ; preds = %161
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %173 = load i32**, i32*** %13, align 8
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @dv_inject_metadata(%struct.TYPE_10__* %172, i32* %174)
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 2
  store i32 0, i32* %177, align 8
  store i32 0, i32* %14, align 4
  br label %178

178:                                              ; preds = %235, %171
  %179 = load i32, i32* %14, align 4
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %238

184:                                              ; preds = %178
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %186 = load i32, i32* %14, align 4
  %187 = load i32**, i32*** %13, align 8
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @dv_inject_audio(%struct.TYPE_10__* %185, i32 %186, i32* %188)
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 3
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %191, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 6
  %198 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %197, align 8
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %198, i64 %200
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @dv_audio_frame_size(%struct.TYPE_12__* %192, i32 %195, i32 %206)
  %208 = mul nsw i32 4, %207
  store i32 %208, i32* %15, align 4
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 5
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %15, align 4
  %217 = call i32 @av_fifo_drain(i32 %215, i32 %216)
  %218 = load i32, i32* %15, align 4
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 5
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @av_fifo_size(i32 %225)
  %227 = icmp sle i32 %218, %226
  %228 = zext i1 %227 to i32
  %229 = load i32, i32* %14, align 4
  %230 = shl i32 %228, %229
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  br label %235

235:                                              ; preds = %184
  %236 = load i32, i32* %14, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %14, align 4
  br label %178

238:                                              ; preds = %178
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  store i32 0, i32* %240, align 8
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 8
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 3
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %7, align 4
  br label %251

250:                                              ; preds = %161, %156
  store i32 0, i32* %7, align 4
  br label %251

251:                                              ; preds = %250, %238, %46
  %252 = load i32, i32* %7, align 4
  ret i32 %252
}

declare dso_local i32 @av_log(i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_fifo_size(i32) #1

declare dso_local i32 @av_fifo_generic_write(i32, i32*, i32, i32*) #1

declare dso_local i32 @dv_audio_frame_size(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @dv_inject_metadata(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @dv_inject_audio(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @av_fifo_drain(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
