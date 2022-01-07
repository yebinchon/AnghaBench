; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_pitch_enhancer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_pitch_enhancer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMRWB_SFR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float)* @pitch_enhancer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pitch_enhancer(float* %0, float %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float* %0, float** %3, align 8
  store float %1, float* %4, align 4
  %9 = load float, float* %4, align 4
  %10 = fadd float 1.000000e+00, %9
  %11 = fpext float %10 to double
  %12 = fmul double 1.250000e-01, %11
  %13 = fptrunc double %12 to float
  store float %13, float* %6, align 4
  %14 = load float*, float** %3, align 8
  %15 = getelementptr inbounds float, float* %14, i64 0
  %16 = load float, float* %15, align 4
  store float %16, float* %7, align 4
  %17 = load float, float* %6, align 4
  %18 = load float*, float** %3, align 8
  %19 = getelementptr inbounds float, float* %18, i64 1
  %20 = load float, float* %19, align 4
  %21 = fmul float %17, %20
  %22 = load float*, float** %3, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  %24 = load float, float* %23, align 4
  %25 = fsub float %24, %21
  store float %25, float* %23, align 4
  store i32 1, i32* %5, align 4
  br label %26

26:                                               ; preds = %54, %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %26
  %32 = load float*, float** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %32, i64 %34
  %36 = load float, float* %35, align 4
  store float %36, float* %8, align 4
  %37 = load float, float* %6, align 4
  %38 = load float, float* %7, align 4
  %39 = load float*, float** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %39, i64 %42
  %44 = load float, float* %43, align 4
  %45 = fadd float %38, %44
  %46 = fmul float %37, %45
  %47 = load float*, float** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = load float, float* %50, align 4
  %52 = fsub float %51, %46
  store float %52, float* %50, align 4
  %53 = load float, float* %8, align 4
  store float %53, float* %7, align 4
  br label %54

54:                                               ; preds = %31
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %26

57:                                               ; preds = %26
  %58 = load float, float* %6, align 4
  %59 = load float, float* %7, align 4
  %60 = fmul float %58, %59
  %61 = load float*, float** %3, align 8
  %62 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %61, i64 %64
  %66 = load float, float* %65, align 4
  %67 = fsub float %66, %60
  store float %67, float* %65, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
