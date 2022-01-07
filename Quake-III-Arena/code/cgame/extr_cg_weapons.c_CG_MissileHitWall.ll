; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_MissileHitWall.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_MissileHitWall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { double*, float* }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { float, i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@cg_oldRocket = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"explode1\00", align 1
@ENTITYNUM_WORLD = common dso_local global i32 0, align 4
@CHAN_AUTO = common dso_local global i32 0, align 4
@IMPACTSOUND_FLESH = common dso_local global i32 0, align 4
@IMPACTSOUND_METAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_MissileHitWall(i32 %0, i32 %1, double* %2, double* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca double*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double*, align 8
  %24 = alloca double*, align 8
  %25 = alloca float*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store double* %2, double** %8, align 8
  store double* %3, double** %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %12, align 8
  store float 3.200000e+01, float* %15, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store float 0.000000e+00, float* %16, align 4
  %26 = load double*, double** %17, align 8
  %27 = getelementptr inbounds double, double* %26, i64 0
  store double 1.000000e+00, double* %27, align 8
  %28 = load double*, double** %17, align 8
  %29 = getelementptr inbounds double, double* %28, i64 1
  store double 1.000000e+00, double* %29, align 8
  %30 = load double*, double** %17, align 8
  %31 = getelementptr inbounds double, double* %30, i64 2
  store double 0.000000e+00, double* %31, align 8
  %32 = load i32, i32* @qfalse, align 4
  store i32 %32, i32* %21, align 4
  store i32 600, i32* %22, align 4
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %34 [
    i32 135, label %35
    i32 136, label %52
    i32 129, label %58
    i32 130, label %84
    i32 132, label %89
    i32 138, label %94
    i32 128, label %100
    i32 134, label %104
  ]

34:                                               ; preds = %5
  br label %35

35:                                               ; preds = %5, %34
  %36 = call i32 (...) @rand()
  %37 = and i32 %36, 3
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %19, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 24), align 8
  store i64 %41, i64* %14, align 8
  br label %50

42:                                               ; preds = %35
  %43 = load i32, i32* %19, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 23), align 8
  store i64 %46, i64* %14, align 8
  br label %49

47:                                               ; preds = %42
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 22), align 8
  store i64 %48, i64* %14, align 8
  br label %49

49:                                               ; preds = %47, %45
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 0), align 8
  store i64 %51, i64* %12, align 8
  store float 1.200000e+01, float* %15, align 4
  br label %123

52:                                               ; preds = %5
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 1), align 8
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 2), align 8
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 19), align 8
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 3), align 8
  store i64 %56, i64* %12, align 8
  store float 6.400000e+01, float* %15, align 4
  store float 3.000000e+02, float* %16, align 4
  %57 = load i32, i32* @qtrue, align 4
  store i32 %57, i32* %21, align 4
  br label %123

58:                                               ; preds = %5
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 1), align 8
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 4), align 8
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 19), align 8
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 3), align 8
  store i64 %62, i64* %12, align 8
  store float 6.400000e+01, float* %15, align 4
  store float 3.000000e+02, float* %16, align 4
  %63 = load i32, i32* @qtrue, align 4
  store i32 %63, i32* %21, align 4
  store i32 1000, i32* %22, align 4
  %64 = load double*, double** %17, align 8
  %65 = getelementptr inbounds double, double* %64, i64 0
  store double 1.000000e+00, double* %65, align 8
  %66 = load double*, double** %17, align 8
  %67 = getelementptr inbounds double, double* %66, i64 1
  store double 7.500000e-01, double* %67, align 8
  %68 = load double*, double** %17, align 8
  %69 = getelementptr inbounds double, double* %68, i64 2
  store double 0.000000e+00, double* %69, align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg_oldRocket, i32 0, i32 0), align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %58
  %73 = load double*, double** %8, align 8
  %74 = load double*, double** %9, align 8
  %75 = load double*, double** %23, align 8
  %76 = call i32 @VectorMA(double* %73, i32 24, double* %74, double* %75)
  %77 = load double*, double** %9, align 8
  %78 = load double*, double** %24, align 8
  %79 = call i32 @VectorScale(double* %77, i32 64, double* %78)
  %80 = load double*, double** %23, align 8
  %81 = load double*, double** %24, align 8
  %82 = call i32 @CG_ParticleExplosion(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double* %80, double* %81, i32 1400, i32 20, i32 30)
  br label %83

83:                                               ; preds = %72, %58
  br label %123

84:                                               ; preds = %5
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 5), align 8
  store i64 %85, i64* %11, align 8
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 6), align 8
  store i64 %86, i64* %13, align 8
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 20), align 8
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 7), align 8
  store i64 %88, i64* %12, align 8
  store float 2.400000e+01, float* %15, align 4
  br label %123

89:                                               ; preds = %5
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 5), align 8
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 8), align 8
  store i64 %91, i64* %13, align 8
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 20), align 8
  store i64 %92, i64* %14, align 8
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 7), align 8
  store i64 %93, i64* %12, align 8
  store float 1.600000e+01, float* %15, align 4
  br label %123

94:                                               ; preds = %5
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 1), align 8
  store i64 %95, i64* %11, align 8
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 9), align 8
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 19), align 8
  store i64 %97, i64* %14, align 8
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 3), align 8
  store i64 %98, i64* %12, align 8
  store float 3.200000e+01, float* %15, align 4
  %99 = load i32, i32* @qtrue, align 4
  store i32 %99, i32* %21, align 4
  br label %123

100:                                              ; preds = %5
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 10), align 8
  store i64 %101, i64* %11, align 8
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 11), align 8
  store i64 %102, i64* %13, align 8
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 12), align 8
  store i64 %103, i64* %12, align 8
  store i64 0, i64* %14, align 8
  store float 4.000000e+00, float* %15, align 4
  br label %123

104:                                              ; preds = %5
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 10), align 8
  store i64 %105, i64* %11, align 8
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 11), align 8
  store i64 %106, i64* %13, align 8
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 12), align 8
  store i64 %107, i64* %12, align 8
  %108 = call i32 (...) @rand()
  %109 = and i32 %108, 3
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 15), align 8
  store i64 %113, i64* %14, align 8
  br label %122

114:                                              ; preds = %104
  %115 = load i32, i32* %19, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 14), align 8
  store i64 %118, i64* %14, align 8
  br label %121

119:                                              ; preds = %114
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 13), align 8
  store i64 %120, i64* %14, align 8
  br label %121

121:                                              ; preds = %119, %117
  br label %122

122:                                              ; preds = %121, %112
  store float 8.000000e+00, float* %15, align 4
  br label %123

123:                                              ; preds = %122, %100, %94, %89, %84, %83, %52, %50
  %124 = load i64, i64* %14, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load double*, double** %8, align 8
  %128 = load i32, i32* @ENTITYNUM_WORLD, align 4
  %129 = load i32, i32* @CHAN_AUTO, align 4
  %130 = load i64, i64* %14, align 8
  %131 = call i32 @trap_S_StartSound(double* %127, i32 %128, i32 %129, i64 %130)
  br label %132

132:                                              ; preds = %126, %123
  %133 = load i64, i64* %11, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %165

135:                                              ; preds = %132
  %136 = load double*, double** %8, align 8
  %137 = load double*, double** %9, align 8
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* %13, align 8
  %140 = load i32, i32* %22, align 4
  %141 = load i32, i32* %21, align 4
  %142 = call %struct.TYPE_9__* @CG_MakeExplosion(double* %136, double* %137, i64 %138, i64 %139, i32 %140, i32 %141)
  store %struct.TYPE_9__* %142, %struct.TYPE_9__** %18, align 8
  %143 = load float, float* %16, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store float %143, float* %145, align 4
  %146 = load double*, double** %17, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @VectorCopy(double* %146, i32 %149)
  %151 = load i32, i32* %6, align 4
  %152 = icmp eq i32 %151, 130
  br i1 %152, label %153, label %164

153:                                              ; preds = %135
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 0), align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load double*, double** %158, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @VectorCopy(double* %159, i32 %162)
  br label %164

164:                                              ; preds = %153, %135
  br label %165

165:                                              ; preds = %164, %132
  %166 = load i64, i64* %12, align 8
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1, i32 7), align 8
  %168 = icmp eq i64 %166, %167
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %20, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp eq i32 %170, 130
  br i1 %171, label %172, label %200

172:                                              ; preds = %165
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 0), align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  %178 = load float*, float** %177, align 8
  store float* %178, float** %25, align 8
  %179 = load i64, i64* %12, align 8
  %180 = load double*, double** %8, align 8
  %181 = load double*, double** %9, align 8
  %182 = call i32 (...) @random()
  %183 = mul nsw i32 %182, 360
  %184 = load float*, float** %25, align 8
  %185 = getelementptr inbounds float, float* %184, i64 0
  %186 = load float, float* %185, align 4
  %187 = fptosi float %186 to i32
  %188 = load float*, float** %25, align 8
  %189 = getelementptr inbounds float, float* %188, i64 1
  %190 = load float, float* %189, align 4
  %191 = fptosi float %190 to i32
  %192 = load float*, float** %25, align 8
  %193 = getelementptr inbounds float, float* %192, i64 2
  %194 = load float, float* %193, align 4
  %195 = fptosi float %194 to i32
  %196 = load i32, i32* %20, align 4
  %197 = load float, float* %15, align 4
  %198 = load i32, i32* @qfalse, align 4
  %199 = call i32 @CG_ImpactMark(i64 %179, double* %180, double* %181, i32 %183, i32 %187, i32 %191, i32 %195, i32 1, i32 %196, float %197, i32 %198)
  br label %210

200:                                              ; preds = %165
  %201 = load i64, i64* %12, align 8
  %202 = load double*, double** %8, align 8
  %203 = load double*, double** %9, align 8
  %204 = call i32 (...) @random()
  %205 = mul nsw i32 %204, 360
  %206 = load i32, i32* %20, align 4
  %207 = load float, float* %15, align 4
  %208 = load i32, i32* @qfalse, align 4
  %209 = call i32 @CG_ImpactMark(i64 %201, double* %202, double* %203, i32 %205, i32 1, i32 1, i32 1, i32 1, i32 %206, float %207, i32 %208)
  br label %210

210:                                              ; preds = %200, %172
  ret void
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @VectorMA(double*, i32, double*, double*) #1

declare dso_local i32 @VectorScale(double*, i32, double*) #1

declare dso_local i32 @CG_ParticleExplosion(i8*, double*, double*, i32, i32, i32) #1

declare dso_local i32 @trap_S_StartSound(double*, i32, i32, i64) #1

declare dso_local %struct.TYPE_9__* @CG_MakeExplosion(double*, double*, i64, i64, i32, i32) #1

declare dso_local i32 @VectorCopy(double*, i32) #1

declare dso_local i32 @CG_ImpactMark(i64, double*, double*, i32, i32, i32, i32, i32, i32, float, i32) #1

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
