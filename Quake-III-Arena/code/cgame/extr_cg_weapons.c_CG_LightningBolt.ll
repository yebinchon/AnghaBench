; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_LightningBolt.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_LightningBolt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { float*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { double }
%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_21__ = type { float*, i32*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_19__ = type { i32*, double }
%struct.TYPE_20__ = type { i32*, i32*, i32, i32, i32, i32 }

@WP_LIGHTNING = common dso_local global i64 0, align 8
@cg = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@cg_trueLightning = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@DEFAULT_VIEWHEIGHT = common dso_local global i64 0, align 8
@LIGHTNING_RANGE = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@MASK_SHOT = common dso_local global i32 0, align 4
@RT_LIGHTNING = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32*)* @CG_LightningBolt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_LightningBolt(%struct.TYPE_21__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__, align 8
  %6 = alloca %struct.TYPE_20__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WP_LIGHTNING, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %211

22:                                               ; preds = %2
  %23 = call i32 @memset(%struct.TYPE_20__* %6, i32 0, i32 32)
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1, i32 0), align 8
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %120

30:                                               ; preds = %22
  %31 = load double, double* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg_trueLightning, i32 0, i32 0), align 8
  %32 = fcmp une double %31, 0.000000e+00
  br i1 %32, label %33, label %120

33:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %108, %33
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %111

37:                                               ; preds = %34
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load float*, float** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %40, i64 %42
  %44 = load float, float* %43, align 4
  %45 = load float*, float** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  %49 = load float, float* %48, align 4
  %50 = fsub float %44, %49
  store float %50, float* %12, align 4
  %51 = load float, float* %12, align 4
  %52 = fcmp ogt float %51, 1.800000e+02
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = load float, float* %12, align 4
  %55 = fsub float %54, 3.600000e+02
  store float %55, float* %12, align 4
  br label %56

56:                                               ; preds = %53, %37
  %57 = load float, float* %12, align 4
  %58 = fcmp olt float %57, -1.800000e+02
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load float, float* %12, align 4
  %61 = fadd float %60, 3.600000e+02
  store float %61, float* %12, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load float*, float** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  %67 = load float, float* %66, align 4
  %68 = fpext float %67 to double
  %69 = load float, float* %12, align 4
  %70 = fpext float %69 to double
  %71 = load double, double* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg_trueLightning, i32 0, i32 0), align 8
  %72 = fsub double 1.000000e+00, %71
  %73 = fmul double %70, %72
  %74 = fadd double %68, %73
  %75 = fptosi double %74 to i32
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %62
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 360
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %86, %62
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 360
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 360
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %100, %93
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %34

111:                                              ; preds = %34
  %112 = load i32*, i32** %10, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @AngleVectors(i32* %112, i32* %113, i32* null, i32* null)
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = call i32 @VectorCopy(i32* %117, i32* %118)
  br label %132

120:                                              ; preds = %30, %22
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load float*, float** %122, align 8
  %124 = bitcast float* %123 to i32*
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @AngleVectors(i32* %124, i32* %125, i32* null, i32* null)
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = call i32 @VectorCopy(i32* %129, i32* %130)
  br label %132

132:                                              ; preds = %120, %111
  %133 = load i64, i64* @DEFAULT_VIEWHEIGHT, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %133
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %135, align 4
  %140 = load i32*, i32** %8, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @VectorMA(i32* %140, i32 14, i32* %141, i32* %142)
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* @LIGHTNING_RANGE, align 4
  %146 = load i32*, i32** %7, align 8
  %147 = load i32*, i32** %9, align 8
  %148 = call i32 @VectorMA(i32* %144, i32 %145, i32* %146, i32* %147)
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* @vec3_origin, align 4
  %151 = load i32, i32* @vec3_origin, align 4
  %152 = load i32*, i32** %9, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @MASK_SHOT, align 4
  %158 = call i32 @CG_Trace(%struct.TYPE_19__* %5, i32* %149, i32 %150, i32 %151, i32* %152, i32 %156, i32 %157)
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @VectorCopy(i32* %160, i32* %162)
  %164 = load i32*, i32** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @VectorCopy(i32* %164, i32* %166)
  %168 = load i32, i32* @RT_LIGHTNING, align 4
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 5
  store i32 %168, i32* %169, align 4
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cgs, i32 0, i32 0, i32 1), align 4
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 4
  store i32 %170, i32* %171, align 8
  %172 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_20__* %6)
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %174 = load double, double* %173, align 8
  %175 = fcmp olt double %174, 1.000000e+00
  br i1 %175, label %176, label %211

176:                                              ; preds = %132
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load i32*, i32** %14, align 8
  %182 = call i32 @VectorSubtract(i32* %178, i32* %180, i32* %181)
  %183 = load i32*, i32** %14, align 8
  %184 = call i32 @VectorNormalize(i32* %183)
  %185 = call i32 @memset(%struct.TYPE_20__* %6, i32 0, i32 32)
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cgs, i32 0, i32 0, i32 0), align 4
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 3
  store i32 %186, i32* %187, align 4
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32*, i32** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @VectorMA(i32* %189, i32 -16, i32* %190, i32* %192)
  %194 = call i32 (...) @rand()
  %195 = srem i32 %194, 360
  %196 = load i32*, i32** %13, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  store i32 %195, i32* %197, align 4
  %198 = call i32 (...) @rand()
  %199 = srem i32 %198, 360
  %200 = load i32*, i32** %13, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  store i32 %199, i32* %201, align 4
  %202 = call i32 (...) @rand()
  %203 = srem i32 %202, 360
  %204 = load i32*, i32** %13, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 2
  store i32 %203, i32* %205, align 4
  %206 = load i32*, i32** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @AnglesToAxis(i32* %206, i32 %208)
  %210 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_20__* %6)
  br label %211

211:                                              ; preds = %21, %176, %132
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @AngleVectors(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @VectorMA(i32*, i32, i32*, i32*) #1

declare dso_local i32 @CG_Trace(%struct.TYPE_19__*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_20__*) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local i32 @VectorNormalize(i32*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @AnglesToAxis(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
