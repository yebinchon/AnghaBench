; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg_field_start.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg_field_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i64, i64, %struct.TYPE_23__*, %struct.TYPE_22__, %struct.TYPE_28__*, i64, i64, i64, i64, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i64*, i32* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_28__ = type { i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*, i32*, i32)* }
%struct.TYPE_26__ = type { i32, i64, i32, i64, i32, i32*, i32 }
%struct.TYPE_27__ = type { i32* }

@AV_CODEC_FLAG2_CHUNKS = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@PICT_FRAME = common dso_local global i64 0, align 8
@AV_FRAME_DATA_PANSCAN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_FRAME_DATA_A53_CC = common dso_local global i32 0, align 4
@AV_FRAME_DATA_AFD = common dso_local global i32 0, align 4
@HAVE_THREADS = common dso_local global i64 0, align 8
@FF_THREAD_FRAME = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"first field missing\0A\00", align 1
@SLICE_FLAG_ALLOW_FIELD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"hardware accelerator failed to decode first field\0A\00", align 1
@PICT_BOTTOM_FIELD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i32*, i32)* @mpeg_field_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg_field_start(%struct.TYPE_25__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  store %struct.TYPE_28__* %18, %struct.TYPE_28__** %8, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %20 = bitcast %struct.TYPE_25__* %19 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %20, %struct.TYPE_26__** %9, align 8
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @AV_CODEC_FLAG2_CHUNKS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %3
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = mul nsw i64 %30, %33
  %35 = mul nsw i64 %34, 11
  %36 = sdiv i64 %35, 528
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp sgt i64 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %41, i32* %4, align 4
  br label %357

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 10
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PICT_FRAME, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %230

54:                                               ; preds = %48, %43
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %57 = call i32 @ff_mpv_frame_start(%struct.TYPE_25__* %55, %struct.TYPE_28__* %56)
  store i32 %57, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %357

61:                                               ; preds = %54
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %63 = call i32 @ff_mpeg_er_frame_start(%struct.TYPE_25__* %62)
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 9
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %113

74:                                               ; preds = %61
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %74
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  store i32 4, i32* %90, align 8
  br label %98

91:                                               ; preds = %79
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  store i32 2, i32* %97, align 8
  br label %98

98:                                               ; preds = %91, %84
  br label %112

99:                                               ; preds = %74
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %104, %99
  br label %112

112:                                              ; preds = %111, %98
  br label %113

113:                                              ; preds = %112, %61
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %117, align 8
  %119 = load i32, i32* @AV_FRAME_DATA_PANSCAN, align 4
  %120 = call %struct.TYPE_27__* @av_frame_new_side_data(%struct.TYPE_20__* %118, i32 %119, i32 4)
  store %struct.TYPE_27__* %120, %struct.TYPE_27__** %11, align 8
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %122 = icmp ne %struct.TYPE_27__* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %113
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = call i32 @AVERROR(i32 %124)
  store i32 %125, i32* %4, align 4
  br label %357

126:                                              ; preds = %113
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 6
  %132 = call i32 @memcpy(i32* %129, i32* %131, i32 4)
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 5
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %165

137:                                              ; preds = %126
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %141, align 8
  %143 = load i32, i32* @AV_FRAME_DATA_A53_CC, align 4
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call %struct.TYPE_27__* @av_frame_new_side_data(%struct.TYPE_20__* %142, i32 %143, i32 %146)
  store %struct.TYPE_27__* %147, %struct.TYPE_27__** %12, align 8
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %149 = icmp ne %struct.TYPE_27__* %148, null
  br i1 %149, label %150, label %161

150:                                              ; preds = %137
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 5
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @memcpy(i32* %153, i32* %156, i32 %159)
  br label %161

161:                                              ; preds = %150, %137
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 5
  %164 = call i32 @av_freep(i32** %163)
  br label %165

165:                                              ; preds = %161, %126
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %189

170:                                              ; preds = %165
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %174, align 8
  %176 = call i32* @av_stereo3d_create_side_data(%struct.TYPE_20__* %175)
  store i32* %176, i32** %13, align 8
  %177 = load i32*, i32** %13, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %170
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = call i32 @AVERROR(i32 %180)
  store i32 %181, i32* %4, align 4
  br label %357

182:                                              ; preds = %170
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = load i32*, i32** %13, align 8
  store i32 %185, i32* %186, align 4
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 3
  store i64 0, i64* %188, align 8
  br label %189

189:                                              ; preds = %182, %165
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %216

194:                                              ; preds = %189
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 3
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %198, align 8
  %200 = load i32, i32* @AV_FRAME_DATA_AFD, align 4
  %201 = call %struct.TYPE_27__* @av_frame_new_side_data(%struct.TYPE_20__* %199, i32 %200, i32 1)
  store %struct.TYPE_27__* %201, %struct.TYPE_27__** %14, align 8
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %203 = icmp ne %struct.TYPE_27__* %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %194
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = call i32 @AVERROR(i32 %205)
  store i32 %206, i32* %4, align 4
  br label %357

207:                                              ; preds = %194
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  store i32 %210, i32* %213, align 4
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %214, i32 0, i32 1
  store i64 0, i64* %215, align 8
  br label %216

216:                                              ; preds = %207, %189
  %217 = load i64, i64* @HAVE_THREADS, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %216
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @FF_THREAD_FRAME, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %219
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %228 = call i32 @ff_thread_finish_setup(%struct.TYPE_28__* %227)
  br label %229

229:                                              ; preds = %226, %219, %216
  br label %337

230:                                              ; preds = %48
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 3
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %232, align 8
  %234 = icmp ne %struct.TYPE_23__* %233, null
  br i1 %234, label %242, label %235

235:                                              ; preds = %230
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 5
  %238 = load %struct.TYPE_28__*, %struct.TYPE_28__** %237, align 8
  %239 = load i32, i32* @AV_LOG_ERROR, align 4
  %240 = call i32 @av_log(%struct.TYPE_28__* %238, i32 %239, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %241 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %241, i32* %4, align 4
  br label %357

242:                                              ; preds = %230
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 5
  %245 = load %struct.TYPE_28__*, %struct.TYPE_28__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %245, i32 0, i32 3
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %246, align 8
  %248 = icmp ne %struct.TYPE_24__* %247, null
  br i1 %248, label %249, label %277

249:                                              ; preds = %242
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 5
  %252 = load %struct.TYPE_28__*, %struct.TYPE_28__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @SLICE_FLAG_ALLOW_FIELD, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %277

258:                                              ; preds = %249
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 5
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %261, i32 0, i32 3
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 0
  %265 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %264, align 8
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 5
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %267, align 8
  %269 = call i32 %265(%struct.TYPE_28__* %268)
  store i32 %269, i32* %10, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %258
  %272 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %273 = load i32, i32* @AV_LOG_ERROR, align 4
  %274 = call i32 @av_log(%struct.TYPE_28__* %272, i32 %273, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %275 = load i32, i32* %10, align 4
  store i32 %275, i32* %4, align 4
  br label %357

276:                                              ; preds = %258
  br label %277

277:                                              ; preds = %276, %249, %242
  store i32 0, i32* %15, align 4
  br label %278

278:                                              ; preds = %333, %277
  %279 = load i32, i32* %15, align 4
  %280 = icmp slt i32 %279, 4
  br i1 %280, label %281, label %336

281:                                              ; preds = %278
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 3
  %284 = load %struct.TYPE_23__*, %struct.TYPE_23__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 2
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %15, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 4
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_21__*, %struct.TYPE_21__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %15, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  store i32 %292, i32* %301, align 4
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @PICT_BOTTOM_FIELD, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %332

307:                                              ; preds = %281
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %308, i32 0, i32 3
  %310 = load %struct.TYPE_23__*, %struct.TYPE_23__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_20__*, %struct.TYPE_20__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %312, i32 0, i32 1
  %314 = load i64*, i64** %313, align 8
  %315 = load i32, i32* %15, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i64, i64* %314, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %319, i32 0, i32 4
  %321 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_21__*, %struct.TYPE_21__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %322, i32 0, i32 0
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* %15, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = add nsw i64 %329, %318
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %327, align 4
  br label %332

332:                                              ; preds = %307, %281
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %15, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %15, align 4
  br label %278

336:                                              ; preds = %278
  br label %337

337:                                              ; preds = %336, %229
  %338 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %338, i32 0, i32 3
  %340 = load %struct.TYPE_24__*, %struct.TYPE_24__** %339, align 8
  %341 = icmp ne %struct.TYPE_24__* %340, null
  br i1 %341, label %342, label %356

342:                                              ; preds = %337
  %343 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %343, i32 0, i32 3
  %345 = load %struct.TYPE_24__*, %struct.TYPE_24__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %345, i32 0, i32 1
  %347 = load i32 (%struct.TYPE_28__*, i32*, i32)*, i32 (%struct.TYPE_28__*, i32*, i32)** %346, align 8
  %348 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %349 = load i32*, i32** %6, align 8
  %350 = load i32, i32* %7, align 4
  %351 = call i32 %347(%struct.TYPE_28__* %348, i32* %349, i32 %350)
  store i32 %351, i32* %10, align 4
  %352 = icmp slt i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %342
  %354 = load i32, i32* %10, align 4
  store i32 %354, i32* %4, align 4
  br label %357

355:                                              ; preds = %342
  br label %356

356:                                              ; preds = %355, %337
  store i32 0, i32* %4, align 4
  br label %357

357:                                              ; preds = %356, %353, %271, %235, %204, %179, %123, %59, %40
  %358 = load i32, i32* %4, align 4
  ret i32 %358
}

declare dso_local i32 @ff_mpv_frame_start(%struct.TYPE_25__*, %struct.TYPE_28__*) #1

declare dso_local i32 @ff_mpeg_er_frame_start(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_27__* @av_frame_new_side_data(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32* @av_stereo3d_create_side_data(%struct.TYPE_20__*) #1

declare dso_local i32 @ff_thread_finish_setup(%struct.TYPE_28__*) #1

declare dso_local i32 @av_log(%struct.TYPE_28__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
