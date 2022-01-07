; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_effects.c_CG_BubbleTrail.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_effects.c_CG_BubbleTrail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, double, double*, %struct.TYPE_10__, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_10__ = type { float, i32*, i32, i32 }
%struct.TYPE_11__ = type { float, i32, i32*, i32, i64, i32 }

@cg_noProjectileTrail = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@LEF_PUFF_DONT_SCALE = common dso_local global i32 0, align 4
@LE_MOVE_SCALE_FADE = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@RT_SPRITE = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@TR_LINEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_BubbleTrail(i32 %0, i32 %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store float %2, float* %6, align 4
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg_noProjectileTrail, i32 0, i32 0), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %157

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @VectorCopy(i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @VectorSubtract(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call float @VectorNormalize(i32 %24)
  store float %25, float* %9, align 4
  %26 = call i32 (...) @rand()
  %27 = load float, float* %6, align 4
  %28 = fptosi float %27 to i32
  %29 = srem i32 %26, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @VectorMA(i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load float, float* %6, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @VectorScale(i32 %35, float %36, i32 %37)
  br label %39

39:                                               ; preds = %151, %16
  %40 = load i32, i32* %10, align 4
  %41 = sitofp i32 %40 to float
  %42 = load float, float* %9, align 4
  %43 = fcmp olt float %41, %42
  br i1 %43, label %44, label %157

44:                                               ; preds = %39
  %45 = call %struct.TYPE_12__* (...) @CG_AllocLocalEntity()
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %11, align 8
  %46 = load i32, i32* @LEF_PUFF_DONT_SCALE, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @LE_MOVE_SCALE_FADE, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 4
  %56 = add nsw i32 %55, 1000
  %57 = call i32 (...) @random()
  %58 = mul nsw i32 %57, 250
  %59 = add nsw i32 %56, %58
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %64, %67
  %69 = sitofp i32 %68 to double
  %70 = fdiv double 1.000000e+00, %69
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  store double %70, double* %72, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 5
  store %struct.TYPE_11__* %74, %struct.TYPE_11__** %12, align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 4
  %76 = sitofp i32 %75 to float
  %77 = fdiv float %76, 1.000000e+03
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store float %77, float* %79, align 8
  %80 = load i32, i32* @RT_SPRITE, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 4
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  store i32 3, i32* %86, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cgs, i32 0, i32 0, i32 0), align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 255, i32* %93, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  store i32 255, i32* %97, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 255, i32* %101, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  store i32 255, i32* %105, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  %108 = load double*, double** %107, align 8
  %109 = getelementptr inbounds double, double* %108, i64 3
  store double 1.000000e+00, double* %109, align 8
  %110 = load i32, i32* @TR_LINEAR, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 3
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 4
  %115 = sitofp i32 %114 to float
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  store float %115, float* %118, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @VectorCopy(i32 %119, i32 %123)
  %125 = call i32 (...) @crandom()
  %126 = mul nsw i32 %125, 5
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 %126, i32* %131, align 4
  %132 = call i32 (...) @crandom()
  %133 = mul nsw i32 %132, 5
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  store i32 %133, i32* %138, align 4
  %139 = call i32 (...) @crandom()
  %140 = mul nsw i32 %139, 5
  %141 = add nsw i32 %140, 6
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  store i32 %141, i32* %146, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @VectorAdd(i32 %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %44
  %152 = load float, float* %6, align 4
  %153 = load i32, i32* %10, align 4
  %154 = sitofp i32 %153 to float
  %155 = fadd float %154, %152
  %156 = fptosi float %155 to i32
  store i32 %156, i32* %10, align 4
  br label %39

157:                                              ; preds = %15, %39
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @VectorNormalize(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #1

declare dso_local i32 @VectorScale(i32, float, i32) #1

declare dso_local %struct.TYPE_12__* @CG_AllocLocalEntity(...) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
