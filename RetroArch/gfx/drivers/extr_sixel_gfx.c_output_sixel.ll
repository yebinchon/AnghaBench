; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sixel_gfx.c_output_sixel.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sixel_gfx.c_output_sixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sixel_write = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@SIXEL_LARGE_AUTO = common dso_local global i32 0, align 4
@SIXEL_REP_AUTO = common dso_local global i32 0, align 4
@SIXEL_QUALITY_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32)* @output_sixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_sixel(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @sixel_write, align 4
  %16 = load i32, i32* @stdout, align 4
  %17 = call i32* @sixel_output_create(i32 %15, i32 %16)
  store i32* %17, i32** %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32* @sixel_dither_create(i32 %18)
  store i32* %19, i32** %13, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @SIXEL_LARGE_AUTO, align 4
  %26 = load i32, i32* @SIXEL_REP_AUTO, align 4
  %27 = load i32, i32* @SIXEL_QUALITY_AUTO, align 4
  %28 = call i32 @sixel_dither_initialize(i32* %20, i8* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = call i64 @SIXEL_FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %6, align 4
  br label %53

34:                                               ; preds = %5
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @sixel_encode(i8* %35, i32 %36, i32 %37, i32 %38, i32* %39, i32* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i64 @SIXEL_FAILED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %6, align 4
  br label %53

47:                                               ; preds = %34
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @sixel_output_unref(i32* %48)
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @sixel_dither_unref(i32* %50)
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %47, %45, %32
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32* @sixel_output_create(i32, i32) #1

declare dso_local i32* @sixel_dither_create(i32) #1

declare dso_local i32 @sixel_dither_initialize(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @SIXEL_FAILED(i32) #1

declare dso_local i32 @sixel_encode(i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @sixel_output_unref(i32*) #1

declare dso_local i32 @sixel_dither_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
