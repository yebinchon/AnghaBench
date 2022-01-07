; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp.c_sbr_qmf_deint_neg_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp.c_sbr_qmf_deint_neg_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.av_intfloat32 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*)* @sbr_qmf_deint_neg_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbr_qmf_deint_neg_c(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca %union.av_intfloat32*, align 8
  %6 = alloca %union.av_intfloat32*, align 8
  %7 = alloca i32, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %8 = load float*, float** %4, align 8
  %9 = bitcast float* %8 to %union.av_intfloat32*
  store %union.av_intfloat32* %9, %union.av_intfloat32** %5, align 8
  %10 = load float*, float** %3, align 8
  %11 = bitcast float* %10 to %union.av_intfloat32*
  store %union.av_intfloat32* %11, %union.av_intfloat32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %45, %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 32
  br i1 %14, label %15, label %48

15:                                               ; preds = %12
  %16 = load %union.av_intfloat32*, %union.av_intfloat32** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = mul nsw i32 2, %17
  %19 = sub nsw i32 63, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %16, i64 %20
  %22 = bitcast %union.av_intfloat32* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load %union.av_intfloat32*, %union.av_intfloat32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %24, i64 %26
  %28 = bitcast %union.av_intfloat32* %27 to i32*
  store i32 %23, i32* %28, align 4
  %29 = load %union.av_intfloat32*, %union.av_intfloat32** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 2, %30
  %32 = sub nsw i32 63, %31
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %29, i64 %34
  %36 = bitcast %union.av_intfloat32* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %37, -2147483648
  %39 = load %union.av_intfloat32*, %union.av_intfloat32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 63, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %39, i64 %42
  %44 = bitcast %union.av_intfloat32* %43 to i32*
  store i32 %38, i32* %44, align 4
  br label %45

45:                                               ; preds = %15
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %12

48:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
