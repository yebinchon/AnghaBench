; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_rgba8ToPixel.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_rgba8ToPixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@LCT_GREY = common dso_local global i64 0, align 8
@LCT_RGB = common dso_local global i64 0, align 8
@LCT_PALETTE = common dso_local global i64 0, align 8
@LCT_GREY_ALPHA = common dso_local global i64 0, align 8
@LCT_RGBA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_3__*, i32*, i8, i8, i8, i8)* @rgba8ToPixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rgba8ToPixel(i8* %0, i64 %1, %struct.TYPE_3__* %2, i32* %3, i8 zeroext %4, i8 zeroext %5, i8 zeroext %6, i8 zeroext %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8 %4, i8* %14, align 1
  store i8 %5, i8* %15, align 1
  store i8 %6, i8* %16, align 1
  store i8 %7, i8* %17, align 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LCT_GREY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %8
  %27 = load i8, i8* %14, align 1
  store i8 %27, i8* %18, align 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i8, i8* %18, align 1
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 %33, i8* %36, align 1
  br label %78

37:                                               ; preds = %26
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 16
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load i8, i8* %18, align 1
  %44 = load i8*, i8** %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = mul i64 %45, 2
  %47 = add i64 %46, 1
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 %43, i8* %48, align 1
  %49 = load i8*, i8** %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = mul i64 %50, 2
  %52 = add i64 %51, 0
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  store i8 %43, i8* %53, align 1
  br label %77

54:                                               ; preds = %37
  %55 = load i8, i8* %18, align 1
  %56 = zext i8 %55 to i32
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 8, %59
  %61 = ashr i32 %56, %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = shl i32 1, %64
  %66 = sub nsw i32 %65, 1
  %67 = and i32 %61, %66
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %18, align 1
  %69 = load i8*, i8** %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i8, i8* %18, align 1
  %75 = zext i8 %74 to i32
  %76 = call i32 @addColorBits(i8* %69, i64 %70, i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %54, %42
  br label %78

78:                                               ; preds = %77, %32
  br label %321

79:                                               ; preds = %8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @LCT_RGB, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %144

85:                                               ; preds = %79
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 8
  br i1 %89, label %90, label %109

90:                                               ; preds = %85
  %91 = load i8, i8* %14, align 1
  %92 = load i8*, i8** %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = mul i64 %93, 3
  %95 = add i64 %94, 0
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  store i8 %91, i8* %96, align 1
  %97 = load i8, i8* %15, align 1
  %98 = load i8*, i8** %10, align 8
  %99 = load i64, i64* %11, align 8
  %100 = mul i64 %99, 3
  %101 = add i64 %100, 1
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  store i8 %97, i8* %102, align 1
  %103 = load i8, i8* %16, align 1
  %104 = load i8*, i8** %10, align 8
  %105 = load i64, i64* %11, align 8
  %106 = mul i64 %105, 3
  %107 = add i64 %106, 2
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 %103, i8* %108, align 1
  br label %143

109:                                              ; preds = %85
  %110 = load i8, i8* %14, align 1
  %111 = load i8*, i8** %10, align 8
  %112 = load i64, i64* %11, align 8
  %113 = mul i64 %112, 6
  %114 = add i64 %113, 1
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  store i8 %110, i8* %115, align 1
  %116 = load i8*, i8** %10, align 8
  %117 = load i64, i64* %11, align 8
  %118 = mul i64 %117, 6
  %119 = add i64 %118, 0
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  store i8 %110, i8* %120, align 1
  %121 = load i8, i8* %15, align 1
  %122 = load i8*, i8** %10, align 8
  %123 = load i64, i64* %11, align 8
  %124 = mul i64 %123, 6
  %125 = add i64 %124, 3
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  store i8 %121, i8* %126, align 1
  %127 = load i8*, i8** %10, align 8
  %128 = load i64, i64* %11, align 8
  %129 = mul i64 %128, 6
  %130 = add i64 %129, 2
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  store i8 %121, i8* %131, align 1
  %132 = load i8, i8* %16, align 1
  %133 = load i8*, i8** %10, align 8
  %134 = load i64, i64* %11, align 8
  %135 = mul i64 %134, 6
  %136 = add i64 %135, 5
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  store i8 %132, i8* %137, align 1
  %138 = load i8*, i8** %10, align 8
  %139 = load i64, i64* %11, align 8
  %140 = mul i64 %139, 6
  %141 = add i64 %140, 4
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  store i8 %132, i8* %142, align 1
  br label %143

143:                                              ; preds = %109, %90
  br label %320

144:                                              ; preds = %79
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @LCT_PALETTE, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %180

150:                                              ; preds = %144
  %151 = load i32*, i32** %13, align 8
  %152 = load i8, i8* %14, align 1
  %153 = load i8, i8* %15, align 1
  %154 = load i8, i8* %16, align 1
  %155 = load i8, i8* %17, align 1
  %156 = call i32 @color_tree_get(i32* %151, i8 zeroext %152, i8 zeroext %153, i8 zeroext %154, i8 zeroext %155)
  store i32 %156, i32* %19, align 4
  %157 = load i32, i32* %19, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %150
  store i32 82, i32* %9, align 4
  br label %322

160:                                              ; preds = %150
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 8
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load i32, i32* %19, align 4
  %167 = trunc i32 %166 to i8
  %168 = load i8*, i8** %10, align 8
  %169 = load i64, i64* %11, align 8
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  store i8 %167, i8* %170, align 1
  br label %179

171:                                              ; preds = %160
  %172 = load i8*, i8** %10, align 8
  %173 = load i64, i64* %11, align 8
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %19, align 4
  %178 = call i32 @addColorBits(i8* %172, i64 %173, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %171, %165
  br label %319

180:                                              ; preds = %144
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @LCT_GREY_ALPHA, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %235

186:                                              ; preds = %180
  %187 = load i8, i8* %14, align 1
  store i8 %187, i8* %20, align 1
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 8
  br i1 %191, label %192, label %205

192:                                              ; preds = %186
  %193 = load i8, i8* %20, align 1
  %194 = load i8*, i8** %10, align 8
  %195 = load i64, i64* %11, align 8
  %196 = mul i64 %195, 2
  %197 = add i64 %196, 0
  %198 = getelementptr inbounds i8, i8* %194, i64 %197
  store i8 %193, i8* %198, align 1
  %199 = load i8, i8* %17, align 1
  %200 = load i8*, i8** %10, align 8
  %201 = load i64, i64* %11, align 8
  %202 = mul i64 %201, 2
  %203 = add i64 %202, 1
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  store i8 %199, i8* %204, align 1
  br label %234

205:                                              ; preds = %186
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, 16
  br i1 %209, label %210, label %233

210:                                              ; preds = %205
  %211 = load i8, i8* %20, align 1
  %212 = load i8*, i8** %10, align 8
  %213 = load i64, i64* %11, align 8
  %214 = mul i64 %213, 4
  %215 = add i64 %214, 1
  %216 = getelementptr inbounds i8, i8* %212, i64 %215
  store i8 %211, i8* %216, align 1
  %217 = load i8*, i8** %10, align 8
  %218 = load i64, i64* %11, align 8
  %219 = mul i64 %218, 4
  %220 = add i64 %219, 0
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  store i8 %211, i8* %221, align 1
  %222 = load i8, i8* %17, align 1
  %223 = load i8*, i8** %10, align 8
  %224 = load i64, i64* %11, align 8
  %225 = mul i64 %224, 4
  %226 = add i64 %225, 3
  %227 = getelementptr inbounds i8, i8* %223, i64 %226
  store i8 %222, i8* %227, align 1
  %228 = load i8*, i8** %10, align 8
  %229 = load i64, i64* %11, align 8
  %230 = mul i64 %229, 4
  %231 = add i64 %230, 2
  %232 = getelementptr inbounds i8, i8* %228, i64 %231
  store i8 %222, i8* %232, align 1
  br label %233

233:                                              ; preds = %210, %205
  br label %234

234:                                              ; preds = %233, %192
  br label %318

235:                                              ; preds = %180
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @LCT_RGBA, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %317

241:                                              ; preds = %235
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = icmp eq i32 %244, 8
  br i1 %245, label %246, label %271

246:                                              ; preds = %241
  %247 = load i8, i8* %14, align 1
  %248 = load i8*, i8** %10, align 8
  %249 = load i64, i64* %11, align 8
  %250 = mul i64 %249, 4
  %251 = add i64 %250, 0
  %252 = getelementptr inbounds i8, i8* %248, i64 %251
  store i8 %247, i8* %252, align 1
  %253 = load i8, i8* %15, align 1
  %254 = load i8*, i8** %10, align 8
  %255 = load i64, i64* %11, align 8
  %256 = mul i64 %255, 4
  %257 = add i64 %256, 1
  %258 = getelementptr inbounds i8, i8* %254, i64 %257
  store i8 %253, i8* %258, align 1
  %259 = load i8, i8* %16, align 1
  %260 = load i8*, i8** %10, align 8
  %261 = load i64, i64* %11, align 8
  %262 = mul i64 %261, 4
  %263 = add i64 %262, 2
  %264 = getelementptr inbounds i8, i8* %260, i64 %263
  store i8 %259, i8* %264, align 1
  %265 = load i8, i8* %17, align 1
  %266 = load i8*, i8** %10, align 8
  %267 = load i64, i64* %11, align 8
  %268 = mul i64 %267, 4
  %269 = add i64 %268, 3
  %270 = getelementptr inbounds i8, i8* %266, i64 %269
  store i8 %265, i8* %270, align 1
  br label %316

271:                                              ; preds = %241
  %272 = load i8, i8* %14, align 1
  %273 = load i8*, i8** %10, align 8
  %274 = load i64, i64* %11, align 8
  %275 = mul i64 %274, 8
  %276 = add i64 %275, 1
  %277 = getelementptr inbounds i8, i8* %273, i64 %276
  store i8 %272, i8* %277, align 1
  %278 = load i8*, i8** %10, align 8
  %279 = load i64, i64* %11, align 8
  %280 = mul i64 %279, 8
  %281 = add i64 %280, 0
  %282 = getelementptr inbounds i8, i8* %278, i64 %281
  store i8 %272, i8* %282, align 1
  %283 = load i8, i8* %15, align 1
  %284 = load i8*, i8** %10, align 8
  %285 = load i64, i64* %11, align 8
  %286 = mul i64 %285, 8
  %287 = add i64 %286, 3
  %288 = getelementptr inbounds i8, i8* %284, i64 %287
  store i8 %283, i8* %288, align 1
  %289 = load i8*, i8** %10, align 8
  %290 = load i64, i64* %11, align 8
  %291 = mul i64 %290, 8
  %292 = add i64 %291, 2
  %293 = getelementptr inbounds i8, i8* %289, i64 %292
  store i8 %283, i8* %293, align 1
  %294 = load i8, i8* %16, align 1
  %295 = load i8*, i8** %10, align 8
  %296 = load i64, i64* %11, align 8
  %297 = mul i64 %296, 8
  %298 = add i64 %297, 5
  %299 = getelementptr inbounds i8, i8* %295, i64 %298
  store i8 %294, i8* %299, align 1
  %300 = load i8*, i8** %10, align 8
  %301 = load i64, i64* %11, align 8
  %302 = mul i64 %301, 8
  %303 = add i64 %302, 4
  %304 = getelementptr inbounds i8, i8* %300, i64 %303
  store i8 %294, i8* %304, align 1
  %305 = load i8, i8* %17, align 1
  %306 = load i8*, i8** %10, align 8
  %307 = load i64, i64* %11, align 8
  %308 = mul i64 %307, 8
  %309 = add i64 %308, 7
  %310 = getelementptr inbounds i8, i8* %306, i64 %309
  store i8 %305, i8* %310, align 1
  %311 = load i8*, i8** %10, align 8
  %312 = load i64, i64* %11, align 8
  %313 = mul i64 %312, 8
  %314 = add i64 %313, 6
  %315 = getelementptr inbounds i8, i8* %311, i64 %314
  store i8 %305, i8* %315, align 1
  br label %316

316:                                              ; preds = %271, %246
  br label %317

317:                                              ; preds = %316, %235
  br label %318

318:                                              ; preds = %317, %234
  br label %319

319:                                              ; preds = %318, %179
  br label %320

320:                                              ; preds = %319, %143
  br label %321

321:                                              ; preds = %320, %78
  store i32 0, i32* %9, align 4
  br label %322

322:                                              ; preds = %321, %159
  %323 = load i32, i32* %9, align 4
  ret i32 %323
}

declare dso_local i32 @addColorBits(i8*, i64, i32, i32) #1

declare dso_local i32 @color_tree_get(i32*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
