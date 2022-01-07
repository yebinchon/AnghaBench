; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_scan_int23.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_scan_int23.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i64 }

@WV_MONO_DATA = common dso_local global i32 0, align 4
@MAG_MASK = common dso_local global i32 0, align 4
@MAG_LSB = common dso_local global i32 0, align 4
@WV_INT32_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*, i32)* @scan_int23 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_int23(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
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
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @WV_MONO_DATA, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %84

32:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %80, %32
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %83

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* %15, align 4
  %47 = xor i32 %46, -1
  br label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %15, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i32 [ %47, %45 ], [ %49, %48 ]
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = and i32 %55, 1
  %57 = sub nsw i32 0, %56
  %58 = xor i32 %54, %57
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %50
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  %76 = and i32 %75, 2
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %296

79:                                               ; preds = %74, %70, %50
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %33

83:                                               ; preds = %33
  br label %163

84:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %159, %84
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %162

89:                                               ; preds = %85
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %16, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %89
  %103 = load i32, i32* %16, align 4
  %104 = xor i32 %103, -1
  br label %107

105:                                              ; preds = %89
  %106 = load i32, i32* %16, align 4
  br label %107

107:                                              ; preds = %105, %102
  %108 = phi i32 [ %104, %102 ], [ %106, %105 ]
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %17, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i32, i32* %17, align 4
  %115 = xor i32 %114, -1
  br label %118

116:                                              ; preds = %107
  %117 = load i32, i32* %17, align 4
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi i32 [ %115, %113 ], [ %117, %116 ]
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %16, align 4
  %124 = and i32 %123, 1
  %125 = sub nsw i32 0, %124
  %126 = xor i32 %122, %125
  %127 = load i32, i32* %11, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %17, align 4
  %131 = and i32 %130, 1
  %132 = sub nsw i32 0, %131
  %133 = xor i32 %129, %132
  %134 = load i32, i32* %11, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %17, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* %12, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %17, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* %10, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = and i32 %146, 1
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %118
  %150 = load i32, i32* %12, align 4
  %151 = and i32 %150, 1
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %11, align 4
  %155 = and i32 %154, 2
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %296

158:                                              ; preds = %153, %149, %118
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %85

162:                                              ; preds = %85
  br label %163

163:                                              ; preds = %162, %83
  %164 = load i32, i32* @MAG_MASK, align 4
  %165 = xor i32 %164, -1
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = and i32 %168, %165
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %173, %163
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %170
  %174 = load i32, i32* @MAG_LSB, align 4
  %175 = shl i32 1, %174
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, %175
  store i32 %179, i32* %177, align 8
  %180 = load i32, i32* %9, align 4
  %181 = ashr i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %170

182:                                              ; preds = %170
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @MAG_MASK, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %182
  br label %296

190:                                              ; preds = %182
  %191 = load i32, i32* %10, align 4
  %192 = and i32 %191, 1
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %216, label %194

194:                                              ; preds = %190
  br label %195

195:                                              ; preds = %210, %194
  %196 = load i32, i32* @MAG_LSB, align 4
  %197 = shl i32 1, %196
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = sub nsw i32 %200, %197
  store i32 %201, i32* %199, align 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %203, align 8
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %14, align 4
  %208 = load i32, i32* %10, align 4
  %209 = ashr i32 %208, 1
  store i32 %209, i32* %10, align 4
  br label %210

210:                                              ; preds = %195
  %211 = load i32, i32* %10, align 4
  %212 = and i32 %211, 1
  %213 = icmp ne i32 %212, 0
  %214 = xor i1 %213, true
  br i1 %214, label %195, label %215

215:                                              ; preds = %210
  br label %269

216:                                              ; preds = %190
  %217 = load i32, i32* %12, align 4
  %218 = and i32 %217, 1
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %241

220:                                              ; preds = %216
  br label %221

221:                                              ; preds = %236, %220
  %222 = load i32, i32* @MAG_LSB, align 4
  %223 = shl i32 1, %222
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sub nsw i32 %226, %223
  store i32 %227, i32* %225, align 8
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %230, 1
  store i64 %231, i64* %229, align 8
  %232 = load i32, i32* %14, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %14, align 4
  %234 = load i32, i32* %12, align 4
  %235 = ashr i32 %234, 1
  store i32 %235, i32* %12, align 4
  br label %236

236:                                              ; preds = %221
  %237 = load i32, i32* %12, align 4
  %238 = and i32 %237, 1
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %221, label %240

240:                                              ; preds = %236
  br label %268

241:                                              ; preds = %216
  %242 = load i32, i32* %11, align 4
  %243 = and i32 %242, 2
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %267, label %245

245:                                              ; preds = %241
  br label %246

246:                                              ; preds = %261, %245
  %247 = load i32, i32* @MAG_LSB, align 4
  %248 = shl i32 1, %247
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = sub nsw i32 %251, %248
  store i32 %252, i32* %250, align 8
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %255, 1
  store i64 %256, i64* %254, align 8
  %257 = load i32, i32* %14, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %14, align 4
  %259 = load i32, i32* %11, align 4
  %260 = ashr i32 %259, 1
  store i32 %260, i32* %11, align 4
  br label %261

261:                                              ; preds = %246
  %262 = load i32, i32* %11, align 4
  %263 = and i32 %262, 2
  %264 = icmp ne i32 %263, 0
  %265 = xor i1 %264, true
  br i1 %265, label %246, label %266

266:                                              ; preds = %261
  br label %267

267:                                              ; preds = %266, %241
  br label %268

268:                                              ; preds = %267, %240
  br label %269

269:                                              ; preds = %268, %215
  %270 = load i32, i32* %14, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %296

272:                                              ; preds = %269
  %273 = load i32, i32* @WV_INT32_DATA, align 4
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 8
  %278 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @WV_MONO_DATA, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %272
  %285 = load i32*, i32** %6, align 8
  %286 = load i32, i32* %8, align 4
  %287 = load i32, i32* %14, align 4
  %288 = call i32 @shift_mono(i32* %285, i32 %286, i32 %287)
  br label %295

289:                                              ; preds = %272
  %290 = load i32*, i32** %6, align 8
  %291 = load i32*, i32** %7, align 8
  %292 = load i32, i32* %8, align 4
  %293 = load i32, i32* %14, align 4
  %294 = call i32 @shift_stereo(i32* %290, i32* %291, i32 %292, i32 %293)
  br label %295

295:                                              ; preds = %289, %284
  br label %296

296:                                              ; preds = %78, %157, %189, %295, %269
  ret void
}

declare dso_local i32 @shift_mono(i32*, i32, i32) #1

declare dso_local i32 @shift_stereo(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
