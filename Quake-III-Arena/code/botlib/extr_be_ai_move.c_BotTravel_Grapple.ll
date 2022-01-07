; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotTravel_Grapple.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotTravel_Grapple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i32 (...)*, i32 (i32, i8*)*, i32 (i32, i32, i32, i32)* }
%struct.TYPE_21__ = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_20__ = type { i32, float, double, i32, i64, i64*, i32, i32, i32, i32* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64* }

@MFL_GRAPPLERESET = common dso_local global i32 0, align 4
@offhandgrapple = common dso_local global %struct.TYPE_24__* null, align 8
@cmd_grappleoff = common dso_local global %struct.TYPE_26__* null, align 8
@MFL_ACTIVEGRAPPLE = common dso_local global i32 0, align 4
@weapindex_grapple = common dso_local global %struct.TYPE_23__* null, align 8
@MOVERESULT_MOVEMENTWEAPON = common dso_local global i32 0, align 4
@MFL_SWIMMING = common dso_local global i32 0, align 4
@MOVERESULT_MOVEMENTVIEW = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@cmd_grappleon = common dso_local global %struct.TYPE_25__* null, align 8
@LINECOLOR_BLUE = common dso_local global i32 0, align 4
@PRT_ERROR = common dso_local global i32 0, align 4
@PRT_MESSAGE = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_27__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotTravel_Grapple(%struct.TYPE_21__* noalias sret %0, %struct.TYPE_20__* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__, align 8
  %14 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %5, align 8
  %15 = call i32 @BotClearMoveResult(%struct.TYPE_21__* %0)
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MFL_GRAPPLERESET, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %3
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** @offhandgrapple, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** @cmd_grappleoff, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @EA_Command(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %27, %22
  %36 = load i32, i32* @MFL_ACTIVEGRAPPLE, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %365

42:                                               ; preds = %3
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** @offhandgrapple, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** @weapindex_grapple, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %0, i32 0, i32 4
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @MOVERESULT_MOVEMENTWEAPON, align 4
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %0, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %48, %42
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MFL_ACTIVEGRAPPLE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %189

64:                                               ; preds = %57
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %67 = call i32 @GrappleState(%struct.TYPE_20__* %65, %struct.TYPE_22__* %66)
  store i32 %67, i32* %11, align 4
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 5
  %73 = load i64*, i64** %72, align 8
  %74 = load i64*, i64** %8, align 8
  %75 = call i32 @VectorSubtract(i32 %70, i64* %73, i64* %74)
  %76 = load i64*, i64** %8, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 2
  store i64 0, i64* %77, align 8
  %78 = load i64*, i64** %8, align 8
  %79 = call i32 @VectorLength(i64* %78)
  %80 = sitofp i32 %79 to float
  store float %80, float* %6, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %121

83:                                               ; preds = %64
  %84 = load float, float* %6, align 4
  %85 = fcmp olt float %84, 4.800000e+01
  br i1 %85, label %86, label %121

86:                                               ; preds = %83
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = load float, float* %88, align 4
  %90 = load float, float* %6, align 4
  %91 = fsub float %89, %90
  %92 = fcmp olt float %91, 1.000000e+00
  br i1 %92, label %93, label %120

93:                                               ; preds = %86
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** @offhandgrapple, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** @cmd_grappleoff, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @EA_Command(i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %98, %93
  %107 = load i32, i32* @MFL_ACTIVEGRAPPLE, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* @MFL_GRAPPLERESET, align 4
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 4
  store i64 0, i64* %119, align 8
  br label %365

120:                                              ; preds = %86
  br label %174

121:                                              ; preds = %83, %64
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load i32, i32* %11, align 4
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %169

127:                                              ; preds = %124
  %128 = load float, float* %6, align 4
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 1
  %131 = load float, float* %130, align 4
  %132 = fsub float %131, 2.000000e+00
  %133 = fcmp ogt float %128, %132
  br i1 %133, label %134, label %169

134:                                              ; preds = %127, %121
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 2
  %137 = load double, double* %136, align 8
  %138 = call double (...) @AAS_Time()
  %139 = fsub double %138, 4.000000e-01
  %140 = fcmp olt double %137, %139
  br i1 %140, label %141, label %168

141:                                              ; preds = %134
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** @offhandgrapple, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** @cmd_grappleoff, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @EA_Command(i32 %149, i32 %152)
  br label %154

154:                                              ; preds = %146, %141
  %155 = load i32, i32* @MFL_ACTIVEGRAPPLE, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load i32, i32* @MFL_GRAPPLERESET, align 4
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 4
  store i64 0, i64* %167, align 8
  br label %365

168:                                              ; preds = %134
  br label %173

169:                                              ; preds = %127, %124
  %170 = call double (...) @AAS_Time()
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 2
  store double %170, double* %172, align 8
  br label %173

173:                                              ; preds = %169, %168
  br label %174

174:                                              ; preds = %173, %120
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** @offhandgrapple, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %174
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @EA_Attack(i32 %183)
  br label %185

185:                                              ; preds = %180, %174
  %186 = load float, float* %6, align 4
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 1
  store float %186, float* %188, align 4
  br label %364

189:                                              ; preds = %57
  %190 = call double (...) @AAS_Time()
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 2
  store double %190, double* %192, align 8
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 5
  %198 = load i64*, i64** %197, align 8
  %199 = load i64*, i64** %8, align 8
  %200 = call i32 @VectorSubtract(i32 %195, i64* %198, i64* %199)
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @MFL_SWIMMING, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %189
  %208 = load i64*, i64** %8, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 2
  store i64 0, i64* %209, align 8
  br label %210

210:                                              ; preds = %207, %189
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 5
  %213 = load i64*, i64** %212, align 8
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 8
  %216 = load i32, i32* %215, align 8
  %217 = load i64*, i64** %10, align 8
  %218 = call i32 @VectorAdd(i64* %213, i32 %216, i64* %217)
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i64*, i64** %10, align 8
  %223 = load i64*, i64** %9, align 8
  %224 = call i32 @VectorSubtract(i32 %221, i64* %222, i64* %223)
  %225 = load i64*, i64** %8, align 8
  %226 = call float @VectorNormalize(i64* %225)
  store float %226, float* %6, align 4
  %227 = load i64*, i64** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %0, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @Vector2Angles(i64* %227, i32* %229)
  %231 = load i32, i32* @MOVERESULT_MOVEMENTVIEW, align 4
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %0, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %231
  store i32 %234, i32* %232, align 8
  %235 = load float, float* %6, align 4
  %236 = fcmp olt float %235, 5.000000e+00
  br i1 %236, label %237, label %323

237:                                              ; preds = %210
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %0, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 9
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @AngleDiff(i32 %241, i32 %246)
  %248 = call i32 @fabs(i32 %247)
  %249 = icmp slt i32 %248, 2
  br i1 %249, label %250, label %323

250:                                              ; preds = %237
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %0, i32 0, i32 2
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 9
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 1
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @AngleDiff(i32 %254, i32 %259)
  %261 = call i32 @fabs(i32 %260)
  %262 = icmp slt i32 %261, 2
  br i1 %262, label %263, label %323

263:                                              ; preds = %250
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 5
  %266 = load i64*, i64** %265, align 8
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 8
  %269 = load i32, i32* %268, align 8
  %270 = load i64*, i64** %10, align 8
  %271 = call i32 @VectorAdd(i64* %266, i32 %269, i64* %270)
  %272 = load i64*, i64** %10, align 8
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 7
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @CONTENTS_SOLID, align 4
  %280 = call i64* @AAS_Trace(i64* %272, i32* null, i32* null, i32 %275, i32 %278, i32 %279)
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  store i64* %280, i64** %281, align 8
  %282 = bitcast %struct.TYPE_19__* %13 to i8*
  %283 = bitcast %struct.TYPE_19__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %282, i8* align 8 %283, i64 8, i1 false)
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %288 = load i64*, i64** %287, align 8
  %289 = load i64*, i64** %8, align 8
  %290 = call i32 @VectorSubtract(i32 %286, i64* %288, i64* %289)
  %291 = load i64*, i64** %8, align 8
  %292 = call i32 @VectorLength(i64* %291)
  %293 = icmp sgt i32 %292, 16
  br i1 %293, label %294, label %297

294:                                              ; preds = %263
  %295 = load i32, i32* @qtrue, align 4
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %0, i32 0, i32 1
  store i32 %295, i32* %296, align 4
  br label %365

297:                                              ; preds = %263
  %298 = load %struct.TYPE_24__*, %struct.TYPE_24__** @offhandgrapple, align 8
  %299 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %310

302:                                              ; preds = %297
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 6
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.TYPE_25__*, %struct.TYPE_25__** @cmd_grappleon, align 8
  %307 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @EA_Command(i32 %305, i32 %308)
  br label %315

310:                                              ; preds = %297
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 6
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @EA_Attack(i32 %313)
  br label %315

315:                                              ; preds = %310, %302
  %316 = load i32, i32* @MFL_ACTIVEGRAPPLE, align 4
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = or i32 %319, %316
  store i32 %320, i32* %318, align 8
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 1
  store float 9.999990e+05, float* %322, align 4
  br label %347

323:                                              ; preds = %250, %237, %210
  %324 = load float, float* %6, align 4
  %325 = fcmp olt float %324, 7.000000e+01
  br i1 %325, label %326, label %331

326:                                              ; preds = %323
  %327 = load float, float* %6, align 4
  %328 = fmul float 4.000000e+00, %327
  %329 = fsub float 3.000000e+02, %328
  %330 = fsub float 3.000000e+02, %329
  store float %330, float* %7, align 4
  br label %332

331:                                              ; preds = %323
  store float 4.000000e+02, float* %7, align 4
  br label %332

332:                                              ; preds = %331, %326
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %334 = load i64*, i64** %8, align 8
  %335 = load i32, i32* @qtrue, align 4
  %336 = call i32 @BotCheckBlocked(%struct.TYPE_20__* %333, i64* %334, i32 %335, %struct.TYPE_21__* %0)
  %337 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %337, i32 0, i32 6
  %339 = load i32, i32* %338, align 8
  %340 = load i64*, i64** %8, align 8
  %341 = load float, float* %7, align 4
  %342 = call i32 @EA_Move(i32 %339, i64* %340, float %341)
  %343 = load i64*, i64** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %0, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @VectorCopy(i64* %343, i32 %345)
  br label %347

347:                                              ; preds = %332, %315
  %348 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %348, i32 0, i32 5
  %350 = load i64*, i64** %349, align 8
  %351 = call i32 @AAS_PointAreaNum(i64* %350)
  store i32 %351, i32* %12, align 4
  %352 = load i32, i32* %12, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %363

354:                                              ; preds = %347
  %355 = load i32, i32* %12, align 4
  %356 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 8
  %359 = icmp ne i32 %355, %358
  br i1 %359, label %360, label %363

360:                                              ; preds = %354
  %361 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %361, i32 0, i32 4
  store i64 0, i64* %362, align 8
  br label %363

363:                                              ; preds = %360, %354, %347
  br label %364

364:                                              ; preds = %363, %185
  br label %365

365:                                              ; preds = %364, %294, %154, %106, %35
  ret void
}

declare dso_local i32 @BotClearMoveResult(%struct.TYPE_21__*) #1

declare dso_local i32 @EA_Command(i32, i32) #1

declare dso_local i32 @GrappleState(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @VectorSubtract(i32, i64*, i64*) #1

declare dso_local i32 @VectorLength(i64*) #1

declare dso_local double @AAS_Time(...) #1

declare dso_local i32 @EA_Attack(i32) #1

declare dso_local i32 @VectorAdd(i64*, i32, i64*) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @Vector2Angles(i64*, i32*) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local i32 @AngleDiff(i32, i32) #1

declare dso_local i64* @AAS_Trace(i64*, i32*, i32*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BotCheckBlocked(%struct.TYPE_20__*, i64*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @EA_Move(i32, i64*, float) #1

declare dso_local i32 @VectorCopy(i64*, i32) #1

declare dso_local i32 @AAS_PointAreaNum(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
