; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_yuv2rgb.c_fill_table.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_yuv2rgb.c_fill_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YUVRGB_TABLE_HEADROOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32, i32, i8*)* @fill_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_table(i32** %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @YUVRGB_TABLE_HEADROOM, align 4
  %13 = mul nsw i32 2, %12
  %14 = add nsw i32 256, %13
  %15 = zext i32 %14 to i64
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 9
  %21 = mul nsw i32 %18, %20
  %22 = load i32*, i32** %10, align 8
  %23 = sext i32 %21 to i64
  %24 = sub i64 0, %23
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %10, align 8
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %50, %4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @YUVRGB_TABLE_HEADROOM, align 4
  %29 = mul nsw i32 2, %28
  %30 = add nsw i32 256, %29
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @YUVRGB_TABLE_HEADROOM, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 @av_clip_uint8(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %11, align 4
  %42 = ashr i32 %41, 16
  %43 = mul nsw i32 %40, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  %46 = load i32**, i32*** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  store i32* %45, i32** %49, align 8
  br label %50

50:                                               ; preds = %32
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %26

53:                                               ; preds = %26
  ret void
}

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
