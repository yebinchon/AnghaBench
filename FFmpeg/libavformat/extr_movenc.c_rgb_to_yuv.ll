; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_rgb_to_yuv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_rgb_to_yuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rgb_to_yuv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rgb_to_yuv(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = ashr i32 %9, 16
  %11 = and i32 %10, 255
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 8
  %14 = and i32 %13, 255
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, 255
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = mul nsw i32 257, %17
  %19 = add nsw i32 16000, %18
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 504, %20
  %22 = add nsw i32 %19, %21
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 98, %23
  %25 = add nsw i32 %22, %24
  %26 = sdiv i32 %25, 1000
  %27 = call i32 @av_clip_uint8(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %3, align 4
  %29 = mul nsw i32 148, %28
  %30 = sub nsw i32 128000, %29
  %31 = load i32, i32* %4, align 4
  %32 = mul nsw i32 291, %31
  %33 = sub nsw i32 %30, %32
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 439, %34
  %36 = add nsw i32 %33, %35
  %37 = sdiv i32 %36, 1000
  %38 = call i32 @av_clip_uint8(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %3, align 4
  %40 = mul nsw i32 439, %39
  %41 = add nsw i32 128000, %40
  %42 = load i32, i32* %4, align 4
  %43 = mul nsw i32 368, %42
  %44 = sub nsw i32 %41, %43
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 71, %45
  %47 = sub nsw i32 %44, %46
  %48 = sdiv i32 %47, 1000
  %49 = call i32 @av_clip_uint8(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 %50, 16
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %52, 8
  %54 = or i32 %51, %53
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %54, %55
  ret i32 %56
}

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
