; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp.c_sbr_qmf_post_shuffle_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp.c_sbr_qmf_post_shuffle_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.av_intfloat32 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([2 x float]*, float*)* @sbr_qmf_post_shuffle_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbr_qmf_post_shuffle_c([2 x float]* %0, float* %1) #0 {
  %3 = alloca [2 x float]*, align 8
  %4 = alloca float*, align 8
  %5 = alloca %union.av_intfloat32*, align 8
  %6 = alloca %union.av_intfloat32*, align 8
  %7 = alloca i32, align 4
  store [2 x float]* %0, [2 x float]** %3, align 8
  store float* %1, float** %4, align 8
  %8 = load float*, float** %4, align 8
  %9 = bitcast float* %8 to %union.av_intfloat32*
  store %union.av_intfloat32* %9, %union.av_intfloat32** %5, align 8
  %10 = load [2 x float]*, [2 x float]** %3, align 8
  %11 = bitcast [2 x float]* %10 to %union.av_intfloat32*
  store %union.av_intfloat32* %11, %union.av_intfloat32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %74, %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 32
  br i1 %14, label %15, label %77

15:                                               ; preds = %12
  %16 = load %union.av_intfloat32*, %union.av_intfloat32** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 63, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %16, i64 %19
  %21 = bitcast %union.av_intfloat32* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = xor i32 %22, -2147483648
  %24 = load %union.av_intfloat32*, %union.av_intfloat32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 2, %25
  %27 = add nsw i32 %26, 0
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %24, i64 %28
  %30 = bitcast %union.av_intfloat32* %29 to i32*
  store i32 %23, i32* %30, align 4
  %31 = load %union.av_intfloat32*, %union.av_intfloat32** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 0
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %31, i64 %34
  %36 = bitcast %union.av_intfloat32* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = load %union.av_intfloat32*, %union.av_intfloat32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 2, %39
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %38, i64 %42
  %44 = bitcast %union.av_intfloat32* %43 to i32*
  store i32 %37, i32* %44, align 4
  %45 = load %union.av_intfloat32*, %union.av_intfloat32** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 62, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %45, i64 %48
  %50 = bitcast %union.av_intfloat32* %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = xor i32 %51, -2147483648
  %53 = load %union.av_intfloat32*, %union.av_intfloat32** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 2, %54
  %56 = add nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %53, i64 %57
  %59 = bitcast %union.av_intfloat32* %58 to i32*
  store i32 %52, i32* %59, align 4
  %60 = load %union.av_intfloat32*, %union.av_intfloat32** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %60, i64 %63
  %65 = bitcast %union.av_intfloat32* %64 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = load %union.av_intfloat32*, %union.av_intfloat32** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = mul nsw i32 2, %68
  %70 = add nsw i32 %69, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %67, i64 %71
  %73 = bitcast %union.av_intfloat32* %72 to i32*
  store i32 %66, i32* %73, align 4
  br label %74

74:                                               ; preds = %15
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 2
  store i32 %76, i32* %7, align 4
  br label %12

77:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
