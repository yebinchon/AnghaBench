; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aactab.h_ff_aac_tableinit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aactab.h_ff_aac_tableinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_aac_tableinit.exp2_lut = internal constant [16 x float] [float 1.000000e+00, float 0x3FF0B55860000000, float 0x3FF172B840000000, float 0x3FF2387A60000000, float 0x3FF306FE00000000, float 0x3FF3DEA640000000, float 0x3FF4BFDAE0000000, float 0x3FF5AB07E0000000, float 0x3FF6A09E60000000, float 0x3FF7A11480000000, float 0x3FF8ACE540000000, float 0x3FF9C49180000000, float 0x3FFAE89FA0000000, float 0x3FFC199BE0000000, float 0x3FFD5818E0000000, float 0x3FFEA4AFA0000000], align 16
@ff_aac_pow2sf_tab = common dso_local global float* null, align 8
@ff_aac_pow34sf_tab = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ff_aac_tableinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_aac_tableinit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store float 0x3CD0000000000000, float* %2, align 4
  store float 0x3D90000000000000, float* %3, align 4
  store i32 0, i32* %6, align 4
  store i32 8, i32* %7, align 4
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %55, %0
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 428
  br i1 %10, label %11, label %58

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = srem i32 %12, 4
  %14 = mul nsw i32 4, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %1, align 4
  %16 = mul nsw i32 3, %15
  %17 = add nsw i32 8, %16
  %18 = srem i32 %17, 16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load float, float* %2, align 4
  %24 = fmul float %23, 2.000000e+00
  store float %24, float* %2, align 4
  br label %25

25:                                               ; preds = %22, %11
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load float, float* %3, align 4
  %31 = fmul float %30, 2.000000e+00
  store float %31, float* %3, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = load float, float* %2, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [16 x float], [16 x float]* @ff_aac_tableinit.exp2_lut, i64 0, i64 %35
  %37 = load float, float* %36, align 4
  %38 = fmul float %33, %37
  %39 = load float*, float** @ff_aac_pow2sf_tab, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %39, i64 %41
  store float %38, float* %42, align 4
  %43 = load float, float* %3, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [16 x float], [16 x float]* @ff_aac_tableinit.exp2_lut, i64 0, i64 %45
  %47 = load float, float* %46, align 4
  %48 = fmul float %43, %47
  %49 = load float*, float** @ff_aac_pow34sf_tab, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  store float %48, float* %52, align 4
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %32
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %8

58:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
