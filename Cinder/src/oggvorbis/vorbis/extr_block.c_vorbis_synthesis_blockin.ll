; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_block.c_vorbis_synthesis_blockin.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_block.c_vorbis_synthesis_blockin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i64, i32, i32, i32, i32, float**, i32, i32, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32, i64* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_10__ = type { i64, i32, float**, i32, i64, i64, i64, i64, i64 }

@OV_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vorbis_synthesis_blockin(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float*, align 8
  %30 = alloca float*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 15
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %6, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %7, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 14
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %8, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %9, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = icmp ne %struct.TYPE_10__* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %2
  %48 = load i32, i32* @OV_EINVAL, align 4
  store i32 %48, i32* %3, align 4
  br label %853

49:                                               ; preds = %2
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @OV_EINVAL, align 4
  store i32 %63, i32* %3, align 4
  br label %853

64:                                               ; preds = %57, %49
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 4
  store i32 -1, i32* %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %90, label %81

81:                                               ; preds = %64
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %85, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %81, %64
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 6
  store i32 -1, i32* %92, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i32 -1, i32* %94, align 8
  br label %95

95:                                               ; preds = %90, %81
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load float**, float*** %102, align 8
  %104 = icmp ne float** %103, null
  br i1 %104, label %105, label %601

105:                                              ; preds = %95
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  %116 = ashr i32 %113, %115
  store i32 %116, i32* %12, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  %124 = ashr i32 %121, %123
  store i32 %124, i32* %13, align 4
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  %132 = ashr i32 %129, %131
  store i32 %132, i32* %14, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 13
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %135
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %137, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 7
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 12
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %144
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %146, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 11
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %157, %153
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %155, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 10
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %162
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %164, align 4
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %105
  %174 = load i32, i32* %14, align 4
  store i32 %174, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %177

175:                                              ; preds = %105
  store i32 0, i32* %15, align 4
  %176 = load i32, i32* %14, align 4
  store i32 %176, i32* %16, align 4
  br label %177

177:                                              ; preds = %175, %173
  store i32 0, i32* %11, align 4
  br label %178

178:                                              ; preds = %544, %177
  %179 = load i32, i32* %11, align 4
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %547

184:                                              ; preds = %178
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %336

189:                                              ; preds = %184
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %260

194:                                              ; preds = %189
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 1
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = sub nsw i64 %199, %201
  %203 = call float* @_vorbis_window_get(i64 %202)
  store float* %203, float** %17, align 8
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 8
  %206 = load float**, float*** %205, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float*, float** %206, i64 %208
  %210 = load float*, float** %209, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds float, float* %210, i64 %212
  store float* %213, float** %18, align 8
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 2
  %216 = load float**, float*** %215, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float*, float** %216, i64 %218
  %220 = load float*, float** %219, align 8
  store float* %220, float** %19, align 8
  store i32 0, i32* %10, align 4
  br label %221

221:                                              ; preds = %256, %194
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* %14, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %259

225:                                              ; preds = %221
  %226 = load float*, float** %18, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %226, i64 %228
  %230 = load float, float* %229, align 4
  %231 = load float*, float** %17, align 8
  %232 = load i32, i32* %14, align 4
  %233 = load i32, i32* %10, align 4
  %234 = sub nsw i32 %232, %233
  %235 = sub nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %231, i64 %236
  %238 = load float, float* %237, align 4
  %239 = fmul float %230, %238
  %240 = load float*, float** %19, align 8
  %241 = load i32, i32* %10, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %240, i64 %242
  %244 = load float, float* %243, align 4
  %245 = load float*, float** %17, align 8
  %246 = load i32, i32* %10, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %245, i64 %247
  %249 = load float, float* %248, align 4
  %250 = fmul float %244, %249
  %251 = fadd float %239, %250
  %252 = load float*, float** %18, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float, float* %252, i64 %254
  store float %251, float* %255, align 4
  br label %256

256:                                              ; preds = %225
  %257 = load i32, i32* %10, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %10, align 4
  br label %221

259:                                              ; preds = %221
  br label %335

260:                                              ; preds = %189
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 1
  %263 = load i64*, i64** %262, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 0
  %265 = load i64, i64* %264, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = sub nsw i64 %265, %267
  %269 = call float* @_vorbis_window_get(i64 %268)
  store float* %269, float** %20, align 8
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 8
  %272 = load float**, float*** %271, align 8
  %273 = load i32, i32* %11, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds float*, float** %272, i64 %274
  %276 = load float*, float** %275, align 8
  %277 = load i32, i32* %16, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds float, float* %276, i64 %278
  %280 = load i32, i32* %14, align 4
  %281 = sdiv i32 %280, 2
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds float, float* %279, i64 %282
  %284 = load i32, i32* %13, align 4
  %285 = sdiv i32 %284, 2
  %286 = sext i32 %285 to i64
  %287 = sub i64 0, %286
  %288 = getelementptr inbounds float, float* %283, i64 %287
  store float* %288, float** %21, align 8
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 2
  %291 = load float**, float*** %290, align 8
  %292 = load i32, i32* %11, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds float*, float** %291, i64 %293
  %295 = load float*, float** %294, align 8
  store float* %295, float** %22, align 8
  store i32 0, i32* %10, align 4
  br label %296

296:                                              ; preds = %331, %260
  %297 = load i32, i32* %10, align 4
  %298 = load i32, i32* %13, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %334

300:                                              ; preds = %296
  %301 = load float*, float** %21, align 8
  %302 = load i32, i32* %10, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %301, i64 %303
  %305 = load float, float* %304, align 4
  %306 = load float*, float** %20, align 8
  %307 = load i32, i32* %13, align 4
  %308 = load i32, i32* %10, align 4
  %309 = sub nsw i32 %307, %308
  %310 = sub nsw i32 %309, 1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds float, float* %306, i64 %311
  %313 = load float, float* %312, align 4
  %314 = fmul float %305, %313
  %315 = load float*, float** %22, align 8
  %316 = load i32, i32* %10, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds float, float* %315, i64 %317
  %319 = load float, float* %318, align 4
  %320 = load float*, float** %20, align 8
  %321 = load i32, i32* %10, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds float, float* %320, i64 %322
  %324 = load float, float* %323, align 4
  %325 = fmul float %319, %324
  %326 = fadd float %314, %325
  %327 = load float*, float** %21, align 8
  %328 = load i32, i32* %10, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds float, float* %327, i64 %329
  store float %326, float* %330, align 4
  br label %331

331:                                              ; preds = %300
  %332 = load i32, i32* %10, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %10, align 4
  br label %296

334:                                              ; preds = %296
  br label %335

335:                                              ; preds = %334, %259
  br label %505

336:                                              ; preds = %184
  %337 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 3
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %438

341:                                              ; preds = %336
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 1
  %344 = load i64*, i64** %343, align 8
  %345 = getelementptr inbounds i64, i64* %344, i64 0
  %346 = load i64, i64* %345, align 8
  %347 = load i32, i32* %9, align 4
  %348 = sext i32 %347 to i64
  %349 = sub nsw i64 %346, %348
  %350 = call float* @_vorbis_window_get(i64 %349)
  store float* %350, float** %23, align 8
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 8
  %353 = load float**, float*** %352, align 8
  %354 = load i32, i32* %11, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds float*, float** %353, i64 %355
  %357 = load float*, float** %356, align 8
  %358 = load i32, i32* %16, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds float, float* %357, i64 %359
  store float* %360, float** %24, align 8
  %361 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 2
  %363 = load float**, float*** %362, align 8
  %364 = load i32, i32* %11, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds float*, float** %363, i64 %365
  %367 = load float*, float** %366, align 8
  %368 = load i32, i32* %14, align 4
  %369 = sdiv i32 %368, 2
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds float, float* %367, i64 %370
  %372 = load i32, i32* %13, align 4
  %373 = sdiv i32 %372, 2
  %374 = sext i32 %373 to i64
  %375 = sub i64 0, %374
  %376 = getelementptr inbounds float, float* %371, i64 %375
  store float* %376, float** %25, align 8
  store i32 0, i32* %10, align 4
  br label %377

377:                                              ; preds = %412, %341
  %378 = load i32, i32* %10, align 4
  %379 = load i32, i32* %13, align 4
  %380 = icmp slt i32 %378, %379
  br i1 %380, label %381, label %415

381:                                              ; preds = %377
  %382 = load float*, float** %24, align 8
  %383 = load i32, i32* %10, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds float, float* %382, i64 %384
  %386 = load float, float* %385, align 4
  %387 = load float*, float** %23, align 8
  %388 = load i32, i32* %13, align 4
  %389 = load i32, i32* %10, align 4
  %390 = sub nsw i32 %388, %389
  %391 = sub nsw i32 %390, 1
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds float, float* %387, i64 %392
  %394 = load float, float* %393, align 4
  %395 = fmul float %386, %394
  %396 = load float*, float** %25, align 8
  %397 = load i32, i32* %10, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds float, float* %396, i64 %398
  %400 = load float, float* %399, align 4
  %401 = load float*, float** %23, align 8
  %402 = load i32, i32* %10, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds float, float* %401, i64 %403
  %405 = load float, float* %404, align 4
  %406 = fmul float %400, %405
  %407 = fadd float %395, %406
  %408 = load float*, float** %24, align 8
  %409 = load i32, i32* %10, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds float, float* %408, i64 %410
  store float %407, float* %411, align 4
  br label %412

412:                                              ; preds = %381
  %413 = load i32, i32* %10, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %10, align 4
  br label %377

415:                                              ; preds = %377
  br label %416

416:                                              ; preds = %434, %415
  %417 = load i32, i32* %10, align 4
  %418 = load i32, i32* %14, align 4
  %419 = sdiv i32 %418, 2
  %420 = load i32, i32* %13, align 4
  %421 = sdiv i32 %420, 2
  %422 = add nsw i32 %419, %421
  %423 = icmp slt i32 %417, %422
  br i1 %423, label %424, label %437

424:                                              ; preds = %416
  %425 = load float*, float** %25, align 8
  %426 = load i32, i32* %10, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds float, float* %425, i64 %427
  %429 = load float, float* %428, align 4
  %430 = load float*, float** %24, align 8
  %431 = load i32, i32* %10, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds float, float* %430, i64 %432
  store float %429, float* %433, align 4
  br label %434

434:                                              ; preds = %424
  %435 = load i32, i32* %10, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %10, align 4
  br label %416

437:                                              ; preds = %416
  br label %504

438:                                              ; preds = %336
  %439 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i32 0, i32 1
  %441 = load i64*, i64** %440, align 8
  %442 = getelementptr inbounds i64, i64* %441, i64 0
  %443 = load i64, i64* %442, align 8
  %444 = load i32, i32* %9, align 4
  %445 = sext i32 %444 to i64
  %446 = sub nsw i64 %443, %445
  %447 = call float* @_vorbis_window_get(i64 %446)
  store float* %447, float** %26, align 8
  %448 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %448, i32 0, i32 8
  %450 = load float**, float*** %449, align 8
  %451 = load i32, i32* %11, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds float*, float** %450, i64 %452
  %454 = load float*, float** %453, align 8
  %455 = load i32, i32* %16, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds float, float* %454, i64 %456
  store float* %457, float** %27, align 8
  %458 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %459 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %458, i32 0, i32 2
  %460 = load float**, float*** %459, align 8
  %461 = load i32, i32* %11, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds float*, float** %460, i64 %462
  %464 = load float*, float** %463, align 8
  store float* %464, float** %28, align 8
  store i32 0, i32* %10, align 4
  br label %465

465:                                              ; preds = %500, %438
  %466 = load i32, i32* %10, align 4
  %467 = load i32, i32* %13, align 4
  %468 = icmp slt i32 %466, %467
  br i1 %468, label %469, label %503

469:                                              ; preds = %465
  %470 = load float*, float** %27, align 8
  %471 = load i32, i32* %10, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds float, float* %470, i64 %472
  %474 = load float, float* %473, align 4
  %475 = load float*, float** %26, align 8
  %476 = load i32, i32* %13, align 4
  %477 = load i32, i32* %10, align 4
  %478 = sub nsw i32 %476, %477
  %479 = sub nsw i32 %478, 1
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds float, float* %475, i64 %480
  %482 = load float, float* %481, align 4
  %483 = fmul float %474, %482
  %484 = load float*, float** %28, align 8
  %485 = load i32, i32* %10, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds float, float* %484, i64 %486
  %488 = load float, float* %487, align 4
  %489 = load float*, float** %26, align 8
  %490 = load i32, i32* %10, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds float, float* %489, i64 %491
  %493 = load float, float* %492, align 4
  %494 = fmul float %488, %493
  %495 = fadd float %483, %494
  %496 = load float*, float** %27, align 8
  %497 = load i32, i32* %10, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds float, float* %496, i64 %498
  store float %495, float* %499, align 4
  br label %500

500:                                              ; preds = %469
  %501 = load i32, i32* %10, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %10, align 4
  br label %465

503:                                              ; preds = %465
  br label %504

504:                                              ; preds = %503, %437
  br label %505

505:                                              ; preds = %504, %335
  %506 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %507 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %506, i32 0, i32 8
  %508 = load float**, float*** %507, align 8
  %509 = load i32, i32* %11, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds float*, float** %508, i64 %510
  %512 = load float*, float** %511, align 8
  %513 = load i32, i32* %15, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds float, float* %512, i64 %514
  store float* %515, float** %29, align 8
  %516 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %517 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %516, i32 0, i32 2
  %518 = load float**, float*** %517, align 8
  %519 = load i32, i32* %11, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds float*, float** %518, i64 %520
  %522 = load float*, float** %521, align 8
  %523 = load i32, i32* %12, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds float, float* %522, i64 %524
  store float* %525, float** %30, align 8
  store i32 0, i32* %10, align 4
  br label %526

526:                                              ; preds = %540, %505
  %527 = load i32, i32* %10, align 4
  %528 = load i32, i32* %12, align 4
  %529 = icmp slt i32 %527, %528
  br i1 %529, label %530, label %543

530:                                              ; preds = %526
  %531 = load float*, float** %30, align 8
  %532 = load i32, i32* %10, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds float, float* %531, i64 %533
  %535 = load float, float* %534, align 4
  %536 = load float*, float** %29, align 8
  %537 = load i32, i32* %10, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds float, float* %536, i64 %538
  store float %535, float* %539, align 4
  br label %540

540:                                              ; preds = %530
  %541 = load i32, i32* %10, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %10, align 4
  br label %526

543:                                              ; preds = %526
  br label %544

544:                                              ; preds = %543
  %545 = load i32, i32* %11, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %11, align 4
  br label %178

547:                                              ; preds = %178
  %548 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %549 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %548, i32 0, i32 7
  %550 = load i32, i32* %549, align 4
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %555

552:                                              ; preds = %547
  %553 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %554 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %553, i32 0, i32 7
  store i32 0, i32* %554, align 4
  br label %559

555:                                              ; preds = %547
  %556 = load i32, i32* %14, align 4
  %557 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %558 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %557, i32 0, i32 7
  store i32 %556, i32* %558, align 4
  br label %559

559:                                              ; preds = %555, %552
  %560 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %561 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %560, i32 0, i32 1
  %562 = load i32, i32* %561, align 4
  %563 = icmp eq i32 %562, -1
  br i1 %563, label %564, label %571

564:                                              ; preds = %559
  %565 = load i32, i32* %15, align 4
  %566 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %567 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %566, i32 0, i32 1
  store i32 %565, i32* %567, align 4
  %568 = load i32, i32* %15, align 4
  %569 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %570 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %569, i32 0, i32 0
  store i32 %568, i32* %570, align 8
  br label %600

571:                                              ; preds = %559
  %572 = load i32, i32* %16, align 4
  %573 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %574 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %573, i32 0, i32 1
  store i32 %572, i32* %574, align 4
  %575 = load i32, i32* %16, align 4
  %576 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %577 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %576, i32 0, i32 1
  %578 = load i32*, i32** %577, align 8
  %579 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %580 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %579, i32 0, i32 2
  %581 = load i64, i64* %580, align 8
  %582 = getelementptr inbounds i32, i32* %578, i64 %581
  %583 = load i32, i32* %582, align 4
  %584 = sdiv i32 %583, 4
  %585 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %586 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %585, i32 0, i32 1
  %587 = load i32*, i32** %586, align 8
  %588 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %589 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %588, i32 0, i32 3
  %590 = load i64, i64* %589, align 8
  %591 = getelementptr inbounds i32, i32* %587, i64 %590
  %592 = load i32, i32* %591, align 4
  %593 = sdiv i32 %592, 4
  %594 = add nsw i32 %584, %593
  %595 = load i32, i32* %9, align 4
  %596 = ashr i32 %594, %595
  %597 = add nsw i32 %575, %596
  %598 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %599 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %598, i32 0, i32 0
  store i32 %597, i32* %599, align 8
  br label %600

600:                                              ; preds = %571, %564
  br label %601

601:                                              ; preds = %600, %95
  %602 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %603 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %602, i32 0, i32 0
  %604 = load i32, i32* %603, align 8
  %605 = icmp eq i32 %604, -1
  br i1 %605, label %606, label %609

606:                                              ; preds = %601
  %607 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %608 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %607, i32 0, i32 0
  store i32 0, i32* %608, align 8
  br label %633

609:                                              ; preds = %601
  %610 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %611 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %610, i32 0, i32 1
  %612 = load i32*, i32** %611, align 8
  %613 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %614 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %613, i32 0, i32 2
  %615 = load i64, i64* %614, align 8
  %616 = getelementptr inbounds i32, i32* %612, i64 %615
  %617 = load i32, i32* %616, align 4
  %618 = sdiv i32 %617, 4
  %619 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %620 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %619, i32 0, i32 1
  %621 = load i32*, i32** %620, align 8
  %622 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %623 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %622, i32 0, i32 3
  %624 = load i64, i64* %623, align 8
  %625 = getelementptr inbounds i32, i32* %621, i64 %624
  %626 = load i32, i32* %625, align 4
  %627 = sdiv i32 %626, 4
  %628 = add nsw i32 %618, %627
  %629 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %630 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %629, i32 0, i32 0
  %631 = load i32, i32* %630, align 8
  %632 = add nsw i32 %631, %628
  store i32 %632, i32* %630, align 8
  br label %633

633:                                              ; preds = %609, %606
  %634 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %635 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %634, i32 0, i32 6
  %636 = load i32, i32* %635, align 8
  %637 = icmp eq i32 %636, -1
  br i1 %637, label %638, label %736

638:                                              ; preds = %633
  %639 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %640 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %639, i32 0, i32 3
  %641 = load i32, i32* %640, align 8
  %642 = icmp ne i32 %641, -1
  br i1 %642, label %643, label %735

643:                                              ; preds = %638
  %644 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %645 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %644, i32 0, i32 3
  %646 = load i32, i32* %645, align 8
  %647 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %648 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %647, i32 0, i32 6
  store i32 %646, i32* %648, align 8
  %649 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %650 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %649, i32 0, i32 0
  %651 = load i32, i32* %650, align 8
  %652 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %653 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %652, i32 0, i32 6
  %654 = load i32, i32* %653, align 8
  %655 = icmp sgt i32 %651, %654
  br i1 %655, label %656, label %734

656:                                              ; preds = %643
  %657 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %658 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 8
  %660 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %661 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %660, i32 0, i32 3
  %662 = load i32, i32* %661, align 8
  %663 = sub nsw i32 %659, %662
  %664 = sext i32 %663 to i64
  store i64 %664, i64* %31, align 8
  %665 = load i64, i64* %31, align 8
  %666 = icmp slt i64 %665, 0
  br i1 %666, label %667, label %668

667:                                              ; preds = %656
  store i64 0, i64* %31, align 8
  br label %668

668:                                              ; preds = %667, %656
  %669 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %670 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %669, i32 0, i32 4
  %671 = load i64, i64* %670, align 8
  %672 = icmp ne i64 %671, 0
  br i1 %672, label %673, label %708

673:                                              ; preds = %668
  %674 = load i64, i64* %31, align 8
  %675 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %676 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %675, i32 0, i32 0
  %677 = load i32, i32* %676, align 8
  %678 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %679 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %678, i32 0, i32 1
  %680 = load i32, i32* %679, align 4
  %681 = sub nsw i32 %677, %680
  %682 = load i32, i32* %9, align 4
  %683 = shl i32 %681, %682
  %684 = sext i32 %683 to i64
  %685 = icmp sgt i64 %674, %684
  br i1 %685, label %686, label %697

686:                                              ; preds = %673
  %687 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %688 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %687, i32 0, i32 0
  %689 = load i32, i32* %688, align 8
  %690 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %691 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %690, i32 0, i32 1
  %692 = load i32, i32* %691, align 4
  %693 = sub nsw i32 %689, %692
  %694 = load i32, i32* %9, align 4
  %695 = shl i32 %693, %694
  %696 = sext i32 %695 to i64
  store i64 %696, i64* %31, align 8
  br label %697

697:                                              ; preds = %686, %673
  %698 = load i64, i64* %31, align 8
  %699 = load i32, i32* %9, align 4
  %700 = zext i32 %699 to i64
  %701 = ashr i64 %698, %700
  %702 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %703 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %702, i32 0, i32 0
  %704 = load i32, i32* %703, align 8
  %705 = sext i32 %704 to i64
  %706 = sub nsw i64 %705, %701
  %707 = trunc i64 %706 to i32
  store i32 %707, i32* %703, align 8
  br label %733

708:                                              ; preds = %668
  %709 = load i64, i64* %31, align 8
  %710 = load i32, i32* %9, align 4
  %711 = zext i32 %710 to i64
  %712 = ashr i64 %709, %711
  %713 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %714 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %713, i32 0, i32 1
  %715 = load i32, i32* %714, align 4
  %716 = sext i32 %715 to i64
  %717 = add nsw i64 %716, %712
  %718 = trunc i64 %717 to i32
  store i32 %718, i32* %714, align 4
  %719 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %720 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %719, i32 0, i32 1
  %721 = load i32, i32* %720, align 4
  %722 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %723 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %722, i32 0, i32 0
  %724 = load i32, i32* %723, align 8
  %725 = icmp sgt i32 %721, %724
  br i1 %725, label %726, label %732

726:                                              ; preds = %708
  %727 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %728 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %727, i32 0, i32 0
  %729 = load i32, i32* %728, align 8
  %730 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %731 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %730, i32 0, i32 1
  store i32 %729, i32* %731, align 4
  br label %732

732:                                              ; preds = %726, %708
  br label %733

733:                                              ; preds = %732, %697
  br label %734

734:                                              ; preds = %733, %643
  br label %735

735:                                              ; preds = %734, %638
  br label %844

736:                                              ; preds = %633
  %737 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %738 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %737, i32 0, i32 1
  %739 = load i32*, i32** %738, align 8
  %740 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %741 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %740, i32 0, i32 2
  %742 = load i64, i64* %741, align 8
  %743 = getelementptr inbounds i32, i32* %739, i64 %742
  %744 = load i32, i32* %743, align 4
  %745 = sdiv i32 %744, 4
  %746 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %747 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %746, i32 0, i32 1
  %748 = load i32*, i32** %747, align 8
  %749 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %750 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %749, i32 0, i32 3
  %751 = load i64, i64* %750, align 8
  %752 = getelementptr inbounds i32, i32* %748, i64 %751
  %753 = load i32, i32* %752, align 4
  %754 = sdiv i32 %753, 4
  %755 = add nsw i32 %745, %754
  %756 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %757 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %756, i32 0, i32 6
  %758 = load i32, i32* %757, align 8
  %759 = add nsw i32 %758, %755
  store i32 %759, i32* %757, align 8
  %760 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %761 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %760, i32 0, i32 3
  %762 = load i32, i32* %761, align 8
  %763 = icmp ne i32 %762, -1
  br i1 %763, label %764, label %843

764:                                              ; preds = %736
  %765 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %766 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %765, i32 0, i32 6
  %767 = load i32, i32* %766, align 8
  %768 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %769 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %768, i32 0, i32 3
  %770 = load i32, i32* %769, align 8
  %771 = icmp ne i32 %767, %770
  br i1 %771, label %772, label %843

772:                                              ; preds = %764
  %773 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %774 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %773, i32 0, i32 6
  %775 = load i32, i32* %774, align 8
  %776 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %777 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %776, i32 0, i32 3
  %778 = load i32, i32* %777, align 8
  %779 = icmp sgt i32 %775, %778
  br i1 %779, label %780, label %837

780:                                              ; preds = %772
  %781 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %782 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %781, i32 0, i32 6
  %783 = load i32, i32* %782, align 8
  %784 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %785 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %784, i32 0, i32 3
  %786 = load i32, i32* %785, align 8
  %787 = sub nsw i32 %783, %786
  %788 = sext i32 %787 to i64
  store i64 %788, i64* %32, align 8
  %789 = load i64, i64* %32, align 8
  %790 = icmp ne i64 %789, 0
  br i1 %790, label %791, label %836

791:                                              ; preds = %780
  %792 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %793 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %792, i32 0, i32 4
  %794 = load i64, i64* %793, align 8
  %795 = icmp ne i64 %794, 0
  br i1 %795, label %796, label %835

796:                                              ; preds = %791
  %797 = load i64, i64* %32, align 8
  %798 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %799 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %798, i32 0, i32 0
  %800 = load i32, i32* %799, align 8
  %801 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %802 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %801, i32 0, i32 1
  %803 = load i32, i32* %802, align 4
  %804 = sub nsw i32 %800, %803
  %805 = load i32, i32* %9, align 4
  %806 = shl i32 %804, %805
  %807 = sext i32 %806 to i64
  %808 = icmp sgt i64 %797, %807
  br i1 %808, label %809, label %820

809:                                              ; preds = %796
  %810 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %811 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %810, i32 0, i32 0
  %812 = load i32, i32* %811, align 8
  %813 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %814 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %813, i32 0, i32 1
  %815 = load i32, i32* %814, align 4
  %816 = sub nsw i32 %812, %815
  %817 = load i32, i32* %9, align 4
  %818 = shl i32 %816, %817
  %819 = sext i32 %818 to i64
  store i64 %819, i64* %32, align 8
  br label %820

820:                                              ; preds = %809, %796
  %821 = load i64, i64* %32, align 8
  %822 = icmp slt i64 %821, 0
  br i1 %822, label %823, label %824

823:                                              ; preds = %820
  store i64 0, i64* %32, align 8
  br label %824

824:                                              ; preds = %823, %820
  %825 = load i64, i64* %32, align 8
  %826 = load i32, i32* %9, align 4
  %827 = zext i32 %826 to i64
  %828 = ashr i64 %825, %827
  %829 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %830 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %829, i32 0, i32 0
  %831 = load i32, i32* %830, align 8
  %832 = sext i32 %831 to i64
  %833 = sub nsw i64 %832, %828
  %834 = trunc i64 %833 to i32
  store i32 %834, i32* %830, align 8
  br label %835

835:                                              ; preds = %824, %791
  br label %836

836:                                              ; preds = %835, %780
  br label %837

837:                                              ; preds = %836, %772
  %838 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %839 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %838, i32 0, i32 3
  %840 = load i32, i32* %839, align 8
  %841 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %842 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %841, i32 0, i32 6
  store i32 %840, i32* %842, align 8
  br label %843

843:                                              ; preds = %837, %764, %736
  br label %844

844:                                              ; preds = %843, %735
  %845 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %846 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %845, i32 0, i32 4
  %847 = load i64, i64* %846, align 8
  %848 = icmp ne i64 %847, 0
  br i1 %848, label %849, label %852

849:                                              ; preds = %844
  %850 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %851 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %850, i32 0, i32 9
  store i32 1, i32* %851, align 8
  br label %852

852:                                              ; preds = %849, %844
  store i32 0, i32* %3, align 4
  br label %853

853:                                              ; preds = %852, %62, %47
  %854 = load i32, i32* %3, align 4
  ret i32 %854
}

declare dso_local float* @_vorbis_window_get(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
