; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_R_FogFactor.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_R_FogFactor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float* }

@tr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FOG_TABLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @R_FogFactor(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %7 = load float, float* %4, align 4
  %8 = fpext float %7 to double
  %9 = fsub double %8, 0x3F60000000000000
  %10 = fptrunc double %9 to float
  store float %10, float* %4, align 4
  %11 = load float, float* %4, align 4
  %12 = fcmp olt float %11, 0.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store float 0.000000e+00, float* %3, align 4
  br label %48

14:                                               ; preds = %2
  %15 = load float, float* %5, align 4
  %16 = fpext float %15 to double
  %17 = fcmp olt double %16, 3.125000e-02
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store float 0.000000e+00, float* %3, align 4
  br label %48

19:                                               ; preds = %14
  %20 = load float, float* %5, align 4
  %21 = fpext float %20 to double
  %22 = fcmp olt double %21, 9.687500e-01
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load float, float* %5, align 4
  %25 = fsub float %24, 3.125000e-02
  %26 = fdiv float %25, 9.375000e-01
  %27 = load float, float* %4, align 4
  %28 = fmul float %27, %26
  store float %28, float* %4, align 4
  br label %29

29:                                               ; preds = %23, %19
  %30 = load float, float* %4, align 4
  %31 = fmul float %30, 8.000000e+00
  store float %31, float* %4, align 4
  %32 = load float, float* %4, align 4
  %33 = fpext float %32 to double
  %34 = fcmp ogt double %33, 1.000000e+00
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store float 1.000000e+00, float* %4, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load float*, float** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tr, i32 0, i32 0), align 8
  %38 = load float, float* %4, align 4
  %39 = load i32, i32* @FOG_TABLE_SIZE, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sitofp i32 %40 to float
  %42 = fmul float %38, %41
  %43 = fptosi float %42 to i32
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %37, i64 %44
  %46 = load float, float* %45, align 4
  store float %46, float* %6, align 4
  %47 = load float, float* %6, align 4
  store float %47, float* %3, align 4
  br label %48

48:                                               ; preds = %36, %18, %13
  %49 = load float, float* %3, align 4
  ret float %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
