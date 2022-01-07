; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/gregbook/extr_readppm.c_readpng_get_image.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/gregbook/extr_readppm.c_readpng_get_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@channels = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@image_data = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"readpng_get_image:  rowbytes = %ld, height = %ld\0A\00", align 1
@saved_infile = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @readpng_get_image(double %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store double %0, double* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* @channels, align 4
  %10 = load i32, i32* @width, align 4
  %11 = mul nsw i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @channels, align 4
  %14 = load i32*, i32** %6, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @height, align 4
  %17 = mul nsw i32 %15, %16
  %18 = call i64 @malloc(i32 %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** @image_data, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %42

22:                                               ; preds = %3
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @height, align 4
  %26 = call i32 @Trace(i32 %25)
  %27 = load i32*, i32** @image_data, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @height, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* @saved_infile, align 4
  %32 = call i32 @fread(i32* %27, i64 1, i32 %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @height, align 4
  %35 = mul nsw i32 %33, %34
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = load i32*, i32** @image_data, align 8
  %39 = call i32 @free(i32* %38)
  store i32* null, i32** @image_data, align 8
  store i32* null, i32** %4, align 8
  br label %42

40:                                               ; preds = %22
  %41 = load i32*, i32** @image_data, align 8
  store i32* %41, i32** %4, align 8
  br label %42

42:                                               ; preds = %40, %37, %21
  %43 = load i32*, i32** %4, align 8
  ret i32* %43
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @Trace(i32) #1

declare dso_local i32 @fread(i32*, i64, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
