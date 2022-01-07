; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_mix.c_mix_frames.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_mix.c_mix_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32*, i32*, i32, i32*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32, i32)* @mix_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mix_frames(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_8__**, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %9, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %10, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %33, align 8
  store %struct.TYPE_8__** %34, %struct.TYPE_8__*** %11, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %12, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sle i32 %40, 8
  br i1 %41, label %42, label %191

42:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %187, %42
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %190

49:                                               ; preds = %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = sdiv i32 %58, %59
  store i32 %60, i32* %17, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  %70 = mul nsw i32 %67, %69
  %71 = load i32, i32* %8, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %18, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %17, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %80, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %79, i64 %89
  store i32* %90, i32** %19, align 8
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %16, align 4
  br label %92

92:                                               ; preds = %183, %49
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %186

96:                                               ; preds = %92
  store i32 0, i32* %15, align 4
  br label %97

97:                                               ; preds = %169, %96
  %98 = load i32, i32* %15, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %98, %105
  br i1 %106, label %107, label %172

107:                                              ; preds = %97
  store i32 0, i32* %20, align 4
  store i32 0, i32* %13, align 4
  br label %108

108:                                              ; preds = %155, %107
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %158

114:                                              ; preds = %108
  %115 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %115, i64 %117
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %16, align 4
  %127 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %127, i64 %129
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %126, %137
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %125, i64 %141
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %21, align 4
  %144 = load i32, i32* %21, align 4
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 5
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %144, %151
  %153 = load i32, i32* %20, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %20, align 4
  br label %155

155:                                              ; preds = %114
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  br label %108

158:                                              ; preds = %108
  %159 = load i32, i32* %20, align 4
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = mul nsw i32 %159, %162
  %164 = call i32 @av_clip_uint8(i32 %163)
  %165 = load i32*, i32** %19, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %164, i32* %168, align 4
  br label %169

169:                                              ; preds = %158
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %15, align 4
  br label %97

172:                                              ; preds = %97
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %19, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32* %182, i32** %19, align 8
  br label %183

183:                                              ; preds = %172
  %184 = load i32, i32* %16, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %16, align 4
  br label %92

186:                                              ; preds = %92
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %14, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %14, align 4
  br label %43

190:                                              ; preds = %43
  br label %347

191:                                              ; preds = %4
  store i32 0, i32* %14, align 4
  br label %192

192:                                              ; preds = %343, %191
  %193 = load i32, i32* %14, align 4
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %346

198:                                              ; preds = %192
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %7, align 4
  %207 = mul nsw i32 %205, %206
  %208 = load i32, i32* %8, align 4
  %209 = sdiv i32 %207, %208
  store i32 %209, i32* %22, align 4
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %14, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %7, align 4
  %218 = add nsw i32 %217, 1
  %219 = mul nsw i32 %216, %218
  %220 = load i32, i32* %8, align 4
  %221 = sdiv i32 %219, %220
  store i32 %221, i32* %23, align 4
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load i32**, i32*** %223, align 8
  %225 = load i32, i32* %14, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32*, i32** %224, i64 %226
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %22, align 4
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %14, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = mul nsw i32 %229, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %228, i64 %238
  store i32* %239, i32** %24, align 8
  %240 = load i32, i32* %22, align 4
  store i32 %240, i32* %16, align 4
  br label %241

241:                                              ; preds = %339, %198
  %242 = load i32, i32* %16, align 4
  %243 = load i32, i32* %23, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %342

245:                                              ; preds = %241
  store i32 0, i32* %15, align 4
  br label %246

246:                                              ; preds = %324, %245
  %247 = load i32, i32* %15, align 4
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 3
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = sdiv i32 %254, 2
  %256 = icmp slt i32 %247, %255
  br i1 %256, label %257, label %327

257:                                              ; preds = %246
  store i32 0, i32* %25, align 4
  store i32 0, i32* %13, align 4
  br label %258

258:                                              ; preds = %307, %257
  %259 = load i32, i32* %13, align 4
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = icmp slt i32 %259, %262
  br i1 %263, label %264, label %310

264:                                              ; preds = %258
  %265 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %266 = load i32, i32* %13, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %265, i64 %267
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = load i32**, i32*** %270, align 8
  %272 = load i32, i32* %14, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32*, i32** %271, i64 %273
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %16, align 4
  %277 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %278 = load i32, i32* %13, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %277, i64 %279
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %14, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = mul nsw i32 %276, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %275, i64 %289
  %291 = load i32, i32* %15, align 4
  %292 = mul nsw i32 %291, 2
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %290, i64 %293
  %295 = call i32 @AV_RN16(i32* %294)
  store i32 %295, i32* %26, align 4
  %296 = load i32, i32* %26, align 4
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 5
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %13, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = mul nsw i32 %296, %303
  %305 = load i32, i32* %25, align 4
  %306 = add nsw i32 %305, %304
  store i32 %306, i32* %25, align 4
  br label %307

307:                                              ; preds = %264
  %308 = load i32, i32* %13, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %13, align 4
  br label %258

310:                                              ; preds = %258
  %311 = load i32, i32* %25, align 4
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 6
  %314 = load i32, i32* %313, align 8
  %315 = mul nsw i32 %311, %314
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 7
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @av_clip(i32 %315, i32 0, i32 %318)
  %320 = load i32*, i32** %24, align 8
  %321 = load i32, i32* %15, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  store i32 %319, i32* %323, align 4
  br label %324

324:                                              ; preds = %310
  %325 = load i32, i32* %15, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %15, align 4
  br label %246

327:                                              ; preds = %246
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 1
  %330 = load i32*, i32** %329, align 8
  %331 = load i32, i32* %14, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = sdiv i32 %334, 2
  %336 = load i32*, i32** %24, align 8
  %337 = sext i32 %335 to i64
  %338 = getelementptr inbounds i32, i32* %336, i64 %337
  store i32* %338, i32** %24, align 8
  br label %339

339:                                              ; preds = %327
  %340 = load i32, i32* %16, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %16, align 4
  br label %241

342:                                              ; preds = %241
  br label %343

343:                                              ; preds = %342
  %344 = load i32, i32* %14, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %14, align 4
  br label %192

346:                                              ; preds = %192
  br label %347

347:                                              ; preds = %346, %190
  ret i32 0
}

declare dso_local i32 @av_clip_uint8(i32) #1

declare dso_local i32 @AV_RN16(i32*) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
