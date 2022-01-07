; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitLightDistAttn.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitLightDistAttn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gx_litobj = type { float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_InitLightDistAttn(i32* %0, float %1, float %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.__gx_litobj*, align 8
  store i32* %0, i32** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to %struct.__gx_litobj*
  store %struct.__gx_litobj* %14, %struct.__gx_litobj** %12, align 8
  %15 = load float, float* %6, align 4
  %16 = fcmp olt float %15, 0.000000e+00
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load float, float* %7, align 4
  %19 = fcmp olt float %18, 0.000000e+00
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load float, float* %7, align 4
  %22 = fcmp oge float %21, 1.000000e+00
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %4
  store i32 129, i32* %8, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %60 [
    i32 131, label %26
    i32 130, label %33
    i32 128, label %50
    i32 129, label %59
  ]

26:                                               ; preds = %24
  store float 1.000000e+00, float* %9, align 4
  %27 = load float, float* %7, align 4
  %28 = fsub float 1.000000e+00, %27
  %29 = load float, float* %7, align 4
  %30 = load float, float* %6, align 4
  %31 = fmul float %29, %30
  %32 = fdiv float %28, %31
  store float %32, float* %10, align 4
  store float 0.000000e+00, float* %11, align 4
  br label %61

33:                                               ; preds = %24
  store float 1.000000e+00, float* %9, align 4
  %34 = load float, float* %7, align 4
  %35 = fsub float 1.000000e+00, %34
  %36 = fmul float 5.000000e-01, %35
  %37 = load float, float* %7, align 4
  %38 = load float, float* %6, align 4
  %39 = fmul float %37, %38
  %40 = fdiv float %36, %39
  store float %40, float* %10, align 4
  %41 = load float, float* %7, align 4
  %42 = fsub float 1.000000e+00, %41
  %43 = fmul float 5.000000e-01, %42
  %44 = load float, float* %7, align 4
  %45 = load float, float* %6, align 4
  %46 = fmul float %44, %45
  %47 = load float, float* %6, align 4
  %48 = fmul float %46, %47
  %49 = fdiv float %43, %48
  store float %49, float* %11, align 4
  br label %61

50:                                               ; preds = %24
  store float 1.000000e+00, float* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  %51 = load float, float* %7, align 4
  %52 = fsub float 1.000000e+00, %51
  %53 = load float, float* %7, align 4
  %54 = load float, float* %6, align 4
  %55 = fmul float %53, %54
  %56 = load float, float* %6, align 4
  %57 = fmul float %55, %56
  %58 = fdiv float %52, %57
  store float %58, float* %11, align 4
  br label %61

59:                                               ; preds = %24
  br label %60

60:                                               ; preds = %24, %59
  store float 1.000000e+00, float* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  store float 0.000000e+00, float* %11, align 4
  br label %61

61:                                               ; preds = %60, %50, %33, %26
  %62 = load float, float* %9, align 4
  %63 = load %struct.__gx_litobj*, %struct.__gx_litobj** %12, align 8
  %64 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %63, i32 0, i32 0
  store float %62, float* %64, align 4
  %65 = load float, float* %10, align 4
  %66 = load %struct.__gx_litobj*, %struct.__gx_litobj** %12, align 8
  %67 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %66, i32 0, i32 1
  store float %65, float* %67, align 4
  %68 = load float, float* %11, align 4
  %69 = load %struct.__gx_litobj*, %struct.__gx_litobj** %12, align 8
  %70 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %69, i32 0, i32 2
  store float %68, float* %70, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
