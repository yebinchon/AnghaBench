; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v210enc.c_v210_planar_pack_8_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v210enc.c_v210_planar_pack_8_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32)* @v210_planar_pack_8_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v210_planar_pack_8_c(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %51, %5
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = sub nsw i32 %15, 11
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %13
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @WRITE_PIXELS(i32* %19, i32* %20, i32* %21, i32 8)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @WRITE_PIXELS(i32* %23, i32* %24, i32* %25, i32 8)
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @WRITE_PIXELS(i32* %27, i32* %28, i32* %29, i32 8)
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @WRITE_PIXELS(i32* %31, i32* %32, i32* %33, i32 8)
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @WRITE_PIXELS(i32* %35, i32* %36, i32* %37, i32 8)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @WRITE_PIXELS(i32* %39, i32* %40, i32* %41, i32 8)
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @WRITE_PIXELS(i32* %43, i32* %44, i32* %45, i32 8)
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @WRITE_PIXELS(i32* %47, i32* %48, i32* %49, i32 8)
  br label %51

51:                                               ; preds = %18
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 12
  store i32 %53, i32* %12, align 4
  br label %13

54:                                               ; preds = %13
  ret void
}

declare dso_local i32 @WRITE_PIXELS(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
