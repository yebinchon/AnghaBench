; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpack.c_wv_unpack_mono.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpack.c_wv_unpack_mono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_14__*, i64, i64, i64, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@AV_SAMPLE_FMT_S16P = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_FLTP = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S32P = common dso_local global i32 0, align 4
@AV_EF_CRCCHECK = common dso_local global i32 0, align 4
@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*, i8*, i32)* @wv_unpack_mono to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wv_unpack_mono(%struct.TYPE_16__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca float*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %18, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 9
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %19, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %20, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %21, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %22, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = bitcast i8* %41 to float*
  store float* %42, float** %23, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 6
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 7
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %292, %4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @wv_get_value(%struct.TYPE_16__* %50, i32* %51, i32 0, i32* %13)
  store i32 %52, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %294

56:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %240, %56
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %243

63:                                               ; preds = %57
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp sgt i32 %72, 8
  br i1 %73, label %74, label %145

74:                                               ; preds = %63
  %75 = load i32, i32* %14, align 4
  %76 = and i32 %75, 1
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %74
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = mul i32 2, %88
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = sub i32 %89, %99
  store i32 %100, i32* %15, align 4
  br label %125

101:                                              ; preds = %74
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = mul i32 3, %111
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = sub i32 %112, %122
  %124 = ashr i32 %123, 1
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %101, %78
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 %135, i32* %144, align 4
  store i32 0, i32* %11, align 4
  br label %162

145:                                              ; preds = %63
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %14, align 4
  %160 = add nsw i32 %158, %159
  %161 = and i32 %160, 7
  store i32 %161, i32* %11, align 4
  br label %162

162:                                              ; preds = %145, %125
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* @AV_SAMPLE_FMT_S16P, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %181

166:                                              ; preds = %162
  %167 = load i32, i32* %17, align 4
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 4
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %15, align 4
  %177 = mul nsw i32 %175, %176
  %178 = add nsw i32 %177, 512
  %179 = ashr i32 %178, 10
  %180 = add nsw i32 %167, %179
  store i32 %180, i32* %16, align 4
  br label %196

181:                                              ; preds = %162
  %182 = load i32, i32* %17, align 4
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 4
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %15, align 4
  %192 = mul i32 %190, %191
  %193 = add i32 %192, 512
  %194 = ashr i32 %193, 10
  %195 = add i32 %182, %194
  store i32 %195, i32* %16, align 4
  br label %196

196:                                              ; preds = %181, %166
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %227

199:                                              ; preds = %196
  %200 = load i32, i32* %17, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %227

202:                                              ; preds = %199
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* %15, align 4
  %205 = xor i32 %203, %204
  %206 = ashr i32 %205, 30
  %207 = and i32 %206, 2
  %208 = sub nsw i32 %207, 1
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 4
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %210, align 8
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %208, %216
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %219, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = sub nsw i32 %225, %217
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %202, %199, %196
  %228 = load i32, i32* %16, align 4
  store i32 %228, i32* %17, align 4
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 4
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %230, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  store i32 %228, i32* %239, align 4
  br label %240

240:                                              ; preds = %227
  %241 = load i32, i32* %10, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %10, align 4
  br label %57

243:                                              ; preds = %57
  %244 = load i32, i32* %18, align 4
  %245 = add nsw i32 %244, 1
  %246 = and i32 %245, 7
  store i32 %246, i32* %18, align 4
  %247 = load i32, i32* %19, align 4
  %248 = mul nsw i32 %247, 3
  %249 = load i32, i32* %16, align 4
  %250 = add nsw i32 %248, %249
  store i32 %250, i32* %19, align 4
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* @AV_SAMPLE_FMT_FLTP, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %261

254:                                              ; preds = %243
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %256 = load i32, i32* %16, align 4
  %257 = call i32 @wv_get_value_float(%struct.TYPE_16__* %255, i32* %20, i32 %256)
  %258 = sitofp i32 %257 to float
  %259 = load float*, float** %23, align 8
  %260 = getelementptr inbounds float, float* %259, i32 1
  store float* %260, float** %23, align 8
  store float %258, float* %259, align 4
  br label %280

261:                                              ; preds = %243
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* @AV_SAMPLE_FMT_S32P, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %272

265:                                              ; preds = %261
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %267 = load i32, i32* %16, align 4
  %268 = call i8* @wv_get_value_integer(%struct.TYPE_16__* %266, i32* %20, i32 %267)
  %269 = ptrtoint i8* %268 to i32
  %270 = load i32*, i32** %22, align 8
  %271 = getelementptr inbounds i32, i32* %270, i32 1
  store i32* %271, i32** %22, align 8
  store i32 %269, i32* %270, align 4
  br label %279

272:                                              ; preds = %261
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %274 = load i32, i32* %16, align 4
  %275 = call i8* @wv_get_value_integer(%struct.TYPE_16__* %273, i32* %20, i32 %274)
  %276 = ptrtoint i8* %275 to i32
  %277 = load i32*, i32** %21, align 8
  %278 = getelementptr inbounds i32, i32* %277, i32 1
  store i32* %278, i32** %21, align 8
  store i32 %276, i32* %277, align 4
  br label %279

279:                                              ; preds = %272, %265
  br label %280

280:                                              ; preds = %279, %254
  %281 = load i32, i32* %12, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %12, align 4
  br label %283

283:                                              ; preds = %280
  %284 = load i32, i32* %13, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %292, label %286

286:                                              ; preds = %283
  %287 = load i32, i32* %12, align 4
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = icmp slt i32 %287, %290
  br label %292

292:                                              ; preds = %286, %283
  %293 = phi i1 [ false, %283 ], [ %291, %286 ]
  br i1 %293, label %49, label %294

294:                                              ; preds = %292, %55
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %296 = call i32 @wv_reset_saved_context(%struct.TYPE_16__* %295)
  %297 = load i32, i32* %13, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %323

299:                                              ; preds = %294
  %300 = load i32, i32* %12, align 4
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = icmp slt i32 %300, %303
  br i1 %304, label %305, label %323

305:                                              ; preds = %299
  %306 = load i32, i32* %9, align 4
  %307 = call i32 @av_get_bytes_per_sample(i32 %306)
  store i32 %307, i32* %24, align 4
  %308 = load i8*, i8** %8, align 8
  %309 = bitcast i8* %308 to i32*
  %310 = load i32, i32* %12, align 4
  %311 = load i32, i32* %24, align 4
  %312 = mul nsw i32 %310, %311
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %309, i64 %313
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %12, align 4
  %319 = sub nsw i32 %317, %318
  %320 = load i32, i32* %24, align 4
  %321 = mul nsw i32 %319, %320
  %322 = call i32 @memset(i32* %314, i32 0, i32 %321)
  br label %323

323:                                              ; preds = %305, %299, %294
  %324 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 3
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @AV_EF_CRCCHECK, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %351

332:                                              ; preds = %323
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %334 = load i32, i32* %19, align 4
  %335 = load i32, i32* %20, align 4
  %336 = call i32 @wv_check_crc(%struct.TYPE_16__* %333, i32 %334, i32 %335)
  store i32 %336, i32* %25, align 4
  %337 = load i32, i32* %25, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %350

339:                                              ; preds = %332
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 3
  %342 = load %struct.TYPE_15__*, %struct.TYPE_15__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @AV_EF_EXPLODE, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %339
  %349 = load i32, i32* %25, align 4
  store i32 %349, i32* %5, align 4
  br label %352

350:                                              ; preds = %339, %332
  br label %351

351:                                              ; preds = %350, %323
  store i32 0, i32* %5, align 4
  br label %352

352:                                              ; preds = %351, %348
  %353 = load i32, i32* %5, align 4
  ret i32 %353
}

declare dso_local i32 @wv_get_value(%struct.TYPE_16__*, i32*, i32, i32*) #1

declare dso_local i32 @wv_get_value_float(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i8* @wv_get_value_integer(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @wv_reset_saved_context(%struct.TYPE_16__*) #1

declare dso_local i32 @av_get_bytes_per_sample(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @wv_check_crc(%struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
