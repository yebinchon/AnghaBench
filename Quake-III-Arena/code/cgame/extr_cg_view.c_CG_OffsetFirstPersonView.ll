; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_view.c_CG_OffsetFirstPersonView.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_view.c_CG_OffsetFirstPersonView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { float*, float, float, float, float, float, float, i32, float, i32, i32, i32, float, %struct.TYPE_15__, i32, %struct.TYPE_14__, i32, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { float*, i32* }
%struct.TYPE_14__ = type { i32, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, float* }
%struct.TYPE_17__ = type { float }
%struct.TYPE_16__ = type { float }
%struct.TYPE_20__ = type { float }
%struct.TYPE_19__ = type { float }
%struct.TYPE_18__ = type { float }

@cg = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@PM_INTERMISSION = common dso_local global i64 0, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@STAT_DEAD_YAW = common dso_local global i64 0, align 8
@YAW = common dso_local global i64 0, align 8
@DAMAGE_DEFLECT_TIME = common dso_local global float 0.000000e+00, align 4
@DAMAGE_RETURN_TIME = common dso_local global float 0.000000e+00, align 4
@cg_runpitch = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@cg_runroll = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@cg_bobpitch = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@PMF_DUCKED = common dso_local global i32 0, align 4
@cg_bobroll = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@DUCK_TIME = common dso_local global i32 0, align 4
@cg_bobup = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@LAND_DEFLECT_TIME = common dso_local global float 0.000000e+00, align 4
@LAND_RETURN_TIME = common dso_local global float 0.000000e+00, align 4
@FALL_TIME = common dso_local global float 0.000000e+00, align 4
@NECK_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_OffsetFirstPersonView to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_OffsetFirstPersonView() #0 {
  %1 = alloca float*, align 8
  %2 = alloca float*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 17), align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PM_INTERMISSION, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  br label %288

17:                                               ; preds = %0
  %18 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 13, i32 0), align 8
  store float* %18, float** %1, align 8
  %19 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 0), align 8
  store float* %19, float** %2, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 17), align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load float*, float** %22, align 8
  %24 = load i64, i64* @STAT_HEALTH, align 8
  %25 = getelementptr inbounds float, float* %23, i64 %24
  %26 = load float, float* %25, align 4
  %27 = fcmp ole float %26, 0.000000e+00
  br i1 %27, label %28, label %51

28:                                               ; preds = %17
  %29 = load float*, float** %2, align 8
  %30 = load i64, i64* @ROLL, align 8
  %31 = getelementptr inbounds float, float* %29, i64 %30
  store float 4.000000e+01, float* %31, align 4
  %32 = load float*, float** %2, align 8
  %33 = load i64, i64* @PITCH, align 8
  %34 = getelementptr inbounds float, float* %32, i64 %33
  store float -1.500000e+01, float* %34, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 17), align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load float*, float** %37, align 8
  %39 = load i64, i64* @STAT_DEAD_YAW, align 8
  %40 = getelementptr inbounds float, float* %38, i64 %39
  %41 = load float, float* %40, align 4
  %42 = load float*, float** %2, align 8
  %43 = load i64, i64* @YAW, align 8
  %44 = getelementptr inbounds float, float* %42, i64 %43
  store float %41, float* %44, align 4
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 15, i32 1), align 8
  %46 = sitofp i64 %45 to float
  %47 = load float*, float** %1, align 8
  %48 = getelementptr inbounds float, float* %47, i64 2
  %49 = load float, float* %48, align 4
  %50 = fadd float %49, %46
  store float %50, float* %48, align 4
  br label %288

51:                                               ; preds = %17
  %52 = load float*, float** %2, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 16), align 8
  %54 = load float*, float** %2, align 8
  %55 = call i32 @VectorAdd(float* %52, i32 %53, float* %54)
  %56 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 1), align 8
  %57 = fcmp une float %56, 0.000000e+00
  br i1 %57, label %58, label %115

58:                                               ; preds = %51
  %59 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 2), align 4
  %60 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 1), align 8
  %61 = fsub float %59, %60
  store float %61, float* %4, align 4
  %62 = load float, float* %4, align 4
  %63 = load float, float* @DAMAGE_DEFLECT_TIME, align 4
  %64 = fcmp olt float %62, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %58
  %66 = load float, float* @DAMAGE_DEFLECT_TIME, align 4
  %67 = load float, float* %4, align 4
  %68 = fdiv float %67, %66
  store float %68, float* %4, align 4
  %69 = load float, float* %4, align 4
  %70 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 3), align 8
  %71 = fmul float %69, %70
  %72 = load float*, float** %2, align 8
  %73 = load i64, i64* @PITCH, align 8
  %74 = getelementptr inbounds float, float* %72, i64 %73
  %75 = load float, float* %74, align 4
  %76 = fadd float %75, %71
  store float %76, float* %74, align 4
  %77 = load float, float* %4, align 4
  %78 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 4), align 4
  %79 = fmul float %77, %78
  %80 = load float*, float** %2, align 8
  %81 = load i64, i64* @ROLL, align 8
  %82 = getelementptr inbounds float, float* %80, i64 %81
  %83 = load float, float* %82, align 4
  %84 = fadd float %83, %79
  store float %84, float* %82, align 4
  br label %114

85:                                               ; preds = %58
  %86 = load float, float* %4, align 4
  %87 = load float, float* @DAMAGE_DEFLECT_TIME, align 4
  %88 = fsub float %86, %87
  %89 = load float, float* @DAMAGE_RETURN_TIME, align 4
  %90 = fdiv float %88, %89
  %91 = fpext float %90 to double
  %92 = fsub double 1.000000e+00, %91
  %93 = fptrunc double %92 to float
  store float %93, float* %4, align 4
  %94 = load float, float* %4, align 4
  %95 = fcmp ogt float %94, 0.000000e+00
  br i1 %95, label %96, label %113

96:                                               ; preds = %85
  %97 = load float, float* %4, align 4
  %98 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 3), align 8
  %99 = fmul float %97, %98
  %100 = load float*, float** %2, align 8
  %101 = load i64, i64* @PITCH, align 8
  %102 = getelementptr inbounds float, float* %100, i64 %101
  %103 = load float, float* %102, align 4
  %104 = fadd float %103, %99
  store float %104, float* %102, align 4
  %105 = load float, float* %4, align 4
  %106 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 4), align 4
  %107 = fmul float %105, %106
  %108 = load float*, float** %2, align 8
  %109 = load i64, i64* @ROLL, align 8
  %110 = getelementptr inbounds float, float* %108, i64 %109
  %111 = load float, float* %110, align 4
  %112 = fadd float %111, %107
  store float %112, float* %110, align 4
  br label %113

113:                                              ; preds = %96, %85
  br label %114

114:                                              ; preds = %113, %65
  br label %115

115:                                              ; preds = %114, %51
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 15, i32 2), align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @VectorCopy(i32 %116, i32 %117)
  %119 = load i32, i32* %8, align 4
  %120 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 13, i32 1), align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = call float @DotProduct(i32 %119, i32 %122)
  store float %123, float* %5, align 4
  %124 = load float, float* %5, align 4
  %125 = load float, float* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg_runpitch, i32 0, i32 0), align 4
  %126 = fmul float %124, %125
  %127 = load float*, float** %2, align 8
  %128 = load i64, i64* @PITCH, align 8
  %129 = getelementptr inbounds float, float* %127, i64 %128
  %130 = load float, float* %129, align 4
  %131 = fadd float %130, %126
  store float %131, float* %129, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 13, i32 1), align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = call float @DotProduct(i32 %132, i32 %135)
  store float %136, float* %5, align 4
  %137 = load float, float* %5, align 4
  %138 = load float, float* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg_runroll, i32 0, i32 0), align 4
  %139 = fmul float %137, %138
  %140 = load float*, float** %2, align 8
  %141 = load i64, i64* @ROLL, align 8
  %142 = getelementptr inbounds float, float* %140, i64 %141
  %143 = load float, float* %142, align 4
  %144 = fsub float %143, %139
  store float %144, float* %142, align 4
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 7), align 8
  %146 = icmp sgt i32 %145, 200
  br i1 %146, label %147, label %149

147:                                              ; preds = %115
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 7), align 8
  br label %150

149:                                              ; preds = %115
  br label %150

150:                                              ; preds = %149, %147
  %151 = phi i32 [ %148, %147 ], [ 200, %149 ]
  %152 = sitofp i32 %151 to float
  store float %152, float* %6, align 4
  %153 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 8), align 4
  %154 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg_bobpitch, i32 0, i32 0), align 4
  %155 = fmul float %153, %154
  %156 = load float, float* %6, align 4
  %157 = fmul float %155, %156
  store float %157, float* %5, align 4
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 15, i32 0), align 8
  %159 = load i32, i32* @PMF_DUCKED, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %150
  %163 = load float, float* %5, align 4
  %164 = fmul float %163, 3.000000e+00
  store float %164, float* %5, align 4
  br label %165

165:                                              ; preds = %162, %150
  %166 = load float, float* %5, align 4
  %167 = load float*, float** %2, align 8
  %168 = load i64, i64* @PITCH, align 8
  %169 = getelementptr inbounds float, float* %167, i64 %168
  %170 = load float, float* %169, align 4
  %171 = fadd float %170, %166
  store float %171, float* %169, align 4
  %172 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 8), align 4
  %173 = load float, float* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg_bobroll, i32 0, i32 0), align 4
  %174 = fmul float %172, %173
  %175 = load float, float* %6, align 4
  %176 = fmul float %174, %175
  store float %176, float* %5, align 4
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 15, i32 0), align 8
  %178 = load i32, i32* @PMF_DUCKED, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %165
  %182 = load float, float* %5, align 4
  %183 = fmul float %182, 3.000000e+00
  store float %183, float* %5, align 4
  br label %184

184:                                              ; preds = %181, %165
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 9), align 8
  %186 = and i32 %185, 1
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load float, float* %5, align 4
  %190 = fneg float %189
  store float %190, float* %5, align 4
  br label %191

191:                                              ; preds = %188, %184
  %192 = load float, float* %5, align 4
  %193 = load float*, float** %2, align 8
  %194 = load i64, i64* @ROLL, align 8
  %195 = getelementptr inbounds float, float* %193, i64 %194
  %196 = load float, float* %195, align 4
  %197 = fadd float %196, %192
  store float %197, float* %195, align 4
  %198 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 15, i32 1), align 8
  %199 = sitofp i64 %198 to float
  %200 = load float*, float** %1, align 8
  %201 = getelementptr inbounds float, float* %200, i64 2
  %202 = load float, float* %201, align 4
  %203 = fadd float %202, %199
  store float %203, float* %201, align 4
  %204 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 2), align 4
  %205 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 10), align 4
  %206 = sitofp i32 %205 to float
  %207 = fsub float %204, %206
  %208 = fptosi float %207 to i32
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* @DUCK_TIME, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %225

212:                                              ; preds = %191
  %213 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 11), align 8
  %214 = load i32, i32* @DUCK_TIME, align 4
  %215 = load i32, i32* %9, align 4
  %216 = sub nsw i32 %214, %215
  %217 = mul nsw i32 %213, %216
  %218 = load i32, i32* @DUCK_TIME, align 4
  %219 = sdiv i32 %217, %218
  %220 = sitofp i32 %219 to float
  %221 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 13, i32 0), align 8
  %222 = getelementptr inbounds float, float* %221, i64 2
  %223 = load float, float* %222, align 4
  %224 = fsub float %223, %220
  store float %224, float* %222, align 4
  br label %225

225:                                              ; preds = %212, %191
  %226 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 8), align 4
  %227 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 7), align 8
  %228 = sitofp i32 %227 to float
  %229 = fmul float %226, %228
  %230 = load float, float* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_bobup, i32 0, i32 0), align 4
  %231 = fmul float %229, %230
  store float %231, float* %3, align 4
  %232 = load float, float* %3, align 4
  %233 = fcmp ogt float %232, 6.000000e+00
  br i1 %233, label %234, label %235

234:                                              ; preds = %225
  store float 6.000000e+00, float* %3, align 4
  br label %235

235:                                              ; preds = %234, %225
  %236 = load float, float* %3, align 4
  %237 = load float*, float** %1, align 8
  %238 = getelementptr inbounds float, float* %237, i64 2
  %239 = load float, float* %238, align 4
  %240 = fadd float %239, %236
  store float %240, float* %238, align 4
  %241 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 2), align 4
  %242 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 5), align 8
  %243 = fsub float %241, %242
  store float %243, float* %5, align 4
  %244 = load float, float* %5, align 4
  %245 = load float, float* @LAND_DEFLECT_TIME, align 4
  %246 = fcmp olt float %244, %245
  br i1 %246, label %247, label %258

247:                                              ; preds = %235
  %248 = load float, float* %5, align 4
  %249 = load float, float* @LAND_DEFLECT_TIME, align 4
  %250 = fdiv float %248, %249
  store float %250, float* %7, align 4
  %251 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 12), align 4
  %252 = load float, float* %7, align 4
  %253 = fmul float %251, %252
  %254 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 13, i32 0), align 8
  %255 = getelementptr inbounds float, float* %254, i64 2
  %256 = load float, float* %255, align 4
  %257 = fadd float %256, %253
  store float %257, float* %255, align 4
  br label %282

258:                                              ; preds = %235
  %259 = load float, float* %5, align 4
  %260 = load float, float* @LAND_DEFLECT_TIME, align 4
  %261 = load float, float* @LAND_RETURN_TIME, align 4
  %262 = fadd float %260, %261
  %263 = fcmp olt float %259, %262
  br i1 %263, label %264, label %281

264:                                              ; preds = %258
  %265 = load float, float* @LAND_DEFLECT_TIME, align 4
  %266 = load float, float* %5, align 4
  %267 = fsub float %266, %265
  store float %267, float* %5, align 4
  %268 = load float, float* %5, align 4
  %269 = load float, float* @LAND_RETURN_TIME, align 4
  %270 = fdiv float %268, %269
  %271 = fpext float %270 to double
  %272 = fsub double 1.000000e+00, %271
  %273 = fptrunc double %272 to float
  store float %273, float* %7, align 4
  %274 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 12), align 4
  %275 = load float, float* %7, align 4
  %276 = fmul float %274, %275
  %277 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 13, i32 0), align 8
  %278 = getelementptr inbounds float, float* %277, i64 2
  %279 = load float, float* %278, align 4
  %280 = fadd float %279, %276
  store float %280, float* %278, align 4
  br label %281

281:                                              ; preds = %264, %258
  br label %282

282:                                              ; preds = %281, %247
  %283 = call i32 (...) @CG_StepOffset()
  %284 = load float*, float** %1, align 8
  %285 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 14), align 8
  %286 = load float*, float** %1, align 8
  %287 = call i32 @VectorAdd(float* %284, i32 %285, float* %286)
  br label %288

288:                                              ; preds = %282, %28, %16
  ret void
}

declare dso_local i32 @VectorAdd(float*, i32, float*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i32 @CG_StepOffset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
