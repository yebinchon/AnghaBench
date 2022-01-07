; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_sinc.c_lpf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_sinc.c_lpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (float, float, float, i32*, float, float*, i32)* @lpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @lpf(float %0, float %1, float %2, i32* %3, float %4, float* %5, i32 %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32*, align 8
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store float %0, float* %9, align 4
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store i32* %3, i32** %12, align 8
  store float %4, float* %13, align 4
  store float* %5, float** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load i32*, i32** %12, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %16, align 4
  %19 = load float, float* %9, align 4
  %20 = load float, float* %10, align 4
  %21 = fdiv float %20, %19
  store float %21, float* %10, align 4
  %22 = fcmp ole float %21, 0.000000e+00
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load float, float* %10, align 4
  %25 = fcmp oge float %24, 1.000000e+00
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %7
  %27 = load i32*, i32** %12, align 8
  store i32 0, i32* %27, align 4
  store float* null, float** %8, align 8
  br label %87

28:                                               ; preds = %23
  %29 = load float, float* %13, align 4
  %30 = fcmp une float %29, 0.000000e+00
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load float, float* %13, align 4
  br label %34

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi float [ %32, %31 ], [ 1.200000e+02, %33 ]
  store float %35, float* %13, align 4
  %36 = load float, float* %13, align 4
  %37 = load float, float* %10, align 4
  %38 = load float, float* %11, align 4
  %39 = fcmp une float %38, 0.000000e+00
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load float, float* %11, align 4
  %42 = load float, float* %9, align 4
  %43 = fdiv float %41, %42
  br label %45

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi float [ %43, %40 ], [ 0x3FA99999A0000000, %44 ]
  %47 = fmul float %46, 5.000000e-01
  %48 = load float*, float** %14, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @kaiser_params(float %36, float %37, float %47, float* %48, i32* %49)
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %79, label %53

53:                                               ; preds = %45
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @av_clip(i32 %56, i32 11, i32 32767)
  %58 = load i32*, i32** %12, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %53
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 2
  %65 = sitofp i32 %64 to float
  %66 = load float, float* %10, align 4
  %67 = fmul float %65, %66
  %68 = fadd float %67, 5.000000e-01
  %69 = fptosi float %68 to i32
  %70 = sitofp i32 %69 to float
  %71 = load float, float* %10, align 4
  %72 = fdiv float %70, %71
  %73 = fadd float %72, 5.000000e-01
  %74 = fptosi float %73 to i32
  %75 = mul nsw i32 2, %74
  %76 = add nsw i32 1, %75
  %77 = load i32*, i32** %12, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %61, %53
  br label %79

79:                                               ; preds = %78, %45
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load float, float* %10, align 4
  %84 = load float*, float** %14, align 8
  %85 = load float, float* %84, align 4
  %86 = call float* @make_lpf(i32 %82, float %83, float %85, float 0.000000e+00, float 1.000000e+00, i32 0)
  store float* %86, float** %8, align 8
  br label %87

87:                                               ; preds = %79, %26
  %88 = load float*, float** %8, align 8
  ret float* %88
}

declare dso_local i32 @kaiser_params(float, float, float, float*, i32*) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local float* @make_lpf(i32, float, float, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
