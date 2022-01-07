; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_drawtools.c_CG_FadeColor.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_drawtools.c_CG_FadeColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@CG_FadeColor.color = internal global float* null, align 8
@cg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@FADE_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float* @CG_FadeColor(i32 %0, i32 %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store float* null, float** %3, align 8
  br label %47

10:                                               ; preds = %2
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cg, i32 0, i32 0), align 4
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store float* null, float** %3, align 8
  br label %47

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %19, %20
  %22 = load i32, i32* @FADE_TIME, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sitofp i32 %27 to double
  %29 = fmul double %28, 1.000000e+00
  %30 = load i32, i32* @FADE_TIME, align 4
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %29, %31
  %33 = fptrunc double %32 to float
  %34 = load float*, float** @CG_FadeColor.color, align 8
  %35 = getelementptr inbounds float, float* %34, i64 3
  store float %33, float* %35, align 4
  br label %39

36:                                               ; preds = %18
  %37 = load float*, float** @CG_FadeColor.color, align 8
  %38 = getelementptr inbounds float, float* %37, i64 3
  store float 1.000000e+00, float* %38, align 4
  br label %39

39:                                               ; preds = %36, %24
  %40 = load float*, float** @CG_FadeColor.color, align 8
  %41 = getelementptr inbounds float, float* %40, i64 2
  store float 1.000000e+00, float* %41, align 4
  %42 = load float*, float** @CG_FadeColor.color, align 8
  %43 = getelementptr inbounds float, float* %42, i64 1
  store float 1.000000e+00, float* %43, align 4
  %44 = load float*, float** @CG_FadeColor.color, align 8
  %45 = getelementptr inbounds float, float* %44, i64 0
  store float 1.000000e+00, float* %45, align 4
  %46 = load float*, float** @CG_FadeColor.color, align 8
  store float* %46, float** %3, align 8
  br label %47

47:                                               ; preds = %39, %17, %9
  %48 = load float*, float** %3, align 8
  ret float* %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
