; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_bitwise.c_oggpack_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_bitwise.c_oggpack_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }

@mask = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @oggpack_read(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64*, i64** @mask, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  store i32 -1, i32* %7, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 3
  %23 = icmp sge i32 %18, %22
  br i1 %23, label %24, label %190

24:                                               ; preds = %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i64 -1, i64* %3, align 8
  br label %294

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %189

33:                                               ; preds = %30
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = call i64 @_halt_one(%struct.TYPE_5__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i64 -1, i64* %3, align 8
  br label %294

38:                                               ; preds = %33
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = ashr i32 %42, %45
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp sge i32 %47, 8
  br i1 %48, label %49, label %188

49:                                               ; preds = %38
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %51, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = call i32 @_span_one(%struct.TYPE_5__* %58)
  %60 = load i32, i32* %5, align 4
  %61 = icmp sgt i32 %60, 8
  br i1 %61, label %62, label %187

62:                                               ; preds = %49
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = call i64 @_halt_one(%struct.TYPE_5__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i64 -1, i64* %3, align 8
  br label %294

67:                                               ; preds = %62
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 8, %74
  %76 = shl i32 %71, %75
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp sge i32 %79, 16
  br i1 %80, label %81, label %186

81:                                               ; preds = %67
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %83, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = call i32 @_span_one(%struct.TYPE_5__* %90)
  %92 = load i32, i32* %5, align 4
  %93 = icmp sgt i32 %92, 16
  br i1 %93, label %94, label %185

94:                                               ; preds = %81
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = call i64 @_halt_one(%struct.TYPE_5__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i64 -1, i64* %3, align 8
  br label %294

99:                                               ; preds = %94
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 16, %106
  %108 = shl i32 %103, %107
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp sge i32 %111, 24
  br i1 %112, label %113, label %184

113:                                              ; preds = %99
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %115, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %119, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = call i32 @_span_one(%struct.TYPE_5__* %122)
  %124 = load i32, i32* %5, align 4
  %125 = icmp sgt i32 %124, 24
  br i1 %125, label %126, label %183

126:                                              ; preds = %113
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = call i64 @_halt_one(%struct.TYPE_5__* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  store i64 -1, i64* %3, align 8
  br label %294

131:                                              ; preds = %126
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 24, %138
  %140 = shl i32 %135, %139
  %141 = load i32, i32* %7, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp sge i32 %143, 32
  br i1 %144, label %145, label %182

145:                                              ; preds = %131
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %147, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %151, align 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %155 = call i32 @_span_one(%struct.TYPE_5__* %154)
  %156 = load i32, i32* %5, align 4
  %157 = icmp sgt i32 %156, 32
  br i1 %157, label %158, label %181

158:                                              ; preds = %145
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %160 = call i64 @_halt_one(%struct.TYPE_5__* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  store i64 -1, i64* %3, align 8
  br label %294

163:                                              ; preds = %158
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %163
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sub nsw i32 32, %175
  %177 = shl i32 %172, %176
  %178 = load i32, i32* %7, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %7, align 4
  br label %180

180:                                              ; preds = %168, %163
  br label %181

181:                                              ; preds = %180, %145
  br label %182

182:                                              ; preds = %181, %131
  br label %183

183:                                              ; preds = %182, %113
  br label %184

184:                                              ; preds = %183, %99
  br label %185

185:                                              ; preds = %184, %81
  br label %186

186:                                              ; preds = %185, %67
  br label %187

187:                                              ; preds = %186, %49
  br label %188

188:                                              ; preds = %187, %38
  br label %189

189:                                              ; preds = %188, %30
  br label %282

190:                                              ; preds = %2
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = ashr i32 %195, %198
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %5, align 4
  %201 = icmp sgt i32 %200, 8
  br i1 %201, label %202, label %268

202:                                              ; preds = %190
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sub nsw i32 8, %210
  %212 = shl i32 %207, %211
  %213 = load i32, i32* %7, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %5, align 4
  %216 = icmp sgt i32 %215, 16
  br i1 %216, label %217, label %267

217:                                              ; preds = %202
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 2
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sub nsw i32 16, %225
  %227 = shl i32 %222, %226
  %228 = load i32, i32* %7, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* %5, align 4
  %231 = icmp sgt i32 %230, 24
  br i1 %231, label %232, label %266

232:                                              ; preds = %217
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 3
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sub nsw i32 24, %240
  %242 = shl i32 %237, %241
  %243 = load i32, i32* %7, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %7, align 4
  %245 = load i32, i32* %5, align 4
  %246 = icmp sgt i32 %245, 32
  br i1 %246, label %247, label %265

247:                                              ; preds = %232
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %265

252:                                              ; preds = %247
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 4
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = sub nsw i32 32, %260
  %262 = shl i32 %257, %261
  %263 = load i32, i32* %7, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %7, align 4
  br label %265

265:                                              ; preds = %252, %247, %232
  br label %266

266:                                              ; preds = %265, %217
  br label %267

267:                                              ; preds = %266, %202
  br label %268

268:                                              ; preds = %267, %190
  %269 = load i32, i32* %5, align 4
  %270 = sdiv i32 %269, 8
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 2
  %273 = load i32*, i32** %272, align 8
  %274 = sext i32 %270 to i64
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32* %275, i32** %272, align 8
  %276 = load i32, i32* %5, align 4
  %277 = sdiv i32 %276, 8
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = sub nsw i32 %280, %277
  store i32 %281, i32* %279, align 4
  br label %282

282:                                              ; preds = %268, %189
  %283 = load i64, i64* %6, align 8
  %284 = load i32, i32* %7, align 4
  %285 = sext i32 %284 to i64
  %286 = and i64 %285, %283
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* %7, align 4
  %288 = load i32, i32* %5, align 4
  %289 = and i32 %288, 7
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 8
  %292 = load i32, i32* %7, align 4
  %293 = sext i32 %292 to i64
  store i64 %293, i64* %3, align 8
  br label %294

294:                                              ; preds = %282, %162, %130, %98, %66, %37, %29
  %295 = load i64, i64* %3, align 8
  ret i64 %295
}

declare dso_local i64 @_halt_one(%struct.TYPE_5__*) #1

declare dso_local i32 @_span_one(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
