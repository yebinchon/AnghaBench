; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sfmt/extr_SFMT.c_sfmt_init_by_array.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sfmt/extr_SFMT.c_sfmt_init_by_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@SFMT_N = common dso_local global i32 0, align 4
@SFMT_N32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfmt_init_by_array(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @SFMT_N, align 4
  %16 = mul nsw i32 %15, 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32* %23, i32** %14, align 8
  %24 = load i32, i32* %13, align 4
  %25 = icmp sge i32 %24, 623
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 11, i32* %11, align 4
  br label %38

27:                                               ; preds = %3
  %28 = load i32, i32* %13, align 4
  %29 = icmp sge i32 %28, 68
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 7, i32* %11, align 4
  br label %37

31:                                               ; preds = %27
  %32 = load i32, i32* %13, align 4
  %33 = icmp sge i32 %32, 39
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 5, i32* %11, align 4
  br label %36

35:                                               ; preds = %31
  store i32 3, i32* %11, align 4
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %30
  br label %38

38:                                               ; preds = %37, %26
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sdiv i32 %41, 2
  store i32 %42, i32* %12, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = call i32 @memset(%struct.TYPE_7__* %43, i32 139, i32 16)
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* @SFMT_N32, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %54

52:                                               ; preds = %38
  %53 = load i32, i32* @SFMT_N32, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32*, i32** %14, align 8
  %56 = call i64 @idxof(i32 0)
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i64 @idxof(i32 %60)
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = xor i32 %58, %63
  %65 = load i32*, i32** %14, align 8
  %66 = load i32, i32* @SFMT_N32, align 4
  %67 = sub nsw i32 %66, 1
  %68 = call i64 @idxof(i32 %67)
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %64, %70
  %72 = call i32 @func1(i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i64 @idxof(i32 %75)
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %73
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32*, i32** %14, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %85, %86
  %88 = call i64 @idxof(i32 %87)
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %83
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32*, i32** %14, align 8
  %94 = call i64 @idxof(i32 0)
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %9, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %178, %54
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %103, %104
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi i1 [ false, %98 ], [ %105, %102 ]
  br i1 %107, label %108, label %181

108:                                              ; preds = %106
  %109 = load i32*, i32** %14, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i64 @idxof(i32 %110)
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %14, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* @SFMT_N32, align 4
  %119 = srem i32 %117, %118
  %120 = call i64 @idxof(i32 %119)
  %121 = getelementptr inbounds i32, i32* %114, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = xor i32 %113, %122
  %124 = load i32*, i32** %14, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @SFMT_N32, align 4
  %127 = add nsw i32 %125, %126
  %128 = sub nsw i32 %127, 1
  %129 = load i32, i32* @SFMT_N32, align 4
  %130 = srem i32 %128, %129
  %131 = call i64 @idxof(i32 %130)
  %132 = getelementptr inbounds i32, i32* %124, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = xor i32 %123, %133
  %135 = call i32 @func1(i32 %134)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32*, i32** %14, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* @SFMT_N32, align 4
  %142 = srem i32 %140, %141
  %143 = call i64 @idxof(i32 %142)
  %144 = getelementptr inbounds i32, i32* %137, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, %136
  store i32 %146, i32* %144, align 4
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32*, i32** %14, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %158, %159
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %160, %161
  %163 = load i32, i32* @SFMT_N32, align 4
  %164 = srem i32 %162, %163
  %165 = call i64 @idxof(i32 %164)
  %166 = getelementptr inbounds i32, i32* %157, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, %156
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32*, i32** %14, align 8
  %171 = load i32, i32* %7, align 4
  %172 = call i64 @idxof(i32 %171)
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %169, i32* %173, align 4
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  %176 = load i32, i32* @SFMT_N32, align 4
  %177 = srem i32 %175, %176
  store i32 %177, i32* %7, align 4
  br label %178

178:                                              ; preds = %108
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %98

181:                                              ; preds = %106
  br label %182

182:                                              ; preds = %250, %181
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %253

186:                                              ; preds = %182
  %187 = load i32*, i32** %14, align 8
  %188 = load i32, i32* %7, align 4
  %189 = call i64 @idxof(i32 %188)
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %14, align 8
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %193, %194
  %196 = load i32, i32* @SFMT_N32, align 4
  %197 = srem i32 %195, %196
  %198 = call i64 @idxof(i32 %197)
  %199 = getelementptr inbounds i32, i32* %192, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = xor i32 %191, %200
  %202 = load i32*, i32** %14, align 8
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* @SFMT_N32, align 4
  %205 = add nsw i32 %203, %204
  %206 = sub nsw i32 %205, 1
  %207 = load i32, i32* @SFMT_N32, align 4
  %208 = srem i32 %206, %207
  %209 = call i64 @idxof(i32 %208)
  %210 = getelementptr inbounds i32, i32* %202, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = xor i32 %201, %211
  %213 = call i32 @func1(i32 %212)
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %10, align 4
  %215 = load i32*, i32** %14, align 8
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %216, %217
  %219 = load i32, i32* @SFMT_N32, align 4
  %220 = srem i32 %218, %219
  %221 = call i64 @idxof(i32 %220)
  %222 = getelementptr inbounds i32, i32* %215, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, %214
  store i32 %224, i32* %222, align 4
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* %10, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %10, align 4
  %228 = load i32, i32* %10, align 4
  %229 = load i32*, i32** %14, align 8
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %230, %231
  %233 = load i32, i32* %11, align 4
  %234 = add nsw i32 %232, %233
  %235 = load i32, i32* @SFMT_N32, align 4
  %236 = srem i32 %234, %235
  %237 = call i64 @idxof(i32 %236)
  %238 = getelementptr inbounds i32, i32* %229, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, %228
  store i32 %240, i32* %238, align 4
  %241 = load i32, i32* %10, align 4
  %242 = load i32*, i32** %14, align 8
  %243 = load i32, i32* %7, align 4
  %244 = call i64 @idxof(i32 %243)
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  store i32 %241, i32* %245, align 4
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  %248 = load i32, i32* @SFMT_N32, align 4
  %249 = srem i32 %247, %248
  store i32 %249, i32* %7, align 4
  br label %250

250:                                              ; preds = %186
  %251 = load i32, i32* %8, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %8, align 4
  br label %182

253:                                              ; preds = %182
  store i32 0, i32* %8, align 4
  br label %254

254:                                              ; preds = %322, %253
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* @SFMT_N32, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %325

258:                                              ; preds = %254
  %259 = load i32*, i32** %14, align 8
  %260 = load i32, i32* %7, align 4
  %261 = call i64 @idxof(i32 %260)
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load i32*, i32** %14, align 8
  %265 = load i32, i32* %7, align 4
  %266 = load i32, i32* %12, align 4
  %267 = add nsw i32 %265, %266
  %268 = load i32, i32* @SFMT_N32, align 4
  %269 = srem i32 %267, %268
  %270 = call i64 @idxof(i32 %269)
  %271 = getelementptr inbounds i32, i32* %264, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %263, %272
  %274 = load i32*, i32** %14, align 8
  %275 = load i32, i32* %7, align 4
  %276 = load i32, i32* @SFMT_N32, align 4
  %277 = add nsw i32 %275, %276
  %278 = sub nsw i32 %277, 1
  %279 = load i32, i32* @SFMT_N32, align 4
  %280 = srem i32 %278, %279
  %281 = call i64 @idxof(i32 %280)
  %282 = getelementptr inbounds i32, i32* %274, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %273, %283
  %285 = call i32 @func2(i32 %284)
  store i32 %285, i32* %10, align 4
  %286 = load i32, i32* %10, align 4
  %287 = load i32*, i32** %14, align 8
  %288 = load i32, i32* %7, align 4
  %289 = load i32, i32* %12, align 4
  %290 = add nsw i32 %288, %289
  %291 = load i32, i32* @SFMT_N32, align 4
  %292 = srem i32 %290, %291
  %293 = call i64 @idxof(i32 %292)
  %294 = getelementptr inbounds i32, i32* %287, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = xor i32 %295, %286
  store i32 %296, i32* %294, align 4
  %297 = load i32, i32* %7, align 4
  %298 = load i32, i32* %10, align 4
  %299 = sub nsw i32 %298, %297
  store i32 %299, i32* %10, align 4
  %300 = load i32, i32* %10, align 4
  %301 = load i32*, i32** %14, align 8
  %302 = load i32, i32* %7, align 4
  %303 = load i32, i32* %12, align 4
  %304 = add nsw i32 %302, %303
  %305 = load i32, i32* %11, align 4
  %306 = add nsw i32 %304, %305
  %307 = load i32, i32* @SFMT_N32, align 4
  %308 = srem i32 %306, %307
  %309 = call i64 @idxof(i32 %308)
  %310 = getelementptr inbounds i32, i32* %301, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = xor i32 %311, %300
  store i32 %312, i32* %310, align 4
  %313 = load i32, i32* %10, align 4
  %314 = load i32*, i32** %14, align 8
  %315 = load i32, i32* %7, align 4
  %316 = call i64 @idxof(i32 %315)
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  store i32 %313, i32* %317, align 4
  %318 = load i32, i32* %7, align 4
  %319 = add nsw i32 %318, 1
  %320 = load i32, i32* @SFMT_N32, align 4
  %321 = srem i32 %319, %320
  store i32 %321, i32* %7, align 4
  br label %322

322:                                              ; preds = %258
  %323 = load i32, i32* %8, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %8, align 4
  br label %254

325:                                              ; preds = %254
  %326 = load i32, i32* @SFMT_N32, align 4
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 0
  store i32 %326, i32* %328, align 8
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %330 = call i32 @period_certification(%struct.TYPE_7__* %329)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @func1(i32) #1

declare dso_local i64 @idxof(i32) #1

declare dso_local i32 @func2(i32) #1

declare dso_local i32 @period_certification(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
