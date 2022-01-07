; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_pmove.c_PM_FlyMove.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_pmove.c_PM_FlyMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { float, float, float }
%struct.TYPE_4__ = type { float*, float* }

@pm = common dso_local global %struct.TYPE_5__* null, align 8
@pml = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@pm_flyaccelerate = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PM_FlyMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PM_FlyMove() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float*, align 8
  %3 = alloca float, align 4
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = call i32 (...) @PM_Friction()
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pm, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = call float @PM_CmdScale(%struct.TYPE_6__* %8)
  store float %9, float* %5, align 4
  %10 = load float, float* %5, align 4
  %11 = fcmp une float %10, 0.000000e+00
  br i1 %11, label %19, label %12

12:                                               ; preds = %0
  %13 = load float*, float** %2, align 8
  %14 = getelementptr inbounds float, float* %13, i64 0
  store float 0.000000e+00, float* %14, align 4
  %15 = load float*, float** %2, align 8
  %16 = getelementptr inbounds float, float* %15, i64 1
  store float 0.000000e+00, float* %16, align 4
  %17 = load float*, float** %2, align 8
  %18 = getelementptr inbounds float, float* %17, i64 2
  store float 0.000000e+00, float* %18, align 4
  br label %67

19:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %53, %19
  %21 = load i32, i32* %1, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  %24 = load float, float* %5, align 4
  %25 = load float*, float** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pml, i32 0, i32 0), align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4
  %30 = fmul float %24, %29
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pm, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load float, float* %33, align 4
  %35 = fmul float %30, %34
  %36 = load float, float* %5, align 4
  %37 = load float*, float** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pml, i32 0, i32 1), align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = load float, float* %40, align 4
  %42 = fmul float %36, %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pm, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load float, float* %45, align 4
  %47 = fmul float %42, %46
  %48 = fadd float %35, %47
  %49 = load float*, float** %2, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  store float %48, float* %52, align 4
  br label %53

53:                                               ; preds = %23
  %54 = load i32, i32* %1, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %1, align 4
  br label %20

56:                                               ; preds = %20
  %57 = load float, float* %5, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pm, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load float, float* %60, align 4
  %62 = fmul float %57, %61
  %63 = load float*, float** %2, align 8
  %64 = getelementptr inbounds float, float* %63, i64 2
  %65 = load float, float* %64, align 4
  %66 = fadd float %65, %62
  store float %66, float* %64, align 4
  br label %67

67:                                               ; preds = %56, %12
  %68 = load float*, float** %2, align 8
  %69 = load float*, float** %4, align 8
  %70 = call i32 @VectorCopy(float* %68, float* %69)
  %71 = load float*, float** %4, align 8
  %72 = call float @VectorNormalize(float* %71)
  store float %72, float* %3, align 4
  %73 = load float*, float** %4, align 8
  %74 = load float, float* %3, align 4
  %75 = load i32, i32* @pm_flyaccelerate, align 4
  %76 = call i32 @PM_Accelerate(float* %73, float %74, i32 %75)
  %77 = load i32, i32* @qfalse, align 4
  %78 = call i32 @PM_StepSlideMove(i32 %77)
  ret void
}

declare dso_local i32 @PM_Friction(...) #1

declare dso_local float @PM_CmdScale(%struct.TYPE_6__*) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local float @VectorNormalize(float*) #1

declare dso_local i32 @PM_Accelerate(float*, float, i32) #1

declare dso_local i32 @PM_StepSlideMove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
