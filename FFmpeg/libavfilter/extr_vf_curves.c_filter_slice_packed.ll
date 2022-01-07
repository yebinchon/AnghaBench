; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_curves.c_filter_slice_packed.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_curves.c_filter_slice_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32*, i64**, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32**, i32*, i32 }

@R = common dso_local global i64 0, align 8
@G = common dso_local global i64 0, align 8
@B = common dso_local global i64 0, align 8
@A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32, i32)* @filter_slice_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_slice_packed(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %11, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %12, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %13, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %14, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %40 = icmp eq %struct.TYPE_8__* %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %15, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %16, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @R, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %17, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @G, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %18, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @B, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %19, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @A, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %20, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %8, align 4
  %75 = sdiv i32 %73, %74
  store i32 %75, i32* %21, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  %81 = mul nsw i32 %78, %80
  %82 = load i32, i32* %8, align 4
  %83 = sdiv i32 %81, %82
  store i32 %83, i32* %22, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %226

88:                                               ; preds = %4
  %89 = load i32, i32* %21, align 4
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %222, %88
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %22, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %225

94:                                               ; preds = %90
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32**, i32*** %96, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i64 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %100, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %99, i64 %107
  %109 = bitcast i32* %108 to i64*
  store i64* %109, i64** %23, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32**, i32*** %111, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %115, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %114, i64 %122
  %124 = bitcast i32* %123 to i64*
  store i64* %124, i64** %24, align 8
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %217, %94
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %16, align 4
  %131 = mul nsw i32 %129, %130
  %132 = icmp slt i32 %126, %131
  br i1 %132, label %133, label %221

133:                                              ; preds = %125
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load i64**, i64*** %135, align 8
  %137 = load i64, i64* @R, align 8
  %138 = getelementptr inbounds i64*, i64** %136, i64 %137
  %139 = load i64*, i64** %138, align 8
  %140 = load i64*, i64** %24, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %140, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i64, i64* %139, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load i64*, i64** %23, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %149, i64 %153
  store i64 %148, i64* %154, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i64**, i64*** %156, align 8
  %158 = load i64, i64* @G, align 8
  %159 = getelementptr inbounds i64*, i64** %157, i64 %158
  %160 = load i64*, i64** %159, align 8
  %161 = load i64*, i64** %24, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %18, align 4
  %164 = add nsw i32 %162, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %161, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i64, i64* %160, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load i64*, i64** %23, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %18, align 4
  %173 = add nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %170, i64 %174
  store i64 %169, i64* %175, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 2
  %178 = load i64**, i64*** %177, align 8
  %179 = load i64, i64* @B, align 8
  %180 = getelementptr inbounds i64*, i64** %178, i64 %179
  %181 = load i64*, i64** %180, align 8
  %182 = load i64*, i64** %24, align 8
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* %19, align 4
  %185 = add nsw i32 %183, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %182, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds i64, i64* %181, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = load i64*, i64** %23, align 8
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %19, align 4
  %194 = add nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %191, i64 %195
  store i64 %190, i64* %196, align 8
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %216, label %199

199:                                              ; preds = %133
  %200 = load i32, i32* %16, align 4
  %201 = icmp eq i32 %200, 4
  br i1 %201, label %202, label %216

202:                                              ; preds = %199
  %203 = load i64*, i64** %24, align 8
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %20, align 4
  %206 = add nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %203, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = load i64*, i64** %23, align 8
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %20, align 4
  %213 = add nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i64, i64* %210, i64 %214
  store i64 %209, i64* %215, align 8
  br label %216

216:                                              ; preds = %202, %199, %133
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %9, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %9, align 4
  br label %125

221:                                              ; preds = %125
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %10, align 4
  br label %90

225:                                              ; preds = %90
  br label %384

226:                                              ; preds = %4
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  %229 = load i32**, i32*** %228, align 8
  %230 = getelementptr inbounds i32*, i32** %229, i64 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %21, align 4
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  %237 = load i32, i32* %236, align 4
  %238 = mul nsw i32 %232, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %231, i64 %239
  store i32* %240, i32** %25, align 8
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 1
  %243 = load i32**, i32*** %242, align 8
  %244 = getelementptr inbounds i32*, i32** %243, i64 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %21, align 4
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  %251 = load i32, i32* %250, align 4
  %252 = mul nsw i32 %246, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %245, i64 %253
  store i32* %254, i32** %26, align 8
  %255 = load i32, i32* %21, align 4
  store i32 %255, i32* %10, align 4
  br label %256

256:                                              ; preds = %380, %226
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %22, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %383

260:                                              ; preds = %256
  store i32 0, i32* %9, align 4
  br label %261

261:                                              ; preds = %359, %260
  %262 = load i32, i32* %9, align 4
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* %16, align 4
  %267 = mul nsw i32 %265, %266
  %268 = icmp slt i32 %262, %267
  br i1 %268, label %269, label %363

269:                                              ; preds = %261
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 2
  %272 = load i64**, i64*** %271, align 8
  %273 = load i64, i64* @R, align 8
  %274 = getelementptr inbounds i64*, i64** %272, i64 %273
  %275 = load i64*, i64** %274, align 8
  %276 = load i32*, i32** %26, align 8
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* %17, align 4
  %279 = add nsw i32 %277, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %276, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i64, i64* %275, i64 %283
  %285 = load i64, i64* %284, align 8
  %286 = trunc i64 %285 to i32
  %287 = load i32*, i32** %25, align 8
  %288 = load i32, i32* %9, align 4
  %289 = load i32, i32* %17, align 4
  %290 = add nsw i32 %288, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %287, i64 %291
  store i32 %286, i32* %292, align 4
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 2
  %295 = load i64**, i64*** %294, align 8
  %296 = load i64, i64* @G, align 8
  %297 = getelementptr inbounds i64*, i64** %295, i64 %296
  %298 = load i64*, i64** %297, align 8
  %299 = load i32*, i32** %26, align 8
  %300 = load i32, i32* %9, align 4
  %301 = load i32, i32* %18, align 4
  %302 = add nsw i32 %300, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %299, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i64, i64* %298, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = trunc i64 %308 to i32
  %310 = load i32*, i32** %25, align 8
  %311 = load i32, i32* %9, align 4
  %312 = load i32, i32* %18, align 4
  %313 = add nsw i32 %311, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %310, i64 %314
  store i32 %309, i32* %315, align 4
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 2
  %318 = load i64**, i64*** %317, align 8
  %319 = load i64, i64* @B, align 8
  %320 = getelementptr inbounds i64*, i64** %318, i64 %319
  %321 = load i64*, i64** %320, align 8
  %322 = load i32*, i32** %26, align 8
  %323 = load i32, i32* %9, align 4
  %324 = load i32, i32* %19, align 4
  %325 = add nsw i32 %323, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %322, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i64, i64* %321, i64 %329
  %331 = load i64, i64* %330, align 8
  %332 = trunc i64 %331 to i32
  %333 = load i32*, i32** %25, align 8
  %334 = load i32, i32* %9, align 4
  %335 = load i32, i32* %19, align 4
  %336 = add nsw i32 %334, %335
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %333, i64 %337
  store i32 %332, i32* %338, align 4
  %339 = load i32, i32* %15, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %358, label %341

341:                                              ; preds = %269
  %342 = load i32, i32* %16, align 4
  %343 = icmp eq i32 %342, 4
  br i1 %343, label %344, label %358

344:                                              ; preds = %341
  %345 = load i32*, i32** %26, align 8
  %346 = load i32, i32* %9, align 4
  %347 = load i32, i32* %20, align 4
  %348 = add nsw i32 %346, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %345, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = load i32*, i32** %25, align 8
  %353 = load i32, i32* %9, align 4
  %354 = load i32, i32* %20, align 4
  %355 = add nsw i32 %353, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %352, i64 %356
  store i32 %351, i32* %357, align 4
  br label %358

358:                                              ; preds = %344, %341, %269
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %16, align 4
  %361 = load i32, i32* %9, align 4
  %362 = add nsw i32 %361, %360
  store i32 %362, i32* %9, align 4
  br label %261

363:                                              ; preds = %261
  %364 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 2
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 0
  %368 = load i32, i32* %367, align 4
  %369 = load i32*, i32** %25, align 8
  %370 = sext i32 %368 to i64
  %371 = getelementptr inbounds i32, i32* %369, i64 %370
  store i32* %371, i32** %25, align 8
  %372 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 2
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 0
  %376 = load i32, i32* %375, align 4
  %377 = load i32*, i32** %26, align 8
  %378 = sext i32 %376 to i64
  %379 = getelementptr inbounds i32, i32* %377, i64 %378
  store i32* %379, i32** %26, align 8
  br label %380

380:                                              ; preds = %363
  %381 = load i32, i32* %10, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %10, align 4
  br label %256

383:                                              ; preds = %256
  br label %384

384:                                              ; preds = %383, %225
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
