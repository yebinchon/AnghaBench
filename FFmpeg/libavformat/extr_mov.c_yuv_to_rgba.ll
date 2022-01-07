; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_yuv_to_rgba.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_yuv_to_rgba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @yuv_to_rgba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yuv_to_rgba(i32 %0) #0 {
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
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 8
  %14 = and i32 %13, 255
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, 255
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 16
  %19 = mul nsw i32 1164, %18
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %20, 128
  %22 = mul nsw i32 2018, %21
  %23 = add nsw i32 %19, %22
  %24 = sdiv i32 %23, 1000
  %25 = call i32 @av_clip_uint8(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 16
  %28 = mul nsw i32 1164, %27
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 128
  %31 = mul nsw i32 813, %30
  %32 = sub nsw i32 %28, %31
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 128
  %35 = mul nsw i32 391, %34
  %36 = sub nsw i32 %32, %35
  %37 = sdiv i32 %36, 1000
  %38 = call i32 @av_clip_uint8(i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 16
  %41 = mul nsw i32 1164, %40
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 128
  %44 = mul nsw i32 1596, %43
  %45 = add nsw i32 %41, %44
  %46 = sdiv i32 %45, 1000
  %47 = call i32 @av_clip_uint8(i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = shl i32 %48, 16
  %50 = load i32, i32* %4, align 4
  %51 = shl i32 %50, 8
  %52 = or i32 %49, %51
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %52, %53
  ret i32 %54
}

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
