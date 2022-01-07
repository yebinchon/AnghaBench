; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_yuv2rgb.c_fill_gv_table.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_yuv2rgb.c_fill_gv_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YUVRGB_TABLE_HEADROOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @fill_gv_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_gv_table(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @YUVRGB_TABLE_HEADROOM, align 4
  %11 = mul nsw i32 2, %10
  %12 = add nsw i32 256, %11
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 9
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %40, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @YUVRGB_TABLE_HEADROOM, align 4
  %20 = mul nsw i32 2, %19
  %21 = add nsw i32 256, %20
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @YUVRGB_TABLE_HEADROOM, align 4
  %26 = sub nsw i32 %24, %25
  %27 = call i32 @av_clip_uint8(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = ashr i32 %32, 16
  %34 = add nsw i32 %31, %33
  %35 = mul nsw i32 %30, %34
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %17

43:                                               ; preds = %17
  ret void
}

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
