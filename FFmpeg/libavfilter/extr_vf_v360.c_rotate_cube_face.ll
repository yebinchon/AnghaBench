; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_rotate_cube_face.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_rotate_cube_face.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, i32)* @rotate_cube_face to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rotate_cube_face(float* %0, float* %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %37 [
    i32 131, label %9
    i32 128, label %10
    i32 130, label %19
    i32 129, label %28
  ]

9:                                                ; preds = %3
  br label %39

10:                                               ; preds = %3
  %11 = load float*, float** %4, align 8
  %12 = load float, float* %11, align 4
  store float %12, float* %7, align 4
  %13 = load float*, float** %5, align 8
  %14 = load float, float* %13, align 4
  %15 = fneg float %14
  %16 = load float*, float** %4, align 8
  store float %15, float* %16, align 4
  %17 = load float, float* %7, align 4
  %18 = load float*, float** %5, align 8
  store float %17, float* %18, align 4
  br label %39

19:                                               ; preds = %3
  %20 = load float*, float** %4, align 8
  %21 = load float, float* %20, align 4
  %22 = fneg float %21
  %23 = load float*, float** %4, align 8
  store float %22, float* %23, align 4
  %24 = load float*, float** %5, align 8
  %25 = load float, float* %24, align 4
  %26 = fneg float %25
  %27 = load float*, float** %5, align 8
  store float %26, float* %27, align 4
  br label %39

28:                                               ; preds = %3
  %29 = load float*, float** %4, align 8
  %30 = load float, float* %29, align 4
  %31 = fneg float %30
  store float %31, float* %7, align 4
  %32 = load float*, float** %5, align 8
  %33 = load float, float* %32, align 4
  %34 = load float*, float** %4, align 8
  store float %33, float* %34, align 4
  %35 = load float, float* %7, align 4
  %36 = load float*, float** %5, align 8
  store float %35, float* %36, align 4
  br label %39

37:                                               ; preds = %3
  %38 = call i32 @av_assert0(i32 0)
  br label %39

39:                                               ; preds = %37, %28, %19, %10, %9
  ret void
}

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
