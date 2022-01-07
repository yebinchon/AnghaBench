; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_rematrix.c_swri_rematrix.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_rematrix.c_swri_rematrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32**, double**, float**, i32**, i32, i32, i32 (i64, i64, i64, i32, i32, i32, i32)*, i32, i32 (i64, i64, i64, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)*, i32 (i64, i64, i32, i32, i32)*, i32, i32, i32 (i64*, i32**, i32, i32)* }
%struct.TYPE_7__ = type { i32, i64, i64* }

@AV_SAMPLE_FMT_FLTP = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_DBLP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swri_rematrix(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
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
  %20 = alloca float, align 4
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 13
  %25 = load i32 (i64*, i32**, i32, i32)*, i32 (i64*, i32**, i32, i32)** %24, align 8
  %26 = icmp ne i32 (i64*, i32**, i32, i32)* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %5
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 13
  %30 = load i32 (i64*, i32**, i32, i32)*, i32 (i64*, i32**, i32, i32)** %29, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = bitcast i64* %36 to i32**
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 %30(i64* %33, i32** %37, i32 %40, i32 %41)
  store i32 0, i32* %6, align 4
  br label %727

43:                                               ; preds = %5
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 8
  %46 = load i32 (i64, i64, i64, i32, i32, i32, i32)*, i32 (i64, i64, i64, i32, i32, i32, i32)** %45, align 8
  %47 = icmp ne i32 (i64, i64, i64, i32, i32, i32, i32)* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 10
  %51 = load i32 (i64, i64, i32, i32, i32)*, i32 (i64, i64, i32, i32, i32)** %50, align 8
  %52 = icmp ne i32 (i64, i64, i32, i32, i32)* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, -16
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %56, %59
  store i32 %60, i32* %17, align 4
  br label %61

61:                                               ; preds = %53, %48
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 12
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 12
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @av_get_channel_layout_nb_channels(i32 %72)
  %74 = icmp eq i64 %69, %73
  br label %75

75:                                               ; preds = %66, %61
  %76 = phi i1 [ true, %61 ], [ %74, %66 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @av_assert0(i32 %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %75
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 11
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @av_get_channel_layout_nb_channels(i32 %89)
  %91 = icmp eq i64 %86, %90
  br label %92

92:                                               ; preds = %83, %75
  %93 = phi i1 [ true, %75 ], [ %91, %83 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @av_assert0(i32 %94)
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %723, %92
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %103, label %726

103:                                              ; preds = %96
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  switch i32 %112, label %475 [
    i32 0, label %113
    i32 1, label %132
    i32 2, label %283
  ]

113:                                              ; preds = %103
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %113
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @av_get_bytes_per_sample(i32 %127)
  %129 = mul nsw i32 %124, %128
  %130 = call i32 @memset(i64 %123, i32 0, i32 %129)
  br label %131

131:                                              ; preds = %116, %113
  br label %722

132:                                              ; preds = %103
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32**, i32*** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %13, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load double**, double*** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds double*, double** %144, i64 %146
  %148 = load double*, double** %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds double, double* %148, i64 %150
  %152 = load double, double* %151, align 8
  %153 = fcmp une double %152, 1.000000e+00
  br i1 %153, label %154, label %243

154:                                              ; preds = %132
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 10
  %157 = load i32 (i64, i64, i32, i32, i32)*, i32 (i64, i64, i32, i32, i32)** %156, align 8
  %158 = icmp ne i32 (i64, i64, i32, i32, i32)* %157, null
  br i1 %158, label %159, label %195

159:                                              ; preds = %154
  %160 = load i32, i32* %16, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %195

162:                                              ; preds = %159
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 10
  %165 = load i32 (i64, i64, i32, i32, i32)*, i32 (i64, i64, i32, i32, i32)** %164, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  %168 = load i64*, i64** %167, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 2
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = mul nsw i64 %185, %187
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %188, %190
  %192 = trunc i64 %191 to i32
  %193 = load i32, i32* %16, align 4
  %194 = call i32 %165(i64 %172, i64 %179, i32 %182, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %162, %159, %154
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* %16, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %242

199:                                              ; preds = %195
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 9
  %202 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %201, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 2
  %205 = load i64*, i64** %204, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* %17, align 4
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %209, %211
  %213 = trunc i64 %212 to i32
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 2
  %216 = load i64*, i64** %215, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* %17, align 4
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %220, %222
  %224 = trunc i64 %223 to i32
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load i32, i32* %12, align 4
  %232 = sext i32 %231 to i64
  %233 = mul nsw i64 %230, %232
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %233, %235
  %237 = trunc i64 %236 to i32
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* %16, align 4
  %240 = sub nsw i32 %238, %239
  %241 = call i32 %202(i32 %213, i32 %224, i32 %227, i32 %237, i32 %240)
  br label %242

242:                                              ; preds = %199, %195
  br label %282

243:                                              ; preds = %132
  %244 = load i32, i32* %11, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %267

246:                                              ; preds = %243
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 2
  %249 = load i64*, i64** %248, align 8
  %250 = load i32, i32* %12, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i64, i64* %249, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 2
  %256 = load i64*, i64** %255, align 8
  %257 = load i32, i32* %13, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i64, i64* %256, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = load i32, i32* %10, align 4
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = mul nsw i32 %261, %264
  %266 = call i32 @memcpy(i64 %253, i64 %260, i32 %265)
  br label %281

267:                                              ; preds = %243
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 2
  %270 = load i64*, i64** %269, align 8
  %271 = load i32, i32* %13, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i64, i64* %270, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 2
  %277 = load i64*, i64** %276, align 8
  %278 = load i32, i32* %12, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64, i64* %277, i64 %279
  store i64 %274, i64* %280, align 8
  br label %281

281:                                              ; preds = %267, %246
  br label %282

282:                                              ; preds = %281, %242
  br label %722

283:                                              ; preds = %103
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  %286 = load i32**, i32*** %285, align 8
  %287 = load i32, i32* %12, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32*, i32** %286, i64 %288
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 1
  %292 = load i32, i32* %291, align 4
  store i32 %292, i32* %18, align 4
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 0
  %295 = load i32**, i32*** %294, align 8
  %296 = load i32, i32* %12, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32*, i32** %295, i64 %297
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 2
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %19, align 4
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 8
  %304 = load i32 (i64, i64, i64, i32, i32, i32, i32)*, i32 (i64, i64, i64, i32, i32, i32, i32)** %303, align 8
  %305 = icmp ne i32 (i64, i64, i64, i32, i32, i32, i32)* %304, null
  br i1 %305, label %306, label %359

306:                                              ; preds = %283
  %307 = load i32, i32* %16, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %359

309:                                              ; preds = %306
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 8
  %312 = load i32 (i64, i64, i64, i32, i32, i32, i32)*, i32 (i64, i64, i64, i32, i32, i32, i32)** %311, align 8
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 2
  %315 = load i64*, i64** %314, align 8
  %316 = load i32, i32* %12, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i64, i64* %315, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 2
  %322 = load i64*, i64** %321, align 8
  %323 = load i32, i32* %18, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i64, i64* %322, i64 %324
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 2
  %329 = load i64*, i64** %328, align 8
  %330 = load i32, i32* %19, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i64, i64* %329, i64 %331
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 7
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = load i32, i32* %12, align 4
  %341 = sext i32 %340 to i64
  %342 = mul nsw i64 %339, %341
  %343 = load i32, i32* %18, align 4
  %344 = sext i32 %343 to i64
  %345 = add nsw i64 %342, %344
  %346 = trunc i64 %345 to i32
  %347 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = load i32, i32* %12, align 4
  %351 = sext i32 %350 to i64
  %352 = mul nsw i64 %349, %351
  %353 = load i32, i32* %19, align 4
  %354 = sext i32 %353 to i64
  %355 = add nsw i64 %352, %354
  %356 = trunc i64 %355 to i32
  %357 = load i32, i32* %16, align 4
  %358 = call i32 %312(i64 %319, i64 %326, i64 %333, i32 %336, i32 %346, i32 %356, i32 %357)
  br label %409

359:                                              ; preds = %306, %283
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 6
  %362 = load i32 (i64, i64, i64, i32, i32, i32, i32)*, i32 (i64, i64, i64, i32, i32, i32, i32)** %361, align 8
  %363 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 2
  %365 = load i64*, i64** %364, align 8
  %366 = load i32, i32* %12, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i64, i64* %365, i64 %367
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 2
  %372 = load i64*, i64** %371, align 8
  %373 = load i32, i32* %18, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i64, i64* %372, i64 %374
  %376 = load i64, i64* %375, align 8
  %377 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 2
  %379 = load i64*, i64** %378, align 8
  %380 = load i32, i32* %19, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i64, i64* %379, i64 %381
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 5
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = load i32, i32* %12, align 4
  %391 = sext i32 %390 to i64
  %392 = mul nsw i64 %389, %391
  %393 = load i32, i32* %18, align 4
  %394 = sext i32 %393 to i64
  %395 = add nsw i64 %392, %394
  %396 = trunc i64 %395 to i32
  %397 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %398 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i32 0, i32 1
  %399 = load i64, i64* %398, align 8
  %400 = load i32, i32* %12, align 4
  %401 = sext i32 %400 to i64
  %402 = mul nsw i64 %399, %401
  %403 = load i32, i32* %19, align 4
  %404 = sext i32 %403 to i64
  %405 = add nsw i64 %402, %404
  %406 = trunc i64 %405 to i32
  %407 = load i32, i32* %16, align 4
  %408 = call i32 %362(i64 %369, i64 %376, i64 %383, i32 %386, i32 %396, i32 %406, i32 %407)
  br label %409

409:                                              ; preds = %359, %309
  %410 = load i32, i32* %10, align 4
  %411 = load i32, i32* %16, align 4
  %412 = icmp ne i32 %410, %411
  br i1 %412, label %413, label %474

413:                                              ; preds = %409
  %414 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %415 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %414, i32 0, i32 6
  %416 = load i32 (i64, i64, i64, i32, i32, i32, i32)*, i32 (i64, i64, i64, i32, i32, i32, i32)** %415, align 8
  %417 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %418 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %417, i32 0, i32 2
  %419 = load i64*, i64** %418, align 8
  %420 = load i32, i32* %12, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i64, i64* %419, i64 %421
  %423 = load i64, i64* %422, align 8
  %424 = load i32, i32* %17, align 4
  %425 = sext i32 %424 to i64
  %426 = add nsw i64 %423, %425
  %427 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %428 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %427, i32 0, i32 2
  %429 = load i64*, i64** %428, align 8
  %430 = load i32, i32* %18, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i64, i64* %429, i64 %431
  %433 = load i64, i64* %432, align 8
  %434 = load i32, i32* %17, align 4
  %435 = sext i32 %434 to i64
  %436 = add nsw i64 %433, %435
  %437 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %438 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %437, i32 0, i32 2
  %439 = load i64*, i64** %438, align 8
  %440 = load i32, i32* %19, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i64, i64* %439, i64 %441
  %443 = load i64, i64* %442, align 8
  %444 = load i32, i32* %17, align 4
  %445 = sext i32 %444 to i64
  %446 = add nsw i64 %443, %445
  %447 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %448 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %447, i32 0, i32 5
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %451 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = load i32, i32* %12, align 4
  %454 = sext i32 %453 to i64
  %455 = mul nsw i64 %452, %454
  %456 = load i32, i32* %18, align 4
  %457 = sext i32 %456 to i64
  %458 = add nsw i64 %455, %457
  %459 = trunc i64 %458 to i32
  %460 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %461 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %460, i32 0, i32 1
  %462 = load i64, i64* %461, align 8
  %463 = load i32, i32* %12, align 4
  %464 = sext i32 %463 to i64
  %465 = mul nsw i64 %462, %464
  %466 = load i32, i32* %19, align 4
  %467 = sext i32 %466 to i64
  %468 = add nsw i64 %465, %467
  %469 = trunc i64 %468 to i32
  %470 = load i32, i32* %10, align 4
  %471 = load i32, i32* %16, align 4
  %472 = sub nsw i32 %470, %471
  %473 = call i32 %416(i64 %426, i64 %436, i64 %446, i32 %449, i32 %459, i32 %469, i32 %472)
  br label %474

474:                                              ; preds = %413, %409
  br label %722

475:                                              ; preds = %103
  %476 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %477 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %476, i32 0, i32 4
  %478 = load i32, i32* %477, align 8
  %479 = load i32, i32* @AV_SAMPLE_FMT_FLTP, align 4
  %480 = icmp eq i32 %478, %479
  br i1 %480, label %481, label %558

481:                                              ; preds = %475
  store i32 0, i32* %14, align 4
  br label %482

482:                                              ; preds = %554, %481
  %483 = load i32, i32* %14, align 4
  %484 = load i32, i32* %10, align 4
  %485 = icmp slt i32 %483, %484
  br i1 %485, label %486, label %557

486:                                              ; preds = %482
  store float 0.000000e+00, float* %20, align 4
  store i32 0, i32* %15, align 4
  br label %487

487:                                              ; preds = %538, %486
  %488 = load i32, i32* %15, align 4
  %489 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %490 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %489, i32 0, i32 0
  %491 = load i32**, i32*** %490, align 8
  %492 = load i32, i32* %12, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32*, i32** %491, i64 %493
  %495 = load i32*, i32** %494, align 8
  %496 = getelementptr inbounds i32, i32* %495, i64 0
  %497 = load i32, i32* %496, align 4
  %498 = icmp slt i32 %488, %497
  br i1 %498, label %499, label %541

499:                                              ; preds = %487
  %500 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %501 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %500, i32 0, i32 0
  %502 = load i32**, i32*** %501, align 8
  %503 = load i32, i32* %12, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32*, i32** %502, i64 %504
  %506 = load i32*, i32** %505, align 8
  %507 = load i32, i32* %15, align 4
  %508 = add nsw i32 1, %507
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %506, i64 %509
  %511 = load i32, i32* %510, align 4
  store i32 %511, i32* %13, align 4
  %512 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %513 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %512, i32 0, i32 2
  %514 = load i64*, i64** %513, align 8
  %515 = load i32, i32* %13, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i64, i64* %514, i64 %516
  %518 = load i64, i64* %517, align 8
  %519 = inttoptr i64 %518 to float*
  %520 = load i32, i32* %14, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds float, float* %519, i64 %521
  %523 = load float, float* %522, align 4
  %524 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %525 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %524, i32 0, i32 2
  %526 = load float**, float*** %525, align 8
  %527 = load i32, i32* %12, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds float*, float** %526, i64 %528
  %530 = load float*, float** %529, align 8
  %531 = load i32, i32* %13, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds float, float* %530, i64 %532
  %534 = load float, float* %533, align 4
  %535 = fmul float %523, %534
  %536 = load float, float* %20, align 4
  %537 = fadd float %536, %535
  store float %537, float* %20, align 4
  br label %538

538:                                              ; preds = %499
  %539 = load i32, i32* %15, align 4
  %540 = add nsw i32 %539, 1
  store i32 %540, i32* %15, align 4
  br label %487

541:                                              ; preds = %487
  %542 = load float, float* %20, align 4
  %543 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %544 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %543, i32 0, i32 2
  %545 = load i64*, i64** %544, align 8
  %546 = load i32, i32* %12, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i64, i64* %545, i64 %547
  %549 = load i64, i64* %548, align 8
  %550 = inttoptr i64 %549 to float*
  %551 = load i32, i32* %14, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds float, float* %550, i64 %552
  store float %542, float* %553, align 4
  br label %554

554:                                              ; preds = %541
  %555 = load i32, i32* %14, align 4
  %556 = add nsw i32 %555, 1
  store i32 %556, i32* %14, align 4
  br label %482

557:                                              ; preds = %482
  br label %721

558:                                              ; preds = %475
  %559 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %560 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %559, i32 0, i32 4
  %561 = load i32, i32* %560, align 8
  %562 = load i32, i32* @AV_SAMPLE_FMT_DBLP, align 4
  %563 = icmp eq i32 %561, %562
  br i1 %563, label %564, label %641

564:                                              ; preds = %558
  store i32 0, i32* %14, align 4
  br label %565

565:                                              ; preds = %637, %564
  %566 = load i32, i32* %14, align 4
  %567 = load i32, i32* %10, align 4
  %568 = icmp slt i32 %566, %567
  br i1 %568, label %569, label %640

569:                                              ; preds = %565
  store double 0.000000e+00, double* %21, align 8
  store i32 0, i32* %15, align 4
  br label %570

570:                                              ; preds = %621, %569
  %571 = load i32, i32* %15, align 4
  %572 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %573 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %572, i32 0, i32 0
  %574 = load i32**, i32*** %573, align 8
  %575 = load i32, i32* %12, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds i32*, i32** %574, i64 %576
  %578 = load i32*, i32** %577, align 8
  %579 = getelementptr inbounds i32, i32* %578, i64 0
  %580 = load i32, i32* %579, align 4
  %581 = icmp slt i32 %571, %580
  br i1 %581, label %582, label %624

582:                                              ; preds = %570
  %583 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %584 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %583, i32 0, i32 0
  %585 = load i32**, i32*** %584, align 8
  %586 = load i32, i32* %12, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds i32*, i32** %585, i64 %587
  %589 = load i32*, i32** %588, align 8
  %590 = load i32, i32* %15, align 4
  %591 = add nsw i32 1, %590
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i32, i32* %589, i64 %592
  %594 = load i32, i32* %593, align 4
  store i32 %594, i32* %13, align 4
  %595 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %596 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %595, i32 0, i32 2
  %597 = load i64*, i64** %596, align 8
  %598 = load i32, i32* %13, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i64, i64* %597, i64 %599
  %601 = load i64, i64* %600, align 8
  %602 = inttoptr i64 %601 to double*
  %603 = load i32, i32* %14, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds double, double* %602, i64 %604
  %606 = load double, double* %605, align 8
  %607 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %608 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %607, i32 0, i32 1
  %609 = load double**, double*** %608, align 8
  %610 = load i32, i32* %12, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds double*, double** %609, i64 %611
  %613 = load double*, double** %612, align 8
  %614 = load i32, i32* %13, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds double, double* %613, i64 %615
  %617 = load double, double* %616, align 8
  %618 = fmul double %606, %617
  %619 = load double, double* %21, align 8
  %620 = fadd double %619, %618
  store double %620, double* %21, align 8
  br label %621

621:                                              ; preds = %582
  %622 = load i32, i32* %15, align 4
  %623 = add nsw i32 %622, 1
  store i32 %623, i32* %15, align 4
  br label %570

624:                                              ; preds = %570
  %625 = load double, double* %21, align 8
  %626 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %627 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %626, i32 0, i32 2
  %628 = load i64*, i64** %627, align 8
  %629 = load i32, i32* %12, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds i64, i64* %628, i64 %630
  %632 = load i64, i64* %631, align 8
  %633 = inttoptr i64 %632 to double*
  %634 = load i32, i32* %14, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds double, double* %633, i64 %635
  store double %625, double* %636, align 8
  br label %637

637:                                              ; preds = %624
  %638 = load i32, i32* %14, align 4
  %639 = add nsw i32 %638, 1
  store i32 %639, i32* %14, align 4
  br label %565

640:                                              ; preds = %565
  br label %720

641:                                              ; preds = %558
  store i32 0, i32* %14, align 4
  br label %642

642:                                              ; preds = %716, %641
  %643 = load i32, i32* %14, align 4
  %644 = load i32, i32* %10, align 4
  %645 = icmp slt i32 %643, %644
  br i1 %645, label %646, label %719

646:                                              ; preds = %642
  store i32 0, i32* %22, align 4
  store i32 0, i32* %15, align 4
  br label %647

647:                                              ; preds = %698, %646
  %648 = load i32, i32* %15, align 4
  %649 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %650 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %649, i32 0, i32 0
  %651 = load i32**, i32*** %650, align 8
  %652 = load i32, i32* %12, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds i32*, i32** %651, i64 %653
  %655 = load i32*, i32** %654, align 8
  %656 = getelementptr inbounds i32, i32* %655, i64 0
  %657 = load i32, i32* %656, align 4
  %658 = icmp slt i32 %648, %657
  br i1 %658, label %659, label %701

659:                                              ; preds = %647
  %660 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %661 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %660, i32 0, i32 0
  %662 = load i32**, i32*** %661, align 8
  %663 = load i32, i32* %12, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds i32*, i32** %662, i64 %664
  %666 = load i32*, i32** %665, align 8
  %667 = load i32, i32* %15, align 4
  %668 = add nsw i32 1, %667
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds i32, i32* %666, i64 %669
  %671 = load i32, i32* %670, align 4
  store i32 %671, i32* %13, align 4
  %672 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %673 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %672, i32 0, i32 2
  %674 = load i64*, i64** %673, align 8
  %675 = load i32, i32* %13, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds i64, i64* %674, i64 %676
  %678 = load i64, i64* %677, align 8
  %679 = inttoptr i64 %678 to i32*
  %680 = load i32, i32* %14, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds i32, i32* %679, i64 %681
  %683 = load i32, i32* %682, align 4
  %684 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %685 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %684, i32 0, i32 3
  %686 = load i32**, i32*** %685, align 8
  %687 = load i32, i32* %12, align 4
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds i32*, i32** %686, i64 %688
  %690 = load i32*, i32** %689, align 8
  %691 = load i32, i32* %13, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds i32, i32* %690, i64 %692
  %694 = load i32, i32* %693, align 4
  %695 = mul nsw i32 %683, %694
  %696 = load i32, i32* %22, align 4
  %697 = add nsw i32 %696, %695
  store i32 %697, i32* %22, align 4
  br label %698

698:                                              ; preds = %659
  %699 = load i32, i32* %15, align 4
  %700 = add nsw i32 %699, 1
  store i32 %700, i32* %15, align 4
  br label %647

701:                                              ; preds = %647
  %702 = load i32, i32* %22, align 4
  %703 = add nsw i32 %702, 16384
  %704 = ashr i32 %703, 15
  %705 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %706 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %705, i32 0, i32 2
  %707 = load i64*, i64** %706, align 8
  %708 = load i32, i32* %12, align 4
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds i64, i64* %707, i64 %709
  %711 = load i64, i64* %710, align 8
  %712 = inttoptr i64 %711 to i32*
  %713 = load i32, i32* %14, align 4
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds i32, i32* %712, i64 %714
  store i32 %704, i32* %715, align 4
  br label %716

716:                                              ; preds = %701
  %717 = load i32, i32* %14, align 4
  %718 = add nsw i32 %717, 1
  store i32 %718, i32* %14, align 4
  br label %642

719:                                              ; preds = %642
  br label %720

720:                                              ; preds = %719, %640
  br label %721

721:                                              ; preds = %720, %557
  br label %722

722:                                              ; preds = %721, %474, %282, %131
  br label %723

723:                                              ; preds = %722
  %724 = load i32, i32* %12, align 4
  %725 = add nsw i32 %724, 1
  store i32 %725, i32* %12, align 4
  br label %96

726:                                              ; preds = %96
  store i32 0, i32* %6, align 4
  br label %727

727:                                              ; preds = %726, %27
  %728 = load i32, i32* %6, align 4
  ret i32 %728
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i64 @av_get_channel_layout_nb_channels(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @av_get_bytes_per_sample(i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
