; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_write_matrix.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_write_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32, i32)* @write_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_matrix(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = shl i32 %16, 16
  %18 = call i32 @avio_wb32(i32* %15, i32 %17)
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = shl i32 %20, 16
  %22 = call i32 @avio_wb32(i32* %19, i32 %21)
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @avio_wb32(i32* %23, i32 0)
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %11, align 4
  %27 = shl i32 %26, 16
  %28 = call i32 @avio_wb32(i32* %25, i32 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %12, align 4
  %31 = shl i32 %30, 16
  %32 = call i32 @avio_wb32(i32* %29, i32 %31)
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @avio_wb32(i32* %33, i32 0)
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %13, align 4
  %37 = shl i32 %36, 16
  %38 = call i32 @avio_wb32(i32* %35, i32 %37)
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %14, align 4
  %41 = shl i32 %40, 16
  %42 = call i32 @avio_wb32(i32* %39, i32 %41)
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @avio_wb32(i32* %43, i32 1073741824)
  ret void
}

declare dso_local i32 @avio_wb32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
