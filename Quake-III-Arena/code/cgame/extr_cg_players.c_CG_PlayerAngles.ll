; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_players.c_CG_PlayerAngles.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_players.c_CG_PlayerAngles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { float }
%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_14__, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32*, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32, i8*, i8* }
%struct.TYPE_12__ = type { i32, i8* }

@CG_PlayerAngles.movementOffsets = internal global [8 x i32] [i32 0, i32 22, i32 45, i32 -22, i32 0, i32 22, i32 -45, i32 -22], align 16
@YAW = common dso_local global i64 0, align 8
@ANIM_TOGGLEBIT = common dso_local global i32 0, align 4
@LEGS_IDLE = common dso_local global i32 0, align 4
@TORSO_STAND = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@EF_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Bad player movement angle\00", align 1
@cg_swingSpeed = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@PITCH = common dso_local global i64 0, align 8
@MAX_CLIENTS = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@ROLL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32**, i32**, i32**)* @CG_PlayerAngles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_PlayerAngles(%struct.TYPE_18__* %0, i32** %1, i32** %2, i32** %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32*, align 8
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca [3 x i32*], align 16
  %19 = alloca float, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32** %3, i32*** %8, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @VectorCopy(i32 %22, i32* %23)
  %25 = load i32*, i32** %11, align 8
  %26 = load i64, i64* @YAW, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @AngleMod(i32 %28)
  %30 = load i32*, i32** %11, align 8
  %31 = load i64, i64* @YAW, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @VectorClear(i32* %33)
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @VectorClear(i32* %35)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ANIM_TOGGLEBIT, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = load i32, i32* @LEGS_IDLE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %4
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ANIM_TOGGLEBIT, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = load i32, i32* @TORSO_STAND, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %46, %4
  %57 = load i8*, i8** @qtrue, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  store i8* %57, i8** %61, align 8
  %62 = load i8*, i8** @qtrue, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  store i8* %62, i8** %66, align 8
  %67 = load i8*, i8** @qtrue, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  store i8* %67, i8** %71, align 8
  br label %72

72:                                               ; preds = %56, %46
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @EF_DEAD, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 0, i32* %15, align 4
  br label %97

81:                                               ; preds = %72
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @YAW, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %15, align 4
  %93 = icmp sgt i32 %92, 7
  br i1 %93, label %94, label %96

94:                                               ; preds = %91, %81
  %95 = call i32 @CG_Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %91
  br label %97

97:                                               ; preds = %96, %80
  %98 = load i32*, i32** %11, align 8
  %99 = load i64, i64* @YAW, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* @CG_PlayerAngles.movementOffsets, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %101, %105
  %107 = load i32*, i32** %9, align 8
  %108 = load i64, i64* @YAW, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32 %106, i32* %109, align 4
  %110 = load i32*, i32** %11, align 8
  %111 = load i64, i64* @YAW, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sitofp i32 %113 to double
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [8 x i32], [8 x i32]* @CG_PlayerAngles.movementOffsets, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sitofp i32 %118 to double
  %120 = fmul double 2.500000e-01, %119
  %121 = fadd double %114, %120
  %122 = fptosi double %121 to i32
  %123 = load i32*, i32** %10, align 8
  %124 = load i64, i64* @YAW, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32 %122, i32* %125, align 4
  %126 = load i32*, i32** %10, align 8
  %127 = load i64, i64* @YAW, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = sitofp i32 %129 to float
  %131 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg_swingSpeed, i32 0, i32 0), align 4
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 3
  %140 = call i32 @CG_SwingAngles(float %130, i32 25, i32 90, float %131, i32* %135, i8** %139)
  %141 = load i32*, i32** %9, align 8
  %142 = load i64, i64* @YAW, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = sitofp i32 %144 to float
  %146 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg_swingSpeed, i32 0, i32 0), align 4
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = call i32 @CG_SwingAngles(float %145, i32 40, i32 90, float %146, i32* %150, i8** %154)
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32*, i32** %10, align 8
  %162 = load i64, i64* @YAW, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32 %160, i32* %163, align 4
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32*, i32** %9, align 8
  %170 = load i64, i64* @YAW, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32 %168, i32* %171, align 4
  %172 = load i32*, i32** %11, align 8
  %173 = load i64, i64* @PITCH, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp sgt i32 %175, 180
  br i1 %176, label %177, label %185

177:                                              ; preds = %97
  %178 = load i32*, i32** %11, align 8
  %179 = load i64, i64* @PITCH, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 -360, %181
  %183 = sitofp i32 %182 to float
  %184 = fmul float %183, 7.500000e-01
  store float %184, float* %12, align 4
  br label %192

185:                                              ; preds = %97
  %186 = load i32*, i32** %11, align 8
  %187 = load i64, i64* @PITCH, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = sitofp i32 %189 to float
  %191 = fmul float %190, 7.500000e-01
  store float %191, float* %12, align 4
  br label %192

192:                                              ; preds = %185, %177
  %193 = load float, float* %12, align 4
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 2
  %202 = call i32 @CG_SwingAngles(float %193, i32 15, i32 30, float 0x3FB99999A0000000, i32* %197, i8** %201)
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %10, align 8
  %209 = load i64, i64* @PITCH, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32 %207, i32* %210, align 4
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  store i32 %214, i32* %16, align 4
  %215 = load i32, i32* %16, align 4
  %216 = icmp sge i32 %215, 0
  br i1 %216, label %217, label %235

217:                                              ; preds = %192
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* @MAX_CLIENTS, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %235

221:                                              ; preds = %217
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cgs, i32 0, i32 0), align 8
  %223 = load i32, i32* %16, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i64 %224
  store %struct.TYPE_17__* %225, %struct.TYPE_17__** %17, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %221
  %231 = load i32*, i32** %10, align 8
  %232 = load i64, i64* @PITCH, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  store i32 0, i32* %233, align 4
  br label %234

234:                                              ; preds = %230, %221
  br label %235

235:                                              ; preds = %234, %217, %192
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 5
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %13, align 8
  %242 = call i32 @VectorCopy(i32 %240, i32* %241)
  %243 = load i32*, i32** %13, align 8
  %244 = call float @VectorNormalize(i32* %243)
  store float %244, float* %14, align 4
  %245 = load float, float* %14, align 4
  %246 = fcmp une float %245, 0.000000e+00
  br i1 %246, label %247, label %281

247:                                              ; preds = %235
  %248 = load float, float* %14, align 4
  %249 = fmul float %248, 0x3FA99999A0000000
  store float %249, float* %14, align 4
  %250 = load i32*, i32** %9, align 8
  %251 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %252 = call i32 @AnglesToAxis(i32* %250, i32** %251)
  %253 = load float, float* %14, align 4
  %254 = load i32*, i32** %13, align 8
  %255 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 1
  %256 = load i32*, i32** %255, align 8
  %257 = call float @DotProduct(i32* %254, i32* %256)
  %258 = fmul float %253, %257
  store float %258, float* %19, align 4
  %259 = load float, float* %19, align 4
  %260 = load i32*, i32** %9, align 8
  %261 = load i64, i64* @ROLL, align 8
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = sitofp i32 %263 to float
  %265 = fsub float %264, %259
  %266 = fptosi float %265 to i32
  store i32 %266, i32* %262, align 4
  %267 = load float, float* %14, align 4
  %268 = load i32*, i32** %13, align 8
  %269 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %270 = load i32*, i32** %269, align 16
  %271 = call float @DotProduct(i32* %268, i32* %270)
  %272 = fmul float %267, %271
  store float %272, float* %19, align 4
  %273 = load float, float* %19, align 4
  %274 = load i32*, i32** %9, align 8
  %275 = load i64, i64* @PITCH, align 8
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = sitofp i32 %277 to float
  %279 = fadd float %278, %273
  %280 = fptosi float %279 to i32
  store i32 %280, i32* %276, align 4
  br label %281

281:                                              ; preds = %247, %235
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 8
  store i32 %285, i32* %16, align 4
  %286 = load i32, i32* %16, align 4
  %287 = icmp sge i32 %286, 0
  br i1 %287, label %288, label %316

288:                                              ; preds = %281
  %289 = load i32, i32* %16, align 4
  %290 = load i32, i32* @MAX_CLIENTS, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %316

292:                                              ; preds = %288
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cgs, i32 0, i32 0), align 8
  %294 = load i32, i32* %16, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i64 %295
  store %struct.TYPE_17__* %296, %struct.TYPE_17__** %17, align 8
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %315

301:                                              ; preds = %292
  %302 = load i32*, i32** %10, align 8
  %303 = load i64, i64* @YAW, align 8
  %304 = getelementptr inbounds i32, i32* %302, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32*, i32** %9, align 8
  %307 = load i64, i64* @YAW, align 8
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  store i32 %305, i32* %308, align 4
  %309 = load i32*, i32** %9, align 8
  %310 = load i64, i64* @PITCH, align 8
  %311 = getelementptr inbounds i32, i32* %309, i64 %310
  store i32 0, i32* %311, align 4
  %312 = load i32*, i32** %9, align 8
  %313 = load i64, i64* @ROLL, align 8
  %314 = getelementptr inbounds i32, i32* %312, i64 %313
  store i32 0, i32* %314, align 4
  br label %315

315:                                              ; preds = %301, %292
  br label %316

316:                                              ; preds = %315, %288, %281
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %318 = load i32*, i32** %10, align 8
  %319 = call i32 @CG_AddPainTwitch(%struct.TYPE_18__* %317, i32* %318)
  %320 = load i32*, i32** %11, align 8
  %321 = load i32*, i32** %10, align 8
  %322 = load i32*, i32** %11, align 8
  %323 = call i32 @AnglesSubtract(i32* %320, i32* %321, i32* %322)
  %324 = load i32*, i32** %10, align 8
  %325 = load i32*, i32** %9, align 8
  %326 = load i32*, i32** %10, align 8
  %327 = call i32 @AnglesSubtract(i32* %324, i32* %325, i32* %326)
  %328 = load i32*, i32** %9, align 8
  %329 = load i32**, i32*** %6, align 8
  %330 = call i32 @AnglesToAxis(i32* %328, i32** %329)
  %331 = load i32*, i32** %10, align 8
  %332 = load i32**, i32*** %7, align 8
  %333 = call i32 @AnglesToAxis(i32* %331, i32** %332)
  %334 = load i32*, i32** %11, align 8
  %335 = load i32**, i32*** %8, align 8
  %336 = call i32 @AnglesToAxis(i32* %334, i32** %335)
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @AngleMod(i32) #1

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i32 @CG_Error(i8*) #1

declare dso_local i32 @CG_SwingAngles(float, i32, i32, float, i32*, i8**) #1

declare dso_local float @VectorNormalize(i32*) #1

declare dso_local i32 @AnglesToAxis(i32*, i32**) #1

declare dso_local float @DotProduct(i32*, i32*) #1

declare dso_local i32 @CG_AddPainTwitch(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @AnglesSubtract(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
