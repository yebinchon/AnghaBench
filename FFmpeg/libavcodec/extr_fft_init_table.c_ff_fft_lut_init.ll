; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fft_init_table.c_ff_fft_lut_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fft_init_table.c_ff_fft_lut_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_fft_lut_init(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %12, 2
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  store i32 %13, i32* %18, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %45

22:                                               ; preds = %4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 1
  %27 = load i32*, i32** %8, align 8
  call void @ff_fft_lut_init(i32* %23, i32 %24, i32 %26, i32* %27)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = ashr i32 %30, 1
  %32 = add nsw i32 %29, %31
  %33 = load i32, i32* %7, align 4
  %34 = ashr i32 %33, 2
  %35 = load i32*, i32** %8, align 8
  call void @ff_fft_lut_init(i32* %28, i32 %32, i32 %34, i32* %35)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 2
  %40 = mul nsw i32 3, %39
  %41 = add nsw i32 %37, %40
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 2
  %44 = load i32*, i32** %8, align 8
  call void @ff_fft_lut_init(i32* %36, i32 %41, i32 %43, i32* %44)
  br label %45

45:                                               ; preds = %22, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
