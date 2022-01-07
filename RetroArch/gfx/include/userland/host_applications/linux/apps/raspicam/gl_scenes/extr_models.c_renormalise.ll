; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_models.c_renormalise.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_models.c_renormalise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32)* @renormalise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renormalise(float* %0, i32 %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float* %0, float** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load float*, float** %3, align 8
  store float* %11, float** %6, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %54, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %12
  %17 = load float*, float** %6, align 8
  %18 = getelementptr inbounds float, float* %17, i64 0
  %19 = load float, float* %18, align 4
  store float %19, float* %7, align 4
  %20 = load float*, float** %6, align 8
  %21 = getelementptr inbounds float, float* %20, i64 1
  %22 = load float, float* %21, align 4
  store float %22, float* %8, align 4
  %23 = load float*, float** %6, align 8
  %24 = getelementptr inbounds float, float* %23, i64 2
  %25 = load float, float* %24, align 4
  store float %25, float* %9, align 4
  %26 = load float, float* %7, align 4
  %27 = load float, float* %7, align 4
  %28 = fmul float %26, %27
  %29 = load float, float* %8, align 4
  %30 = load float, float* %8, align 4
  %31 = fmul float %29, %30
  %32 = fadd float %28, %31
  %33 = load float, float* %9, align 4
  %34 = load float, float* %9, align 4
  %35 = fmul float %33, %34
  %36 = fadd float %32, %35
  %37 = call float @sqrtf(float %36) #2
  %38 = fdiv float 1.000000e+00, %37
  store float %38, float* %10, align 4
  %39 = load float, float* %7, align 4
  %40 = load float, float* %10, align 4
  %41 = fmul float %39, %40
  %42 = load float*, float** %6, align 8
  %43 = getelementptr inbounds float, float* %42, i32 1
  store float* %43, float** %6, align 8
  store float %41, float* %42, align 4
  %44 = load float, float* %8, align 4
  %45 = load float, float* %10, align 4
  %46 = fmul float %44, %45
  %47 = load float*, float** %6, align 8
  %48 = getelementptr inbounds float, float* %47, i32 1
  store float* %48, float** %6, align 8
  store float %46, float* %47, align 4
  %49 = load float, float* %9, align 4
  %50 = load float, float* %10, align 4
  %51 = fmul float %49, %50
  %52 = load float*, float** %6, align 8
  %53 = getelementptr inbounds float, float* %52, i32 1
  store float* %53, float** %6, align 8
  store float %51, float* %52, align 4
  br label %54

54:                                               ; preds = %16
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %12

57:                                               ; preds = %12
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
