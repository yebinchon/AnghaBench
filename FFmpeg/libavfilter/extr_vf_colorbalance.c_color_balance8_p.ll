; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorbalance.c_color_balance8_p.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorbalance.c_color_balance8_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { float, i64, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, float**, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32, i32)* @color_balance8_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @color_balance8_p(%struct.TYPE_15__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %9, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %10, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %11, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %12, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %13, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  %53 = mul nsw i32 %50, %52
  %54 = load i32, i32* %8, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %14, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load float**, float*** %57, align 8
  %59 = getelementptr inbounds float*, float** %58, i64 0
  %60 = load float*, float** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %61, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %60, i64 %68
  store float* %69, float** %15, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load float**, float*** %71, align 8
  %73 = getelementptr inbounds float*, float** %72, i64 1
  %74 = load float*, float** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %75, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %74, i64 %82
  store float* %83, float** %16, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load float**, float*** %85, align 8
  %87 = getelementptr inbounds float*, float** %86, i64 2
  %88 = load float*, float** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %89, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %88, i64 %96
  store float* %97, float** %17, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load float**, float*** %99, align 8
  %101 = getelementptr inbounds float*, float** %100, i64 3
  %102 = load float*, float** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %103, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %102, i64 %110
  store float* %111, float** %18, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load float**, float*** %113, align 8
  %115 = getelementptr inbounds float*, float** %114, i64 0
  %116 = load float*, float** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %117, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %116, i64 %124
  store float* %125, float** %19, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load float**, float*** %127, align 8
  %129 = getelementptr inbounds float*, float** %128, i64 1
  %130 = load float*, float** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %131, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %130, i64 %138
  store float* %139, float** %20, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load float**, float*** %141, align 8
  %143 = getelementptr inbounds float*, float** %142, i64 2
  %144 = load float*, float** %143, align 8
  %145 = load i32, i32* %13, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %145, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, float* %144, i64 %152
  store float* %153, float** %21, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load float**, float*** %155, align 8
  %157 = getelementptr inbounds float*, float** %156, i64 3
  %158 = load float*, float** %157, align 8
  %159 = load i32, i32* %13, align 4
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 3
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 %159, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %158, i64 %166
  store float* %167, float** %22, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load float, float* %169, align 8
  store float %170, float* %23, align 4
  %171 = load i32, i32* %13, align 4
  store i32 %171, i32* %24, align 4
  br label %172

172:                                              ; preds = %380, %4
  %173 = load i32, i32* %24, align 4
  %174 = load i32, i32* %14, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %383

176:                                              ; preds = %172
  store i32 0, i32* %25, align 4
  br label %177

177:                                              ; preds = %312, %176
  %178 = load i32, i32* %25, align 4
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %315

183:                                              ; preds = %177
  %184 = load float*, float** %17, align 8
  %185 = load i32, i32* %25, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %184, i64 %186
  %188 = load float, float* %187, align 4
  %189 = load float, float* %23, align 4
  %190 = fdiv float %188, %189
  store float %190, float* %26, align 4
  %191 = load float*, float** %15, align 8
  %192 = load i32, i32* %25, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %191, i64 %193
  %195 = load float, float* %194, align 4
  %196 = load float, float* %23, align 4
  %197 = fdiv float %195, %196
  store float %197, float* %27, align 4
  %198 = load float*, float** %16, align 8
  %199 = load i32, i32* %25, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %198, i64 %200
  %202 = load float, float* %201, align 4
  %203 = load float, float* %23, align 4
  %204 = fdiv float %202, %203
  store float %204, float* %28, align 4
  %205 = load float, float* %26, align 4
  %206 = load float, float* %27, align 4
  %207 = load float, float* %28, align 4
  %208 = call float @FFMAX3(float %205, float %206, float %207)
  %209 = load float, float* %26, align 4
  %210 = load float, float* %27, align 4
  %211 = load float, float* %28, align 4
  %212 = call float @FFMIN3(float %209, float %210, float %211)
  %213 = fadd float %208, %212
  store float %213, float* %29, align 4
  %214 = load float, float* %26, align 4
  %215 = load float, float* %29, align 4
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call float @get_component(float %214, float %215, i32 %219, i32 %223, i32 %227)
  store float %228, float* %26, align 4
  %229 = load float, float* %27, align 4
  %230 = load float, float* %29, align 4
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call float @get_component(float %229, float %230, i32 %234, i32 %238, i32 %242)
  store float %243, float* %27, align 4
  %244 = load float, float* %28, align 4
  %245 = load float, float* %29, align 4
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call float @get_component(float %244, float %245, i32 %249, i32 %253, i32 %257)
  store float %258, float* %28, align 4
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %183
  %264 = load float, float* %29, align 4
  %265 = call i32 @preservel(float* %26, float* %27, float* %28, float %264)
  br label %266

266:                                              ; preds = %263, %183
  %267 = load float, float* %26, align 4
  %268 = load float, float* %23, align 4
  %269 = fmul float %267, %268
  %270 = call float @av_clip_uint8(float %269)
  %271 = load float*, float** %21, align 8
  %272 = load i32, i32* %25, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds float, float* %271, i64 %273
  store float %270, float* %274, align 4
  %275 = load float, float* %27, align 4
  %276 = load float, float* %23, align 4
  %277 = fmul float %275, %276
  %278 = call float @av_clip_uint8(float %277)
  %279 = load float*, float** %19, align 8
  %280 = load i32, i32* %25, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds float, float* %279, i64 %281
  store float %278, float* %282, align 4
  %283 = load float, float* %28, align 4
  %284 = load float, float* %23, align 4
  %285 = fmul float %283, %284
  %286 = call float @av_clip_uint8(float %285)
  %287 = load float*, float** %20, align 8
  %288 = load i32, i32* %25, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds float, float* %287, i64 %289
  store float %286, float* %290, align 4
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %293 = icmp ne %struct.TYPE_14__* %291, %292
  br i1 %293, label %294, label %311

294:                                              ; preds = %266
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 2
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 3
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %311

301:                                              ; preds = %294
  %302 = load float*, float** %18, align 8
  %303 = load i32, i32* %25, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds float, float* %302, i64 %304
  %306 = load float, float* %305, align 4
  %307 = load float*, float** %22, align 8
  %308 = load i32, i32* %25, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds float, float* %307, i64 %309
  store float %306, float* %310, align 4
  br label %311

311:                                              ; preds = %301, %294, %266
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %25, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %25, align 4
  br label %177

315:                                              ; preds = %177
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 2
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 0
  %320 = load i32, i32* %319, align 4
  %321 = load float*, float** %15, align 8
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds float, float* %321, i64 %322
  store float* %323, float** %15, align 8
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 2
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 1
  %328 = load i32, i32* %327, align 4
  %329 = load float*, float** %16, align 8
  %330 = sext i32 %328 to i64
  %331 = getelementptr inbounds float, float* %329, i64 %330
  store float* %331, float** %16, align 8
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 2
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 2
  %336 = load i32, i32* %335, align 4
  %337 = load float*, float** %17, align 8
  %338 = sext i32 %336 to i64
  %339 = getelementptr inbounds float, float* %337, i64 %338
  store float* %339, float** %17, align 8
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 2
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 3
  %344 = load i32, i32* %343, align 4
  %345 = load float*, float** %18, align 8
  %346 = sext i32 %344 to i64
  %347 = getelementptr inbounds float, float* %345, i64 %346
  store float* %347, float** %18, align 8
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 2
  %350 = load i32*, i32** %349, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 0
  %352 = load i32, i32* %351, align 4
  %353 = load float*, float** %19, align 8
  %354 = sext i32 %352 to i64
  %355 = getelementptr inbounds float, float* %353, i64 %354
  store float* %355, float** %19, align 8
  %356 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 2
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 1
  %360 = load i32, i32* %359, align 4
  %361 = load float*, float** %20, align 8
  %362 = sext i32 %360 to i64
  %363 = getelementptr inbounds float, float* %361, i64 %362
  store float* %363, float** %20, align 8
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 2
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 2
  %368 = load i32, i32* %367, align 4
  %369 = load float*, float** %21, align 8
  %370 = sext i32 %368 to i64
  %371 = getelementptr inbounds float, float* %369, i64 %370
  store float* %371, float** %21, align 8
  %372 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 2
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 3
  %376 = load i32, i32* %375, align 4
  %377 = load float*, float** %22, align 8
  %378 = sext i32 %376 to i64
  %379 = getelementptr inbounds float, float* %377, i64 %378
  store float* %379, float** %22, align 8
  br label %380

380:                                              ; preds = %315
  %381 = load i32, i32* %24, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %24, align 4
  br label %172

383:                                              ; preds = %172
  ret i32 0
}

declare dso_local float @FFMAX3(float, float, float) #1

declare dso_local float @FFMIN3(float, float, float) #1

declare dso_local float @get_component(float, float, i32, i32, i32) #1

declare dso_local i32 @preservel(float*, float*, float*, float) #1

declare dso_local float @av_clip_uint8(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
