; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitLightSpot.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitLightSpot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gx_litobj = type { float, float, float }

@M_PI = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_InitLightSpot(i32* %0, float %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.__gx_litobj*, align 8
  store i32* %0, i32** %4, align 8
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = bitcast i32* %14 to %struct.__gx_litobj*
  store %struct.__gx_litobj* %15, %struct.__gx_litobj** %13, align 8
  %16 = load float, float* %5, align 4
  %17 = fcmp olt float %16, 0.000000e+00
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load float, float* %5, align 4
  %20 = fcmp ogt float %19, 9.000000e+01
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  store i32 131, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load float, float* %5, align 4
  %24 = load float, float* @M_PI, align 4
  %25 = fmul float %23, %24
  %26 = fdiv float %25, 1.800000e+02
  store float %26, float* %7, align 4
  %27 = load float, float* %7, align 4
  %28 = call float @cosf(float %27) #2
  store float %28, float* %9, align 4
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %104 [
    i32 132, label %30
    i32 134, label %33
    i32 133, label %42
    i32 128, label %51
    i32 130, label %67
    i32 129, label %84
    i32 131, label %103
  ]

30:                                               ; preds = %22
  %31 = load float, float* %9, align 4
  %32 = fmul float -1.000000e+03, %31
  store float %32, float* %10, align 4
  store float 1.000000e+03, float* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  br label %105

33:                                               ; preds = %22
  %34 = load float, float* %9, align 4
  %35 = fneg float %34
  %36 = load float, float* %9, align 4
  %37 = fsub float 1.000000e+00, %36
  %38 = fdiv float %35, %37
  store float %38, float* %10, align 4
  %39 = load float, float* %9, align 4
  %40 = fsub float 1.000000e+00, %39
  %41 = fdiv float 1.000000e+00, %40
  store float %41, float* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  br label %105

42:                                               ; preds = %22
  store float 0.000000e+00, float* %10, align 4
  %43 = load float, float* %9, align 4
  %44 = fneg float %43
  %45 = load float, float* %9, align 4
  %46 = fsub float 1.000000e+00, %45
  %47 = fdiv float %44, %46
  store float %47, float* %11, align 4
  %48 = load float, float* %9, align 4
  %49 = fsub float 1.000000e+00, %48
  %50 = fdiv float 1.000000e+00, %49
  store float %50, float* %12, align 4
  br label %105

51:                                               ; preds = %22
  %52 = load float, float* %9, align 4
  %53 = fsub float 1.000000e+00, %52
  %54 = load float, float* %9, align 4
  %55 = fsub float 1.000000e+00, %54
  %56 = fmul float %53, %55
  store float %56, float* %8, align 4
  %57 = load float, float* %9, align 4
  %58 = load float, float* %9, align 4
  %59 = fsub float %58, 2.000000e+00
  %60 = fmul float %57, %59
  store float %60, float* %10, align 4
  %61 = load float, float* %8, align 4
  %62 = fdiv float 2.000000e+00, %61
  store float %62, float* %11, align 4
  %63 = load float, float* %8, align 4
  %64 = fpext float %63 to double
  %65 = fdiv double -1.000000e+00, %64
  %66 = fptrunc double %65 to float
  store float %66, float* %12, align 4
  br label %105

67:                                               ; preds = %22
  %68 = load float, float* %9, align 4
  %69 = fsub float 1.000000e+00, %68
  %70 = load float, float* %9, align 4
  %71 = fsub float 1.000000e+00, %70
  %72 = fmul float %69, %71
  store float %72, float* %8, align 4
  %73 = load float, float* %9, align 4
  %74 = fmul float -4.000000e+00, %73
  %75 = load float, float* %8, align 4
  %76 = fdiv float %74, %75
  store float %76, float* %10, align 4
  %77 = load float, float* %9, align 4
  %78 = fadd float 1.000000e+00, %77
  %79 = fmul float 4.000000e+00, %78
  %80 = load float, float* %8, align 4
  %81 = fdiv float %79, %80
  store float %81, float* %11, align 4
  %82 = load float, float* %8, align 4
  %83 = fdiv float -4.000000e+00, %82
  store float %83, float* %12, align 4
  br label %105

84:                                               ; preds = %22
  %85 = load float, float* %9, align 4
  %86 = fsub float 1.000000e+00, %85
  %87 = load float, float* %9, align 4
  %88 = fsub float 1.000000e+00, %87
  %89 = fmul float %86, %88
  store float %89, float* %8, align 4
  %90 = load float, float* %9, align 4
  %91 = fmul float 2.000000e+00, %90
  %92 = load float, float* %9, align 4
  %93 = fmul float %91, %92
  %94 = load float, float* %8, align 4
  %95 = fdiv float %93, %94
  %96 = fsub float 1.000000e+00, %95
  store float %96, float* %10, align 4
  %97 = load float, float* %9, align 4
  %98 = fmul float 4.000000e+00, %97
  %99 = load float, float* %8, align 4
  %100 = fdiv float %98, %99
  store float %100, float* %11, align 4
  %101 = load float, float* %8, align 4
  %102 = fdiv float -2.000000e+00, %101
  store float %102, float* %12, align 4
  br label %105

103:                                              ; preds = %22
  br label %104

104:                                              ; preds = %22, %103
  store float 1.000000e+00, float* %10, align 4
  store float 0.000000e+00, float* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  br label %105

105:                                              ; preds = %104, %84, %67, %51, %42, %33, %30
  %106 = load float, float* %10, align 4
  %107 = load %struct.__gx_litobj*, %struct.__gx_litobj** %13, align 8
  %108 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %107, i32 0, i32 0
  store float %106, float* %108, align 4
  %109 = load float, float* %11, align 4
  %110 = load %struct.__gx_litobj*, %struct.__gx_litobj** %13, align 8
  %111 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %110, i32 0, i32 1
  store float %109, float* %111, align 4
  %112 = load float, float* %12, align 4
  %113 = load %struct.__gx_litobj*, %struct.__gx_litobj** %13, align 8
  %114 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %113, i32 0, i32 2
  store float %112, float* %114, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
