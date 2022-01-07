; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_ball_to_xyz.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_ball_to_xyz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, float*)* @ball_to_xyz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ball_to_xyz(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float* %5, float** %12, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sitofp i32 %17 to float
  %19 = fmul float 2.000000e+00, %18
  %20 = load i32, i32* %10, align 4
  %21 = sitofp i32 %20 to float
  %22 = fdiv float %19, %21
  %23 = fsub float %22, 1.000000e+00
  store float %23, float* %13, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sitofp i32 %24 to float
  %26 = fmul float 2.000000e+00, %25
  %27 = load i32, i32* %11, align 4
  %28 = sitofp i32 %27 to float
  %29 = fdiv float %26, %28
  %30 = fsub float %29, 1.000000e+00
  store float %30, float* %14, align 4
  %31 = load float, float* %13, align 4
  %32 = load float, float* %14, align 4
  %33 = call float @hypotf(float %31, float %32) #2
  store float %33, float* %15, align 4
  %34 = load float, float* %15, align 4
  %35 = fcmp ole float %34, 1.000000e+00
  br i1 %35, label %36, label %79

36:                                               ; preds = %6
  %37 = load float, float* %15, align 4
  %38 = fmul float 2.000000e+00, %37
  %39 = load float, float* %15, align 4
  %40 = load float, float* %15, align 4
  %41 = fmul float %39, %40
  %42 = fsub float 1.000000e+00, %41
  %43 = call float @sqrtf(float %42) #2
  %44 = fmul float %38, %43
  store float %44, float* %16, align 4
  %45 = load float, float* %16, align 4
  %46 = load float, float* %13, align 4
  %47 = fmul float %45, %46
  %48 = load float, float* %15, align 4
  %49 = fcmp ogt float %48, 0.000000e+00
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = load float, float* %15, align 4
  br label %53

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi float [ %51, %50 ], [ 1.000000e+00, %52 ]
  %55 = fdiv float %47, %54
  %56 = load float*, float** %12, align 8
  %57 = getelementptr inbounds float, float* %56, i64 0
  store float %55, float* %57, align 4
  %58 = load float, float* %16, align 4
  %59 = fneg float %58
  %60 = load float, float* %14, align 4
  %61 = fmul float %59, %60
  %62 = load float, float* %15, align 4
  %63 = fcmp ogt float %62, 0.000000e+00
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load float, float* %15, align 4
  br label %67

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi float [ %65, %64 ], [ 1.000000e+00, %66 ]
  %69 = fdiv float %61, %68
  %70 = load float*, float** %12, align 8
  %71 = getelementptr inbounds float, float* %70, i64 1
  store float %69, float* %71, align 4
  %72 = load float, float* %15, align 4
  %73 = fmul float 2.000000e+00, %72
  %74 = load float, float* %15, align 4
  %75 = fmul float %73, %74
  %76 = fadd float -1.000000e+00, %75
  %77 = load float*, float** %12, align 8
  %78 = getelementptr inbounds float, float* %77, i64 2
  store float %76, float* %78, align 4
  br label %86

79:                                               ; preds = %6
  %80 = load float*, float** %12, align 8
  %81 = getelementptr inbounds float, float* %80, i64 0
  store float 0.000000e+00, float* %81, align 4
  %82 = load float*, float** %12, align 8
  %83 = getelementptr inbounds float, float* %82, i64 1
  store float -1.000000e+00, float* %83, align 4
  %84 = load float*, float** %12, align 8
  %85 = getelementptr inbounds float, float* %84, i64 2
  store float 0.000000e+00, float* %85, align 4
  br label %86

86:                                               ; preds = %79, %67
  ret void
}

; Function Attrs: nounwind
declare dso_local float @hypotf(float, float) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
