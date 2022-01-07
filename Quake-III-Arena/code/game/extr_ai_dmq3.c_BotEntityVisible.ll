; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotEntityVisible.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotEntityVisible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64* }
%struct.TYPE_6__ = type { i64*, i64*, i64* }

@CONTENTS_FOG = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @BotEntityVisible(i32 %0, i64* %1, i64* %2, float %3, i32 %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca %struct.TYPE_5__, align 8
  %25 = alloca %struct.TYPE_6__, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i64*, align 8
  %29 = alloca i64*, align 8
  %30 = alloca i64*, align 8
  store i32 %0, i32* %7, align 4
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store float %3, float* %10, align 4
  store i32 %4, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @BotEntityInfo(i32 %31, %struct.TYPE_6__* %25)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i64*, i64** %30, align 8
  %38 = call i32 @VectorAdd(i64* %34, i64* %36, i64* %37)
  %39 = load i64*, i64** %30, align 8
  %40 = load i64*, i64** %30, align 8
  %41 = call i32 @VectorScale(i64* %39, double 5.000000e-01, i64* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = load i64*, i64** %30, align 8
  %45 = load i64*, i64** %30, align 8
  %46 = call i32 @VectorAdd(i64* %43, i64* %44, i64* %45)
  %47 = load i64*, i64** %30, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = load i64*, i64** %26, align 8
  %50 = call i32 @VectorSubtract(i64* %47, i64* %48, i64* %49)
  %51 = load i64*, i64** %26, align 8
  %52 = load i64*, i64** %27, align 8
  %53 = call i32 @vectoangles(i64* %51, i64* %52)
  %54 = load i64*, i64** %9, align 8
  %55 = load float, float* %10, align 4
  %56 = load i64*, i64** %27, align 8
  %57 = call i32 @InFieldOfVision(i64* %54, float %55, i64* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %5
  store float 0.000000e+00, float* %6, align 4
  br label %299

60:                                               ; preds = %5
  %61 = load i64*, i64** %8, align 8
  %62 = call i32 @trap_AAS_PointContents(i64* %61)
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* @CONTENTS_FOG, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* @CONTENTS_LAVA, align 4
  %68 = load i32, i32* @CONTENTS_SLIME, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @CONTENTS_WATER, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %66, %71
  store i32 %72, i32* %17, align 4
  store float 0.000000e+00, float* %23, align 4
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %294, %60
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 3
  br i1 %75, label %76, label %297

76:                                               ; preds = %73
  %77 = load i32, i32* @CONTENTS_SOLID, align 4
  %78 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %15, align 4
  %82 = load i64*, i64** %8, align 8
  %83 = load i64*, i64** %28, align 8
  %84 = call i32 @VectorCopy(i64* %82, i64* %83)
  %85 = load i64*, i64** %30, align 8
  %86 = load i64*, i64** %29, align 8
  %87 = call i32 @VectorCopy(i64* %85, i64* %86)
  %88 = load i64*, i64** %30, align 8
  %89 = call i32 @trap_AAS_PointContents(i64* %88)
  %90 = load i32, i32* @CONTENTS_LAVA, align 4
  %91 = load i32, i32* @CONTENTS_SLIME, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @CONTENTS_WATER, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %89, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %76
  %98 = load i32, i32* @CONTENTS_LAVA, align 4
  %99 = load i32, i32* @CONTENTS_SLIME, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @CONTENTS_WATER, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %13, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %97, %76
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %134

108:                                              ; preds = %105
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @CONTENTS_LAVA, align 4
  %111 = load i32, i32* @CONTENTS_SLIME, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @CONTENTS_WATER, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %109, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %108
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %15, align 4
  %120 = load i64*, i64** %30, align 8
  %121 = load i64*, i64** %28, align 8
  %122 = call i32 @VectorCopy(i64* %120, i64* %121)
  %123 = load i64*, i64** %8, align 8
  %124 = load i64*, i64** %29, align 8
  %125 = call i32 @VectorCopy(i64* %123, i64* %124)
  br label %126

126:                                              ; preds = %117, %108
  %127 = load i32, i32* @CONTENTS_LAVA, align 4
  %128 = load i32, i32* @CONTENTS_SLIME, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @CONTENTS_WATER, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* %13, align 4
  %133 = xor i32 %132, %131
  store i32 %133, i32* %13, align 4
  br label %134

134:                                              ; preds = %126, %105
  %135 = load i64*, i64** %28, align 8
  %136 = load i64*, i64** %29, align 8
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @BotAI_Trace(%struct.TYPE_5__* %24, i64* %135, i32* null, i32* null, i64* %136, i32 %137, i32 %138)
  store float 1.000000e+00, float* %21, align 4
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @CONTENTS_LAVA, align 4
  %143 = load i32, i32* @CONTENTS_SLIME, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @CONTENTS_WATER, align 4
  %146 = or i32 %144, %145
  %147 = and i32 %141, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %134
  %150 = load i32, i32* @CONTENTS_LAVA, align 4
  %151 = load i32, i32* @CONTENTS_SLIME, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @CONTENTS_WATER, align 4
  %154 = or i32 %152, %153
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %13, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %13, align 4
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %159 = load i64*, i64** %158, align 8
  %160 = load i64*, i64** %29, align 8
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @BotAI_Trace(%struct.TYPE_5__* %24, i64* %159, i32* null, i32* null, i64* %160, i32 %161, i32 %162)
  store float 5.000000e-01, float* %21, align 4
  br label %164

164:                                              ; preds = %149, %134
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp sge i32 %166, 1
  br i1 %167, label %173, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %263

173:                                              ; preds = %168, %164
  %174 = load i64*, i64** %30, align 8
  %175 = call i32 @trap_AAS_PointContents(i64* %174)
  %176 = load i32, i32* @CONTENTS_FOG, align 4
  %177 = and i32 %175, %176
  store i32 %177, i32* %18, align 4
  %178 = load i32, i32* %16, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %173
  %181 = load i32, i32* %18, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %185 = load i64*, i64** %184, align 8
  %186 = load i64*, i64** %8, align 8
  %187 = load i64*, i64** %26, align 8
  %188 = call i32 @VectorSubtract(i64* %185, i64* %186, i64* %187)
  %189 = load i64*, i64** %26, align 8
  %190 = call float @VectorLengthSquared(i64* %189)
  store float %190, float* %20, align 4
  br label %234

191:                                              ; preds = %180, %173
  %192 = load i32, i32* %16, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %211

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %196 = load i64*, i64** %195, align 8
  %197 = load i64*, i64** %28, align 8
  %198 = call i32 @VectorCopy(i64* %196, i64* %197)
  %199 = load i64*, i64** %28, align 8
  %200 = load i64*, i64** %8, align 8
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* @CONTENTS_FOG, align 4
  %203 = call i32 @BotAI_Trace(%struct.TYPE_5__* %24, i64* %199, i32* null, i32* null, i64* %200, i32 %201, i32 %202)
  %204 = load i64*, i64** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %206 = load i64*, i64** %205, align 8
  %207 = load i64*, i64** %26, align 8
  %208 = call i32 @VectorSubtract(i64* %204, i64* %206, i64* %207)
  %209 = load i64*, i64** %26, align 8
  %210 = call float @VectorLengthSquared(i64* %209)
  store float %210, float* %20, align 4
  br label %233

211:                                              ; preds = %191
  %212 = load i32, i32* %18, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %231

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %216 = load i64*, i64** %215, align 8
  %217 = load i64*, i64** %29, align 8
  %218 = call i32 @VectorCopy(i64* %216, i64* %217)
  %219 = load i64*, i64** %8, align 8
  %220 = load i64*, i64** %29, align 8
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* @CONTENTS_FOG, align 4
  %223 = call i32 @BotAI_Trace(%struct.TYPE_5__* %24, i64* %219, i32* null, i32* null, i64* %220, i32 %221, i32 %222)
  %224 = load i64*, i64** %29, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %226 = load i64*, i64** %225, align 8
  %227 = load i64*, i64** %26, align 8
  %228 = call i32 @VectorSubtract(i64* %224, i64* %226, i64* %227)
  %229 = load i64*, i64** %26, align 8
  %230 = call float @VectorLengthSquared(i64* %229)
  store float %230, float* %20, align 4
  br label %232

231:                                              ; preds = %211
  store float 0.000000e+00, float* %20, align 4
  br label %232

232:                                              ; preds = %231, %214
  br label %233

233:                                              ; preds = %232, %194
  br label %234

234:                                              ; preds = %233, %183
  %235 = load float, float* %20, align 4
  %236 = fpext float %235 to double
  %237 = fmul double %236, 1.000000e-03
  %238 = fcmp olt double %237, 1.000000e+00
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  br label %244

240:                                              ; preds = %234
  %241 = load float, float* %20, align 4
  %242 = fpext float %241 to double
  %243 = fmul double %242, 1.000000e-03
  br label %244

244:                                              ; preds = %240, %239
  %245 = phi double [ 1.000000e+00, %239 ], [ %243, %240 ]
  %246 = fdiv double 1.000000e+00, %245
  %247 = fptrunc double %246 to float
  store float %247, float* %22, align 4
  %248 = load float, float* %21, align 4
  %249 = load float, float* %22, align 4
  %250 = fmul float %249, %248
  store float %250, float* %22, align 4
  %251 = load float, float* %22, align 4
  %252 = load float, float* %23, align 4
  %253 = fcmp ogt float %251, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %244
  %255 = load float, float* %22, align 4
  store float %255, float* %23, align 4
  br label %256

256:                                              ; preds = %254, %244
  %257 = load float, float* %23, align 4
  %258 = fpext float %257 to double
  %259 = fcmp oge double %258, 0x3FEE666666666666
  br i1 %259, label %260, label %262

260:                                              ; preds = %256
  %261 = load float, float* %23, align 4
  store float %261, float* %6, align 4
  br label %299

262:                                              ; preds = %256
  br label %263

263:                                              ; preds = %262, %168
  %264 = load i32, i32* %12, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %275

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %268 = load i64*, i64** %267, align 8
  %269 = getelementptr inbounds i64, i64* %268, i64 2
  %270 = load i64, i64* %269, align 8
  %271 = load i64*, i64** %30, align 8
  %272 = getelementptr inbounds i64, i64* %271, i64 2
  %273 = load i64, i64* %272, align 8
  %274 = add nsw i64 %273, %270
  store i64 %274, i64* %272, align 8
  br label %293

275:                                              ; preds = %263
  %276 = load i32, i32* %12, align 4
  %277 = icmp eq i32 %276, 1
  br i1 %277, label %278, label %292

278:                                              ; preds = %275
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %280 = load i64*, i64** %279, align 8
  %281 = getelementptr inbounds i64, i64* %280, i64 2
  %282 = load i64, i64* %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %284 = load i64*, i64** %283, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 2
  %286 = load i64, i64* %285, align 8
  %287 = sub nsw i64 %282, %286
  %288 = load i64*, i64** %30, align 8
  %289 = getelementptr inbounds i64, i64* %288, i64 2
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %290, %287
  store i64 %291, i64* %289, align 8
  br label %292

292:                                              ; preds = %278, %275
  br label %293

293:                                              ; preds = %292, %266
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %12, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %12, align 4
  br label %73

297:                                              ; preds = %73
  %298 = load float, float* %23, align 4
  store float %298, float* %6, align 4
  br label %299

299:                                              ; preds = %297, %260, %59
  %300 = load float, float* %6, align 4
  ret float %300
}

declare dso_local i32 @BotEntityInfo(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @VectorAdd(i64*, i64*, i64*) #1

declare dso_local i32 @VectorScale(i64*, double, i64*) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local i32 @vectoangles(i64*, i64*) #1

declare dso_local i32 @InFieldOfVision(i64*, float, i64*) #1

declare dso_local i32 @trap_AAS_PointContents(i64*) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @BotAI_Trace(%struct.TYPE_5__*, i64*, i32*, i32*, i64*, i32, i32) #1

declare dso_local float @VectorLengthSquared(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
