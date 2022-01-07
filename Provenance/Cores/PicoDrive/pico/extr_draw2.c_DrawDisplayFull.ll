; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw2.c_DrawDisplayFull.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw2.c_DrawDisplayFull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.PicoVideo }
%struct.PicoVideo = type { i32* }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@START_ROW = common dso_local global i32 0, align 4
@END_ROW = common dso_local global i32 0, align 4
@HighCache2B = common dso_local global i64* null, align 8
@HighCache2A = common dso_local global i64* null, align 8
@PicoDrawMask = common dso_local global i32 0, align 4
@PDRAW_LAYERB_ON = common dso_local global i32 0, align 4
@PDRAW_LAYERA_ON = common dso_local global i32 0, align 4
@PDRAW_SPRITES_LOW_ON = common dso_local global i32 0, align 4
@PDRAW_SPRITES_HI_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @DrawDisplayFull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawDisplayFull() #0 {
  %1 = alloca %struct.PicoVideo*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.PicoVideo* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), %struct.PicoVideo** %1, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %11 = load i32, i32* @START_ROW, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @END_ROW, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @START_ROW, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @END_ROW, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.PicoVideo*, %struct.PicoVideo** %1, align 8
  %16 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 12
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  store i32 328, i32* %9, align 4
  store i32 40, i32* %10, align 4
  br label %24

23:                                               ; preds = %0
  store i32 264, i32* %9, align 4
  store i32 32, i32* %10, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load %struct.PicoVideo*, %struct.PicoVideo** %1, align 8
  %26 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 18
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  %32 = load i32, i32* %2, align 4
  %33 = and i32 %32, 31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp eq i32 %34, 128
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 4, i32* %4, align 4
  br label %67

37:                                               ; preds = %31
  %38 = load i32, i32* %2, align 4
  %39 = icmp slt i32 %38, 128
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @START_ROW, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %53

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @END_ROW, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 4, i32* %4, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %3, align 4
  store i32 %51, i32* %8, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %49
  br label %53

53:                                               ; preds = %52, %44
  br label %66

54:                                               ; preds = %37
  %55 = load i32, i32* %2, align 4
  %56 = icmp sgt i32 %55, 128
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @END_ROW, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %3, align 4
  store i32 %63, i32* %7, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %61
  br label %65

65:                                               ; preds = %64, %54
  br label %66

66:                                               ; preds = %65, %53
  br label %67

67:                                               ; preds = %66, %36
  br label %68

68:                                               ; preds = %67, %24
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 4
  br i1 %70, label %71, label %135

71:                                               ; preds = %68
  %72 = load %struct.PicoVideo*, %struct.PicoVideo** %1, align 8
  %73 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 17
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %2, align 4
  %77 = load i32, i32* %2, align 4
  %78 = and i32 %77, 31
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %2, align 4
  %80 = and i32 %79, 128
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %71
  %83 = load i32, i32* %3, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  store i32 4, i32* %4, align 4
  br label %107

86:                                               ; preds = %82
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %10, align 4
  %89 = ashr i32 %88, 1
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = load i32, i32* %4, align 4
  %93 = or i32 %92, 2
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %3, align 4
  %95 = shl i32 %94, 17
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %3, align 4
  %99 = shl i32 %98, 17
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %10, align 4
  %103 = shl i32 %102, 16
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %91, %86
  br label %107

107:                                              ; preds = %106, %85
  br label %134

108:                                              ; preds = %71
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* %10, align 4
  %111 = ashr i32 %110, 1
  %112 = icmp sge i32 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 4, i32* %4, align 4
  br label %133

114:                                              ; preds = %108
  %115 = load i32, i32* %3, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %114
  %118 = load i32, i32* %4, align 4
  %119 = or i32 %118, 2
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %3, align 4
  %121 = shl i32 %120, 17
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %3, align 4
  %125 = shl i32 %124, 17
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %10, align 4
  %129 = shl i32 %128, 16
  %130 = load i32, i32* %6, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %117, %114
  br label %133

133:                                              ; preds = %132, %113
  br label %134

134:                                              ; preds = %133, %107
  br label %135

135:                                              ; preds = %134, %68
  %136 = load i32, i32* %4, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %147

138:                                              ; preds = %135
  %139 = load i32, i32* %10, align 4
  %140 = shl i32 %139, 16
  %141 = load i32, i32* %8, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %10, align 4
  %144 = shl i32 %143, 16
  %145 = load i32, i32* %6, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %138, %135
  %148 = load i64*, i64** @HighCache2B, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  store i64 0, i64* %149, align 8
  %150 = load i64*, i64** @HighCache2A, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 1
  store i64 0, i64* %151, align 8
  %152 = load i32, i32* @PicoDrawMask, align 4
  %153 = load i32, i32* @PDRAW_LAYERB_ON, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %147
  %157 = load i64*, i64** @HighCache2B, align 8
  %158 = load i32, i32* @START_ROW, align 4
  %159 = load i32, i32* %10, align 4
  %160 = shl i32 %159, 16
  %161 = load i32, i32* @END_ROW, align 4
  %162 = or i32 %160, %161
  %163 = call i32 @DrawLayerFull(i32 1, i64* %157, i32 %158, i32 %162)
  br label %164

164:                                              ; preds = %156, %147
  %165 = load i32, i32* @PicoDrawMask, align 4
  %166 = load i32, i32* @PDRAW_LAYERA_ON, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %217

169:                                              ; preds = %164
  %170 = load i32, i32* %4, align 4
  switch i32 %170, label %208 [
    i32 4, label %171
    i32 3, label %178
    i32 2, label %200
    i32 1, label %200
  ]

171:                                              ; preds = %169
  %172 = load i32, i32* @START_ROW, align 4
  %173 = load i32, i32* %10, align 4
  %174 = shl i32 %173, 16
  %175 = load i32, i32* @END_ROW, align 4
  %176 = or i32 %174, %175
  %177 = call i32 @DrawWindowFull(i32 %172, i32 %176, i32 0)
  br label %216

178:                                              ; preds = %169
  %179 = load i64*, i64** @HighCache2A, align 8
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @DrawLayerFull(i32 0, i64* %179, i32 %180, i32 %181)
  %183 = load i32, i32* %7, align 4
  %184 = and i32 %183, -16711681
  %185 = load i32, i32* %8, align 4
  %186 = and i32 %185, -16711681
  %187 = load i32, i32* %10, align 4
  %188 = shl i32 %187, 16
  %189 = or i32 %186, %188
  %190 = call i32 @DrawWindowFull(i32 %184, i32 %189, i32 0)
  %191 = load i32, i32* %7, align 4
  %192 = and i32 %191, -256
  %193 = load i32, i32* @START_ROW, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* %8, align 4
  %196 = and i32 %195, -256
  %197 = load i32, i32* @END_ROW, align 4
  %198 = or i32 %196, %197
  %199 = call i32 @DrawWindowFull(i32 %194, i32 %198, i32 0)
  br label %216

200:                                              ; preds = %169, %169
  %201 = load i64*, i64** @HighCache2A, align 8
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* %6, align 4
  %204 = call i32 @DrawLayerFull(i32 0, i64* %201, i32 %202, i32 %203)
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @DrawWindowFull(i32 %205, i32 %206, i32 0)
  br label %216

208:                                              ; preds = %169
  %209 = load i64*, i64** @HighCache2A, align 8
  %210 = load i32, i32* @START_ROW, align 4
  %211 = load i32, i32* %10, align 4
  %212 = shl i32 %211, 16
  %213 = load i32, i32* @END_ROW, align 4
  %214 = or i32 %212, %213
  %215 = call i32 @DrawLayerFull(i32 0, i64* %209, i32 %210, i32 %214)
  br label %216

216:                                              ; preds = %208, %200, %178, %171
  br label %217

217:                                              ; preds = %216, %164
  %218 = load i32, i32* @PicoDrawMask, align 4
  %219 = load i32, i32* @PDRAW_SPRITES_LOW_ON, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load i32, i32* %9, align 4
  %224 = call i32 @DrawAllSpritesFull(i32 0, i32 %223)
  br label %225

225:                                              ; preds = %222, %217
  %226 = load i64*, i64** @HighCache2B, align 8
  %227 = getelementptr inbounds i64, i64* %226, i64 1
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = load i64*, i64** @HighCache2B, align 8
  %232 = call i32 @DrawTilesFromCacheF(i64* %231)
  br label %233

233:                                              ; preds = %230, %225
  %234 = load i64*, i64** @HighCache2A, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 1
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  %239 = load i64*, i64** @HighCache2A, align 8
  %240 = call i32 @DrawTilesFromCacheF(i64* %239)
  br label %241

241:                                              ; preds = %238, %233
  %242 = load i32, i32* @PicoDrawMask, align 4
  %243 = load i32, i32* @PDRAW_LAYERA_ON, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %278

246:                                              ; preds = %241
  %247 = load i32, i32* %4, align 4
  switch i32 %247, label %277 [
    i32 4, label %248
    i32 3, label %255
    i32 2, label %273
    i32 1, label %273
  ]

248:                                              ; preds = %246
  %249 = load i32, i32* @START_ROW, align 4
  %250 = load i32, i32* %10, align 4
  %251 = shl i32 %250, 16
  %252 = load i32, i32* @END_ROW, align 4
  %253 = or i32 %251, %252
  %254 = call i32 @DrawWindowFull(i32 %249, i32 %253, i32 1)
  br label %277

255:                                              ; preds = %246
  %256 = load i32, i32* %7, align 4
  %257 = and i32 %256, -16711681
  %258 = load i32, i32* %8, align 4
  %259 = and i32 %258, -16711681
  %260 = load i32, i32* %10, align 4
  %261 = shl i32 %260, 16
  %262 = or i32 %259, %261
  %263 = call i32 @DrawWindowFull(i32 %257, i32 %262, i32 1)
  %264 = load i32, i32* %7, align 4
  %265 = and i32 %264, -256
  %266 = load i32, i32* @START_ROW, align 4
  %267 = or i32 %265, %266
  %268 = load i32, i32* %8, align 4
  %269 = and i32 %268, -256
  %270 = load i32, i32* @END_ROW, align 4
  %271 = or i32 %269, %270
  %272 = call i32 @DrawWindowFull(i32 %267, i32 %271, i32 1)
  br label %277

273:                                              ; preds = %246, %246
  %274 = load i32, i32* %7, align 4
  %275 = load i32, i32* %8, align 4
  %276 = call i32 @DrawWindowFull(i32 %274, i32 %275, i32 1)
  br label %277

277:                                              ; preds = %246, %273, %255, %248
  br label %278

278:                                              ; preds = %277, %241
  %279 = load i32, i32* @PicoDrawMask, align 4
  %280 = load i32, i32* @PDRAW_SPRITES_HI_ON, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %278
  %284 = load i32, i32* %9, align 4
  %285 = call i32 @DrawAllSpritesFull(i32 1, i32 %284)
  br label %286

286:                                              ; preds = %283, %278
  ret void
}

declare dso_local i32 @DrawLayerFull(i32, i64*, i32, i32) #1

declare dso_local i32 @DrawWindowFull(i32, i32, i32) #1

declare dso_local i32 @DrawAllSpritesFull(i32, i32) #1

declare dso_local i32 @DrawTilesFromCacheF(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
