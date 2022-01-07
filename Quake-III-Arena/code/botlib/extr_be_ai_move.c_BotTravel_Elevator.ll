; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotTravel_Elevator.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotTravel_Elevator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i32 (i32, i8*)* }
%struct.TYPE_17__ = type { i32, i64*, i32 }
%struct.TYPE_16__ = type { i32, i32, i64*, i64, i32 }
%struct.TYPE_18__ = type { i64*, i64* }

@sv_maxbarrier = common dso_local global %struct.TYPE_19__* null, align 8
@MFL_SWIMMING = common dso_local global i32 0, align 4
@MOVERESULT_SWIMVIEW = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@RESULTTYPE_ELEVATORUP = common dso_local global i32 0, align 4
@MOVERESULT_WAITING = common dso_local global i32 0, align 4
@PRT_MESSAGE = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotTravel_Elevator(%struct.TYPE_17__* noalias sret %0, %struct.TYPE_16__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %5, align 8
  %15 = call i32 @BotClearMoveResult(%struct.TYPE_17__* %0)
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = call i64 @BotOnMover(i64* %18, i32 %21, %struct.TYPE_18__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %107

25:                                               ; preds = %3
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %30, %35
  %37 = call i64 @abs(i64 %36)
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** @sv_maxbarrier, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %25
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = call i32 @VectorSubtract(i64* %45, i64* %48, i64* %49)
  %51 = load i64*, i64** %9, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  store i64 0, i64* %52, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = call float @VectorNormalize(i64* %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = load i64*, i64** %9, align 8
  %57 = call i32 @BotCheckBarrierJump(%struct.TYPE_16__* %55, i64* %56, i32 100)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %42
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64*, i64** %9, align 8
  %64 = call i32 @EA_Move(i32 %62, i64* %63, float 4.000000e+02)
  br label %65

65:                                               ; preds = %59, %42
  %66 = load i64*, i64** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = call i32 @VectorCopy(i64* %66, i64* %68)
  br label %106

70:                                               ; preds = %25
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %72 = load i64*, i64** %10, align 8
  %73 = call i32 @MoverBottomCenter(%struct.TYPE_18__* %71, i64* %72)
  %74 = load i64*, i64** %10, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = load i64*, i64** %76, align 8
  %78 = load i64*, i64** %9, align 8
  %79 = call i32 @VectorSubtract(i64* %74, i64* %77, i64* %78)
  %80 = load i64*, i64** %9, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 2
  store i64 0, i64* %81, align 8
  %82 = load i64*, i64** %9, align 8
  %83 = call float @VectorNormalize(i64* %82)
  store float %83, float* %11, align 4
  %84 = load float, float* %11, align 4
  %85 = fcmp ogt float %84, 1.000000e+01
  br i1 %85, label %86, label %105

86:                                               ; preds = %70
  %87 = load float, float* %11, align 4
  %88 = fcmp ogt float %87, 1.000000e+02
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store float 1.000000e+02, float* %11, align 4
  br label %90

90:                                               ; preds = %89, %86
  %91 = load float, float* %11, align 4
  %92 = fmul float 4.000000e+00, %91
  %93 = fsub float 4.000000e+02, %92
  %94 = fsub float 4.000000e+02, %93
  store float %94, float* %14, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i64*, i64** %9, align 8
  %99 = load float, float* %14, align 4
  %100 = call i32 @EA_Move(i32 %97, i64* %98, float %99)
  %101 = load i64*, i64** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = call i32 @VectorCopy(i64* %101, i64* %103)
  br label %105

105:                                              ; preds = %90, %70
  br label %106

106:                                              ; preds = %105, %65
  br label %347

107:                                              ; preds = %3
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 2
  %113 = load i64*, i64** %112, align 8
  %114 = load i64*, i64** %6, align 8
  %115 = call i32 @VectorSubtract(i64* %110, i64* %113, i64* %114)
  %116 = load i64*, i64** %6, align 8
  %117 = call float @VectorLength(i64* %116)
  store float %117, float* %11, align 4
  %118 = load float, float* %11, align 4
  %119 = fcmp olt float %118, 6.400000e+01
  br i1 %119, label %120, label %170

120:                                              ; preds = %107
  %121 = load float, float* %11, align 4
  %122 = fcmp ogt float %121, 6.000000e+01
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store float 6.000000e+01, float* %11, align 4
  br label %124

124:                                              ; preds = %123, %120
  %125 = load float, float* %11, align 4
  %126 = fmul float 6.000000e+00, %125
  %127 = fsub float 3.600000e+02, %126
  %128 = fsub float 3.600000e+02, %127
  store float %128, float* %14, align 4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @MFL_SWIMMING, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %124
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %137 = load i64*, i64** %6, align 8
  %138 = call i32 @BotCheckBarrierJump(%struct.TYPE_16__* %136, i64* %137, i32 50)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %135, %124
  %141 = load float, float* %14, align 4
  %142 = fcmp ogt float %141, 5.000000e+00
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i64*, i64** %6, align 8
  %148 = load float, float* %14, align 4
  %149 = call i32 @EA_Move(i32 %146, i64* %147, float %148)
  br label %150

150:                                              ; preds = %143, %140
  br label %151

151:                                              ; preds = %150, %135
  %152 = load i64*, i64** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 1
  %154 = load i64*, i64** %153, align 8
  %155 = call i32 @VectorCopy(i64* %152, i64* %154)
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @MFL_SWIMMING, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %151
  %163 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %163
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %162, %151
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 3
  store i64 0, i64* %169, align 8
  br label %348

170:                                              ; preds = %107
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 2
  %176 = load i64*, i64** %175, align 8
  %177 = load i64*, i64** %7, align 8
  %178 = call i32 @VectorSubtract(i64* %173, i64* %176, i64* %177)
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @MFL_SWIMMING, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %170
  %186 = load i64*, i64** %7, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 2
  store i64 0, i64* %187, align 8
  br label %188

188:                                              ; preds = %185, %170
  %189 = load i64*, i64** %7, align 8
  %190 = call float @VectorNormalize(i64* %189)
  store float %190, float* %12, align 4
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %192 = call i32 @MoverDown(%struct.TYPE_18__* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %256, label %194

194:                                              ; preds = %188
  %195 = load float, float* %12, align 4
  store float %195, float* %11, align 4
  %196 = load i64*, i64** %7, align 8
  %197 = load i64*, i64** %6, align 8
  %198 = call i32 @VectorCopy(i64* %196, i64* %197)
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %200 = load i64*, i64** %6, align 8
  %201 = load i32, i32* @qfalse, align 4
  %202 = call i32 @BotCheckBlocked(%struct.TYPE_16__* %199, i64* %200, i32 %201, %struct.TYPE_17__* %0)
  %203 = load float, float* %11, align 4
  %204 = fcmp ogt float %203, 6.000000e+01
  br i1 %204, label %205, label %206

205:                                              ; preds = %194
  store float 6.000000e+01, float* %11, align 4
  br label %206

206:                                              ; preds = %205, %194
  %207 = load float, float* %11, align 4
  %208 = fmul float 6.000000e+00, %207
  %209 = fsub float 3.600000e+02, %208
  %210 = fsub float 3.600000e+02, %209
  store float %210, float* %14, align 4
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @MFL_SWIMMING, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %233, label %217

217:                                              ; preds = %206
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %219 = load i64*, i64** %6, align 8
  %220 = call i32 @BotCheckBarrierJump(%struct.TYPE_16__* %218, i64* %219, i32 50)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %233, label %222

222:                                              ; preds = %217
  %223 = load float, float* %14, align 4
  %224 = fcmp ogt float %223, 5.000000e+00
  br i1 %224, label %225, label %232

225:                                              ; preds = %222
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i64*, i64** %6, align 8
  %230 = load float, float* %14, align 4
  %231 = call i32 @EA_Move(i32 %228, i64* %229, float %230)
  br label %232

232:                                              ; preds = %225, %222
  br label %233

233:                                              ; preds = %232, %217, %206
  %234 = load i64*, i64** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 1
  %236 = load i64*, i64** %235, align 8
  %237 = call i32 @VectorCopy(i64* %234, i64* %236)
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @MFL_SWIMMING, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %233
  %245 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = or i32 %247, %245
  store i32 %248, i32* %246, align 8
  br label %249

249:                                              ; preds = %244, %233
  %250 = load i32, i32* @RESULTTYPE_ELEVATORUP, align 4
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 2
  store i32 %250, i32* %251, align 8
  %252 = load i32, i32* @MOVERESULT_WAITING, align 4
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %252
  store i32 %255, i32* %253, align 8
  br label %348

256:                                              ; preds = %188
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %258 = load i64*, i64** %10, align 8
  %259 = call i32 @MoverBottomCenter(%struct.TYPE_18__* %257, i64* %258)
  %260 = load i64*, i64** %10, align 8
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 2
  %263 = load i64*, i64** %262, align 8
  %264 = load i64*, i64** %8, align 8
  %265 = call i32 @VectorSubtract(i64* %260, i64* %263, i64* %264)
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @MFL_SWIMMING, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %256
  %273 = load i64*, i64** %8, align 8
  %274 = getelementptr inbounds i64, i64* %273, i64 2
  store i64 0, i64* %274, align 8
  br label %275

275:                                              ; preds = %272, %256
  %276 = load i64*, i64** %8, align 8
  %277 = call float @VectorNormalize(i64* %276)
  store float %277, float* %13, align 4
  %278 = load float, float* %12, align 4
  %279 = fcmp olt float %278, 2.000000e+01
  br i1 %279, label %289, label %280

280:                                              ; preds = %275
  %281 = load float, float* %13, align 4
  %282 = load float, float* %12, align 4
  %283 = fcmp olt float %281, %282
  br i1 %283, label %289, label %284

284:                                              ; preds = %280
  %285 = load i64*, i64** %7, align 8
  %286 = load i64*, i64** %8, align 8
  %287 = call i64 @DotProduct(i64* %285, i64* %286)
  %288 = icmp slt i64 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %284, %280, %275
  %290 = load float, float* %13, align 4
  store float %290, float* %11, align 4
  %291 = load i64*, i64** %8, align 8
  %292 = load i64*, i64** %6, align 8
  %293 = call i32 @VectorCopy(i64* %291, i64* %292)
  br label %299

294:                                              ; preds = %284
  %295 = load float, float* %12, align 4
  store float %295, float* %11, align 4
  %296 = load i64*, i64** %7, align 8
  %297 = load i64*, i64** %6, align 8
  %298 = call i32 @VectorCopy(i64* %296, i64* %297)
  br label %299

299:                                              ; preds = %294, %289
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %301 = load i64*, i64** %6, align 8
  %302 = load i32, i32* @qfalse, align 4
  %303 = call i32 @BotCheckBlocked(%struct.TYPE_16__* %300, i64* %301, i32 %302, %struct.TYPE_17__* %0)
  %304 = load float, float* %11, align 4
  %305 = fcmp ogt float %304, 6.000000e+01
  br i1 %305, label %306, label %307

306:                                              ; preds = %299
  store float 6.000000e+01, float* %11, align 4
  br label %307

307:                                              ; preds = %306, %299
  %308 = load float, float* %11, align 4
  %309 = fmul float 6.000000e+00, %308
  %310 = fsub float 4.000000e+02, %309
  %311 = fsub float 4.000000e+02, %310
  store float %311, float* %14, align 4
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @MFL_SWIMMING, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %330, label %318

318:                                              ; preds = %307
  %319 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %320 = load i64*, i64** %6, align 8
  %321 = call i32 @BotCheckBarrierJump(%struct.TYPE_16__* %319, i64* %320, i32 50)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %330, label %323

323:                                              ; preds = %318
  %324 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load i64*, i64** %6, align 8
  %328 = load float, float* %14, align 4
  %329 = call i32 @EA_Move(i32 %326, i64* %327, float %328)
  br label %330

330:                                              ; preds = %323, %318, %307
  %331 = load i64*, i64** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 1
  %333 = load i64*, i64** %332, align 8
  %334 = call i32 @VectorCopy(i64* %331, i64* %333)
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @MFL_SWIMMING, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %330
  %342 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = or i32 %344, %342
  store i32 %345, i32* %343, align 8
  br label %346

346:                                              ; preds = %341, %330
  br label %347

347:                                              ; preds = %346, %106
  br label %348

348:                                              ; preds = %347, %249, %167
  ret void
}

declare dso_local i32 @BotClearMoveResult(%struct.TYPE_17__*) #1

declare dso_local i64 @BotOnMover(i64*, i32, %struct.TYPE_18__*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @BotCheckBarrierJump(%struct.TYPE_16__*, i64*, i32) #1

declare dso_local i32 @EA_Move(i32, i64*, float) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @MoverBottomCenter(%struct.TYPE_18__*, i64*) #1

declare dso_local float @VectorLength(i64*) #1

declare dso_local i32 @MoverDown(%struct.TYPE_18__*) #1

declare dso_local i32 @BotCheckBlocked(%struct.TYPE_16__*, i64*, i32, %struct.TYPE_17__*) #1

declare dso_local i64 @DotProduct(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
