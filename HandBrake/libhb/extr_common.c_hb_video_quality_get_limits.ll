; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_video_quality_get_limits.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_video_quality_get_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HB_VCODEC_QSV_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_video_quality_get_limits(i32 %0, float* %1, float* %2, float* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %48 [
    i32 132, label %12
    i32 128, label %12
    i32 140, label %12
    i32 139, label %12
    i32 133, label %17
    i32 131, label %17
    i32 130, label %22
    i32 129, label %27
    i32 134, label %32
    i32 138, label %37
    i32 137, label %37
    i32 136, label %42
    i32 135, label %42
    i32 142, label %47
    i32 141, label %47
  ]

12:                                               ; preds = %5, %5, %5, %5
  %13 = load i32*, i32** %10, align 8
  store i32 1, i32* %13, align 4
  %14 = load float*, float** %9, align 8
  store float 0x3FB99999A0000000, float* %14, align 4
  %15 = load float*, float** %7, align 8
  store float 0.000000e+00, float* %15, align 4
  %16 = load float*, float** %8, align 8
  store float 5.100000e+01, float* %16, align 4
  br label %53

17:                                               ; preds = %5, %5
  %18 = load i32*, i32** %10, align 8
  store i32 1, i32* %18, align 4
  %19 = load float*, float** %9, align 8
  store float 0x3FB99999A0000000, float* %19, align 4
  %20 = load float*, float** %7, align 8
  store float -1.200000e+01, float* %20, align 4
  %21 = load float*, float** %8, align 8
  store float 5.100000e+01, float* %21, align 4
  br label %53

22:                                               ; preds = %5
  %23 = load i32*, i32** %10, align 8
  store i32 1, i32* %23, align 4
  %24 = load float*, float** %9, align 8
  store float 0x3FB99999A0000000, float* %24, align 4
  %25 = load float*, float** %7, align 8
  store float -2.400000e+01, float* %25, align 4
  %26 = load float*, float** %8, align 8
  store float 5.100000e+01, float* %26, align 4
  br label %53

27:                                               ; preds = %5
  %28 = load i32*, i32** %10, align 8
  store i32 1, i32* %28, align 4
  %29 = load float*, float** %9, align 8
  store float 0x3FB99999A0000000, float* %29, align 4
  %30 = load float*, float** %7, align 8
  store float -4.800000e+01, float* %30, align 4
  %31 = load float*, float** %8, align 8
  store float 5.100000e+01, float* %31, align 4
  br label %53

32:                                               ; preds = %5
  %33 = load i32*, i32** %10, align 8
  store i32 0, i32* %33, align 4
  %34 = load float*, float** %9, align 8
  store float 1.000000e+00, float* %34, align 4
  %35 = load float*, float** %7, align 8
  store float 0.000000e+00, float* %35, align 4
  %36 = load float*, float** %8, align 8
  store float 6.300000e+01, float* %36, align 4
  br label %53

37:                                               ; preds = %5, %5
  %38 = load i32*, i32** %10, align 8
  store i32 1, i32* %38, align 4
  %39 = load float*, float** %9, align 8
  store float 1.000000e+00, float* %39, align 4
  %40 = load float*, float** %7, align 8
  store float 0.000000e+00, float* %40, align 4
  %41 = load float*, float** %8, align 8
  store float 6.300000e+01, float* %41, align 4
  br label %53

42:                                               ; preds = %5, %5
  %43 = load i32*, i32** %10, align 8
  store i32 1, i32* %43, align 4
  %44 = load float*, float** %9, align 8
  store float 0x3FB99999A0000000, float* %44, align 4
  %45 = load float*, float** %7, align 8
  store float 0.000000e+00, float* %45, align 4
  %46 = load float*, float** %8, align 8
  store float 0.000000e+00, float* %46, align 4
  br label %53

47:                                               ; preds = %5, %5
  br label %48

48:                                               ; preds = %5, %47
  %49 = load i32*, i32** %10, align 8
  store i32 1, i32* %49, align 4
  %50 = load float*, float** %9, align 8
  store float 1.000000e+00, float* %50, align 4
  %51 = load float*, float** %7, align 8
  store float 1.000000e+00, float* %51, align 4
  %52 = load float*, float** %8, align 8
  store float 3.100000e+01, float* %52, align 4
  br label %53

53:                                               ; preds = %48, %42, %37, %32, %27, %22, %17, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
