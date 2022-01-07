; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dsp.c_ict_float.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dsp.c_ict_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f_ict_params = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32)* @ict_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ict_float(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to float*
  store float* %17, float** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to float*
  store float* %19, float** %10, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to float*
  store float* %21, float** %11, align 8
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %70, %4
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %73

26:                                               ; preds = %22
  %27 = load float*, float** %9, align 8
  %28 = load float, float* %27, align 4
  %29 = load float*, float** @f_ict_params, align 8
  %30 = getelementptr inbounds float, float* %29, i64 0
  %31 = load float, float* %30, align 4
  %32 = load float*, float** %11, align 8
  %33 = load float, float* %32, align 4
  %34 = fmul float %31, %33
  %35 = fadd float %28, %34
  store float %35, float* %12, align 4
  %36 = load float*, float** %9, align 8
  %37 = load float, float* %36, align 4
  %38 = load float*, float** @f_ict_params, align 8
  %39 = getelementptr inbounds float, float* %38, i64 1
  %40 = load float, float* %39, align 4
  %41 = load float*, float** %10, align 8
  %42 = load float, float* %41, align 4
  %43 = fmul float %40, %42
  %44 = fsub float %37, %43
  %45 = load float*, float** @f_ict_params, align 8
  %46 = getelementptr inbounds float, float* %45, i64 2
  %47 = load float, float* %46, align 4
  %48 = load float*, float** %11, align 8
  %49 = load float, float* %48, align 4
  %50 = fmul float %47, %49
  %51 = fsub float %44, %50
  store float %51, float* %13, align 4
  %52 = load float*, float** %9, align 8
  %53 = load float, float* %52, align 4
  %54 = load float*, float** @f_ict_params, align 8
  %55 = getelementptr inbounds float, float* %54, i64 3
  %56 = load float, float* %55, align 4
  %57 = load float*, float** %10, align 8
  %58 = load float, float* %57, align 4
  %59 = fmul float %56, %58
  %60 = fadd float %53, %59
  store float %60, float* %14, align 4
  %61 = load float, float* %12, align 4
  %62 = load float*, float** %9, align 8
  %63 = getelementptr inbounds float, float* %62, i32 1
  store float* %63, float** %9, align 8
  store float %61, float* %62, align 4
  %64 = load float, float* %13, align 4
  %65 = load float*, float** %10, align 8
  %66 = getelementptr inbounds float, float* %65, i32 1
  store float* %66, float** %10, align 8
  store float %64, float* %65, align 4
  %67 = load float, float* %14, align 4
  %68 = load float*, float** %11, align 8
  %69 = getelementptr inbounds float, float* %68, i32 1
  store float* %69, float** %11, align 8
  store float %67, float* %68, align 4
  br label %70

70:                                               ; preds = %26
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %15, align 4
  br label %22

73:                                               ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
