; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_handle_feedback.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_handle_feedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@usarts = common dso_local global i32* null, align 8
@LED_PACKET_LEN = common dso_local global i32 0, align 4
@panelButtonMap = common dso_local global i64* null, align 8
@temperatures = common dso_local global i32* null, align 8
@panel_avg_temp = common dso_local global i32* null, align 8
@fan_mode = common dso_local global i32* null, align 8
@fan_slope = common dso_local global i32* null, align 8
@fan_intercept = common dso_local global i64* null, align 8
@fan_duty = common dso_local global i64* null, align 8
@fan_min = common dso_local global i64* null, align 8
@fan_tach = common dso_local global i32** null, align 8
@serialNum = common dso_local global i32** null, align 8
@uptimes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_feedback(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__, align 8
  %13 = alloca i32, align 4
  %14 = alloca [512 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %15 = call i32 @DEBUGPIN_SET(i32 1)
  %16 = load i32*, i32** @usarts, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 @UART_RX_frame_available(i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %26 [
    i32 130, label %22
    i32 131, label %23
    i32 128, label %24
    i32 129, label %25
  ]

22:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %26

23:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 7, i32* %9, align 4
  br label %26

24:                                               ; preds = %2
  store i32 7, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %26

25:                                               ; preds = %2
  store i32 7, i32* %8, align 4
  store i32 7, i32* %9, align 4
  br label %26

26:                                               ; preds = %2, %25, %24, %23, %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @LED_PACKET_LEN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %283

30:                                               ; preds = %26
  %31 = load i32*, i32** @usarts, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @UART_RX_read(i32* %34, i8* %36, i32 %37)
  store i32 0, i32* %11, align 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %41, 32
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %301

44:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %105, %44
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 7
  br i1 %47, label %48, label %108

48:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %101, %48
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 7
  br i1 %51, label %52, label %104

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = mul nsw i32 7, %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %54, %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i64*, i64** @panelButtonMap, align 8
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 7, %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %60, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %59, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @globalButtonSet(i32 %56, i32 %69, i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i64*, i64** @panelButtonMap, align 8
  %76 = load i32, i32* %6, align 4
  %77 = mul nsw i32 7, %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %75, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 10
  %84 = getelementptr inbounds i32, i32* %74, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32*, i32** @temperatures, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %88, %89
  %91 = mul nsw i32 14, %90
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %87, i64 %96
  store i32 %86, i32* %97, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %52
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %49

104:                                              ; preds = %49
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %45

108:                                              ; preds = %45
  %109 = load i32, i32* %11, align 4
  %110 = sdiv i32 %109, 49
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32*, i32** @panel_avg_temp, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  %116 = load i32*, i32** @fan_mode, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %143

122:                                              ; preds = %108
  %123 = load i32*, i32** @fan_slope, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %11, align 4
  %129 = sub nsw i32 %128, 80
  %130 = mul nsw i32 %127, %129
  %131 = ashr i32 %130, 8
  %132 = sext i32 %131 to i64
  %133 = load i64*, i64** @fan_intercept, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %132, %137
  %139 = load i64*, i64** @fan_duty, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  store i64 %138, i64* %142, align 8
  br label %143

143:                                              ; preds = %122, %108
  %144 = load i64*, i64** @fan_duty, align 8
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load i64*, i64** @fan_min, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = icmp slt i64 %148, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %143
  %156 = load i64*, i64** @fan_min, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = load i64*, i64** @fan_duty, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  store i64 %160, i64* %164, align 8
  br label %165

165:                                              ; preds = %155, %143
  store i32 0, i32* %13, align 4
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %182, %165
  %167 = load i32, i32* %5, align 4
  %168 = icmp slt i32 %167, 4
  br i1 %168, label %169, label %185

169:                                              ; preds = %166
  %170 = load i32, i32* %13, align 4
  %171 = shl i32 %170, 8
  store i32 %171, i32* %13, align 4
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 164, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %13, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %13, align 4
  br label %182

182:                                              ; preds = %169
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %5, align 4
  br label %166

185:                                              ; preds = %166
  %186 = load i32, i32* %13, align 4
  %187 = icmp eq i32 %186, 65535
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 0, i32* %13, align 4
  br label %192

189:                                              ; preds = %185
  %190 = load i32, i32* %13, align 4
  %191 = sdiv i32 360000, %190
  store i32 %191, i32* %13, align 4
  br label %192

192:                                              ; preds = %189, %188
  %193 = load i32, i32* %13, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %13, align 4
  %197 = icmp sgt i32 %196, 7
  br i1 %197, label %198, label %226

198:                                              ; preds = %195
  %199 = load i32, i32* %13, align 4
  %200 = icmp slt i32 %199, 250
  br i1 %200, label %201, label %226

201:                                              ; preds = %198, %192
  %202 = load i32, i32* %13, align 4
  %203 = load i32**, i32*** @fan_tach, align 8
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32*, i32** %203, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = load i32**, i32*** @fan_tach, align 8
  %209 = load i32, i32* %4, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32*, i32** %208, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 8
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, 7
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %207, i64 %216
  store i32 %202, i32* %217, align 4
  %218 = load i32**, i32*** @fan_tach, align 8
  %219 = load i32, i32* %4, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32*, i32** %218, i64 %220
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 8
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %201, %198, %195
  store i32 0, i32* %5, align 4
  br label %227

227:                                              ; preds = %247, %226
  %228 = load i32, i32* %5, align 4
  %229 = icmp slt i32 %228, 6
  br i1 %229, label %230, label %250

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %5, align 4
  %235 = add nsw i32 20, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %233, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32**, i32*** @serialNum, align 8
  %240 = load i32, i32* %4, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32*, i32** %239, i64 %241
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %5, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 %238, i32* %246, align 4
  br label %247

247:                                              ; preds = %230
  %248 = load i32, i32* %5, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %5, align 4
  br label %227

250:                                              ; preds = %227
  %251 = load i32*, i32** @uptimes, align 8
  %252 = load i32, i32* %4, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32 0, i32* %254, align 4
  store i32 0, i32* %5, align 4
  br label %255

255:                                              ; preds = %279, %250
  %256 = load i32, i32* %5, align 4
  %257 = icmp slt i32 %256, 4
  br i1 %257, label %258, label %282

258:                                              ; preds = %255
  %259 = load i32*, i32** @uptimes, align 8
  %260 = load i32, i32* %4, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = shl i32 %263, 8
  store i32 %264, i32* %262, align 4
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %5, align 4
  %269 = add nsw i32 176, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load i32*, i32** @uptimes, align 8
  %274 = load i32, i32* %4, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %277, %272
  store i32 %278, i32* %276, align 4
  br label %279

279:                                              ; preds = %258
  %280 = load i32, i32* %5, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %5, align 4
  br label %255

282:                                              ; preds = %255
  br label %299

283:                                              ; preds = %26
  %284 = load i32, i32* %5, align 4
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %286, label %298

286:                                              ; preds = %283
  %287 = load i32, i32* %5, align 4
  %288 = icmp sgt i32 %287, 512
  br i1 %288, label %289, label %290

289:                                              ; preds = %286
  store i32 512, i32* %5, align 4
  br label %290

290:                                              ; preds = %289, %286
  %291 = load i32*, i32** @usarts, align 8
  %292 = load i32, i32* %3, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %296 = load i32, i32* %5, align 4
  %297 = call i32 @UART_RX_read(i32* %294, i8* %295, i32 %296)
  br label %298

298:                                              ; preds = %290, %283
  br label %299

299:                                              ; preds = %298, %282
  %300 = call i32 @DEBUGPIN_CLR(i32 1)
  br label %301

301:                                              ; preds = %299, %43
  ret void
}

declare dso_local i32 @DEBUGPIN_SET(i32) #1

declare dso_local i32 @UART_RX_frame_available(i32*) #1

declare dso_local i32 @UART_RX_read(i32*, i8*, i32) #1

declare dso_local i32 @globalButtonSet(i32, i32, i32) #1

declare dso_local i32 @DEBUGPIN_CLR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
