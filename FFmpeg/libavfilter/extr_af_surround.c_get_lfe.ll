; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_get_lfe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_get_lfe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, float, float, float*, float*, i32)* @get_lfe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_lfe(i32 %0, i32 %1, float %2, float %3, float* %4, float* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float* %4, float** %12, align 8
  store float* %5, float** %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %7
  %18 = load i32, i32* %9, align 4
  %19 = sitofp i32 %18 to float
  %20 = load float, float* %11, align 4
  %21 = fcmp olt float %19, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = sitofp i32 %23 to float
  %25 = load float, float* %10, align 4
  %26 = fcmp olt float %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %42

28:                                               ; preds = %22
  %29 = load float, float* @M_PI, align 4
  %30 = load float, float* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sitofp i32 %31 to float
  %33 = fsub float %30, %32
  %34 = fmul float %29, %33
  %35 = load float, float* %10, align 4
  %36 = load float, float* %11, align 4
  %37 = fsub float %35, %36
  %38 = fdiv float %34, %37
  %39 = call float @cosf(float %38) #2
  %40 = fadd float 1.000000e+00, %39
  %41 = fmul float 5.000000e-01, %40
  br label %42

42:                                               ; preds = %28, %27
  %43 = phi float [ 1.000000e+00, %27 ], [ %41, %28 ]
  %44 = load float*, float** %12, align 8
  store float %43, float* %44, align 4
  %45 = load float*, float** %13, align 8
  %46 = load float, float* %45, align 4
  %47 = load float*, float** %12, align 8
  %48 = load float, float* %47, align 4
  %49 = fmul float %48, %46
  store float %49, float* %47, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load float*, float** %12, align 8
  %54 = load float, float* %53, align 4
  %55 = load float*, float** %13, align 8
  %56 = load float, float* %55, align 4
  %57 = fsub float %56, %54
  store float %57, float* %55, align 4
  br label %58

58:                                               ; preds = %52, %42
  br label %61

59:                                               ; preds = %17, %7
  %60 = load float*, float** %12, align 8
  store float 0.000000e+00, float* %60, align 4
  br label %61

61:                                               ; preds = %59, %58
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
