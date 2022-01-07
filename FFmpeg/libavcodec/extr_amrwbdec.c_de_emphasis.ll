; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_de_emphasis.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_de_emphasis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMRWB_SFR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float, float*)* @de_emphasis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de_emphasis(float* %0, float* %1, float %2, float* %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float %2, float* %7, align 4
  store float* %3, float** %8, align 8
  %10 = load float*, float** %6, align 8
  %11 = getelementptr inbounds float, float* %10, i64 0
  %12 = load float, float* %11, align 4
  %13 = load float, float* %7, align 4
  %14 = load float*, float** %8, align 8
  %15 = getelementptr inbounds float, float* %14, i64 0
  %16 = load float, float* %15, align 4
  %17 = fmul float %13, %16
  %18 = fadd float %12, %17
  %19 = load float*, float** %5, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  store float %18, float* %20, align 4
  store i32 1, i32* %9, align 4
  br label %21

21:                                               ; preds = %44, %4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load float*, float** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %26, i64 %28
  %30 = load float, float* %29, align 4
  %31 = load float*, float** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %31, i64 %34
  %36 = load float, float* %35, align 4
  %37 = load float, float* %7, align 4
  %38 = fmul float %36, %37
  %39 = fadd float %30, %38
  %40 = load float*, float** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %40, i64 %42
  store float %39, float* %43, align 4
  br label %44

44:                                               ; preds = %25
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %21

47:                                               ; preds = %21
  %48 = load float*, float** %5, align 8
  %49 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %48, i64 %51
  %53 = load float, float* %52, align 4
  %54 = load float*, float** %8, align 8
  %55 = getelementptr inbounds float, float* %54, i64 0
  store float %53, float* %55, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
