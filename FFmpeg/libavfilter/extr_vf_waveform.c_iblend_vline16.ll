; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_iblend_vline16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_iblend_vline16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, float, float, i32, i32)* @iblend_vline16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iblend_vline16(i32* %0, i32 %1, i32 %2, float %3, float %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32*, i32** %8, align 8
  store i32* %17, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %18

18:                                               ; preds = %48, %7
  %19 = load i32, i32* %16, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %18
  %23 = load i32, i32* %13, align 4
  %24 = load i32*, i32** %15, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = sitofp i32 %27 to float
  %29 = load float, float* %11, align 4
  %30 = fmul float %28, %29
  %31 = load i32*, i32** %15, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = sitofp i32 %33 to float
  %35 = load float, float* %12, align 4
  %36 = fmul float %34, %35
  %37 = fadd float %30, %36
  %38 = fptosi float %37 to i32
  %39 = load i32*, i32** %15, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sdiv i32 %41, 2
  %43 = load i32, i32* %14, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32*, i32** %15, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %15, align 8
  br label %48

48:                                               ; preds = %22
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %16, align 4
  br label %18

52:                                               ; preds = %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
