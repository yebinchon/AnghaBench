; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotTravel_FuncBobbing.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotTravel_FuncBobbing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 (i32, i8*)* }
%struct.TYPE_16__ = type { i32, i64*, i32 }
%struct.TYPE_15__ = type { i32, i32, i64*, i64, i32 }
%struct.TYPE_17__ = type { i64*, i64* }

@MFL_SWIMMING = common dso_local global i32 0, align 4
@MOVERESULT_SWIMVIEW = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@RESULTTYPE_WAITFORFUNCBOBBING = common dso_local global i32 0, align 4
@MOVERESULT_WAITING = common dso_local global i32 0, align 4
@PRT_MESSAGE = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotTravel_FuncBobbing(%struct.TYPE_16__* noalias sret %0, %struct.TYPE_15__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %5, align 8
  %18 = call i32 @BotClearMoveResult(%struct.TYPE_16__* %0)
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = load i64*, i64** %11, align 8
  %21 = load i64*, i64** %12, align 8
  %22 = load i64*, i64** %13, align 8
  %23 = call i32 @BotFuncBobStartEnd(%struct.TYPE_17__* %19, i64* %20, i64* %21, i64* %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = load i64*, i64** %25, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = call i64 @BotOnMover(i64* %26, i32 %29, %struct.TYPE_17__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %106

33:                                               ; preds = %3
  %34 = load i64*, i64** %13, align 8
  %35 = load i64*, i64** %12, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = call i32 @VectorSubtract(i64* %34, i64* %35, i64* %36)
  %38 = load i64*, i64** %6, align 8
  %39 = call i32 @VectorLength(i64* %38)
  %40 = icmp slt i32 %39, 24
  br i1 %40, label %41, label %69

41:                                               ; preds = %33
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = call i32 @VectorSubtract(i64* %44, i64* %47, i64* %48)
  %50 = load i64*, i64** %9, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  store i64 0, i64* %51, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = call float @VectorNormalize(i64* %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = load i64*, i64** %9, align 8
  %56 = call i32 @BotCheckBarrierJump(%struct.TYPE_15__* %54, i64* %55, i32 100)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %41
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i64*, i64** %9, align 8
  %63 = call i32 @EA_Move(i32 %61, i64* %62, float 4.000000e+02)
  br label %64

64:                                               ; preds = %58, %41
  %65 = load i64*, i64** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = call i32 @VectorCopy(i64* %65, i64* %67)
  br label %105

69:                                               ; preds = %33
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = load i64*, i64** %10, align 8
  %72 = call i32 @MoverBottomCenter(%struct.TYPE_17__* %70, i64* %71)
  %73 = load i64*, i64** %10, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = load i64*, i64** %9, align 8
  %78 = call i32 @VectorSubtract(i64* %73, i64* %76, i64* %77)
  %79 = load i64*, i64** %9, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 2
  store i64 0, i64* %80, align 8
  %81 = load i64*, i64** %9, align 8
  %82 = call float @VectorNormalize(i64* %81)
  store float %82, float* %14, align 4
  %83 = load float, float* %14, align 4
  %84 = fcmp ogt float %83, 1.000000e+01
  br i1 %84, label %85, label %104

85:                                               ; preds = %69
  %86 = load float, float* %14, align 4
  %87 = fcmp ogt float %86, 1.000000e+02
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store float 1.000000e+02, float* %14, align 4
  br label %89

89:                                               ; preds = %88, %85
  %90 = load float, float* %14, align 4
  %91 = fmul float 4.000000e+00, %90
  %92 = fsub float 4.000000e+02, %91
  %93 = fsub float 4.000000e+02, %92
  store float %93, float* %17, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i64*, i64** %9, align 8
  %98 = load float, float* %17, align 4
  %99 = call i32 @EA_Move(i32 %96, i64* %97, float %98)
  %100 = load i64*, i64** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = call i32 @VectorCopy(i64* %100, i64* %102)
  br label %104

104:                                              ; preds = %89, %69
  br label %105

105:                                              ; preds = %104, %64
  br label %351

106:                                              ; preds = %3
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  %113 = load i64*, i64** %6, align 8
  %114 = call i32 @VectorSubtract(i64* %109, i64* %112, i64* %113)
  %115 = load i64*, i64** %6, align 8
  %116 = call i32 @VectorLength(i64* %115)
  %117 = sitofp i32 %116 to float
  store float %117, float* %14, align 4
  %118 = load float, float* %14, align 4
  %119 = fcmp olt float %118, 6.400000e+01
  br i1 %119, label %120, label %170

120:                                              ; preds = %106
  %121 = load float, float* %14, align 4
  %122 = fcmp ogt float %121, 6.000000e+01
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store float 6.000000e+01, float* %14, align 4
  br label %124

124:                                              ; preds = %123, %120
  %125 = load float, float* %14, align 4
  %126 = fmul float 6.000000e+00, %125
  %127 = fsub float 3.600000e+02, %126
  %128 = fsub float 3.600000e+02, %127
  store float %128, float* %17, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @MFL_SWIMMING, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %124
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %137 = load i64*, i64** %6, align 8
  %138 = call i32 @BotCheckBarrierJump(%struct.TYPE_15__* %136, i64* %137, i32 50)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %135, %124
  %141 = load float, float* %17, align 4
  %142 = fcmp ogt float %141, 5.000000e+00
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i64*, i64** %6, align 8
  %148 = load float, float* %17, align 4
  %149 = call i32 @EA_Move(i32 %146, i64* %147, float %148)
  br label %150

150:                                              ; preds = %143, %140
  br label %151

151:                                              ; preds = %150, %135
  %152 = load i64*, i64** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %154 = load i64*, i64** %153, align 8
  %155 = call i32 @VectorCopy(i64* %152, i64* %154)
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @MFL_SWIMMING, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %151
  %163 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %163
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %162, %151
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 3
  store i64 0, i64* %169, align 8
  br label %352

170:                                              ; preds = %106
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 2
  %176 = load i64*, i64** %175, align 8
  %177 = load i64*, i64** %7, align 8
  %178 = call i32 @VectorSubtract(i64* %173, i64* %176, i64* %177)
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
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
  store float %190, float* %15, align 4
  %191 = load i64*, i64** %13, align 8
  %192 = load i64*, i64** %11, align 8
  %193 = load i64*, i64** %6, align 8
  %194 = call i32 @VectorSubtract(i64* %191, i64* %192, i64* %193)
  %195 = load i64*, i64** %6, align 8
  %196 = call i32 @VectorLength(i64* %195)
  %197 = icmp sgt i32 %196, 16
  br i1 %197, label %198, label %260

198:                                              ; preds = %188
  %199 = load float, float* %15, align 4
  store float %199, float* %14, align 4
  %200 = load i64*, i64** %7, align 8
  %201 = load i64*, i64** %6, align 8
  %202 = call i32 @VectorCopy(i64* %200, i64* %201)
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %204 = load i64*, i64** %6, align 8
  %205 = load i32, i32* @qfalse, align 4
  %206 = call i32 @BotCheckBlocked(%struct.TYPE_15__* %203, i64* %204, i32 %205, %struct.TYPE_16__* %0)
  %207 = load float, float* %14, align 4
  %208 = fcmp ogt float %207, 6.000000e+01
  br i1 %208, label %209, label %210

209:                                              ; preds = %198
  store float 6.000000e+01, float* %14, align 4
  br label %210

210:                                              ; preds = %209, %198
  %211 = load float, float* %14, align 4
  %212 = fmul float 6.000000e+00, %211
  %213 = fsub float 3.600000e+02, %212
  %214 = fsub float 3.600000e+02, %213
  store float %214, float* %17, align 4
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @MFL_SWIMMING, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %237, label %221

221:                                              ; preds = %210
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %223 = load i64*, i64** %6, align 8
  %224 = call i32 @BotCheckBarrierJump(%struct.TYPE_15__* %222, i64* %223, i32 50)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %237, label %226

226:                                              ; preds = %221
  %227 = load float, float* %17, align 4
  %228 = fcmp ogt float %227, 5.000000e+00
  br i1 %228, label %229, label %236

229:                                              ; preds = %226
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i64*, i64** %6, align 8
  %234 = load float, float* %17, align 4
  %235 = call i32 @EA_Move(i32 %232, i64* %233, float %234)
  br label %236

236:                                              ; preds = %229, %226
  br label %237

237:                                              ; preds = %236, %221, %210
  %238 = load i64*, i64** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %240 = load i64*, i64** %239, align 8
  %241 = call i32 @VectorCopy(i64* %238, i64* %240)
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @MFL_SWIMMING, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %237
  %249 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %249
  store i32 %252, i32* %250, align 8
  br label %253

253:                                              ; preds = %248, %237
  %254 = load i32, i32* @RESULTTYPE_WAITFORFUNCBOBBING, align 4
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 2
  store i32 %254, i32* %255, align 8
  %256 = load i32, i32* @MOVERESULT_WAITING, align 4
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %256
  store i32 %259, i32* %257, align 8
  br label %352

260:                                              ; preds = %188
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %262 = load i64*, i64** %10, align 8
  %263 = call i32 @MoverBottomCenter(%struct.TYPE_17__* %261, i64* %262)
  %264 = load i64*, i64** %10, align 8
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 2
  %267 = load i64*, i64** %266, align 8
  %268 = load i64*, i64** %8, align 8
  %269 = call i32 @VectorSubtract(i64* %264, i64* %267, i64* %268)
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @MFL_SWIMMING, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %260
  %277 = load i64*, i64** %8, align 8
  %278 = getelementptr inbounds i64, i64* %277, i64 2
  store i64 0, i64* %278, align 8
  br label %279

279:                                              ; preds = %276, %260
  %280 = load i64*, i64** %8, align 8
  %281 = call float @VectorNormalize(i64* %280)
  store float %281, float* %16, align 4
  %282 = load float, float* %15, align 4
  %283 = fcmp olt float %282, 2.000000e+01
  br i1 %283, label %293, label %284

284:                                              ; preds = %279
  %285 = load float, float* %16, align 4
  %286 = load float, float* %15, align 4
  %287 = fcmp olt float %285, %286
  br i1 %287, label %293, label %288

288:                                              ; preds = %284
  %289 = load i64*, i64** %7, align 8
  %290 = load i64*, i64** %8, align 8
  %291 = call i64 @DotProduct(i64* %289, i64* %290)
  %292 = icmp slt i64 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %288, %284, %279
  %294 = load float, float* %16, align 4
  store float %294, float* %14, align 4
  %295 = load i64*, i64** %8, align 8
  %296 = load i64*, i64** %6, align 8
  %297 = call i32 @VectorCopy(i64* %295, i64* %296)
  br label %303

298:                                              ; preds = %288
  %299 = load float, float* %15, align 4
  store float %299, float* %14, align 4
  %300 = load i64*, i64** %7, align 8
  %301 = load i64*, i64** %6, align 8
  %302 = call i32 @VectorCopy(i64* %300, i64* %301)
  br label %303

303:                                              ; preds = %298, %293
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %305 = load i64*, i64** %6, align 8
  %306 = load i32, i32* @qfalse, align 4
  %307 = call i32 @BotCheckBlocked(%struct.TYPE_15__* %304, i64* %305, i32 %306, %struct.TYPE_16__* %0)
  %308 = load float, float* %14, align 4
  %309 = fcmp ogt float %308, 6.000000e+01
  br i1 %309, label %310, label %311

310:                                              ; preds = %303
  store float 6.000000e+01, float* %14, align 4
  br label %311

311:                                              ; preds = %310, %303
  %312 = load float, float* %14, align 4
  %313 = fmul float 6.000000e+00, %312
  %314 = fsub float 4.000000e+02, %313
  %315 = fsub float 4.000000e+02, %314
  store float %315, float* %17, align 4
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @MFL_SWIMMING, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %334, label %322

322:                                              ; preds = %311
  %323 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %324 = load i64*, i64** %6, align 8
  %325 = call i32 @BotCheckBarrierJump(%struct.TYPE_15__* %323, i64* %324, i32 50)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %334, label %327

327:                                              ; preds = %322
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load i64*, i64** %6, align 8
  %332 = load float, float* %17, align 4
  %333 = call i32 @EA_Move(i32 %330, i64* %331, float %332)
  br label %334

334:                                              ; preds = %327, %322, %311
  %335 = load i64*, i64** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %337 = load i64*, i64** %336, align 8
  %338 = call i32 @VectorCopy(i64* %335, i64* %337)
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @MFL_SWIMMING, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %350

345:                                              ; preds = %334
  %346 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = or i32 %348, %346
  store i32 %349, i32* %347, align 8
  br label %350

350:                                              ; preds = %345, %334
  br label %351

351:                                              ; preds = %350, %105
  br label %352

352:                                              ; preds = %351, %253, %167
  ret void
}

declare dso_local i32 @BotClearMoveResult(%struct.TYPE_16__*) #1

declare dso_local i32 @BotFuncBobStartEnd(%struct.TYPE_17__*, i64*, i64*, i64*) #1

declare dso_local i64 @BotOnMover(i64*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local i32 @VectorLength(i64*) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @BotCheckBarrierJump(%struct.TYPE_15__*, i64*, i32) #1

declare dso_local i32 @EA_Move(i32, i64*, float) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @MoverBottomCenter(%struct.TYPE_17__*, i64*) #1

declare dso_local i32 @BotCheckBlocked(%struct.TYPE_15__*, i64*, i32, %struct.TYPE_16__*) #1

declare dso_local i64 @DotProduct(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
