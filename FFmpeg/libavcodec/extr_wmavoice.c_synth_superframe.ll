; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_synth_superframe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_synth_superframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, float*, float*, i32, i64, double*, i32*, i64, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i64* }

@MAX_SFRAMESIZE = common dso_local global i32 0, align 4
@MAX_FRAMES = common dso_local global i32 0, align 4
@MAX_LSPS = common dso_local global i32 0, align 4
@wmavoice_mean_lsf16 = common dso_local global double** null, align 8
@wmavoice_mean_lsf10 = common dso_local global double** null, align 8
@MAX_SIGNAL_HISTORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"WMAPro-in-WMAVoice\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Superframe encodes > %d samples (%d), not allowed\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@MAX_FRAMESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32*)* @synth_superframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synth_superframe(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca double*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca float*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %8, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 12
  store i32* %31, i32** %9, align 8
  %32 = load i32, i32* @MAX_SFRAMESIZE, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* @MAX_FRAMES, align 4
  %34 = zext i32 %33 to i64
  %35 = load i32, i32* @MAX_LSPS, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %14, align 8
  %38 = mul nuw i64 %34, %36
  %39 = alloca double, i64 %38, align 16
  store i64 %34, i64* %15, align 8
  store i64 %36, i64* %16, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 16
  br i1 %43, label %44, label %51

44:                                               ; preds = %3
  %45 = load double**, double*** @wmavoice_mean_lsf16, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds double*, double** %45, i64 %48
  %50 = load double*, double** %49, align 8
  br label %58

51:                                               ; preds = %3
  %52 = load double**, double*** @wmavoice_mean_lsf10, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds double*, double** %52, i64 %55
  %57 = load double*, double** %56, align 8
  br label %58

58:                                               ; preds = %51, %44
  %59 = phi double* [ %50, %44 ], [ %57, %51 ]
  store double* %59, double** %17, align 8
  %60 = load i32, i32* @MAX_SIGNAL_HISTORY, align 4
  %61 = load i32, i32* @MAX_SFRAMESIZE, align 4
  %62 = add nsw i32 %60, %61
  %63 = add nsw i32 %62, 12
  %64 = zext i32 %63 to i64
  %65 = alloca float, i64 %64, align 16
  store i64 %64, i64* %18, align 8
  %66 = load i32, i32* @MAX_LSPS, align 4
  %67 = load i32, i32* @MAX_SFRAMESIZE, align 4
  %68 = add nsw i32 %66, %67
  %69 = zext i32 %68 to i64
  %70 = alloca float, i64 %69, align 16
  store i64 %69, i64* %19, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = load float*, float** %72, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = call i32 (float*, ...) @memcpy(float* %70, float* %73, i64 %78)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 3
  %82 = load float*, float** %81, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = call i32 (float*, ...) @memcpy(float* %65, float* %82, i64 %87)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %58
  store i32* %10, i32** %9, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 11
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @init_get_bits(i32* %94, i32 %97, i64 %100)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 5
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %93, %58
  %105 = load i32*, i32** %9, align 8
  %106 = call i64 @get_bits1(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %110 = call i32 @avpriv_request_sample(%struct.TYPE_15__* %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %111, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %500

112:                                              ; preds = %104
  %113 = load i32*, i32** %9, align 8
  %114 = call i64 @get_bits1(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @get_bits(i32* %117, i32 12)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* @MAX_SFRAMESIZE, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %123 = load i32, i32* @AV_LOG_ERROR, align 4
  %124 = load i32, i32* @MAX_SFRAMESIZE, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @av_log(%struct.TYPE_15__* %122, i32 %123, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %127, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %500

128:                                              ; preds = %116
  br label %129

129:                                              ; preds = %128, %112
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 9
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %282

134:                                              ; preds = %129
  %135 = load i32, i32* @MAX_LSPS, align 4
  %136 = zext i32 %135 to i64
  %137 = call i8* @llvm.stacksave()
  store i8* %137, i8** %22, align 8
  %138 = alloca double, i64 %136, align 16
  store i64 %136, i64* %23, align 8
  %139 = load i32, i32* @MAX_LSPS, align 4
  %140 = mul nsw i32 %139, 2
  %141 = zext i32 %140 to i64
  %142 = alloca double, i64 %141, align 16
  store i64 %141, i64* %24, align 8
  %143 = load i32, i32* @MAX_LSPS, align 4
  %144 = mul nsw i32 %143, 2
  %145 = zext i32 %144 to i64
  %146 = alloca double, i64 %145, align 16
  store i64 %145, i64* %25, align 8
  store i32 0, i32* %11, align 4
  br label %147

147:                                              ; preds = %170, %134
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %173

153:                                              ; preds = %147
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 6
  %156 = load double*, double** %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double, double* %156, i64 %158
  %160 = load double, double* %159, align 8
  %161 = load double*, double** %17, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds double, double* %161, i64 %163
  %165 = load double, double* %164, align 8
  %166 = fsub double %160, %165
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds double, double* %138, i64 %168
  store double %166, double* %169, align 8
  br label %170

170:                                              ; preds = %153
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %11, align 4
  br label %147

173:                                              ; preds = %147
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 10
  br i1 %177, label %178, label %186

178:                                              ; preds = %173
  %179 = load i32*, i32** %9, align 8
  %180 = mul nsw i64 2, %36
  %181 = getelementptr inbounds double, double* %39, i64 %180
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 10
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @dequant_lsp10r(i32* %179, double* %181, double* %138, double* %142, double* %146, i32 %184)
  br label %194

186:                                              ; preds = %173
  %187 = load i32*, i32** %9, align 8
  %188 = mul nsw i64 2, %36
  %189 = getelementptr inbounds double, double* %39, i64 %188
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 10
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @dequant_lsp16r(i32* %187, double* %189, double* %138, double* %142, double* %146, i32 %192)
  br label %194

194:                                              ; preds = %186, %178
  store i32 0, i32* %11, align 4
  br label %195

195:                                              ; preds = %261, %194
  %196 = load i32, i32* %11, align 4
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %264

201:                                              ; preds = %195
  %202 = load double*, double** %17, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds double, double* %202, i64 %204
  %206 = load double, double* %205, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds double, double* %142, i64 %208
  %210 = load double, double* %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = mul nsw i32 %211, 2
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds double, double* %146, i64 %213
  %215 = load double, double* %214, align 8
  %216 = fsub double %210, %215
  %217 = fadd double %206, %216
  %218 = mul nsw i64 0, %36
  %219 = getelementptr inbounds double, double* %39, i64 %218
  %220 = load i32, i32* %11, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds double, double* %219, i64 %221
  store double %217, double* %222, align 8
  %223 = load double*, double** %17, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds double, double* %223, i64 %225
  %227 = load double, double* %226, align 8
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %11, align 4
  %232 = add nsw i32 %230, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds double, double* %142, i64 %233
  %235 = load double, double* %234, align 8
  %236 = load i32, i32* %11, align 4
  %237 = mul nsw i32 %236, 2
  %238 = add nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds double, double* %146, i64 %239
  %241 = load double, double* %240, align 8
  %242 = fsub double %235, %241
  %243 = fadd double %227, %242
  %244 = mul nsw i64 1, %36
  %245 = getelementptr inbounds double, double* %39, i64 %244
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds double, double* %245, i64 %247
  store double %243, double* %248, align 8
  %249 = load double*, double** %17, align 8
  %250 = load i32, i32* %11, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds double, double* %249, i64 %251
  %253 = load double, double* %252, align 8
  %254 = mul nsw i64 2, %36
  %255 = getelementptr inbounds double, double* %39, i64 %254
  %256 = load i32, i32* %11, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds double, double* %255, i64 %257
  %259 = load double, double* %258, align 8
  %260 = fadd double %259, %253
  store double %260, double* %258, align 8
  br label %261

261:                                              ; preds = %201
  %262 = load i32, i32* %11, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %11, align 4
  br label %195

264:                                              ; preds = %195
  store i32 0, i32* %11, align 4
  br label %265

265:                                              ; preds = %277, %264
  %266 = load i32, i32* %11, align 4
  %267 = icmp slt i32 %266, 3
  br i1 %267, label %268, label %280

268:                                              ; preds = %265
  %269 = load i32, i32* %11, align 4
  %270 = sext i32 %269 to i64
  %271 = mul nsw i64 %270, %36
  %272 = getelementptr inbounds double, double* %39, i64 %271
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @stabilize_lsps(double* %272, i32 %275)
  br label %277

277:                                              ; preds = %268
  %278 = load i32, i32* %11, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %11, align 4
  br label %265

280:                                              ; preds = %265
  %281 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %281)
  br label %282

282:                                              ; preds = %280, %129
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %284 = call i32 @av_frame_unref(%struct.TYPE_14__* %283)
  %285 = load i32, i32* @MAX_SFRAMESIZE, align 4
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 0
  store i32 %285, i32* %287, align 8
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %290 = call i32 @ff_get_buffer(%struct.TYPE_15__* %288, %struct.TYPE_14__* %289, i32 0)
  store i32 %290, i32* %12, align 4
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %282
  %293 = load i32, i32* %12, align 4
  store i32 %293, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %500

294:                                              ; preds = %282
  %295 = load i32, i32* %13, align 4
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 1
  %300 = load i64*, i64** %299, align 8
  %301 = getelementptr inbounds i64, i64* %300, i64 0
  %302 = load i64, i64* %301, align 8
  %303 = inttoptr i64 %302 to float*
  store float* %303, float** %20, align 8
  store i32 0, i32* %11, align 4
  br label %304

304:                                              ; preds = %417, %294
  %305 = load i32, i32* %11, align 4
  %306 = icmp slt i32 %305, 3
  br i1 %306, label %307, label %420

307:                                              ; preds = %304
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 9
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %365, label %312

312:                                              ; preds = %307
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = icmp eq i32 %315, 10
  br i1 %316, label %317, label %324

317:                                              ; preds = %312
  %318 = load i32*, i32** %9, align 8
  %319 = load i32, i32* %11, align 4
  %320 = sext i32 %319 to i64
  %321 = mul nsw i64 %320, %36
  %322 = getelementptr inbounds double, double* %39, i64 %321
  %323 = call i32 @dequant_lsp10i(i32* %318, double* %322)
  br label %331

324:                                              ; preds = %312
  %325 = load i32*, i32** %9, align 8
  %326 = load i32, i32* %11, align 4
  %327 = sext i32 %326 to i64
  %328 = mul nsw i64 %327, %36
  %329 = getelementptr inbounds double, double* %39, i64 %328
  %330 = call i32 @dequant_lsp16i(i32* %325, double* %329)
  br label %331

331:                                              ; preds = %324, %317
  store i32 0, i32* %26, align 4
  br label %332

332:                                              ; preds = %353, %331
  %333 = load i32, i32* %26, align 4
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = icmp slt i32 %333, %336
  br i1 %337, label %338, label %356

338:                                              ; preds = %332
  %339 = load double*, double** %17, align 8
  %340 = load i32, i32* %26, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds double, double* %339, i64 %341
  %343 = load double, double* %342, align 8
  %344 = load i32, i32* %11, align 4
  %345 = sext i32 %344 to i64
  %346 = mul nsw i64 %345, %36
  %347 = getelementptr inbounds double, double* %39, i64 %346
  %348 = load i32, i32* %26, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds double, double* %347, i64 %349
  %351 = load double, double* %350, align 8
  %352 = fadd double %351, %343
  store double %352, double* %350, align 8
  br label %353

353:                                              ; preds = %338
  %354 = load i32, i32* %26, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %26, align 4
  br label %332

356:                                              ; preds = %332
  %357 = load i32, i32* %11, align 4
  %358 = sext i32 %357 to i64
  %359 = mul nsw i64 %358, %36
  %360 = getelementptr inbounds double, double* %39, i64 %359
  %361 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @stabilize_lsps(double* %360, i32 %363)
  br label %365

365:                                              ; preds = %356, %307
  %366 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %367 = load i32*, i32** %9, align 8
  %368 = load i32, i32* %11, align 4
  %369 = load float*, float** %20, align 8
  %370 = load i32, i32* %11, align 4
  %371 = load i32, i32* @MAX_FRAMESIZE, align 4
  %372 = mul nsw i32 %370, %371
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds float, float* %369, i64 %373
  %375 = load i32, i32* %11, align 4
  %376 = sext i32 %375 to i64
  %377 = mul nsw i64 %376, %36
  %378 = getelementptr inbounds double, double* %39, i64 %377
  %379 = load i32, i32* %11, align 4
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %385

381:                                              ; preds = %365
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 6
  %384 = load double*, double** %383, align 8
  br label %391

385:                                              ; preds = %365
  %386 = load i32, i32* %11, align 4
  %387 = sub nsw i32 %386, 1
  %388 = sext i32 %387 to i64
  %389 = mul nsw i64 %388, %36
  %390 = getelementptr inbounds double, double* %39, i64 %389
  br label %391

391:                                              ; preds = %385, %381
  %392 = phi double* [ %384, %381 ], [ %390, %385 ]
  %393 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %393, i32 0, i32 4
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* %11, align 4
  %397 = load i32, i32* @MAX_FRAMESIZE, align 4
  %398 = mul nsw i32 %396, %397
  %399 = add nsw i32 %395, %398
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds float, float* %65, i64 %400
  %402 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* %11, align 4
  %406 = load i32, i32* @MAX_FRAMESIZE, align 4
  %407 = mul nsw i32 %405, %406
  %408 = add nsw i32 %404, %407
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds float, float* %70, i64 %409
  %411 = call i32 @synth_frame(%struct.TYPE_15__* %366, i32* %367, i32 %368, float* %374, double* %378, double* %392, float* %401, float* %410)
  store i32 %411, i32* %12, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %391
  %414 = load i32*, i32** %7, align 8
  store i32 0, i32* %414, align 4
  %415 = load i32, i32* %12, align 4
  store i32 %415, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %500

416:                                              ; preds = %391
  br label %417

417:                                              ; preds = %416
  %418 = load i32, i32* %11, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %11, align 4
  br label %304

420:                                              ; preds = %304
  %421 = load i32*, i32** %9, align 8
  %422 = call i64 @get_bits1(i32* %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %432

424:                                              ; preds = %420
  %425 = load i32*, i32** %9, align 8
  %426 = call i32 @get_bits(i32* %425, i32 4)
  store i32 %426, i32* %12, align 4
  %427 = load i32*, i32** %9, align 8
  %428 = load i32, i32* %12, align 4
  %429 = add nsw i32 %428, 1
  %430 = mul nsw i32 10, %429
  %431 = call i32 @skip_bits(i32* %427, i32 %430)
  br label %432

432:                                              ; preds = %424, %420
  %433 = load i32*, i32** %9, align 8
  %434 = call i64 @get_bits_left(i32* %433)
  %435 = icmp slt i64 %434, 0
  br i1 %435, label %436, label %440

436:                                              ; preds = %432
  %437 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %438 = call i32 @wmavoice_flush(%struct.TYPE_15__* %437)
  %439 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %439, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %500

440:                                              ; preds = %432
  %441 = load i32*, i32** %7, align 8
  store i32 1, i32* %441, align 4
  %442 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %443 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %442, i32 0, i32 6
  %444 = load double*, double** %443, align 8
  %445 = bitcast double* %444 to float*
  %446 = mul nsw i64 2, %36
  %447 = getelementptr inbounds double, double* %39, i64 %446
  %448 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = sext i32 %450 to i64
  %452 = mul i64 %451, 8
  %453 = call i32 (float*, ...) @memcpy(float* %445, double* %447, i64 %452)
  %454 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %455 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %454, i32 0, i32 2
  %456 = load float*, float** %455, align 8
  %457 = load i32, i32* @MAX_SFRAMESIZE, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds float, float* %70, i64 %458
  %460 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %461 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = sext i32 %462 to i64
  %464 = mul i64 %463, 4
  %465 = call i32 (float*, ...) @memcpy(float* %456, float* %459, i64 %464)
  %466 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %467 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %466, i32 0, i32 3
  %468 = load float*, float** %467, align 8
  %469 = load i32, i32* @MAX_SFRAMESIZE, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds float, float* %65, i64 %470
  %472 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %473 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %472, i32 0, i32 4
  %474 = load i32, i32* %473, align 8
  %475 = sext i32 %474 to i64
  %476 = mul i64 %475, 4
  %477 = call i32 (float*, ...) @memcpy(float* %468, float* %471, i64 %476)
  %478 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %479 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %478, i32 0, i32 8
  %480 = load i64, i64* %479, align 8
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %499

482:                                              ; preds = %440
  %483 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %484 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %483, i32 0, i32 7
  %485 = load i32*, i32** %484, align 8
  %486 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %487 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %486, i32 0, i32 7
  %488 = load i32*, i32** %487, align 8
  %489 = load i32, i32* @MAX_SFRAMESIZE, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %488, i64 %490
  %492 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %493 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %492, i32 0, i32 4
  %494 = load i32, i32* %493, align 8
  %495 = sext i32 %494 to i64
  %496 = mul i64 %495, 4
  %497 = trunc i64 %496 to i32
  %498 = call i32 @memmove(i32* %485, i32* %491, i32 %497)
  br label %499

499:                                              ; preds = %482, %440
  store i32 0, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %500

500:                                              ; preds = %499, %436, %413, %292, %121, %108
  %501 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %501)
  %502 = load i32, i32* %4, align 4
  ret i32 %502
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(float*, ...) #2

declare dso_local i32 @init_get_bits(i32*, i32, i64) #2

declare dso_local i64 @get_bits1(i32*) #2

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_15__*, i8*) #2

declare dso_local i32 @get_bits(i32*, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i32, i32) #2

declare dso_local i32 @dequant_lsp10r(i32*, double*, double*, double*, double*, i32) #2

declare dso_local i32 @dequant_lsp16r(i32*, double*, double*, double*, double*, i32) #2

declare dso_local i32 @stabilize_lsps(double*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_14__*) #2

declare dso_local i32 @ff_get_buffer(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @dequant_lsp10i(i32*, double*) #2

declare dso_local i32 @dequant_lsp16i(i32*, double*) #2

declare dso_local i32 @synth_frame(%struct.TYPE_15__*, i32*, i32, float*, double*, double*, float*, float*) #2

declare dso_local i32 @skip_bits(i32*, i32) #2

declare dso_local i64 @get_bits_left(i32*) #2

declare dso_local i32 @wmavoice_flush(%struct.TYPE_15__*) #2

declare dso_local i32 @memmove(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
