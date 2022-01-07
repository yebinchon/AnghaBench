; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_test_modes.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_test_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i8* }

@ledpackets = common dso_local global %struct.TYPE_4__* null, align 8
@PANEL_NW = common dso_local global i64 0, align 8
@panelLEDmap = common dso_local global i32* null, align 8
@test_intensities = common dso_local global i32* null, align 8
@usarts = common dso_local global i32* null, align 8
@PKT_TYPE_8BIT_CAL = common dso_local global i8* null, align 8
@PKT_TYPE_8BIT_RAW = common dso_local global i8* null, align 8
@PKT_TYPE_GSVALS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_modes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %0, %775
  %9 = call i32 (...) @BUTTONS_Read_All()
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = ashr i32 %10, 4
  %12 = and i32 %11, 15
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %1, align 4
  %14 = and i32 %13, 15
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  switch i32 %15, label %774 [
    i32 0, label %16
    i32 1, label %16
    i32 2, label %100
    i32 3, label %185
    i32 4, label %270
    i32 5, label %329
    i32 6, label %428
    i32 7, label %514
    i32 8, label %625
    i32 9, label %632
    i32 10, label %686
  ]

16:                                               ; preds = %8, %8
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i32, i32* %1, align 4
  %19 = icmp slt i32 %18, 147
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %22 = load i64, i64* @PANEL_NW, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** @panelLEDmap, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pack12bit(i32 %26, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %17

36:                                               ; preds = %17
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %59, %36
  %38 = load i32, i32* %1, align 4
  %39 = icmp slt i32 %38, 49
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %42 = load i64, i64* @PANEL_NW, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** @panelLEDmap, align 8
  %48 = load i32, i32* %1, align 4
  %49 = mul nsw i32 %48, 3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** @test_intensities, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pack12bit(i32 %46, i32 %52, i32 %57)
  br label %59

59:                                               ; preds = %40
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %1, align 4
  br label %37

62:                                               ; preds = %37
  %63 = load i32*, i32** @usarts, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %66 = load i64, i64* @PANEL_NW, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @UART_SendBytes(i32* %64, i32 %69, i32 4)
  %71 = load i32*, i32** @usarts, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %74 = load i64, i64* @PANEL_NW, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @UART_SendBytes(i32* %72, i32 %77, i32 4)
  %79 = load i32*, i32** @usarts, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %82 = load i64, i64* @PANEL_NW, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @UART_SendBytes(i32* %80, i32 %85, i32 4)
  %87 = load i32*, i32** @usarts, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %90 = load i64, i64* @PANEL_NW, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @UART_SendBytes(i32* %88, i32 %93, i32 4)
  %95 = call i32 @Delay(i32 2000)
  %96 = load i32, i32* %2, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %62
  br label %775

99:                                               ; preds = %62
  br label %100

100:                                              ; preds = %8, %99
  store i32 0, i32* %1, align 4
  br label %101

101:                                              ; preds = %117, %100
  %102 = load i32, i32* %1, align 4
  %103 = icmp slt i32 %102, 147
  br i1 %103, label %104, label %120

104:                                              ; preds = %101
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %106 = load i64, i64* @PANEL_NW, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32*, i32** @panelLEDmap, align 8
  %112 = load i32, i32* %1, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @pack12bit(i32 %110, i32 %115, i32 0)
  br label %117

117:                                              ; preds = %104
  %118 = load i32, i32* %1, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %1, align 4
  br label %101

120:                                              ; preds = %101
  store i32 0, i32* %1, align 4
  br label %121

121:                                              ; preds = %144, %120
  %122 = load i32, i32* %1, align 4
  %123 = icmp slt i32 %122, 49
  br i1 %123, label %124, label %147

124:                                              ; preds = %121
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %126 = load i64, i64* @PANEL_NW, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32*, i32** @panelLEDmap, align 8
  %132 = load i32, i32* %1, align 4
  %133 = mul nsw i32 %132, 3
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** @test_intensities, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @pack12bit(i32 %130, i32 %137, i32 %142)
  br label %144

144:                                              ; preds = %124
  %145 = load i32, i32* %1, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %1, align 4
  br label %121

147:                                              ; preds = %121
  %148 = load i32*, i32** @usarts, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 3
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %151 = load i64, i64* @PANEL_NW, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @UART_SendBytes(i32* %149, i32 %154, i32 4)
  %156 = load i32*, i32** @usarts, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %159 = load i64, i64* @PANEL_NW, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @UART_SendBytes(i32* %157, i32 %162, i32 4)
  %164 = load i32*, i32** @usarts, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %167 = load i64, i64* @PANEL_NW, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @UART_SendBytes(i32* %165, i32 %170, i32 4)
  %172 = load i32*, i32** @usarts, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %175 = load i64, i64* @PANEL_NW, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @UART_SendBytes(i32* %173, i32 %178, i32 4)
  %180 = call i32 @Delay(i32 2000)
  %181 = load i32, i32* %2, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %147
  br label %775

184:                                              ; preds = %147
  br label %185

185:                                              ; preds = %8, %184
  store i32 0, i32* %1, align 4
  br label %186

186:                                              ; preds = %202, %185
  %187 = load i32, i32* %1, align 4
  %188 = icmp slt i32 %187, 147
  br i1 %188, label %189, label %205

189:                                              ; preds = %186
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %191 = load i64, i64* @PANEL_NW, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32*, i32** @panelLEDmap, align 8
  %197 = load i32, i32* %1, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @pack12bit(i32 %195, i32 %200, i32 0)
  br label %202

202:                                              ; preds = %189
  %203 = load i32, i32* %1, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %1, align 4
  br label %186

205:                                              ; preds = %186
  store i32 0, i32* %1, align 4
  br label %206

206:                                              ; preds = %229, %205
  %207 = load i32, i32* %1, align 4
  %208 = icmp slt i32 %207, 49
  br i1 %208, label %209, label %232

209:                                              ; preds = %206
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %211 = load i64, i64* @PANEL_NW, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32*, i32** @panelLEDmap, align 8
  %217 = load i32, i32* %1, align 4
  %218 = mul nsw i32 %217, 3
  %219 = add nsw i32 %218, 2
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %216, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** @test_intensities, align 8
  %224 = load i32, i32* %3, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @pack12bit(i32 %215, i32 %222, i32 %227)
  br label %229

229:                                              ; preds = %209
  %230 = load i32, i32* %1, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %1, align 4
  br label %206

232:                                              ; preds = %206
  %233 = load i32*, i32** @usarts, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 3
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %236 = load i64, i64* @PANEL_NW, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @UART_SendBytes(i32* %234, i32 %239, i32 4)
  %241 = load i32*, i32** @usarts, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %244 = load i64, i64* @PANEL_NW, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @UART_SendBytes(i32* %242, i32 %247, i32 4)
  %249 = load i32*, i32** @usarts, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 1
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %252 = load i64, i64* @PANEL_NW, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @UART_SendBytes(i32* %250, i32 %255, i32 4)
  %257 = load i32*, i32** @usarts, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %260 = load i64, i64* @PANEL_NW, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @UART_SendBytes(i32* %258, i32 %263, i32 4)
  %265 = call i32 @Delay(i32 2000)
  %266 = load i32, i32* %2, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %232
  br label %775

269:                                              ; preds = %232
  br label %270

270:                                              ; preds = %8, %269
  store i32 0, i32* %1, align 4
  br label %271

271:                                              ; preds = %292, %270
  %272 = load i32, i32* %1, align 4
  %273 = icmp slt i32 %272, 147
  br i1 %273, label %274, label %295

274:                                              ; preds = %271
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %276 = load i64, i64* @PANEL_NW, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32*, i32** @panelLEDmap, align 8
  %282 = load i32, i32* %1, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i32*, i32** @test_intensities, align 8
  %287 = load i32, i32* %3, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @pack12bit(i32 %280, i32 %285, i32 %290)
  br label %292

292:                                              ; preds = %274
  %293 = load i32, i32* %1, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %1, align 4
  br label %271

295:                                              ; preds = %271
  %296 = load i32*, i32** @usarts, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 3
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %299 = load i64, i64* @PANEL_NW, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @UART_SendBytes(i32* %297, i32 %302, i32 4)
  %304 = load i32*, i32** @usarts, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 2
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %307 = load i64, i64* @PANEL_NW, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @UART_SendBytes(i32* %305, i32 %310, i32 4)
  %312 = load i32*, i32** @usarts, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 1
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %315 = load i64, i64* @PANEL_NW, align 8
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @UART_SendBytes(i32* %313, i32 %318, i32 4)
  %320 = load i32*, i32** @usarts, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 0
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %323 = load i64, i64* @PANEL_NW, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @UART_SendBytes(i32* %321, i32 %326, i32 4)
  %328 = call i32 @Delay(i32 2000)
  br label %775

329:                                              ; preds = %8
  store i32 0, i32* %1, align 4
  br label %330

330:                                              ; preds = %346, %329
  %331 = load i32, i32* %1, align 4
  %332 = icmp slt i32 %331, 196
  br i1 %332, label %333, label %349

333:                                              ; preds = %330
  %334 = load i32, i32* %1, align 4
  %335 = mul nsw i32 %334, 3
  %336 = load i32, i32* %1, align 4
  %337 = call i32 @globalSet8bit(i32 %335, i32 %336)
  %338 = load i32, i32* %1, align 4
  %339 = mul nsw i32 %338, 3
  %340 = add nsw i32 %339, 1
  %341 = call i32 @globalSet8bit(i32 %340, i32 0)
  %342 = load i32, i32* %1, align 4
  %343 = mul nsw i32 %342, 3
  %344 = add nsw i32 %343, 2
  %345 = call i32 @globalSet8bit(i32 %344, i32 0)
  br label %346

346:                                              ; preds = %333
  %347 = load i32, i32* %1, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %1, align 4
  br label %330

349:                                              ; preds = %330
  %350 = load i8*, i8** @PKT_TYPE_8BIT_CAL, align 8
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %352 = load i64, i64* @PANEL_NW, align 8
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 1
  store i8* %350, i8** %355, align 8
  %356 = load i32*, i32** @usarts, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 3
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %359 = load i64, i64* @PANEL_NW, align 8
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @UART_SendBytes(i32* %357, i32 %362, i32 4)
  %364 = load i32*, i32** @usarts, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 2
  %366 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %367 = load i64, i64* @PANEL_NW, align 8
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @UART_SendBytes(i32* %365, i32 %370, i32 4)
  %372 = load i32*, i32** @usarts, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 1
  %374 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %375 = load i64, i64* @PANEL_NW, align 8
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @UART_SendBytes(i32* %373, i32 %378, i32 4)
  %380 = load i32*, i32** @usarts, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 0
  %382 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %383 = load i64, i64* @PANEL_NW, align 8
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @UART_SendBytes(i32* %381, i32 %386, i32 4)
  %388 = call i32 @Delay(i32 1000)
  %389 = load i8*, i8** @PKT_TYPE_8BIT_RAW, align 8
  %390 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %391 = load i64, i64* @PANEL_NW, align 8
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %393, i32 0, i32 1
  store i8* %389, i8** %394, align 8
  %395 = load i32*, i32** @usarts, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 3
  %397 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %398 = load i64, i64* @PANEL_NW, align 8
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @UART_SendBytes(i32* %396, i32 %401, i32 4)
  %403 = load i32*, i32** @usarts, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 2
  %405 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %406 = load i64, i64* @PANEL_NW, align 8
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = call i32 @UART_SendBytes(i32* %404, i32 %409, i32 4)
  %411 = load i32*, i32** @usarts, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 1
  %413 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %414 = load i64, i64* @PANEL_NW, align 8
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %413, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = call i32 @UART_SendBytes(i32* %412, i32 %417, i32 4)
  %419 = load i32*, i32** @usarts, align 8
  %420 = getelementptr inbounds i32, i32* %419, i64 0
  %421 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %422 = load i64, i64* @PANEL_NW, align 8
  %423 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %421, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = call i32 @UART_SendBytes(i32* %420, i32 %425, i32 4)
  %427 = call i32 @Delay(i32 1000)
  br label %775

428:                                              ; preds = %8
  %429 = load i8*, i8** @PKT_TYPE_GSVALS, align 8
  %430 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %431 = load i64, i64* @PANEL_NW, align 8
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %430, i64 %431
  %433 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %432, i32 0, i32 1
  %434 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %433, i32 0, i32 1
  store i8* %429, i8** %434, align 8
  store i32 0, i32* %1, align 4
  br label %435

435:                                              ; preds = %510, %428
  %436 = load i32, i32* %1, align 4
  %437 = icmp slt i32 %436, 148
  br i1 %437, label %438, label %513

438:                                              ; preds = %435
  %439 = load i32, i32* %1, align 4
  %440 = icmp slt i32 %439, 147
  br i1 %440, label %441, label %459

441:                                              ; preds = %438
  %442 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %443 = load i64, i64* @PANEL_NW, align 8
  %444 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %442, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %444, i32 0, i32 1
  %446 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = load i32*, i32** @panelLEDmap, align 8
  %449 = load i32, i32* %1, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = load i32*, i32** @test_intensities, align 8
  %454 = load i32, i32* %3, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %453, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = call i32 @pack12bit(i32 %447, i32 %452, i32 %457)
  br label %459

459:                                              ; preds = %441, %438
  %460 = load i32, i32* %1, align 4
  %461 = icmp sgt i32 %460, 0
  br i1 %461, label %462, label %476

462:                                              ; preds = %459
  %463 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %464 = load i64, i64* @PANEL_NW, align 8
  %465 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %463, i64 %464
  %466 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %465, i32 0, i32 1
  %467 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = load i32*, i32** @panelLEDmap, align 8
  %470 = load i32, i32* %1, align 4
  %471 = sub nsw i32 %470, 1
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %469, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = call i32 @pack12bit(i32 %468, i32 %474, i32 0)
  br label %476

476:                                              ; preds = %462, %459
  %477 = load i32*, i32** @usarts, align 8
  %478 = getelementptr inbounds i32, i32* %477, i64 3
  %479 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %480 = load i64, i64* @PANEL_NW, align 8
  %481 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %479, i64 %480
  %482 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = call i32 @UART_SendBytes(i32* %478, i32 %483, i32 4)
  %485 = load i32*, i32** @usarts, align 8
  %486 = getelementptr inbounds i32, i32* %485, i64 2
  %487 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %488 = load i64, i64* @PANEL_NW, align 8
  %489 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %487, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = call i32 @UART_SendBytes(i32* %486, i32 %491, i32 4)
  %493 = load i32*, i32** @usarts, align 8
  %494 = getelementptr inbounds i32, i32* %493, i64 1
  %495 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %496 = load i64, i64* @PANEL_NW, align 8
  %497 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %495, i64 %496
  %498 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = call i32 @UART_SendBytes(i32* %494, i32 %499, i32 4)
  %501 = load i32*, i32** @usarts, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 0
  %503 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %504 = load i64, i64* @PANEL_NW, align 8
  %505 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %503, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = call i32 @UART_SendBytes(i32* %502, i32 %507, i32 4)
  %509 = call i32 @Delay(i32 10)
  br label %510

510:                                              ; preds = %476
  %511 = load i32, i32* %1, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %1, align 4
  br label %435

513:                                              ; preds = %435
  br label %775

514:                                              ; preds = %8
  %515 = load i32*, i32** @test_intensities, align 8
  %516 = load i32, i32* %3, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i32, i32* %515, i64 %517
  %519 = load i32, i32* %518, align 4
  store i32 %519, i32* %7, align 4
  %520 = load i32*, i32** @test_intensities, align 8
  %521 = load i32, i32* %3, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i32, i32* %520, i64 %522
  %524 = load i32, i32* %523, align 4
  %525 = sdiv i32 %524, 5
  store i32 %525, i32* %6, align 4
  %526 = load i32, i32* %6, align 4
  store i32 %526, i32* %5, align 4
  br label %527

527:                                              ; preds = %570, %514
  %528 = load i32, i32* %5, align 4
  %529 = load i32, i32* %7, align 4
  %530 = icmp slt i32 %528, %529
  br i1 %530, label %531, label %574

531:                                              ; preds = %527
  store i32 0, i32* %1, align 4
  br label %532

532:                                              ; preds = %539, %531
  %533 = load i32, i32* %1, align 4
  %534 = icmp slt i32 %533, 576
  br i1 %534, label %535, label %542

535:                                              ; preds = %532
  %536 = load i32, i32* %1, align 4
  %537 = load i32, i32* %5, align 4
  %538 = call i32 @globalSet(i32 %536, i32 %537)
  br label %539

539:                                              ; preds = %535
  %540 = load i32, i32* %1, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %1, align 4
  br label %532

542:                                              ; preds = %532
  store i32 0, i32* %1, align 4
  br label %543

543:                                              ; preds = %564, %542
  %544 = load i32, i32* %1, align 4
  %545 = icmp slt i32 %544, 4
  br i1 %545, label %546, label %567

546:                                              ; preds = %543
  %547 = load i8*, i8** @PKT_TYPE_GSVALS, align 8
  %548 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %549 = load i32, i32* %1, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %548, i64 %550
  %552 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %551, i32 0, i32 1
  %553 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %552, i32 0, i32 1
  store i8* %547, i8** %553, align 8
  %554 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %555 = load i32, i32* %1, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %554, i64 %556
  %558 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %557, i32 0, i32 2
  %559 = load i32, i32* %558, align 8
  %560 = add nsw i32 %559, 1
  %561 = load i32, i32* %5, align 4
  %562 = sdiv i32 %561, 2
  %563 = call i32 @pack12bit(i32 %560, i32 0, i32 %562)
  br label %564

564:                                              ; preds = %546
  %565 = load i32, i32* %1, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %1, align 4
  br label %543

567:                                              ; preds = %543
  %568 = call i32 (...) @sendLEDpackets()
  %569 = call i32 @Delay(i32 10)
  br label %570

570:                                              ; preds = %567
  %571 = load i32, i32* %4, align 4
  %572 = load i32, i32* %5, align 4
  %573 = add nsw i32 %572, %571
  store i32 %573, i32* %5, align 4
  br label %527

574:                                              ; preds = %527
  %575 = call i32 @Delay(i32 1000)
  %576 = load i32, i32* %7, align 4
  store i32 %576, i32* %5, align 4
  br label %577

577:                                              ; preds = %620, %574
  %578 = load i32, i32* %5, align 4
  %579 = load i32, i32* %6, align 4
  %580 = icmp sgt i32 %578, %579
  br i1 %580, label %581, label %624

581:                                              ; preds = %577
  store i32 0, i32* %1, align 4
  br label %582

582:                                              ; preds = %589, %581
  %583 = load i32, i32* %1, align 4
  %584 = icmp slt i32 %583, 576
  br i1 %584, label %585, label %592

585:                                              ; preds = %582
  %586 = load i32, i32* %1, align 4
  %587 = load i32, i32* %5, align 4
  %588 = call i32 @globalSet(i32 %586, i32 %587)
  br label %589

589:                                              ; preds = %585
  %590 = load i32, i32* %1, align 4
  %591 = add nsw i32 %590, 1
  store i32 %591, i32* %1, align 4
  br label %582

592:                                              ; preds = %582
  store i32 0, i32* %1, align 4
  br label %593

593:                                              ; preds = %614, %592
  %594 = load i32, i32* %1, align 4
  %595 = icmp slt i32 %594, 4
  br i1 %595, label %596, label %617

596:                                              ; preds = %593
  %597 = load i8*, i8** @PKT_TYPE_GSVALS, align 8
  %598 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %599 = load i32, i32* %1, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %598, i64 %600
  %602 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %601, i32 0, i32 1
  %603 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %602, i32 0, i32 1
  store i8* %597, i8** %603, align 8
  %604 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %605 = load i32, i32* %1, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %604, i64 %606
  %608 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %607, i32 0, i32 2
  %609 = load i32, i32* %608, align 8
  %610 = add nsw i32 %609, 1
  %611 = load i32, i32* %5, align 4
  %612 = sdiv i32 %611, 2
  %613 = call i32 @pack12bit(i32 %610, i32 0, i32 %612)
  br label %614

614:                                              ; preds = %596
  %615 = load i32, i32* %1, align 4
  %616 = add nsw i32 %615, 1
  store i32 %616, i32* %1, align 4
  br label %593

617:                                              ; preds = %593
  %618 = call i32 (...) @sendLEDpackets()
  %619 = call i32 @Delay(i32 10)
  br label %620

620:                                              ; preds = %617
  %621 = load i32, i32* %4, align 4
  %622 = load i32, i32* %5, align 4
  %623 = sub nsw i32 %622, %621
  store i32 %623, i32* %5, align 4
  br label %577

624:                                              ; preds = %577
  br label %775

625:                                              ; preds = %8
  %626 = load i32*, i32** @test_intensities, align 8
  %627 = load i32, i32* %3, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds i32, i32* %626, i64 %628
  %630 = load i32, i32* %629, align 4
  %631 = call i32 @buttonTest(i32 %630)
  br label %775

632:                                              ; preds = %8
  store i32 0, i32* %1, align 4
  br label %633

633:                                              ; preds = %649, %632
  %634 = load i32, i32* %1, align 4
  %635 = icmp slt i32 %634, 147
  br i1 %635, label %636, label %652

636:                                              ; preds = %633
  %637 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %638 = load i64, i64* @PANEL_NW, align 8
  %639 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %637, i64 %638
  %640 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %639, i32 0, i32 1
  %641 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %640, i32 0, i32 0
  %642 = load i32, i32* %641, align 8
  %643 = load i32*, i32** @panelLEDmap, align 8
  %644 = load i32, i32* %1, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds i32, i32* %643, i64 %645
  %647 = load i32, i32* %646, align 4
  %648 = call i32 @pack12bit(i32 %642, i32 %647, i32 0)
  br label %649

649:                                              ; preds = %636
  %650 = load i32, i32* %1, align 4
  %651 = add nsw i32 %650, 1
  store i32 %651, i32* %1, align 4
  br label %633

652:                                              ; preds = %633
  %653 = load i32*, i32** @usarts, align 8
  %654 = getelementptr inbounds i32, i32* %653, i64 3
  %655 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %656 = load i64, i64* @PANEL_NW, align 8
  %657 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %655, i64 %656
  %658 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 8
  %660 = call i32 @UART_SendBytes(i32* %654, i32 %659, i32 4)
  %661 = load i32*, i32** @usarts, align 8
  %662 = getelementptr inbounds i32, i32* %661, i64 2
  %663 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %664 = load i64, i64* @PANEL_NW, align 8
  %665 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %663, i64 %664
  %666 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %665, i32 0, i32 0
  %667 = load i32, i32* %666, align 8
  %668 = call i32 @UART_SendBytes(i32* %662, i32 %667, i32 4)
  %669 = load i32*, i32** @usarts, align 8
  %670 = getelementptr inbounds i32, i32* %669, i64 1
  %671 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %672 = load i64, i64* @PANEL_NW, align 8
  %673 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %671, i64 %672
  %674 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 8
  %676 = call i32 @UART_SendBytes(i32* %670, i32 %675, i32 4)
  %677 = load i32*, i32** @usarts, align 8
  %678 = getelementptr inbounds i32, i32* %677, i64 0
  %679 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %680 = load i64, i64* @PANEL_NW, align 8
  %681 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %679, i64 %680
  %682 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %681, i32 0, i32 0
  %683 = load i32, i32* %682, align 8
  %684 = call i32 @UART_SendBytes(i32* %678, i32 %683, i32 4)
  %685 = call i32 @Delay(i32 1000)
  br label %775

686:                                              ; preds = %8
  %687 = load i32, i32* %6, align 4
  %688 = icmp sgt i32 %687, 600
  br i1 %688, label %692, label %689

689:                                              ; preds = %686
  %690 = load i32, i32* %6, align 4
  %691 = icmp slt i32 %690, -600
  br i1 %691, label %692, label %693

692:                                              ; preds = %689, %686
  store i32 600, i32* %6, align 4
  br label %693

693:                                              ; preds = %692, %689
  %694 = load i32, i32* %6, align 4
  %695 = icmp sle i32 %694, 0
  br i1 %695, label %696, label %717

696:                                              ; preds = %693
  store i32 0, i32* %1, align 4
  br label %697

697:                                              ; preds = %713, %696
  %698 = load i32, i32* %1, align 4
  %699 = icmp slt i32 %698, 147
  br i1 %699, label %700, label %716

700:                                              ; preds = %697
  %701 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %702 = load i64, i64* @PANEL_NW, align 8
  %703 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %701, i64 %702
  %704 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %703, i32 0, i32 1
  %705 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %704, i32 0, i32 0
  %706 = load i32, i32* %705, align 8
  %707 = load i32*, i32** @panelLEDmap, align 8
  %708 = load i32, i32* %1, align 4
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds i32, i32* %707, i64 %709
  %711 = load i32, i32* %710, align 4
  %712 = call i32 @pack12bit(i32 %706, i32 %711, i32 4000)
  br label %713

713:                                              ; preds = %700
  %714 = load i32, i32* %1, align 4
  %715 = add nsw i32 %714, 1
  store i32 %715, i32* %1, align 4
  br label %697

716:                                              ; preds = %697
  br label %738

717:                                              ; preds = %693
  store i32 0, i32* %1, align 4
  br label %718

718:                                              ; preds = %734, %717
  %719 = load i32, i32* %1, align 4
  %720 = icmp slt i32 %719, 147
  br i1 %720, label %721, label %737

721:                                              ; preds = %718
  %722 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %723 = load i64, i64* @PANEL_NW, align 8
  %724 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %722, i64 %723
  %725 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %724, i32 0, i32 1
  %726 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %725, i32 0, i32 0
  %727 = load i32, i32* %726, align 8
  %728 = load i32*, i32** @panelLEDmap, align 8
  %729 = load i32, i32* %1, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds i32, i32* %728, i64 %730
  %732 = load i32, i32* %731, align 4
  %733 = call i32 @pack12bit(i32 %727, i32 %732, i32 0)
  br label %734

734:                                              ; preds = %721
  %735 = load i32, i32* %1, align 4
  %736 = add nsw i32 %735, 1
  store i32 %736, i32* %1, align 4
  br label %718

737:                                              ; preds = %718
  br label %738

738:                                              ; preds = %737, %716
  %739 = load i32*, i32** @usarts, align 8
  %740 = getelementptr inbounds i32, i32* %739, i64 3
  %741 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %742 = load i64, i64* @PANEL_NW, align 8
  %743 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %741, i64 %742
  %744 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %743, i32 0, i32 0
  %745 = load i32, i32* %744, align 8
  %746 = call i32 @UART_SendBytes(i32* %740, i32 %745, i32 4)
  %747 = load i32*, i32** @usarts, align 8
  %748 = getelementptr inbounds i32, i32* %747, i64 2
  %749 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %750 = load i64, i64* @PANEL_NW, align 8
  %751 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %749, i64 %750
  %752 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %751, i32 0, i32 0
  %753 = load i32, i32* %752, align 8
  %754 = call i32 @UART_SendBytes(i32* %748, i32 %753, i32 4)
  %755 = load i32*, i32** @usarts, align 8
  %756 = getelementptr inbounds i32, i32* %755, i64 1
  %757 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %758 = load i64, i64* @PANEL_NW, align 8
  %759 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %757, i64 %758
  %760 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %759, i32 0, i32 0
  %761 = load i32, i32* %760, align 8
  %762 = call i32 @UART_SendBytes(i32* %756, i32 %761, i32 4)
  %763 = load i32*, i32** @usarts, align 8
  %764 = getelementptr inbounds i32, i32* %763, i64 0
  %765 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %766 = load i64, i64* @PANEL_NW, align 8
  %767 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %765, i64 %766
  %768 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %767, i32 0, i32 0
  %769 = load i32, i32* %768, align 8
  %770 = call i32 @UART_SendBytes(i32* %764, i32 %769, i32 4)
  %771 = call i32 @Delay(i32 1000)
  %772 = load i32, i32* %6, align 4
  %773 = add nsw i32 %772, -1
  store i32 %773, i32* %6, align 4
  br label %775

774:                                              ; preds = %8
  br label %775

775:                                              ; preds = %774, %738, %652, %625, %624, %513, %349, %295, %268, %183, %98
  br label %8
}

declare dso_local i32 @BUTTONS_Read_All(...) #1

declare dso_local i32 @pack12bit(i32, i32, i32) #1

declare dso_local i32 @UART_SendBytes(i32*, i32, i32) #1

declare dso_local i32 @Delay(i32) #1

declare dso_local i32 @globalSet8bit(i32, i32) #1

declare dso_local i32 @globalSet(i32, i32) #1

declare dso_local i32 @sendLEDpackets(...) #1

declare dso_local i32 @buttonTest(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
