; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showwaves.c_draw_sample_cline_gray.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showwaves.c_draw_sample_cline_gray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i32, i32*, i64*, i32)* @draw_sample_cline_gray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_sample_cline_gray(i64* %0, i32 %1, i32 %2, i32* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %12, align 4
  %18 = sub nsw i32 %16, %17
  %19 = sdiv i32 %18, 2
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %12, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %13, align 4
  br label %24

24:                                               ; preds = %40, %6
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i64*, i64** %11, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %32, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %31
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %13, align 4
  br label %24

43:                                               ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
