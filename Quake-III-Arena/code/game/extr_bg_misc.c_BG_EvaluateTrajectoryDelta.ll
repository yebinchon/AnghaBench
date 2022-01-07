; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_misc.c_BG_EvaluateTrajectoryDelta.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_misc.c_BG_EvaluateTrajectoryDelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@M_PI = common dso_local global float 0.000000e+00, align 4
@DEFAULT_GRAVITY = common dso_local global float 0.000000e+00, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"BG_EvaluateTrajectoryDelta: unknown trType: %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BG_EvaluateTrajectoryDelta(%struct.TYPE_3__* %0, i32 %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store float* %2, float** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %88 [
    i32 128, label %12
    i32 132, label %12
    i32 131, label %15
    i32 129, label %21
    i32 130, label %48
    i32 133, label %67
  ]

12:                                               ; preds = %3, %3
  %13 = load float*, float** %6, align 8
  %14 = call i32 @VectorClear(float* %13)
  br label %94

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load float*, float** %6, align 8
  %20 = call i32 @VectorCopy(i32 %18, float* %19)
  br label %94

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  %27 = sitofp i32 %26 to float
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = sitofp i32 %30 to float
  %32 = fdiv float %27, %31
  store float %32, float* %7, align 4
  %33 = load float, float* %7, align 4
  %34 = load float, float* @M_PI, align 4
  %35 = fmul float %33, %34
  %36 = fmul float %35, 2.000000e+00
  %37 = call float @cos(float %36)
  store float %37, float* %8, align 4
  %38 = load float, float* %8, align 4
  %39 = fpext float %38 to double
  %40 = fmul double %39, 5.000000e-01
  %41 = fptrunc double %40 to float
  store float %41, float* %8, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load float, float* %8, align 4
  %46 = load float*, float** %6, align 8
  %47 = call i32 @VectorScale(i32 %44, float %45, float* %46)
  br label %94

48:                                               ; preds = %3
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  %57 = icmp sgt i32 %49, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load float*, float** %6, align 8
  %60 = call i32 @VectorClear(float* %59)
  br label %94

61:                                               ; preds = %48
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load float*, float** %6, align 8
  %66 = call i32 @VectorCopy(i32 %64, float* %65)
  br label %94

67:                                               ; preds = %3
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %68, %71
  %73 = sitofp i32 %72 to double
  %74 = fmul double %73, 1.000000e-03
  %75 = fptrunc double %74 to float
  store float %75, float* %7, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load float*, float** %6, align 8
  %80 = call i32 @VectorCopy(i32 %78, float* %79)
  %81 = load float, float* @DEFAULT_GRAVITY, align 4
  %82 = load float, float* %7, align 4
  %83 = fmul float %81, %82
  %84 = load float*, float** %6, align 8
  %85 = getelementptr inbounds float, float* %84, i64 2
  %86 = load float, float* %85, align 4
  %87 = fsub float %86, %83
  store float %87, float* %85, align 4
  br label %94

88:                                               ; preds = %3
  %89 = load i32, i32* @ERR_DROP, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @Com_Error(i32 %89, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %58, %88, %67, %61, %21, %15, %12
  ret void
}

declare dso_local i32 @VectorClear(float*) #1

declare dso_local i32 @VectorCopy(i32, float*) #1

declare dso_local float @cos(float) #1

declare dso_local i32 @VectorScale(i32, float, float*) #1

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
