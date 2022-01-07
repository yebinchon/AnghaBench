; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_headphone.c_headphone_convolute.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_headphone.c_headphone_convolute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, float, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 (float*, float*, i32)* }
%struct.TYPE_8__ = type { i32*, i32**, float**, i32*, float**, float**, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32, i32)* @headphone_convolute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @headphone_convolute(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [16 x float*], align 16
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca float*, align 8
  %33 = alloca float*, align 8
  %34 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %9, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %10, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 7
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %11, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %12, align 8
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %13, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32* %52, i32** %14, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %15, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load float**, float*** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float*, float** %62, i64 %64
  %66 = load float*, float** %65, align 8
  store float* %66, float** %16, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32* %72, i32** %17, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  %75 = load float**, float*** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float*, float** %75, i64 %77
  %79 = load float*, float** %78, align 8
  store float* %79, float** %18, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 5
  %82 = load float**, float*** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float*, float** %82, i64 %84
  %86 = load float*, float** %85, align 8
  store float* %86, float** %19, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %20, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %21, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to float*
  store float* %98, float** %22, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 0
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to float*
  store float* %104, float** %23, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %24, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %25, align 4
  %111 = load i32, i32* %25, align 4
  %112 = sub nsw i32 %111, 1
  store i32 %112, i32* %26, align 4
  %113 = load i32*, i32** %14, align 8
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %28, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load float*, float** %23, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds float, float* %116, i64 %117
  store float* %118, float** %23, align 8
  store i32 0, i32* %31, align 4
  br label %119

119:                                              ; preds = %133, %4
  %120 = load i32, i32* %31, align 4
  %121 = load i32, i32* %24, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = load float*, float** %18, align 8
  %125 = load i32, i32* %31, align 4
  %126 = load i32, i32* %25, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %124, i64 %128
  %130 = load i32, i32* %31, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [16 x float*], [16 x float*]* %27, i64 0, i64 %131
  store float* %129, float** %132, align 8
  br label %133

133:                                              ; preds = %123
  %134 = load i32, i32* %31, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %31, align 4
  br label %119

136:                                              ; preds = %119
  store i32 0, i32* %30, align 4
  br label %137

137:                                              ; preds = %311, %136
  %138 = load i32, i32* %30, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %314

143:                                              ; preds = %137
  %144 = load float*, float** %16, align 8
  store float* %144, float** %32, align 8
  %145 = load float*, float** %23, align 8
  store float 0.000000e+00, float* %145, align 4
  store i32 0, i32* %31, align 4
  br label %146

146:                                              ; preds = %163, %143
  %147 = load i32, i32* %31, align 4
  %148 = load i32, i32* %24, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %146
  %151 = load float*, float** %22, align 8
  %152 = load i32, i32* %31, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %151, i64 %153
  %155 = load float, float* %154, align 4
  %156 = load i32, i32* %31, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [16 x float*], [16 x float*]* %27, i64 0, i64 %157
  %159 = load float*, float** %158, align 8
  %160 = load i32, i32* %28, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %159, i64 %161
  store float %155, float* %162, align 4
  br label %163

163:                                              ; preds = %150
  %164 = load i32, i32* %31, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %31, align 4
  br label %146

166:                                              ; preds = %146
  store i32 0, i32* %31, align 4
  br label %167

167:                                              ; preds = %286, %166
  %168 = load i32, i32* %31, align 4
  %169 = load i32, i32* %24, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %289

171:                                              ; preds = %167
  %172 = load i32, i32* %31, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [16 x float*], [16 x float*]* %27, i64 0, i64 %173
  %175 = load float*, float** %174, align 8
  store float* %175, float** %33, align 8
  %176 = load i32, i32* %31, align 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %176, %179
  br i1 %180, label %181, label %203

181:                                              ; preds = %171
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [16 x float*], [16 x float*]* %27, i64 0, i64 %185
  %187 = load float*, float** %186, align 8
  %188 = load i32, i32* %28, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %187, i64 %189
  %191 = load float, float* %190, align 4
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 4
  %194 = load float, float* %193, align 8
  %195 = fmul float %191, %194
  %196 = load float*, float** %23, align 8
  %197 = load float, float* %196, align 4
  %198 = fadd float %197, %195
  store float %198, float* %196, align 4
  %199 = load i32, i32* %21, align 4
  %200 = load float*, float** %32, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds float, float* %200, i64 %201
  store float* %202, float** %32, align 8
  br label %286

203:                                              ; preds = %171
  %204 = load i32, i32* %28, align 4
  %205 = load i32*, i32** %15, align 8
  %206 = load i32, i32* %31, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %204, %209
  %211 = load i32, i32* %20, align 4
  %212 = sub nsw i32 %211, 1
  %213 = sub nsw i32 %210, %212
  %214 = load i32, i32* %25, align 4
  %215 = add nsw i32 %213, %214
  %216 = load i32, i32* %26, align 4
  %217 = and i32 %215, %216
  store i32 %217, i32* %29, align 4
  %218 = load i32, i32* %29, align 4
  %219 = load i32, i32* %20, align 4
  %220 = add nsw i32 %218, %219
  %221 = load i32, i32* %25, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %234

223:                                              ; preds = %203
  %224 = load float*, float** %19, align 8
  %225 = load float*, float** %33, align 8
  %226 = load i32, i32* %29, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %225, i64 %227
  %229 = load i32, i32* %20, align 4
  %230 = sext i32 %229 to i64
  %231 = mul i64 %230, 4
  %232 = trunc i64 %231 to i32
  %233 = call i32 @memcpy(float* %224, float* %228, i32 %232)
  br label %266

234:                                              ; preds = %203
  %235 = load i32, i32* %21, align 4
  %236 = load i32, i32* %29, align 4
  %237 = load i32, i32* %20, align 4
  %238 = srem i32 %236, %237
  %239 = sub nsw i32 %235, %238
  %240 = load i32, i32* %25, align 4
  %241 = load i32, i32* %29, align 4
  %242 = sub nsw i32 %240, %241
  %243 = call i32 @FFMIN(i32 %239, i32 %242)
  store i32 %243, i32* %34, align 4
  %244 = load float*, float** %19, align 8
  %245 = load float*, float** %33, align 8
  %246 = load i32, i32* %29, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %245, i64 %247
  %249 = load i32, i32* %34, align 4
  %250 = sext i32 %249 to i64
  %251 = mul i64 %250, 4
  %252 = trunc i64 %251 to i32
  %253 = call i32 @memcpy(float* %244, float* %248, i32 %252)
  %254 = load float*, float** %19, align 8
  %255 = load i32, i32* %34, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds float, float* %254, i64 %256
  %258 = load float*, float** %33, align 8
  %259 = load i32, i32* %21, align 4
  %260 = load i32, i32* %34, align 4
  %261 = sub nsw i32 %259, %260
  %262 = sext i32 %261 to i64
  %263 = mul i64 %262, 4
  %264 = trunc i64 %263 to i32
  %265 = call i32 @memcpy(float* %257, float* %258, i32 %264)
  br label %266

266:                                              ; preds = %234, %223
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 5
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 0
  %271 = load i64 (float*, float*, i32)*, i64 (float*, float*, i32)** %270, align 8
  %272 = load float*, float** %32, align 8
  %273 = load float*, float** %19, align 8
  %274 = load i32, i32* %20, align 4
  %275 = call i32 @FFALIGN(i32 %274, i32 32)
  %276 = call i64 %271(float* %272, float* %273, i32 %275)
  %277 = sitofp i64 %276 to float
  %278 = load float*, float** %23, align 8
  %279 = getelementptr inbounds float, float* %278, i64 0
  %280 = load float, float* %279, align 4
  %281 = fadd float %280, %277
  store float %281, float* %279, align 4
  %282 = load i32, i32* %21, align 4
  %283 = load float*, float** %32, align 8
  %284 = sext i32 %282 to i64
  %285 = getelementptr inbounds float, float* %283, i64 %284
  store float* %285, float** %32, align 8
  br label %286

286:                                              ; preds = %266, %181
  %287 = load i32, i32* %31, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %31, align 4
  br label %167

289:                                              ; preds = %167
  %290 = load float*, float** %23, align 8
  %291 = getelementptr inbounds float, float* %290, i64 0
  %292 = load float, float* %291, align 4
  %293 = call i32 @fabsf(float %292)
  %294 = icmp sgt i32 %293, 1
  br i1 %294, label %295, label %300

295:                                              ; preds = %289
  %296 = load i32*, i32** %17, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 0
  %298 = load i32, i32* %297, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %297, align 4
  br label %300

300:                                              ; preds = %295, %289
  %301 = load float*, float** %23, align 8
  %302 = getelementptr inbounds float, float* %301, i64 2
  store float* %302, float** %23, align 8
  %303 = load i32, i32* %24, align 4
  %304 = load float*, float** %22, align 8
  %305 = sext i32 %303 to i64
  %306 = getelementptr inbounds float, float* %304, i64 %305
  store float* %306, float** %22, align 8
  %307 = load i32, i32* %28, align 4
  %308 = add nsw i32 %307, 1
  %309 = load i32, i32* %26, align 4
  %310 = and i32 %308, %309
  store i32 %310, i32* %28, align 4
  br label %311

311:                                              ; preds = %300
  %312 = load i32, i32* %30, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %30, align 4
  br label %137

314:                                              ; preds = %137
  %315 = load i32, i32* %28, align 4
  %316 = load i32*, i32** %14, align 8
  store i32 %315, i32* %316, align 4
  ret i32 0
}

declare dso_local i32 @memcpy(float*, float*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @fabsf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
