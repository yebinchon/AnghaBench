; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw2.c_DrawLayerFull.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw2.c_DrawLayerFull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, %struct.PicoVideo }
%struct.PicoVideo = type { i32* }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DrawLayerFull.shift = internal global [4 x i8] c"\05\06\06\07", align 1
@PicoDraw2FB = common dso_local global i8* null, align 8
@LINE_WIDTH = common dso_local global i32 0, align 4
@START_ROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32)* @DrawLayerFull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawLayerFull(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.PicoVideo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.PicoVideo* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 2), %struct.PicoVideo** %9, align 8
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %19, align 4
  %31 = load i32, i32* %8, align 4
  %32 = ashr i32 %31, 16
  %33 = load i32, i32* %7, align 4
  %34 = ashr i32 %33, 16
  %35 = sub nsw i32 %32, %34
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 %36, 16
  %38 = ashr i32 %37, 16
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 %39, 16
  %41 = ashr i32 %40, 16
  store i32 %41, i32* %8, align 4
  %42 = load %struct.PicoVideo*, %struct.PicoVideo** %9, align 8
  %43 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 13
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 9
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %13, align 4
  %51 = load %struct.PicoVideo*, %struct.PicoVideo** %9, align 8
  %52 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 11
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 3
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %4
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %60 = load i32, i32* %13, align 4
  %61 = and i32 %60, 32767
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %58, %4
  %66 = load %struct.PicoVideo*, %struct.PicoVideo** %9, align 8
  %67 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 16
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = ashr i32 %71, 4
  %73 = and i32 %72, 3
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, 3
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* @DrawLayerFull.shift, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = shl i32 1, %80
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %20, align 4
  %83 = load i32, i32* %11, align 4
  %84 = shl i32 %83, 5
  %85 = or i32 %84, 31
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %91

88:                                               ; preds = %65
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %89, 63
  store i32 %90, i32* %12, align 4
  br label %96

91:                                               ; preds = %65
  %92 = load i32, i32* %10, align 4
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 31, i32* %12, align 4
  br label %95

95:                                               ; preds = %94, %91
  br label %96

96:                                               ; preds = %95, %88
  %97 = load i32, i32* %5, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load %struct.PicoVideo*, %struct.PicoVideo** %9, align 8
  %101 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 56
  %106 = shl i32 %105, 9
  store i32 %106, i32* %14, align 4
  br label %115

107:                                              ; preds = %96
  %108 = load %struct.PicoVideo*, %struct.PicoVideo** %9, align 8
  %109 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 7
  %114 = shl i32 %113, 12
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %107, %99
  %116 = load i8*, i8** @PicoDraw2FB, align 8
  store i8* %116, i8** %18, align 8
  %117 = load i32, i32* @LINE_WIDTH, align 4
  %118 = mul nsw i32 8, %117
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @START_ROW, align 4
  %121 = sub nsw i32 %119, %120
  %122 = mul nsw i32 %118, %121
  %123 = load i8*, i8** %18, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %18, align 8
  %126 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 511
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %16, align 4
  %133 = and i32 %132, 7
  %134 = sub nsw i32 8, %133
  %135 = load i32, i32* @LINE_WIDTH, align 4
  %136 = mul nsw i32 %134, %135
  %137 = load i8*, i8** %18, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %18, align 8
  %140 = load i32, i32* %16, align 4
  %141 = and i32 %140, 7
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %115
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %143, %115
  %147 = load i32, i32* %16, align 4
  %148 = and i32 %147, 7
  %149 = sub nsw i32 8, %148
  %150 = load i32*, i32** %6, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %6, align 8
  store i32 %149, i32* %150, align 4
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %22, align 4
  br label %153

153:                                              ; preds = %302, %146
  %154 = load i32, i32* %22, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %305

157:                                              ; preds = %153
  %158 = load i32, i32* %17, align 4
  store i32 %158, i32* %23, align 4
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %22, align 4
  %161 = load i32, i32* %16, align 4
  %162 = ashr i32 %161, 3
  %163 = add nsw i32 %160, %162
  %164 = load i32, i32* %12, align 4
  %165 = and i32 %163, %164
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4 x i8], [4 x i8]* @DrawLayerFull.shift, i64 0, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = shl i32 %165, %170
  %172 = add nsw i32 %159, %171
  store i32 %172, i32* %21, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %195

175:                                              ; preds = %157
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %22, align 4
  %178 = shl i32 %177, 4
  %179 = add nsw i32 %176, %178
  store i32 %179, i32* %26, align 4
  %180 = load i32, i32* %22, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %175
  %183 = load i32, i32* %16, align 4
  %184 = and i32 %183, 7
  %185 = shl i32 %184, 1
  %186 = load i32, i32* %26, align 4
  %187 = sub nsw i32 %186, %185
  store i32 %187, i32* %26, align 4
  br label %188

188:                                              ; preds = %182, %175
  %189 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %190 = load i32, i32* %26, align 4
  %191 = and i32 %190, 32767
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %15, align 4
  br label %195

195:                                              ; preds = %188, %157
  %196 = load i32, i32* %15, align 4
  %197 = sub nsw i32 0, %196
  %198 = ashr i32 %197, 3
  store i32 %198, i32* %24, align 4
  %199 = load i32, i32* %15, align 4
  %200 = sub nsw i32 %199, 1
  %201 = and i32 %200, 7
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %25, align 4
  %203 = load i32, i32* %25, align 4
  %204 = icmp ne i32 %203, 8
  br i1 %204, label %205, label %208

205:                                              ; preds = %195
  %206 = load i32, i32* %23, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %23, align 4
  br label %208

208:                                              ; preds = %205, %195
  br label %209

209:                                              ; preds = %289, %208
  %210 = load i32, i32* %23, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %296

212:                                              ; preds = %209
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %213 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %214 = load i32, i32* %21, align 4
  %215 = load i32, i32* %24, align 4
  %216 = load i32, i32* %20, align 4
  %217 = and i32 %215, %216
  %218 = add nsw i32 %214, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %213, i64 %219
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %27, align 4
  %222 = load i32, i32* %27, align 4
  %223 = load i32, i32* %19, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %212
  br label %289

226:                                              ; preds = %212
  %227 = load i32, i32* %27, align 4
  %228 = ashr i32 %227, 15
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %240

230:                                              ; preds = %226
  %231 = load i32, i32* %27, align 4
  %232 = load i32, i32* %25, align 4
  %233 = shl i32 %232, 16
  %234 = or i32 %231, %233
  %235 = load i32, i32* %22, align 4
  %236 = shl i32 %235, 27
  %237 = or i32 %234, %236
  %238 = load i32*, i32** %6, align 8
  %239 = getelementptr inbounds i32, i32* %238, i32 1
  store i32* %239, i32** %6, align 8
  store i32 %237, i32* %238, align 4
  br label %289

240:                                              ; preds = %226
  %241 = load i32, i32* %27, align 4
  %242 = and i32 %241, 2047
  %243 = shl i32 %242, 4
  store i32 %243, i32* %28, align 4
  %244 = load i32, i32* %27, align 4
  %245 = ashr i32 %244, 9
  %246 = and i32 %245, 48
  %247 = trunc i32 %246 to i8
  store i8 %247, i8* %30, align 1
  %248 = load i32, i32* %27, align 4
  %249 = ashr i32 %248, 11
  %250 = and i32 %249, 3
  switch i32 %250, label %283 [
    i32 0, label %251
    i32 1, label %259
    i32 2, label %267
    i32 3, label %275
  ]

251:                                              ; preds = %240
  %252 = load i8*, i8** %18, align 8
  %253 = load i32, i32* %25, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %252, i64 %254
  %256 = load i32, i32* %28, align 4
  %257 = load i8, i8* %30, align 1
  %258 = call i32 @TileXnormYnorm(i8* %255, i32 %256, i8 zeroext %257)
  store i32 %258, i32* %29, align 4
  br label %283

259:                                              ; preds = %240
  %260 = load i8*, i8** %18, align 8
  %261 = load i32, i32* %25, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %260, i64 %262
  %264 = load i32, i32* %28, align 4
  %265 = load i8, i8* %30, align 1
  %266 = call i32 @TileXflipYnorm(i8* %263, i32 %264, i8 zeroext %265)
  store i32 %266, i32* %29, align 4
  br label %283

267:                                              ; preds = %240
  %268 = load i8*, i8** %18, align 8
  %269 = load i32, i32* %25, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  %272 = load i32, i32* %28, align 4
  %273 = load i8, i8* %30, align 1
  %274 = call i32 @TileXnormYflip(i8* %271, i32 %272, i8 zeroext %273)
  store i32 %274, i32* %29, align 4
  br label %283

275:                                              ; preds = %240
  %276 = load i8*, i8** %18, align 8
  %277 = load i32, i32* %25, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %276, i64 %278
  %280 = load i32, i32* %28, align 4
  %281 = load i8, i8* %30, align 1
  %282 = call i32 @TileXflipYflip(i8* %279, i32 %280, i8 zeroext %281)
  store i32 %282, i32* %29, align 4
  br label %283

283:                                              ; preds = %240, %275, %267, %259, %251
  %284 = load i32, i32* %29, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %283
  %287 = load i32, i32* %27, align 4
  store i32 %287, i32* %19, align 4
  br label %288

288:                                              ; preds = %286, %283
  br label %289

289:                                              ; preds = %288, %230, %225
  %290 = load i32, i32* %25, align 4
  %291 = add nsw i32 %290, 8
  store i32 %291, i32* %25, align 4
  %292 = load i32, i32* %24, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %24, align 4
  %294 = load i32, i32* %23, align 4
  %295 = add nsw i32 %294, -1
  store i32 %295, i32* %23, align 4
  br label %209

296:                                              ; preds = %209
  %297 = load i32, i32* @LINE_WIDTH, align 4
  %298 = mul nsw i32 %297, 8
  %299 = load i8*, i8** %18, align 8
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i8, i8* %299, i64 %300
  store i8* %301, i8** %18, align 8
  br label %302

302:                                              ; preds = %296
  %303 = load i32, i32* %22, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %22, align 4
  br label %153

305:                                              ; preds = %153
  %306 = load i32*, i32** %6, align 8
  store i32 0, i32* %306, align 4
  ret void
}

declare dso_local i32 @TileXnormYnorm(i8*, i32, i8 zeroext) #1

declare dso_local i32 @TileXflipYnorm(i8*, i32, i8 zeroext) #1

declare dso_local i32 @TileXnormYflip(i8*, i32, i8 zeroext) #1

declare dso_local i32 @TileXflipYflip(i8*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
