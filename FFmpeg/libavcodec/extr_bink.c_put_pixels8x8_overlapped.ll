; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bink.c_put_pixels8x8_overlapped.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bink.c_put_pixels8x8_overlapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @put_pixels8x8_overlapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_pixels8x8_overlapped(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [64 x i32], align 16
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %25, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %14 = load i32, i32* %8, align 4
  %15 = mul nsw i32 %14, 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = call i32 @memcpy(i32* %17, i32* %23, i32 8)
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %9

28:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %45, %28
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %40 = load i32, i32* %8, align 4
  %41 = mul nsw i32 %40, 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = call i32 @memcpy(i32* %38, i32* %43, i32 8)
  br label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %29

48:                                               ; preds = %29
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
