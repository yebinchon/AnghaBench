; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_png.c_png_colorspace_check_gamma.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_png.c_png_colorspace_check_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@PNG_COLORSPACE_HAVE_GAMMA = common dso_local global i32 0, align 4
@PNG_FP_1 = common dso_local global i32 0, align 4
@PNG_COLORSPACE_FROM_sRGB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"gamma value does not match sRGB\00", align 1
@PNG_CHUNK_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"gamma value does not match libpng estimate\00", align 1
@PNG_CHUNK_WARNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*, i32, i32)* @png_colorspace_check_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_colorspace_check_gamma(i32 %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PNG_COLORSPACE_HAVE_GAMMA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PNG_FP_1, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @png_muldiv(i32* %10, i32 %20, i32 %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @png_gamma_significant(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %25, %17
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PNG_COLORSPACE_FROM_sRGB, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %46

39:                                               ; preds = %36, %29
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @PNG_CHUNK_ERROR, align 4
  %42 = call i32 @png_chunk_report(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %5, align 4
  br label %54

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @PNG_CHUNK_WARNING, align 4
  %49 = call i32 @png_chunk_report(i32 %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 1
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %5, align 4
  br label %54

53:                                               ; preds = %25, %4
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %46, %39
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @png_muldiv(i32*, i32, i32, i32) #1

declare dso_local i64 @png_gamma_significant(i32) #1

declare dso_local i32 @png_chunk_report(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
