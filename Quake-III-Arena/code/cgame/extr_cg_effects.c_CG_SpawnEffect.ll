; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_effects.c_CG_SpawnEffect.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_effects.c_CG_SpawnEffect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { double }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { double, i32, double, double*, %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { float, i32*, i32, i32, i32, i32 }

@LE_FADE_RGB = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@RT_MODEL = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_SpawnEffect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call %struct.TYPE_9__* (...) @CG_AllocLocalEntity()
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 6
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @LE_FADE_RGB, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 8
  %11 = load double, double* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 0), align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store double %11, double* %13, align 8
  %14 = load double, double* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 0), align 8
  %15 = fadd double %14, 5.000000e+02
  %16 = fptosi double %15 to i32
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sitofp i32 %21 to double
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = fsub double %22, %25
  %27 = fdiv double 1.000000e+00, %26
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  store double %27, double* %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = load double*, double** %31, align 8
  %33 = getelementptr inbounds double, double* %32, i64 3
  store double 1.000000e+00, double* %33, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load double*, double** %35, align 8
  %37 = getelementptr inbounds double, double* %36, i64 2
  store double 1.000000e+00, double* %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  %40 = load double*, double** %39, align 8
  %41 = getelementptr inbounds double, double* %40, i64 1
  store double 1.000000e+00, double* %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  %44 = load double*, double** %43, align 8
  %45 = getelementptr inbounds double, double* %44, i64 0
  store double 1.000000e+00, double* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %4, align 8
  %48 = load i32, i32* @RT_MODEL, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load double, double* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 0), align 8
  %52 = fdiv double %51, 1.000000e+03
  %53 = fptrunc double %52 to float
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store float %53, float* %55, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 0, i32 1), align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 0, i32 0), align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @AxisClear(i32 %64)
  %66 = load i32, i32* %2, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @VectorCopy(i32 %66, i32* %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 24
  store i32 %76, i32* %74, align 4
  ret void
}

declare dso_local %struct.TYPE_9__* @CG_AllocLocalEntity(...) #1

declare dso_local i32 @AxisClear(i32) #1

declare dso_local i32 @VectorCopy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
