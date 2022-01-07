; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qtrle.c_qtrle_decode_1bpp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qtrle.c_qtrle_decode_1bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32)* @qtrle_decode_1bpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtrle_decode_1bpp(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %12, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %36, %41
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %313, %86, %3
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %314

52:                                               ; preds = %49
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = call i32 @bytestream2_get_byte(i32* %54)
  store i32 %55, i32* %14, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = call i32 @bytestream2_get_byte(i32* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %314

62:                                               ; preds = %52
  %63 = load i32, i32* %14, align 4
  %64 = and i32 %63, 128
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %14, align 4
  %74 = and i32 %73, 127
  %75 = mul nsw i32 16, %74
  %76 = add nsw i32 %72, %75
  store i32 %76, i32* %8, align 4
  br label %82

77:                                               ; preds = %62
  %78 = load i32, i32* %14, align 4
  %79 = mul nsw i32 16, %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %77, %66
  %83 = call i32 @CHECK_PIXEL_PTR(i32 0)
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %49

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %235

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = call i32 @bytestream2_get_byte(i32* %94)
  store i32 %95, i32* %10, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = call i32 @bytestream2_get_byte(i32* %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %7, align 4
  %100 = mul nsw i32 %99, 2
  %101 = mul nsw i32 %100, 8
  %102 = call i32 @CHECK_PIXEL_PTR(i32 %101)
  br label %103

103:                                              ; preds = %107, %90
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %7, align 4
  %106 = icmp ne i32 %104, 0
  br i1 %106, label %107, label %234

107:                                              ; preds = %103
  %108 = load i32, i32* %10, align 4
  %109 = ashr i32 %108, 7
  %110 = and i32 %109, 1
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 %110, i32* %115, align 4
  %116 = load i32, i32* %10, align 4
  %117 = ashr i32 %116, 6
  %118 = and i32 %117, 1
  %119 = load i32*, i32** %12, align 8
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  store i32 %118, i32* %123, align 4
  %124 = load i32, i32* %10, align 4
  %125 = ashr i32 %124, 5
  %126 = and i32 %125, 1
  %127 = load i32*, i32** %12, align 8
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32 %126, i32* %131, align 4
  %132 = load i32, i32* %10, align 4
  %133 = ashr i32 %132, 4
  %134 = and i32 %133, 1
  %135 = load i32*, i32** %12, align 8
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  store i32 %134, i32* %139, align 4
  %140 = load i32, i32* %10, align 4
  %141 = ashr i32 %140, 3
  %142 = and i32 %141, 1
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32 %142, i32* %147, align 4
  %148 = load i32, i32* %10, align 4
  %149 = ashr i32 %148, 2
  %150 = and i32 %149, 1
  %151 = load i32*, i32** %12, align 8
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  store i32 %150, i32* %155, align 4
  %156 = load i32, i32* %10, align 4
  %157 = ashr i32 %156, 1
  %158 = and i32 %157, 1
  %159 = load i32*, i32** %12, align 8
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  store i32 %158, i32* %163, align 4
  %164 = load i32, i32* %10, align 4
  %165 = and i32 %164, 1
  %166 = load i32*, i32** %12, align 8
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  store i32 %165, i32* %170, align 4
  %171 = load i32, i32* %11, align 4
  %172 = ashr i32 %171, 7
  %173 = and i32 %172, 1
  %174 = load i32*, i32** %12, align 8
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  store i32 %173, i32* %178, align 4
  %179 = load i32, i32* %11, align 4
  %180 = ashr i32 %179, 6
  %181 = and i32 %180, 1
  %182 = load i32*, i32** %12, align 8
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  store i32 %181, i32* %186, align 4
  %187 = load i32, i32* %11, align 4
  %188 = ashr i32 %187, 5
  %189 = and i32 %188, 1
  %190 = load i32*, i32** %12, align 8
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 %189, i32* %194, align 4
  %195 = load i32, i32* %11, align 4
  %196 = ashr i32 %195, 4
  %197 = and i32 %196, 1
  %198 = load i32*, i32** %12, align 8
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %8, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  store i32 %197, i32* %202, align 4
  %203 = load i32, i32* %11, align 4
  %204 = ashr i32 %203, 3
  %205 = and i32 %204, 1
  %206 = load i32*, i32** %12, align 8
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %8, align 4
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  store i32 %205, i32* %210, align 4
  %211 = load i32, i32* %11, align 4
  %212 = ashr i32 %211, 2
  %213 = and i32 %212, 1
  %214 = load i32*, i32** %12, align 8
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %8, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  store i32 %213, i32* %218, align 4
  %219 = load i32, i32* %11, align 4
  %220 = ashr i32 %219, 1
  %221 = and i32 %220, 1
  %222 = load i32*, i32** %12, align 8
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %8, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  store i32 %221, i32* %226, align 4
  %227 = load i32, i32* %11, align 4
  %228 = and i32 %227, 1
  %229 = load i32*, i32** %12, align 8
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %8, align 4
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i32, i32* %229, i64 %232
  store i32 %228, i32* %233, align 4
  br label %103

234:                                              ; preds = %103
  br label %313

235:                                              ; preds = %87
  %236 = load i32, i32* %7, align 4
  %237 = mul nsw i32 %236, 2
  store i32 %237, i32* %7, align 4
  %238 = load i32, i32* %7, align 4
  %239 = mul nsw i32 %238, 8
  %240 = call i32 @CHECK_PIXEL_PTR(i32 %239)
  br label %241

241:                                              ; preds = %245, %235
  %242 = load i32, i32* %7, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %7, align 4
  %244 = icmp ne i32 %242, 0
  br i1 %244, label %245, label %312

245:                                              ; preds = %241
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = call i32 @bytestream2_get_byte(i32* %247)
  store i32 %248, i32* %15, align 4
  %249 = load i32, i32* %15, align 4
  %250 = ashr i32 %249, 7
  %251 = and i32 %250, 1
  %252 = load i32*, i32** %12, align 8
  %253 = load i32, i32* %8, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %8, align 4
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  store i32 %251, i32* %256, align 4
  %257 = load i32, i32* %15, align 4
  %258 = ashr i32 %257, 6
  %259 = and i32 %258, 1
  %260 = load i32*, i32** %12, align 8
  %261 = load i32, i32* %8, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %8, align 4
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i32, i32* %260, i64 %263
  store i32 %259, i32* %264, align 4
  %265 = load i32, i32* %15, align 4
  %266 = ashr i32 %265, 5
  %267 = and i32 %266, 1
  %268 = load i32*, i32** %12, align 8
  %269 = load i32, i32* %8, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %8, align 4
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i32, i32* %268, i64 %271
  store i32 %267, i32* %272, align 4
  %273 = load i32, i32* %15, align 4
  %274 = ashr i32 %273, 4
  %275 = and i32 %274, 1
  %276 = load i32*, i32** %12, align 8
  %277 = load i32, i32* %8, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %8, align 4
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i32, i32* %276, i64 %279
  store i32 %275, i32* %280, align 4
  %281 = load i32, i32* %15, align 4
  %282 = ashr i32 %281, 3
  %283 = and i32 %282, 1
  %284 = load i32*, i32** %12, align 8
  %285 = load i32, i32* %8, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %8, align 4
  %287 = sext i32 %285 to i64
  %288 = getelementptr inbounds i32, i32* %284, i64 %287
  store i32 %283, i32* %288, align 4
  %289 = load i32, i32* %15, align 4
  %290 = ashr i32 %289, 2
  %291 = and i32 %290, 1
  %292 = load i32*, i32** %12, align 8
  %293 = load i32, i32* %8, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %8, align 4
  %295 = sext i32 %293 to i64
  %296 = getelementptr inbounds i32, i32* %292, i64 %295
  store i32 %291, i32* %296, align 4
  %297 = load i32, i32* %15, align 4
  %298 = ashr i32 %297, 1
  %299 = and i32 %298, 1
  %300 = load i32*, i32** %12, align 8
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %8, align 4
  %303 = sext i32 %301 to i64
  %304 = getelementptr inbounds i32, i32* %300, i64 %303
  store i32 %299, i32* %304, align 4
  %305 = load i32, i32* %15, align 4
  %306 = and i32 %305, 1
  %307 = load i32*, i32** %12, align 8
  %308 = load i32, i32* %8, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %8, align 4
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i32, i32* %307, i64 %310
  store i32 %306, i32* %311, align 4
  br label %241

312:                                              ; preds = %241
  br label %313

313:                                              ; preds = %312, %234
  br label %49

314:                                              ; preds = %61, %49
  ret void
}

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @CHECK_PIXEL_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
