; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisdec.c_vorbis_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisdec.c_vorbis_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32*, i32, i32, i64, i32, i32 }
%struct.TYPE_16__ = type { i32*, i32 }
%struct.TYPE_17__ = type { i32, i64* }

@.str = private unnamed_addr constant [19 x i8] c"packet length %d \0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Id header corrupt.\0A\00", align 1
@ff_vorbis_channel_layouts = common dso_local global i32* null, align 8
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Ignoring comment header\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Setup header corrupt.\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Data packet before valid headers\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_vorbis_channel_layout_offsets = common dso_local global i32** null, align 8
@.str.5 = private unnamed_addr constant [58 x i8] c"parsed %d bytes %d bits, returned %d samples (*ch*bits) \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i8*, i32*, %struct.TYPE_16__*)* @vorbis_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vorbis_decode_frame(%struct.TYPE_18__* %0, i8* %1, i32* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [255 x float*], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %10, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %12, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %13, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 6
  store i32* %32, i32** %14, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (i32*, i8*, i32, ...) @ff_dlog(i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %95

38:                                               ; preds = %4
  %39 = load i32, i32* %11, align 4
  %40 = icmp sgt i32 %39, 7
  br i1 %40, label %41, label %95

41:                                               ; preds = %38
  %42 = load i32*, i32** %14, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %45, 1
  %47 = call i32 @init_get_bits8(i32* %42, i32* %44, i32 %46)
  store i32 %47, i32* %18, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %18, align 4
  store i32 %50, i32* %5, align 4
  br label %281

51:                                               ; preds = %41
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %53 = call i32 @vorbis_free(%struct.TYPE_15__* %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %55 = call i32 @vorbis_parse_id_hdr(%struct.TYPE_15__* %54)
  store i32 %55, i32* %18, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = call i32 @av_log(%struct.TYPE_18__* %58, i32 %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %62 = call i32 @vorbis_free(%struct.TYPE_15__* %61)
  %63 = load i32, i32* %18, align 4
  store i32 %63, i32* %5, align 4
  br label %281

64:                                               ; preds = %51
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %67, 8
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 2
  store i32 0, i32* %71, align 8
  br label %83

72:                                               ; preds = %64
  %73 = load i32*, i32** @ff_vorbis_channel_layouts, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %72, %69
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %5, align 4
  br label %281

95:                                               ; preds = %38, %4
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i32, i32* %11, align 4
  %101 = icmp sgt i32 %100, 7
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = load i32, i32* @AV_LOG_DEBUG, align 4
  %105 = call i32 @av_log(%struct.TYPE_18__* %103, i32 %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %5, align 4
  br label %281

107:                                              ; preds = %99, %95
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 5
  br i1 %110, label %111, label %147

111:                                              ; preds = %107
  %112 = load i32, i32* %11, align 4
  %113 = icmp sgt i32 %112, 7
  br i1 %113, label %114, label %147

114:                                              ; preds = %111
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %147

119:                                              ; preds = %114
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %147, label %124

124:                                              ; preds = %119
  %125 = load i32*, i32** %14, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %11, align 4
  %129 = sub nsw i32 %128, 1
  %130 = call i32 @init_get_bits8(i32* %125, i32* %127, i32 %129)
  store i32 %130, i32* %18, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = load i32, i32* %18, align 4
  store i32 %133, i32* %5, align 4
  br label %281

134:                                              ; preds = %124
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %136 = call i32 @vorbis_parse_setup_hdr(%struct.TYPE_15__* %135)
  store i32 %136, i32* %18, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %140 = load i32, i32* @AV_LOG_ERROR, align 4
  %141 = call i32 @av_log(%struct.TYPE_18__* %139, i32 %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %143 = call i32 @vorbis_free(%struct.TYPE_15__* %142)
  %144 = load i32, i32* %18, align 4
  store i32 %144, i32* %5, align 4
  br label %281

145:                                              ; preds = %134
  %146 = load i32, i32* %11, align 4
  store i32 %146, i32* %5, align 4
  br label %281

147:                                              ; preds = %119, %114, %111, %107
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %152, %147
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %159 = load i32, i32* @AV_LOG_ERROR, align 4
  %160 = call i32 @av_log(%struct.TYPE_18__* %158, i32 %159, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %161 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %161, i32* %5, align 4
  br label %281

162:                                              ; preds = %152
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = sdiv i32 %167, 2
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %173 = call i32 @ff_get_buffer(%struct.TYPE_18__* %171, %struct.TYPE_17__* %172, i32 0)
  store i32 %173, i32* %18, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %162
  %176 = load i32, i32* %18, align 4
  store i32 %176, i32* %5, align 4
  br label %281

177:                                              ; preds = %162
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp sgt i32 %180, 8
  br i1 %181, label %182, label %205

182:                                              ; preds = %177
  store i32 0, i32* %16, align 4
  br label %183

183:                                              ; preds = %201, %182
  %184 = load i32, i32* %16, align 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %189, label %204

189:                                              ; preds = %183
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 1
  %192 = load i64*, i64** %191, align 8
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = inttoptr i64 %196 to float*
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [255 x float*], [255 x float*]* %15, i64 0, i64 %199
  store float* %197, float** %200, align 8
  br label %201

201:                                              ; preds = %189
  %202 = load i32, i32* %16, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %16, align 4
  br label %183

204:                                              ; preds = %183
  br label %240

205:                                              ; preds = %177
  store i32 0, i32* %16, align 4
  br label %206

206:                                              ; preds = %236, %205
  %207 = load i32, i32* %16, align 4
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %239

212:                                              ; preds = %206
  %213 = load i32**, i32*** @ff_vorbis_channel_layout_offsets, align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32*, i32** %213, i64 %218
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %16, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %19, align 4
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 1
  %227 = load i64*, i64** %226, align 8
  %228 = load i32, i32* %16, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64, i64* %227, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = inttoptr i64 %231 to float*
  %233 = load i32, i32* %19, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [255 x float*], [255 x float*]* %15, i64 0, i64 %234
  store float* %232, float** %235, align 8
  br label %236

236:                                              ; preds = %212
  %237 = load i32, i32* %16, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %16, align 4
  br label %206

239:                                              ; preds = %206
  br label %240

240:                                              ; preds = %239, %204
  %241 = load i32*, i32** %14, align 8
  %242 = load i32*, i32** %10, align 8
  %243 = load i32, i32* %11, align 4
  %244 = call i32 @init_get_bits8(i32* %241, i32* %242, i32 %243)
  store i32 %244, i32* %18, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = load i32, i32* %18, align 4
  store i32 %247, i32* %5, align 4
  br label %281

248:                                              ; preds = %240
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %250 = getelementptr inbounds [255 x float*], [255 x float*]* %15, i64 0, i64 0
  %251 = call i32 @vorbis_parse_audio_packet(%struct.TYPE_15__* %249, float** %250)
  store i32 %251, i32* %17, align 4
  %252 = icmp sle i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %248
  %254 = load i32, i32* %17, align 4
  store i32 %254, i32* %5, align 4
  br label %281

255:                                              ; preds = %248
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %267, label %260

260:                                              ; preds = %255
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 2
  store i32 1, i32* %262, align 8
  %263 = load i32*, i32** %8, align 8
  store i32 0, i32* %263, align 4
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %265 = call i32 @av_frame_unref(%struct.TYPE_17__* %264)
  %266 = load i32, i32* %11, align 4
  store i32 %266, i32* %5, align 4
  br label %281

267:                                              ; preds = %255
  %268 = load i32*, i32** %14, align 8
  %269 = call i32 @get_bits_count(i32* %268)
  %270 = sdiv i32 %269, 8
  %271 = load i32*, i32** %14, align 8
  %272 = call i32 @get_bits_count(i32* %271)
  %273 = srem i32 %272, 8
  %274 = load i32, i32* %17, align 4
  %275 = call i32 (i32*, i8*, i32, ...) @ff_dlog(i32* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %270, i32 %273, i32 %274)
  %276 = load i32, i32* %17, align 4
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 0
  store i32 %276, i32* %278, align 8
  %279 = load i32*, i32** %8, align 8
  store i32 1, i32* %279, align 4
  %280 = load i32, i32* %11, align 4
  store i32 %280, i32* %5, align 4
  br label %281

281:                                              ; preds = %267, %260, %253, %246, %175, %157, %145, %138, %132, %102, %83, %57, %49
  %282 = load i32, i32* %5, align 4
  ret i32 %282
}

declare dso_local i32 @ff_dlog(i32*, i8*, i32, ...) #1

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @vorbis_free(%struct.TYPE_15__*) #1

declare dso_local i32 @vorbis_parse_id_hdr(%struct.TYPE_15__*) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @vorbis_parse_setup_hdr(%struct.TYPE_15__*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @vorbis_parse_audio_packet(%struct.TYPE_15__*, float**) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_17__*) #1

declare dso_local i32 @get_bits_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
