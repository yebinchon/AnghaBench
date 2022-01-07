; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_slidemove.c_PM_StepSlideMove.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_slidemove.c_PM_StepSlideMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_10__*, i32, i32, i32, i32 (%struct.TYPE_11__*, float*, i32, i32, float*, i32, i32)* }
%struct.TYPE_10__ = type { float*, float*, i32 }
%struct.TYPE_11__ = type { double, float*, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32 }

@pm = common dso_local global %struct.TYPE_12__* null, align 8
@STEPSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"%i:bend can't step\0A\00", align 1
@c_pmove = common dso_local global i32 0, align 4
@OVERCLIP = common dso_local global i32 0, align 4
@EV_STEP_4 = common dso_local global i32 0, align 4
@EV_STEP_8 = common dso_local global i32 0, align 4
@EV_STEP_12 = common dso_local global i32 0, align 4
@EV_STEP_16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%i:stepped\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PM_StepSlideMove(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load float*, float** %15, align 8
  %17 = load float*, float** %3, align 8
  %18 = call i32 @VectorCopy(float* %16, float* %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load float*, float** %22, align 8
  %24 = load float*, float** %4, align 8
  %25 = call i32 @VectorCopy(float* %23, float* %24)
  %26 = load i32, i32* %2, align 4
  %27 = call i64 @PM_SlideMove(i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %278

30:                                               ; preds = %1
  %31 = load float*, float** %3, align 8
  %32 = load float*, float** %9, align 8
  %33 = call i32 @VectorCopy(float* %31, float* %32)
  %34 = load i64, i64* @STEPSIZE, align 8
  %35 = sitofp i64 %34 to float
  %36 = load float*, float** %9, align 8
  %37 = getelementptr inbounds float, float* %36, i64 2
  %38 = load float, float* %37, align 4
  %39 = fsub float %38, %35
  store float %39, float* %37, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 5
  %42 = load i32 (%struct.TYPE_11__*, float*, i32, i32, float*, i32, i32)*, i32 (%struct.TYPE_11__*, float*, i32, i32, float*, i32, i32)** %41, align 8
  %43 = load float*, float** %3, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load float*, float** %9, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %42(%struct.TYPE_11__* %7, float* %43, i32 %46, i32 %49, float* %50, i32 %55, i32 %58)
  %60 = load float*, float** %8, align 8
  %61 = call i32 @VectorSet(float* %60, i32 0, i32 0, i32 1)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load float*, float** %65, align 8
  %67 = getelementptr inbounds float, float* %66, i64 2
  %68 = load float, float* %67, align 4
  %69 = fcmp ogt float %68, 0.000000e+00
  br i1 %69, label %70, label %82

70:                                               ; preds = %30
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %72 = load double, double* %71, align 8
  %73 = fcmp oeq double %72, 1.000000e+00
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load float*, float** %8, align 8
  %79 = call double @DotProduct(i32 %77, float* %78)
  %80 = fcmp olt double %79, 0x3FE6666666666666
  br i1 %80, label %81, label %82

81:                                               ; preds = %74, %70
  br label %278

82:                                               ; preds = %74, %30
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load float*, float** %86, align 8
  %88 = load float*, float** %5, align 8
  %89 = call i32 @VectorCopy(float* %87, float* %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load float*, float** %93, align 8
  %95 = load float*, float** %6, align 8
  %96 = call i32 @VectorCopy(float* %94, float* %95)
  %97 = load float*, float** %3, align 8
  %98 = load float*, float** %8, align 8
  %99 = call i32 @VectorCopy(float* %97, float* %98)
  %100 = load i64, i64* @STEPSIZE, align 8
  %101 = sitofp i64 %100 to float
  %102 = load float*, float** %8, align 8
  %103 = getelementptr inbounds float, float* %102, i64 2
  %104 = load float, float* %103, align 4
  %105 = fadd float %104, %101
  store float %105, float* %103, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 5
  %108 = load i32 (%struct.TYPE_11__*, float*, i32, i32, float*, i32, i32)*, i32 (%struct.TYPE_11__*, float*, i32, i32, float*, i32, i32)** %107, align 8
  %109 = load float*, float** %3, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load float*, float** %8, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 %108(%struct.TYPE_11__* %7, float* %109, i32 %112, i32 %115, float* %116, i32 %121, i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %82
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* @c_pmove, align 4
  %136 = call i32 @Com_Printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %134, %129
  br label %278

138:                                              ; preds = %82
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %140 = load float*, float** %139, align 8
  %141 = getelementptr inbounds float, float* %140, i64 2
  %142 = load float, float* %141, align 4
  %143 = load float*, float** %3, align 8
  %144 = getelementptr inbounds float, float* %143, i64 2
  %145 = load float, float* %144, align 4
  %146 = fsub float %142, %145
  store float %146, float* %10, align 4
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %148 = load float*, float** %147, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load float*, float** %152, align 8
  %154 = call i32 @VectorCopy(float* %148, float* %153)
  %155 = load float*, float** %4, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load float*, float** %159, align 8
  %161 = call i32 @VectorCopy(float* %155, float* %160)
  %162 = load i32, i32* %2, align 4
  %163 = call i64 @PM_SlideMove(i32 %162)
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load float*, float** %167, align 8
  %169 = load float*, float** %9, align 8
  %170 = call i32 @VectorCopy(float* %168, float* %169)
  %171 = load float, float* %10, align 4
  %172 = load float*, float** %9, align 8
  %173 = getelementptr inbounds float, float* %172, i64 2
  %174 = load float, float* %173, align 4
  %175 = fsub float %174, %171
  store float %175, float* %173, align 4
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 5
  %178 = load i32 (%struct.TYPE_11__*, float*, i32, i32, float*, i32, i32)*, i32 (%struct.TYPE_11__*, float*, i32, i32, float*, i32, i32)** %177, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load float*, float** %182, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load float*, float** %9, align 8
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i32 %178(%struct.TYPE_11__* %7, float* %183, i32 %186, i32 %189, float* %190, i32 %195, i32 %198)
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %212, label %203

203:                                              ; preds = %138
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %205 = load float*, float** %204, align 8
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load float*, float** %209, align 8
  %211 = call i32 @VectorCopy(float* %205, float* %210)
  br label %212

212:                                              ; preds = %203, %138
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %214 = load double, double* %213, align 8
  %215 = fcmp olt double %214, 1.000000e+00
  br i1 %215, label %216, label %232

216:                                              ; preds = %212
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = load float*, float** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  %229 = load float*, float** %228, align 8
  %230 = load i32, i32* @OVERCLIP, align 4
  %231 = call i32 @PM_ClipVelocity(float* %221, i32 %224, float* %229, i32 %230)
  br label %232

232:                                              ; preds = %216, %212
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = load float*, float** %236, align 8
  %238 = getelementptr inbounds float, float* %237, i64 2
  %239 = load float, float* %238, align 4
  %240 = load float*, float** %3, align 8
  %241 = getelementptr inbounds float, float* %240, i64 2
  %242 = load float, float* %241, align 4
  %243 = fsub float %239, %242
  store float %243, float* %11, align 4
  %244 = load float, float* %11, align 4
  %245 = fcmp ogt float %244, 2.000000e+00
  br i1 %245, label %246, label %270

246:                                              ; preds = %232
  %247 = load float, float* %11, align 4
  %248 = fcmp olt float %247, 7.000000e+00
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load i32, i32* @EV_STEP_4, align 4
  %251 = call i32 @PM_AddEvent(i32 %250)
  br label %269

252:                                              ; preds = %246
  %253 = load float, float* %11, align 4
  %254 = fcmp olt float %253, 1.100000e+01
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load i32, i32* @EV_STEP_8, align 4
  %257 = call i32 @PM_AddEvent(i32 %256)
  br label %268

258:                                              ; preds = %252
  %259 = load float, float* %11, align 4
  %260 = fcmp olt float %259, 1.500000e+01
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load i32, i32* @EV_STEP_12, align 4
  %263 = call i32 @PM_AddEvent(i32 %262)
  br label %267

264:                                              ; preds = %258
  %265 = load i32, i32* @EV_STEP_16, align 4
  %266 = call i32 @PM_AddEvent(i32 %265)
  br label %267

267:                                              ; preds = %264, %261
  br label %268

268:                                              ; preds = %267, %255
  br label %269

269:                                              ; preds = %268, %249
  br label %270

270:                                              ; preds = %269, %232
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %270
  %276 = load i32, i32* @c_pmove, align 4
  %277 = call i32 @Com_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %276)
  br label %278

278:                                              ; preds = %29, %81, %137, %275, %270
  ret void
}

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i64 @PM_SlideMove(i32) #1

declare dso_local i32 @VectorSet(float*, i32, i32, i32) #1

declare dso_local double @DotProduct(i32, float*) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @PM_ClipVelocity(float*, i32, float*, i32) #1

declare dso_local i32 @PM_AddEvent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
