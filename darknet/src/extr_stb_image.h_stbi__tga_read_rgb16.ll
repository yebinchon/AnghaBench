; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__tga_read_rgb16.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__tga_read_rgb16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*)* @stbi__tga_read_rgb16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbi__tga_read_rgb16(i32* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @stbi__get16le(i32* %10)
  store i32 %11, i32* %5, align 4
  store i32 31, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 10
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 5
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 %23, 255
  %25 = sdiv i32 %24, 31
  %26 = sext i32 %25 to i64
  %27 = load i64*, i64** %4, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 %29, 255
  %31 = sdiv i32 %30, 31
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %4, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %35, 255
  %37 = sdiv i32 %36, 31
  %38 = sext i32 %37 to i64
  %39 = load i64*, i64** %4, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 2
  store i64 %38, i64* %40, align 8
  ret void
}

declare dso_local i32 @stbi__get16le(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
