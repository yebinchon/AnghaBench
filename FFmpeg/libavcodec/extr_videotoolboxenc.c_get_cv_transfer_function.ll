; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_get_cv_transfer_function.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_get_cv_transfer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@kCVImageBufferTransferFunction_ITU_R_709_2 = common dso_local global i32* null, align 8
@kCVImageBufferTransferFunction_SMPTE_240M_1995 = common dso_local global i32* null, align 8
@kCVImageBufferTransferFunction_UseGamma = common dso_local global i32* null, align 8
@kCFNumberFloat32Type = common dso_local global i32 0, align 4
@compat_keys = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Transfer function %s is not supported.\0A\00", align 1
@kCVImageBufferTransferFunction_ITU_R_2100_HLG = common dso_local global i32* null, align 8
@kCVImageBufferTransferFunction_Linear = common dso_local global i32* null, align 8
@kCVImageBufferTransferFunction_SMPTE_ST_2084_PQ = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32**, i32**)* @get_cv_transfer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cv_transfer_function(%struct.TYPE_5__* %0, i32** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32**, i32*** %7, align 8
  store i32* null, i32** %13, align 8
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %38 [
    i32 128, label %15
    i32 134, label %17
    i32 129, label %20
    i32 133, label %23
    i32 132, label %29
    i32 136, label %35
    i32 135, label %35
  ]

15:                                               ; preds = %3
  %16 = load i32**, i32*** %6, align 8
  store i32* null, i32** %16, align 8
  br label %45

17:                                               ; preds = %3
  %18 = load i32*, i32** @kCVImageBufferTransferFunction_ITU_R_709_2, align 8
  %19 = load i32**, i32*** %6, align 8
  store i32* %18, i32** %19, align 8
  br label %45

20:                                               ; preds = %3
  %21 = load i32*, i32** @kCVImageBufferTransferFunction_SMPTE_240M_1995, align 8
  %22 = load i32**, i32*** %6, align 8
  store i32* %21, i32** %22, align 8
  br label %45

23:                                               ; preds = %3
  store double 2.200000e+00, double* %9, align 8
  %24 = load i32*, i32** @kCVImageBufferTransferFunction_UseGamma, align 8
  %25 = load i32**, i32*** %6, align 8
  store i32* %24, i32** %25, align 8
  %26 = load i32, i32* @kCFNumberFloat32Type, align 4
  %27 = call i32* @CFNumberCreate(i32* null, i32 %26, double* %9)
  %28 = load i32**, i32*** %7, align 8
  store i32* %27, i32** %28, align 8
  br label %45

29:                                               ; preds = %3
  store double 2.800000e+00, double* %9, align 8
  %30 = load i32*, i32** @kCVImageBufferTransferFunction_UseGamma, align 8
  %31 = load i32**, i32*** %6, align 8
  store i32* %30, i32** %31, align 8
  %32 = load i32, i32* @kCFNumberFloat32Type, align 4
  %33 = call i32* @CFNumberCreate(i32* null, i32 %32, double* %9)
  %34 = load i32**, i32*** %7, align 8
  store i32* %33, i32** %34, align 8
  br label %45

35:                                               ; preds = %3, %3
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @compat_keys, i32 0, i32 0), align 8
  %37 = load i32**, i32*** %6, align 8
  store i32* %36, i32** %37, align 8
  br label %45

38:                                               ; preds = %3
  %39 = load i32**, i32*** %6, align 8
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = load i32, i32* @AV_LOG_ERROR, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @av_color_transfer_name(i32 %42)
  %44 = call i32 @av_log(%struct.TYPE_5__* %40, i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 -1, i32* %4, align 4
  br label %46

45:                                               ; preds = %35, %29, %23, %20, %17, %15
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %38
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32* @CFNumberCreate(i32*, i32, double*) #1

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*, i32) #1

declare dso_local i32 @av_color_transfer_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
