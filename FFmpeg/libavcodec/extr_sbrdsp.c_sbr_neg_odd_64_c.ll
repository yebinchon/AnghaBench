; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp.c_sbr_neg_odd_64_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp.c_sbr_neg_odd_64_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.av_intfloat32 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*)* @sbr_neg_odd_64_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbr_neg_odd_64_c(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca %union.av_intfloat32*, align 8
  %4 = alloca i32, align 4
  store float* %0, float** %2, align 8
  %5 = load float*, float** %2, align 8
  %6 = bitcast float* %5 to %union.av_intfloat32*
  store %union.av_intfloat32* %6, %union.av_intfloat32** %3, align 8
  store i32 1, i32* %4, align 4
  br label %7

7:                                                ; preds = %27, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 64
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = load %union.av_intfloat32*, %union.av_intfloat32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 0
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %11, i64 %14
  %16 = bitcast %union.av_intfloat32* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %17, -2147483648
  store i32 %18, i32* %16, align 4
  %19 = load %union.av_intfloat32*, %union.av_intfloat32** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %19, i64 %22
  %24 = bitcast %union.av_intfloat32* %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %25, -2147483648
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %10
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 4
  store i32 %29, i32* %4, align 4
  br label %7

30:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
