; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_comb_detect.c_detect_combed_segment.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_comb_detect.c_detect_combed_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i64, %struct.TYPE_10__*, %struct.TYPE_8__** }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, i32)* @detect_combed_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detect_combed_segment(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 6, %43
  store i32 %44, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %443, %3
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %446

48:                                               ; preds = %45
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 5
  %51 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %51, i64 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %15, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %63, i64 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %16, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %75, i64 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %85, 2
  br i1 %86, label %87, label %88

87:                                               ; preds = %48
  store i32 2, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %48
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %17, align 4
  %91 = sub nsw i32 %90, 2
  %92 = icmp sgt i32 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* %17, align 4
  %95 = sub nsw i32 %94, 2
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %439, %96
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %442

102:                                              ; preds = %98
  %103 = load i32, i32* %15, align 4
  %104 = mul nsw i32 -2, %103
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %15, align 4
  %106 = mul nsw i32 -1, %105
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %20, align 4
  %108 = load i32, i32* %15, align 4
  %109 = mul nsw i32 2, %108
  store i32 %109, i32* %21, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 5
  %112 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %112, i64 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %15, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  store i32* %126, i32** %22, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 5
  %129 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %129, i64 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %15, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %138, i64 %142
  store i32* %143, i32** %23, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 5
  %146 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %146, i64 2
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %15, align 4
  %158 = mul nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %155, i64 %159
  store i32* %160, i32** %24, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %15, align 4
  %173 = mul nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  store i32* %175, i32** %25, align 8
  %176 = load i32*, i32** %25, align 8
  %177 = load i32, i32* %15, align 4
  %178 = call i32 @memset(i32* %176, i32 0, i32 %177)
  store i32 0, i32* %13, align 4
  br label %179

179:                                              ; preds = %435, %102
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %16, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %438

183:                                              ; preds = %179
  %184 = load i32*, i32** %23, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %23, align 8
  %188 = load i32, i32* %19, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %186, %191
  store i32 %192, i32* %26, align 4
  %193 = load i32*, i32** %23, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %23, align 8
  %197 = load i32, i32* %20, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = sub nsw i32 %195, %200
  store i32 %201, i32* %27, align 4
  %202 = load i32, i32* %26, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp sgt i32 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %183
  %206 = load i32, i32* %27, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp sgt i32 %206, %207
  br i1 %208, label %219, label %209

209:                                              ; preds = %205, %183
  %210 = load i32, i32* %26, align 4
  %211 = load i32, i32* %9, align 4
  %212 = sub nsw i32 0, %211
  %213 = icmp slt i32 %210, %212
  br i1 %213, label %214, label %426

214:                                              ; preds = %209
  %215 = load i32, i32* %27, align 4
  %216 = load i32, i32* %9, align 4
  %217 = sub nsw i32 0, %216
  %218 = icmp slt i32 %215, %217
  br i1 %218, label %219, label %426

219:                                              ; preds = %214, %205
  store i32 0, i32* %28, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %311

222:                                              ; preds = %219
  %223 = load i32*, i32** %22, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %23, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %225, %228
  %230 = call i32 @abs(i32 %229) #3
  %231 = load i32, i32* %8, align 4
  %232 = icmp sgt i32 %230, %231
  br i1 %232, label %233, label %266

233:                                              ; preds = %222
  %234 = load i32*, i32** %23, align 8
  %235 = load i32, i32* %19, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %24, align 8
  %240 = load i32, i32* %19, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = sub nsw i32 %238, %243
  %245 = call i32 @abs(i32 %244) #3
  %246 = load i32, i32* %8, align 4
  %247 = icmp sgt i32 %245, %246
  br i1 %247, label %248, label %266

248:                                              ; preds = %233
  %249 = load i32*, i32** %23, align 8
  %250 = load i32, i32* %20, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load i32*, i32** %24, align 8
  %255 = load i32, i32* %20, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = sub nsw i32 %253, %258
  %260 = call i32 @abs(i32 %259) #3
  %261 = load i32, i32* %8, align 4
  %262 = icmp sgt i32 %260, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %248
  %264 = load i32, i32* %28, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %28, align 4
  br label %266

266:                                              ; preds = %263, %248, %233, %222
  %267 = load i32*, i32** %24, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** %23, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  %272 = load i32, i32* %271, align 4
  %273 = sub nsw i32 %269, %272
  %274 = call i32 @abs(i32 %273) #3
  %275 = load i32, i32* %8, align 4
  %276 = icmp sgt i32 %274, %275
  br i1 %276, label %277, label %310

277:                                              ; preds = %266
  %278 = load i32*, i32** %22, align 8
  %279 = load i32, i32* %19, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32*, i32** %23, align 8
  %284 = load i32, i32* %19, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = sub nsw i32 %282, %287
  %289 = call i32 @abs(i32 %288) #3
  %290 = load i32, i32* %8, align 4
  %291 = icmp sgt i32 %289, %290
  br i1 %291, label %292, label %310

292:                                              ; preds = %277
  %293 = load i32*, i32** %22, align 8
  %294 = load i32, i32* %20, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load i32*, i32** %23, align 8
  %299 = load i32, i32* %20, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = sub nsw i32 %297, %302
  %304 = call i32 @abs(i32 %303) #3
  %305 = load i32, i32* %8, align 4
  %306 = icmp sgt i32 %304, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %292
  %308 = load i32, i32* %28, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %28, align 4
  br label %310

310:                                              ; preds = %307, %292, %277, %266
  br label %312

311:                                              ; preds = %219
  store i32 1, i32* %28, align 4
  br label %312

312:                                              ; preds = %311, %310
  %313 = load i32, i32* %28, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %320, label %315

315:                                              ; preds = %312
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 3
  %318 = load i64, i64* %317, align 8
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %425

320:                                              ; preds = %315, %312
  %321 = load i32, i32* %7, align 4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %351

323:                                              ; preds = %320
  %324 = load i32*, i32** %23, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 0
  %326 = load i32, i32* %325, align 4
  %327 = load i32*, i32** %23, align 8
  %328 = load i32, i32* %21, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = sub nsw i32 %326, %331
  %333 = call i32 @abs(i32 %332) #3
  %334 = icmp slt i32 %333, 10
  br i1 %334, label %335, label %350

335:                                              ; preds = %323
  %336 = load i32*, i32** %23, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 0
  %338 = load i32, i32* %337, align 4
  %339 = load i32*, i32** %23, align 8
  %340 = load i32, i32* %20, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = sub nsw i32 %338, %343
  %345 = call i32 @abs(i32 %344) #3
  %346 = icmp sgt i32 %345, 15
  br i1 %346, label %347, label %350

347:                                              ; preds = %335
  %348 = load i32*, i32** %25, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 0
  store i32 1, i32* %349, align 4
  br label %350

350:                                              ; preds = %347, %335, %323
  br label %424

351:                                              ; preds = %320
  %352 = load i32, i32* %7, align 4
  %353 = icmp eq i32 %352, 1
  br i1 %353, label %354, label %381

354:                                              ; preds = %351
  %355 = load i32*, i32** %23, align 8
  %356 = load i32, i32* %19, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = load i32*, i32** %23, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 0
  %362 = load i32, i32* %361, align 4
  %363 = sub nsw i32 %359, %362
  %364 = load i32*, i32** %23, align 8
  %365 = load i32, i32* %20, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = load i32*, i32** %23, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 0
  %371 = load i32, i32* %370, align 4
  %372 = sub nsw i32 %368, %371
  %373 = mul nsw i32 %363, %372
  store i32 %373, i32* %29, align 4
  %374 = load i32, i32* %29, align 4
  %375 = load i32, i32* %10, align 4
  %376 = icmp sgt i32 %374, %375
  br i1 %376, label %377, label %380

377:                                              ; preds = %354
  %378 = load i32*, i32** %25, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 0
  store i32 1, i32* %379, align 4
  br label %380

380:                                              ; preds = %377, %354
  br label %423

381:                                              ; preds = %351
  %382 = load i32, i32* %7, align 4
  %383 = icmp eq i32 %382, 2
  br i1 %383, label %384, label %422

384:                                              ; preds = %381
  %385 = load i32*, i32** %23, align 8
  %386 = load i32, i32* %18, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = load i32*, i32** %23, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 0
  %392 = load i32, i32* %391, align 4
  %393 = mul nsw i32 4, %392
  %394 = add nsw i32 %389, %393
  %395 = load i32*, i32** %23, align 8
  %396 = load i32, i32* %21, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = add nsw i32 %394, %399
  %401 = load i32*, i32** %23, align 8
  %402 = load i32, i32* %19, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = load i32*, i32** %23, align 8
  %407 = load i32, i32* %20, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = add nsw i32 %405, %410
  %412 = mul nsw i32 3, %411
  %413 = sub nsw i32 %400, %412
  %414 = call i32 @abs(i32 %413) #3
  store i32 %414, i32* %30, align 4
  %415 = load i32, i32* %30, align 4
  %416 = load i32, i32* %11, align 4
  %417 = icmp sgt i32 %415, %416
  br i1 %417, label %418, label %421

418:                                              ; preds = %384
  %419 = load i32*, i32** %25, align 8
  %420 = getelementptr inbounds i32, i32* %419, i64 0
  store i32 1, i32* %420, align 4
  br label %421

421:                                              ; preds = %418, %384
  br label %422

422:                                              ; preds = %421, %381
  br label %423

423:                                              ; preds = %422, %380
  br label %424

424:                                              ; preds = %423, %350
  br label %425

425:                                              ; preds = %424, %315
  br label %426

426:                                              ; preds = %425, %214, %209
  %427 = load i32*, i32** %23, align 8
  %428 = getelementptr inbounds i32, i32* %427, i32 1
  store i32* %428, i32** %23, align 8
  %429 = load i32*, i32** %22, align 8
  %430 = getelementptr inbounds i32, i32* %429, i32 1
  store i32* %430, i32** %22, align 8
  %431 = load i32*, i32** %24, align 8
  %432 = getelementptr inbounds i32, i32* %431, i32 1
  store i32* %432, i32** %24, align 8
  %433 = load i32*, i32** %25, align 8
  %434 = getelementptr inbounds i32, i32* %433, i32 1
  store i32* %434, i32** %25, align 8
  br label %435

435:                                              ; preds = %426
  %436 = load i32, i32* %13, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %13, align 4
  br label %179

438:                                              ; preds = %179
  br label %439

439:                                              ; preds = %438
  %440 = load i32, i32* %14, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %14, align 4
  br label %98

442:                                              ; preds = %98
  br label %443

443:                                              ; preds = %442
  %444 = load i32, i32* %12, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %12, align 4
  br label %45

446:                                              ; preds = %45
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
