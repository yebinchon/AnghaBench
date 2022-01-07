; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/components/tjpgd/src/extr_tjpgd.c_mcu_load.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/components/tjpgd/src/extr_tjpgd.c_mcu_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32***, i32*, i32**, i64*, i32, i64***, i64***, i64*, i64 }

@JDR_FMT1 = common dso_local global i64 0, align 8
@JD_USE_SCALE = common dso_local global i64 0, align 8
@JDR_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @mcu_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mcu_load(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
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
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 10
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %4, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  store i32 %30, i32* %9, align 4
  store i32 2, i32* %10, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 9
  %33 = load i64*, i64** %32, align 8
  store i64* %33, i64** %15, align 8
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %298, %1
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %36, %37
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %301

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %50

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %46, %47
  %49 = add nsw i32 %48, 1
  br label %50

50:                                               ; preds = %45, %44
  %51 = phi i32 [ 0, %44 ], [ %49, %45 ]
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  store i32 %55, i32* %13, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 8
  %58 = load i64***, i64**** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64**, i64*** %58, i64 %60
  %62 = load i64**, i64*** %61, align 8
  %63 = getelementptr inbounds i64*, i64** %62, i64 0
  %64 = load i64*, i64** %63, align 8
  store i64* %64, i64** %16, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32***, i32**** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32**, i32*** %67, i64 %69
  %71 = load i32**, i32*** %70, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 0
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %18, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 7
  %76 = load i64***, i64**** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64**, i64*** %76, i64 %78
  %80 = load i64**, i64*** %79, align 8
  %81 = getelementptr inbounds i64*, i64** %80, i64 0
  %82 = load i64*, i64** %81, align 8
  store i64* %82, i64** %17, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = load i64*, i64** %16, align 8
  %85 = load i32*, i32** %18, align 8
  %86 = load i64*, i64** %17, align 8
  %87 = call i32 @huffext(%struct.TYPE_5__* %83, i64* %84, i32* %85, i64* %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %50
  %91 = load i32, i32* %5, align 4
  %92 = sub nsw i32 0, %91
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %2, align 8
  br label %303

94:                                               ; preds = %50
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %139

104:                                              ; preds = %94
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @bitext(%struct.TYPE_5__* %105, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* %7, align 4
  %112 = sub nsw i32 0, %111
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %2, align 8
  br label %303

114:                                              ; preds = %104
  %115 = load i32, i32* %5, align 4
  %116 = sub nsw i32 %115, 1
  %117 = shl i32 1, %116
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %5, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %114
  %123 = load i32, i32* %5, align 4
  %124 = shl i32 %123, 1
  %125 = sub nsw i32 %124, 1
  %126 = load i32, i32* %7, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %122, %114
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %132, i32* %138, align 4
  br label %139

139:                                              ; preds = %128, %94
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 4
  %142 = load i32**, i32*** %141, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 5
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds i32*, i32** %142, i64 %149
  %151 = load i32*, i32** %150, align 8
  store i32* %151, i32** %19, align 8
  %152 = load i32, i32* %6, align 4
  %153 = load i32*, i32** %19, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %152, %155
  %157 = ashr i32 %156, 8
  %158 = load i32*, i32** %4, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  store i32 %157, i32* %159, align 4
  store i32 1, i32* %11, align 4
  br label %160

160:                                              ; preds = %164, %139
  %161 = load i32, i32* %11, align 4
  %162 = icmp slt i32 %161, 64
  br i1 %162, label %163, label %170

163:                                              ; preds = %160
  br label %164

164:                                              ; preds = %163
  %165 = load i32*, i32** %4, align 8
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32 0, i32* %169, align 4
  br label %160

170:                                              ; preds = %160
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 8
  %173 = load i64***, i64**** %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64**, i64*** %173, i64 %175
  %177 = load i64**, i64*** %176, align 8
  %178 = getelementptr inbounds i64*, i64** %177, i64 1
  %179 = load i64*, i64** %178, align 8
  store i64* %179, i64** %16, align 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 2
  %182 = load i32***, i32**** %181, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32**, i32*** %182, i64 %184
  %186 = load i32**, i32*** %185, align 8
  %187 = getelementptr inbounds i32*, i32** %186, i64 1
  %188 = load i32*, i32** %187, align 8
  store i32* %188, i32** %18, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 7
  %191 = load i64***, i64**** %190, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64**, i64*** %191, i64 %193
  %195 = load i64**, i64*** %194, align 8
  %196 = getelementptr inbounds i64*, i64** %195, i64 1
  %197 = load i64*, i64** %196, align 8
  store i64* %197, i64** %17, align 8
  store i32 1, i32* %11, align 4
  br label %198

198:                                              ; preds = %272, %170
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %200 = load i64*, i64** %16, align 8
  %201 = load i32*, i32** %18, align 8
  %202 = load i64*, i64** %17, align 8
  %203 = call i32 @huffext(%struct.TYPE_5__* %199, i64* %200, i32* %201, i64* %202)
  store i32 %203, i32* %5, align 4
  %204 = load i32, i32* %5, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %198
  br label %276

207:                                              ; preds = %198
  %208 = load i32, i32* %5, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load i32, i32* %5, align 4
  %212 = sub nsw i32 0, %211
  %213 = sext i32 %212 to i64
  store i64 %213, i64* %2, align 8
  br label %303

214:                                              ; preds = %207
  %215 = load i32, i32* %5, align 4
  %216 = ashr i32 %215, 4
  store i32 %216, i32* %12, align 4
  %217 = load i32, i32* %12, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %214
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, %220
  store i32 %222, i32* %11, align 4
  %223 = load i32, i32* %11, align 4
  %224 = icmp sge i32 %223, 64
  br i1 %224, label %225, label %227

225:                                              ; preds = %219
  %226 = load i64, i64* @JDR_FMT1, align 8
  store i64 %226, i64* %2, align 8
  br label %303

227:                                              ; preds = %219
  br label %228

228:                                              ; preds = %227, %214
  %229 = load i32, i32* %5, align 4
  %230 = and i32 %229, 15
  store i32 %230, i32* %5, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %271

232:                                              ; preds = %228
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %234 = load i32, i32* %5, align 4
  %235 = call i32 @bitext(%struct.TYPE_5__* %233, i32 %234)
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* %6, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %232
  %239 = load i32, i32* %6, align 4
  %240 = sub nsw i32 0, %239
  %241 = sext i32 %240 to i64
  store i64 %241, i64* %2, align 8
  br label %303

242:                                              ; preds = %232
  %243 = load i32, i32* %5, align 4
  %244 = sub nsw i32 %243, 1
  %245 = shl i32 1, %244
  store i32 %245, i32* %5, align 4
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* %5, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %256, label %250

250:                                              ; preds = %242
  %251 = load i32, i32* %5, align 4
  %252 = shl i32 %251, 1
  %253 = sub nsw i32 %252, 1
  %254 = load i32, i32* %6, align 4
  %255 = sub nsw i32 %254, %253
  store i32 %255, i32* %6, align 4
  br label %256

256:                                              ; preds = %250, %242
  %257 = load i32, i32* %11, align 4
  %258 = call i32 @ZIG(i32 %257)
  store i32 %258, i32* %12, align 4
  %259 = load i32, i32* %6, align 4
  %260 = load i32*, i32** %19, align 8
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = mul nsw i32 %259, %264
  %266 = ashr i32 %265, 8
  %267 = load i32*, i32** %4, align 8
  %268 = load i32, i32* %12, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  store i32 %266, i32* %270, align 4
  br label %271

271:                                              ; preds = %256, %228
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %11, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %11, align 4
  %275 = icmp slt i32 %274, 64
  br i1 %275, label %198, label %276

276:                                              ; preds = %272, %206
  %277 = load i64, i64* @JD_USE_SCALE, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %291

279:                                              ; preds = %276
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 8
  %283 = icmp eq i32 %282, 3
  br i1 %283, label %284, label %291

284:                                              ; preds = %279
  %285 = load i32*, i32** %4, align 8
  %286 = load i32, i32* %285, align 4
  %287 = sdiv i32 %286, 256
  %288 = add nsw i32 %287, 128
  %289 = sext i32 %288 to i64
  %290 = load i64*, i64** %15, align 8
  store i64 %289, i64* %290, align 8
  br label %295

291:                                              ; preds = %279, %276
  %292 = load i32*, i32** %4, align 8
  %293 = load i64*, i64** %15, align 8
  %294 = call i32 @block_idct(i32* %292, i64* %293)
  br label %295

295:                                              ; preds = %291, %284
  %296 = load i64*, i64** %15, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 64
  store i64* %297, i64** %15, align 8
  br label %298

298:                                              ; preds = %295
  %299 = load i32, i32* %8, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %8, align 4
  br label %34

301:                                              ; preds = %34
  %302 = load i64, i64* @JDR_OK, align 8
  store i64 %302, i64* %2, align 8
  br label %303

303:                                              ; preds = %301, %238, %225, %210, %110, %90
  %304 = load i64, i64* %2, align 8
  ret i64 %304
}

declare dso_local i32 @huffext(%struct.TYPE_5__*, i64*, i32*, i64*) #1

declare dso_local i32 @bitext(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ZIG(i32) #1

declare dso_local i32 @block_idct(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
