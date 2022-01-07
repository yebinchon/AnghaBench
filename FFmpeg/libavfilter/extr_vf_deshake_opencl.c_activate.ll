; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32**, i32** }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_12__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RingbufX = common dso_local global i64 0, align 8
@RingbufCount = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [292 x i8] c"Average kernel execution times:\0A\09        grayscale: %0.3f ms\0A\09  harris_response: %0.3f ms\0A\09  refine_features: %0.3f ms\0A\09brief_descriptors: %0.3f ms\0A\09match_descriptors: %0.3f ms\0A\09        transform: %0.3f ms\0A\09     crop_upscale: %0.3f ms\0AAverage buffer read times:\0A\09     features buf: %0.3f ms\0A\00", align 1
@FFERROR_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %15 = load i32**, i32*** %14, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %4, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32**, i32*** %19, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %5, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @FF_FILTER_FORWARD_STATUS_BACK(i32* %26, i32* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %122, label %33

33:                                               ; preds = %1
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @ff_inlink_consume_frame(i32* %34, %struct.TYPE_12__** %7)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %262

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %121

43:                                               ; preds = %40
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %262

51:                                               ; preds = %43
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 15
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = call i32 @deshake_opencl_init(%struct.TYPE_13__* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %262

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %51
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 14
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @RingbufX, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @av_fifo_space(i32 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %64
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %89, %74
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @RingbufCount, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %75
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 14
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @av_fifo_drain(i32 %87, i32 4)
  br label %89

89:                                               ; preds = %79
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %75

92:                                               ; preds = %75
  br label %93

93:                                               ; preds = %92, %64
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %96 = call i32 @queue_frame(i32* %94, %struct.TYPE_12__* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %2, align 4
  br label %262

101:                                              ; preds = %93
  %102 = load i32, i32* %8, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %101
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 13
  %107 = call i32 @ff_framequeue_queued_frames(i32* %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sdiv i32 %110, 2
  %112 = icmp sge i32 %107, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %104
  %114 = load i32*, i32** %4, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 13
  %117 = call i32 @ff_framequeue_take(i32* %116)
  %118 = call i32 @filter_frame(i32* %114, i32 %117)
  store i32 %118, i32* %2, align 4
  br label %262

119:                                              ; preds = %104
  br label %120

120:                                              ; preds = %119, %101
  br label %121

121:                                              ; preds = %120, %40
  br label %122

122:                                              ; preds = %121, %1
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %139, label %127

127:                                              ; preds = %122
  %128 = load i32*, i32** %4, align 8
  %129 = call i64 @ff_inlink_acknowledge_status(i32* %128, i32* %9, i32* %10)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @AVERROR_EOF, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  br label %138

138:                                              ; preds = %135, %131
  br label %139

139:                                              ; preds = %138, %127, %122
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %251

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %178, %144
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 13
  %148 = call i32 @ff_framequeue_queued_frames(i32* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %179

150:                                              ; preds = %145
  store i32 0, i32* %12, align 4
  br label %151

151:                                              ; preds = %165, %150
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @RingbufCount, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %151
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 14
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @av_fifo_drain(i32 %163, i32 4)
  br label %165

165:                                              ; preds = %155
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %151

168:                                              ; preds = %151
  %169 = load i32*, i32** %4, align 8
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 13
  %172 = call i32 @ff_framequeue_take(i32* %171)
  %173 = call i32 @filter_frame(i32* %169, i32 %172)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = load i32, i32* %8, align 4
  store i32 %177, i32* %2, align 4
  br label %262

178:                                              ; preds = %168
  br label %145

179:                                              ; preds = %145
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 12
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %244

184:                                              ; preds = %179
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %186 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 11
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @averaged_event_time_ms(i32 %189, i32 %192)
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 10
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @averaged_event_time_ms(i32 %196, i32 %199)
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 9
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @averaged_event_time_ms(i32 %203, i32 %206)
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @averaged_event_time_ms(i32 %210, i32 %213)
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @averaged_event_time_ms(i32 %217, i32 %220)
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @averaged_event_time_ms(i32 %224, i32 %227)
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @averaged_event_time_ms(i32 %231, i32 %234)
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @averaged_event_time_ms(i32 %238, i32 %241)
  %243 = call i32 @av_log(%struct.TYPE_13__* %185, i32 %186, i8* getelementptr inbounds ([292 x i8], [292 x i8]* @.str, i64 0, i64 0), i32 %193, i32 %200, i32 %207, i32 %214, i32 %221, i32 %228, i32 %235, i32 %242)
  br label %244

244:                                              ; preds = %184, %179
  %245 = load i32*, i32** %5, align 8
  %246 = load i32, i32* @AVERROR_EOF, align 4
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @ff_outlink_set_status(i32* %245, i32 %246, i32 %249)
  store i32 0, i32* %2, align 4
  br label %262

251:                                              ; preds = %139
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %251
  %257 = load i32*, i32** %5, align 8
  %258 = load i32*, i32** %4, align 8
  %259 = call i32 @FF_FILTER_FORWARD_WANTED(i32* %257, i32* %258)
  br label %260

260:                                              ; preds = %256, %251
  %261 = load i32, i32* @FFERROR_NOT_READY, align 4
  store i32 %261, i32* %2, align 4
  br label %262

262:                                              ; preds = %260, %244, %176, %113, %99, %61, %48, %38
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK(i32*, i32*) #1

declare dso_local i32 @ff_inlink_consume_frame(i32*, %struct.TYPE_12__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @deshake_opencl_init(%struct.TYPE_13__*) #1

declare dso_local i64 @av_fifo_space(i32) #1

declare dso_local i32 @av_fifo_drain(i32, i32) #1

declare dso_local i32 @queue_frame(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @ff_framequeue_queued_frames(i32*) #1

declare dso_local i32 @filter_frame(i32*, i32) #1

declare dso_local i32 @ff_framequeue_take(i32*) #1

declare dso_local i64 @ff_inlink_acknowledge_status(i32*, i32*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @averaged_event_time_ms(i32, i32) #1

declare dso_local i32 @ff_outlink_set_status(i32*, i32, i32) #1

declare dso_local i32 @FF_FILTER_FORWARD_WANTED(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
