; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_getpixel.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_getpixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@characterWidth = common dso_local global i32 0, align 4
@characterHeight = common dso_local global i32 0, align 4
@currentPixel = common dso_local global i32 0, align 4
@currentPixelIsVisible = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_3__*, i32*)* @getpixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getpixel(i32 %0, i32 %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 7
  store i32 %23, i32* %18, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 3
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = shl i32 %31, 3
  store i32 %32, i32* %11, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 64
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 128
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  store i32 %45, i32* %15, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 48
  %50 = ashr i32 %49, 4
  store i32 %50, i32* %19, align 4
  %51 = load i32, i32* %18, align 4
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %59, label %53

53:                                               ; preds = %4
  %54 = load i32, i32* %18, align 4
  %55 = icmp eq i32 %54, 5
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %18, align 4
  %58 = icmp eq i32 %57, 6
  br i1 %58, label %59, label %63

59:                                               ; preds = %56, %53, %4
  store i32 0, i32* %17, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i32, i32* %19, align 4
  switch i32 %64, label %84 [
    i32 1, label %65
    i32 2, label %70
    i32 3, label %75
  ]

65:                                               ; preds = %63
  %66 = load i32, i32* @characterWidth, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sub nsw i32 %66, %67
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %84

70:                                               ; preds = %63
  %71 = load i32, i32* @characterHeight, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %71, %72
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %84

75:                                               ; preds = %63
  %76 = load i32, i32* @characterHeight, align 4
  %77 = load i32, i32* %6, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* @characterWidth, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %63, %75, %70, %65
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 3
  %89 = and i32 %88, 7
  switch i32 %89, label %279 [
    i32 0, label %90
    i32 1, label %122
    i32 2, label %157
    i32 3, label %188
    i32 4, label %219
    i32 5, label %250
  ]

90:                                               ; preds = %84
  store i32 15, i32* %14, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @characterWidth, align 4
  %94 = ashr i32 %93, 1
  %95 = mul nsw i32 %92, %94
  %96 = add nsw i32 %91, %95
  %97 = load i32, i32* %7, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @Vdp1ReadPattern16(i32 %96, i32 %97, i32* %98)
  store i32 %99, i32* @currentPixel, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %90
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32, i32* @currentPixel, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 1, i32* %5, align 4
  br label %285

110:                                              ; preds = %105, %102, %90
  %111 = load i32, i32* @currentPixel, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113, %110
  %117 = load i32, i32* %12, align 4
  %118 = and i32 %117, 65520
  %119 = load i32, i32* @currentPixel, align 4
  %120 = or i32 %118, %119
  store i32 %120, i32* @currentPixel, align 4
  br label %121

121:                                              ; preds = %116, %113
  store i32 15, i32* @currentPixelIsVisible, align 4
  br label %279

122:                                              ; preds = %84
  store i32 15, i32* %14, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @characterWidth, align 4
  %126 = ashr i32 %125, 1
  %127 = mul nsw i32 %124, %126
  %128 = add nsw i32 %123, %127
  %129 = load i32, i32* %7, align 4
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @Vdp1ReadPattern16(i32 %128, i32 %129, i32* %130)
  store i32 %131, i32* @currentPixel, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %122
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load i32, i32* @currentPixel, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  store i32 1, i32* %5, align 4
  br label %285

142:                                              ; preds = %137, %134, %122
  %143 = load i32, i32* @currentPixel, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %145, %142
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* @currentPixel, align 4
  %151 = mul nsw i32 %150, 2
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %151, %152
  %154 = and i32 %153, 524287
  %155 = call i32 @T1ReadWord(i32* %149, i32 %154)
  store i32 %155, i32* @currentPixel, align 4
  br label %156

156:                                              ; preds = %148, %145
  store i32 65535, i32* @currentPixelIsVisible, align 4
  br label %279

157:                                              ; preds = %84
  store i32 63, i32* %14, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @characterWidth, align 4
  %161 = mul nsw i32 %159, %160
  %162 = add nsw i32 %158, %161
  %163 = load i32, i32* %7, align 4
  %164 = load i32*, i32** %9, align 8
  %165 = call i32 @Vdp1ReadPattern64(i32 %162, i32 %163, i32* %164)
  store i32 %165, i32* @currentPixel, align 4
  %166 = load i32, i32* %17, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %157
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load i32, i32* @currentPixel, align 4
  %173 = load i32, i32* %14, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store i32 0, i32* @currentPixel, align 4
  br label %176

176:                                              ; preds = %175, %171, %168, %157
  %177 = load i32, i32* @currentPixel, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %179, %176
  %183 = load i32, i32* %12, align 4
  %184 = and i32 %183, 65472
  %185 = load i32, i32* @currentPixel, align 4
  %186 = or i32 %184, %185
  store i32 %186, i32* @currentPixel, align 4
  br label %187

187:                                              ; preds = %182, %179
  store i32 63, i32* @currentPixelIsVisible, align 4
  br label %279

188:                                              ; preds = %84
  store i32 255, i32* %14, align 4
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @characterWidth, align 4
  %192 = mul nsw i32 %190, %191
  %193 = add nsw i32 %189, %192
  %194 = load i32, i32* %7, align 4
  %195 = load i32*, i32** %9, align 8
  %196 = call i32 @Vdp1ReadPattern128(i32 %193, i32 %194, i32* %195)
  store i32 %196, i32* @currentPixel, align 4
  %197 = load i32, i32* %17, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %188
  %200 = load i32, i32* %15, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = load i32, i32* @currentPixel, align 4
  %204 = load i32, i32* %14, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  store i32 1, i32* %5, align 4
  br label %285

207:                                              ; preds = %202, %199, %188
  %208 = load i32, i32* @currentPixel, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i32, i32* %13, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %210, %207
  %214 = load i32, i32* %12, align 4
  %215 = and i32 %214, 65408
  %216 = load i32, i32* @currentPixel, align 4
  %217 = or i32 %215, %216
  store i32 %217, i32* @currentPixel, align 4
  br label %218

218:                                              ; preds = %213, %210
  store i32 127, i32* @currentPixelIsVisible, align 4
  br label %279

219:                                              ; preds = %84
  store i32 255, i32* %14, align 4
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* @characterWidth, align 4
  %223 = mul nsw i32 %221, %222
  %224 = add nsw i32 %220, %223
  %225 = load i32, i32* %7, align 4
  %226 = load i32*, i32** %9, align 8
  %227 = call i32 @Vdp1ReadPattern256(i32 %224, i32 %225, i32* %226)
  store i32 %227, i32* @currentPixel, align 4
  %228 = load i32, i32* %17, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %219
  %231 = load i32, i32* %15, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  %234 = load i32, i32* @currentPixel, align 4
  %235 = load i32, i32* %14, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  store i32 1, i32* %5, align 4
  br label %285

238:                                              ; preds = %233, %230, %219
  store i32 255, i32* @currentPixelIsVisible, align 4
  %239 = load i32, i32* @currentPixel, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load i32, i32* %13, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %241, %238
  %245 = load i32, i32* %12, align 4
  %246 = and i32 %245, 65280
  %247 = load i32, i32* @currentPixel, align 4
  %248 = or i32 %246, %247
  store i32 %248, i32* @currentPixel, align 4
  br label %249

249:                                              ; preds = %244, %241
  br label %279

250:                                              ; preds = %84
  store i32 32767, i32* %14, align 4
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* %6, align 4
  %253 = load i32, i32* @characterWidth, align 4
  %254 = mul nsw i32 %252, %253
  %255 = mul nsw i32 %254, 2
  %256 = add nsw i32 %251, %255
  %257 = load i32, i32* %7, align 4
  %258 = load i32*, i32** %9, align 8
  %259 = call i32 @Vdp1ReadPattern64k(i32 %256, i32 %257, i32* %258)
  store i32 %259, i32* @currentPixel, align 4
  %260 = load i32, i32* %17, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %250
  %263 = load i32, i32* %15, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %262
  %266 = load i32, i32* @currentPixel, align 4
  %267 = load i32, i32* %14, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  store i32 1, i32* %5, align 4
  br label %285

270:                                              ; preds = %265, %262, %250
  %271 = load i32, i32* @currentPixel, align 4
  %272 = and i32 %271, 32768
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = load i32, i32* %13, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %274
  store i32 0, i32* @currentPixel, align 4
  br label %278

278:                                              ; preds = %277, %274, %270
  store i32 65535, i32* @currentPixelIsVisible, align 4
  br label %279

279:                                              ; preds = %84, %278, %249, %218, %187, %156, %121
  %280 = load i32, i32* %17, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %279
  %283 = load i32, i32* %16, align 4
  store i32 %283, i32* @currentPixel, align 4
  br label %284

284:                                              ; preds = %282, %279
  store i32 0, i32* %5, align 4
  br label %285

285:                                              ; preds = %284, %269, %237, %206, %141, %109
  %286 = load i32, i32* %5, align 4
  ret i32 %286
}

declare dso_local i32 @Vdp1ReadPattern16(i32, i32, i32*) #1

declare dso_local i32 @T1ReadWord(i32*, i32) #1

declare dso_local i32 @Vdp1ReadPattern64(i32, i32, i32*) #1

declare dso_local i32 @Vdp1ReadPattern128(i32, i32, i32*) #1

declare dso_local i32 @Vdp1ReadPattern256(i32, i32, i32*) #1

declare dso_local i32 @Vdp1ReadPattern64k(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
