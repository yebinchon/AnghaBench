; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_mp4toannexb_bsf.c_h264_mp4toannexb_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_mp4toannexb_bsf.c_h264_mp4toannexb_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__*, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@H264_NAL_SPS = common dso_local global i32 0, align 4
@H264_NAL_PPS = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"SPS not present in the stream, nor in AVCC, stream may be unreadable\0A\00", align 1
@H264_NAL_IDR_SLICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"PPS not present in the stream, nor in AVCC, stream may be unreadable\0A\00", align 1
@H264_NAL_SLICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)* @h264_mp4toannexb_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_mp4toannexb_filter(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = call i32 @ff_bsf_get_packet(%struct.TYPE_20__* %19, %struct.TYPE_19__** %7)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %3, align 4
  br label %367

25:                                               ; preds = %2
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %33 = call i32 @av_packet_move_ref(%struct.TYPE_19__* %31, %struct.TYPE_19__* %32)
  %34 = call i32 @av_packet_free(%struct.TYPE_19__** %7)
  store i32 0, i32* %3, align 4
  br label %367

35:                                               ; preds = %25
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %11, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %13, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  store i32* %49, i32** %12, align 8
  br label %50

50:                                               ; preds = %346, %35
  %51 = load i32, i32* @EINVAL, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32*, i32** %12, align 8
  %60 = icmp ugt i32* %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %358

62:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  store i32 0, i32* %15, align 4
  br label %63

63:                                               ; preds = %78, %62
  %64 = load i32, i32* %15, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load i32, i32* %9, align 4
  %71 = shl i32 %70, 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %71, %76
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  br label %63

81:                                               ; preds = %63
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %11, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 31
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = load i32*, i32** %12, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = ptrtoint i32* %93 to i64
  %96 = ptrtoint i32* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 4
  %99 = icmp sgt i64 %92, %98
  br i1 %99, label %103, label %100

100:                                              ; preds = %81
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100, %81
  br label %358

104:                                              ; preds = %100
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @H264_NAL_SPS, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 2
  store i32 1, i32* %110, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  br label %178

113:                                              ; preds = %104
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @H264_NAL_PPS, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %177

117:                                              ; preds = %113
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  store i32 1, i32* %119, align 4
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 3
  store i32 1, i32* %121, align 4
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %176, label %126

126:                                              ; preds = %117
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %133 = load i32, i32* @AV_LOG_WARNING, align 4
  %134 = call i32 @av_log(%struct.TYPE_20__* %132, i32 %133, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %175

135:                                              ; preds = %126
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, -1
  br i1 %150, label %151, label %155

151:                                              ; preds = %135
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  br label %165

155:                                              ; preds = %135
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %160, %163
  br label %165

165:                                              ; preds = %155, %151
  %166 = phi i32 [ %154, %151 ], [ %164, %155 ]
  %167 = load i32*, i32** %11, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @alloc_and_copy(%struct.TYPE_19__* %136, i32* %146, i32 %166, i32* %167, i32 %168, i32 1)
  store i32 %169, i32* %14, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %358

172:                                              ; preds = %165
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 1
  store i32 1, i32* %174, align 4
  br label %334

175:                                              ; preds = %131
  br label %176

176:                                              ; preds = %175, %117
  br label %177

177:                                              ; preds = %176, %113
  br label %178

178:                                              ; preds = %177, %108
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %196, label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @H264_NAL_IDR_SLICE, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %183
  %188 = load i32*, i32** %11, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 1
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 128
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %187
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 2
  store i32 1, i32* %195, align 4
  br label %196

196:                                              ; preds = %193, %187, %183, %178
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %235

201:                                              ; preds = %196
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* @H264_NAL_IDR_SLICE, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %235

205:                                              ; preds = %201
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %235, label %210

210:                                              ; preds = %205
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %235, label %215

215:                                              ; preds = %210
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32*, i32** %11, align 8
  %228 = load i32, i32* %9, align 4
  %229 = call i32 @alloc_and_copy(%struct.TYPE_19__* %216, i32* %221, i32 %226, i32* %227, i32 %228, i32 1)
  store i32 %229, i32* %14, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %215
  br label %358

232:                                              ; preds = %215
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 2
  store i32 0, i32* %234, align 4
  br label %333

235:                                              ; preds = %210, %205, %201, %196
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %298

240:                                              ; preds = %235
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* @H264_NAL_IDR_SLICE, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %298

244:                                              ; preds = %240
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %298

249:                                              ; preds = %244
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %298, label %254

254:                                              ; preds = %249
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %257, -1
  br i1 %258, label %259, label %270

259:                                              ; preds = %254
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %261 = load i32, i32* @AV_LOG_WARNING, align 4
  %262 = call i32 @av_log(%struct.TYPE_20__* %260, i32 %261, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %264 = load i32*, i32** %11, align 8
  %265 = load i32, i32* %9, align 4
  %266 = call i32 @alloc_and_copy(%struct.TYPE_19__* %263, i32* null, i32 0, i32* %264, i32 %265, i32 0)
  store i32 %266, i32* %14, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %259
  br label %358

269:                                              ; preds = %259
  br label %297

270:                                              ; preds = %254
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %276, i64 %280
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 4
  %290 = sub nsw i32 %286, %289
  %291 = load i32*, i32** %11, align 8
  %292 = load i32, i32* %9, align 4
  %293 = call i32 @alloc_and_copy(%struct.TYPE_19__* %271, i32* %281, i32 %290, i32* %291, i32 %292, i32 1)
  store i32 %293, i32* %14, align 4
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %270
  br label %358

296:                                              ; preds = %270
  br label %297

297:                                              ; preds = %296, %269
  br label %332

298:                                              ; preds = %249, %244, %240, %235
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %300 = load i32*, i32** %11, align 8
  %301 = load i32, i32* %9, align 4
  %302 = load i32, i32* %8, align 4
  %303 = load i32, i32* @H264_NAL_SPS, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %309, label %305

305:                                              ; preds = %298
  %306 = load i32, i32* %8, align 4
  %307 = load i32, i32* @H264_NAL_PPS, align 4
  %308 = icmp eq i32 %306, %307
  br label %309

309:                                              ; preds = %305, %298
  %310 = phi i1 [ true, %298 ], [ %308, %305 ]
  %311 = zext i1 %310 to i32
  %312 = call i32 @alloc_and_copy(%struct.TYPE_19__* %299, i32* null, i32 0, i32* %300, i32 %301, i32 %311)
  store i32 %312, i32* %14, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %309
  br label %358

315:                                              ; preds = %309
  %316 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %331, label %320

320:                                              ; preds = %315
  %321 = load i32, i32* %8, align 4
  %322 = load i32, i32* @H264_NAL_SLICE, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %331

324:                                              ; preds = %320
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 2
  store i32 1, i32* %326, align 4
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %327, i32 0, i32 1
  store i32 0, i32* %328, align 4
  %329 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %329, i32 0, i32 3
  store i32 0, i32* %330, align 4
  br label %331

331:                                              ; preds = %324, %320, %315
  br label %332

332:                                              ; preds = %331, %297
  br label %333

333:                                              ; preds = %332, %232
  br label %334

334:                                              ; preds = %333, %172
  %335 = load i32, i32* %9, align 4
  %336 = load i32*, i32** %11, align 8
  %337 = sext i32 %335 to i64
  %338 = getelementptr inbounds i32, i32* %336, i64 %337
  store i32* %338, i32** %11, align 8
  %339 = load i32, i32* %9, align 4
  %340 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = add nsw i32 %339, %342
  %344 = load i32, i32* %10, align 4
  %345 = add nsw i32 %344, %343
  store i32 %345, i32* %10, align 4
  br label %346

346:                                              ; preds = %334
  %347 = load i32, i32* %10, align 4
  %348 = load i32, i32* %13, align 4
  %349 = icmp slt i32 %347, %348
  br i1 %349, label %50, label %350

350:                                              ; preds = %346
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %352 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %353 = call i32 @av_packet_copy_props(%struct.TYPE_19__* %351, %struct.TYPE_19__* %352)
  store i32 %353, i32* %14, align 4
  %354 = load i32, i32* %14, align 4
  %355 = icmp slt i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %350
  br label %358

357:                                              ; preds = %350
  br label %358

358:                                              ; preds = %357, %356, %314, %295, %268, %231, %171, %103, %61
  %359 = load i32, i32* %14, align 4
  %360 = icmp slt i32 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %358
  %362 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %363 = call i32 @av_packet_unref(%struct.TYPE_19__* %362)
  br label %364

364:                                              ; preds = %361, %358
  %365 = call i32 @av_packet_free(%struct.TYPE_19__** %7)
  %366 = load i32, i32* %14, align 4
  store i32 %366, i32* %3, align 4
  br label %367

367:                                              ; preds = %364, %30, %23
  %368 = load i32, i32* %3, align 4
  ret i32 %368
}

declare dso_local i32 @ff_bsf_get_packet(%struct.TYPE_20__*, %struct.TYPE_19__**) #1

declare dso_local i32 @av_packet_move_ref(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @av_packet_free(%struct.TYPE_19__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @alloc_and_copy(%struct.TYPE_19__*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @av_packet_copy_props(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
