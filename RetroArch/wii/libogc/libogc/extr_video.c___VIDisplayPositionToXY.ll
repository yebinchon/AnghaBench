; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___VIDisplayPositionToXY.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___VIDisplayPositionToXY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@currTiming = common dso_local global %struct.TYPE_3__* null, align 8
@HorVer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*)* @__VIDisplayPositionToXY to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__VIDisplayPositionToXY(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = shl i32 %17, 1
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %19, %22
  %24 = add nsw i32 %18, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @HorVer, i32 0, i32 0), align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %126

29:                                               ; preds = %4
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %77

35:                                               ; preds = %29
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 3
  %43 = add nsw i32 %38, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %35
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %47
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, 3
  %64 = sub nsw i32 %59, %63
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %64, %67
  %69 = and i32 %68, -2
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  br label %73

71:                                               ; preds = %47
  %72 = load i32*, i32** %8, align 8
  store i32 -1, i32* %72, align 4
  br label %73

73:                                               ; preds = %71, %58
  br label %76

74:                                               ; preds = %35
  %75 = load i32*, i32** %8, align 8
  store i32 -1, i32* %75, align 4
  br label %76

76:                                               ; preds = %74, %73
  br label %125

77:                                               ; preds = %29
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %88, 3
  %90 = add nsw i32 %85, %89
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %122

94:                                               ; preds = %77
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %97, %100
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %94
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %109, 3
  %111 = sub nsw i32 %106, %110
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %111, %114
  %116 = and i32 %115, -2
  %117 = add nsw i32 %116, 1
  %118 = load i32*, i32** %8, align 8
  store i32 %117, i32* %118, align 4
  br label %121

119:                                              ; preds = %94
  %120 = load i32*, i32** %8, align 8
  store i32 -1, i32* %120, align 4
  br label %121

121:                                              ; preds = %119, %105
  br label %124

122:                                              ; preds = %77
  %123 = load i32*, i32** %8, align 8
  store i32 -1, i32* %123, align 4
  br label %124

124:                                              ; preds = %122, %121
  br label %125

125:                                              ; preds = %124, %76
  br label %283

126:                                              ; preds = %4
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @HorVer, i32 0, i32 0), align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %183

129:                                              ; preds = %126
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp sge i32 %130, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %11, align 4
  %140 = sub nsw i32 %139, %138
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %135, %129
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %147, 3
  %149 = add nsw i32 %144, %148
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp sge i32 %150, %151
  br i1 %152, label %153, label %180

153:                                              ; preds = %141
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %156, %159
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %177

164:                                              ; preds = %153
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %168, 3
  %170 = sub nsw i32 %165, %169
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %170, %173
  %175 = and i32 %174, -2
  %176 = load i32*, i32** %8, align 8
  store i32 %175, i32* %176, align 4
  br label %179

177:                                              ; preds = %153
  %178 = load i32*, i32** %8, align 8
  store i32 -1, i32* %178, align 4
  br label %179

179:                                              ; preds = %177, %164
  br label %182

180:                                              ; preds = %141
  %181 = load i32*, i32** %8, align 8
  store i32 -1, i32* %181, align 4
  br label %182

182:                                              ; preds = %180, %179
  br label %282

183:                                              ; preds = %126
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @HorVer, i32 0, i32 0), align 4
  %185 = icmp eq i32 %184, 2
  br i1 %185, label %186, label %281

186:                                              ; preds = %183
  %187 = load i32, i32* %11, align 4
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %233

192:                                              ; preds = %186
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = mul nsw i32 %198, 3
  %200 = add nsw i32 %195, %199
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* %12, align 4
  %203 = icmp sge i32 %201, %202
  br i1 %203, label %204, label %230

204:                                              ; preds = %192
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %207, %210
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* %12, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %227

215:                                              ; preds = %204
  %216 = load i32, i32* %11, align 4
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = mul nsw i32 %219, 3
  %221 = sub nsw i32 %216, %220
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = sub nsw i32 %221, %224
  %226 = load i32*, i32** %8, align 8
  store i32 %225, i32* %226, align 4
  br label %229

227:                                              ; preds = %204
  %228 = load i32*, i32** %8, align 8
  store i32 -1, i32* %228, align 4
  br label %229

229:                                              ; preds = %227, %215
  br label %232

230:                                              ; preds = %192
  %231 = load i32*, i32** %8, align 8
  store i32 -1, i32* %231, align 4
  br label %232

232:                                              ; preds = %230, %229
  br label %280

233:                                              ; preds = %186
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %11, align 4
  %238 = sub nsw i32 %237, %236
  store i32 %238, i32* %11, align 4
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = mul nsw i32 %244, 3
  %246 = add nsw i32 %241, %245
  store i32 %246, i32* %12, align 4
  %247 = load i32, i32* %11, align 4
  %248 = load i32, i32* %12, align 4
  %249 = icmp sge i32 %247, %248
  br i1 %249, label %250, label %277

250:                                              ; preds = %233
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 6
  %256 = load i32, i32* %255, align 4
  %257 = sub nsw i32 %253, %256
  store i32 %257, i32* %12, align 4
  %258 = load i32, i32* %11, align 4
  %259 = load i32, i32* %12, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %274

261:                                              ; preds = %250
  %262 = load i32, i32* %11, align 4
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = mul nsw i32 %265, 3
  %267 = sub nsw i32 %262, %266
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currTiming, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 4
  %271 = sub nsw i32 %267, %270
  %272 = and i32 %271, -2
  %273 = load i32*, i32** %8, align 8
  store i32 %272, i32* %273, align 4
  br label %276

274:                                              ; preds = %250
  %275 = load i32*, i32** %8, align 8
  store i32 -1, i32* %275, align 4
  br label %276

276:                                              ; preds = %274, %261
  br label %279

277:                                              ; preds = %233
  %278 = load i32*, i32** %8, align 8
  store i32 -1, i32* %278, align 4
  br label %279

279:                                              ; preds = %277, %276
  br label %280

280:                                              ; preds = %279, %232
  br label %281

281:                                              ; preds = %280, %183
  br label %282

282:                                              ; preds = %281, %182
  br label %283

283:                                              ; preds = %282, %125
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
