; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_get_cv_ycbcr_matrix.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_get_cv_ycbcr_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@kCVImageBufferYCbCrMatrix_ITU_R_709_2 = common dso_local global i32* null, align 8
@kCVImageBufferYCbCrMatrix_ITU_R_601_4 = common dso_local global i32* null, align 8
@kCVImageBufferYCbCrMatrix_SMPTE_240M_1995 = common dso_local global i32* null, align 8
@compat_keys = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Color space %s is not supported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32**)* @get_cv_ycbcr_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cv_ycbcr_matrix(%struct.TYPE_5__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %23 [
    i32 131, label %9
    i32 128, label %12
    i32 132, label %14
    i32 130, label %14
    i32 129, label %17
    i32 133, label %20
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** @kCVImageBufferYCbCrMatrix_ITU_R_709_2, align 8
  %11 = load i32**, i32*** %5, align 8
  store i32* %10, i32** %11, align 8
  br label %31

12:                                               ; preds = %2
  %13 = load i32**, i32*** %5, align 8
  store i32* null, i32** %13, align 8
  br label %31

14:                                               ; preds = %2, %2
  %15 = load i32*, i32** @kCVImageBufferYCbCrMatrix_ITU_R_601_4, align 8
  %16 = load i32**, i32*** %5, align 8
  store i32* %15, i32** %16, align 8
  br label %31

17:                                               ; preds = %2
  %18 = load i32*, i32** @kCVImageBufferYCbCrMatrix_SMPTE_240M_1995, align 8
  %19 = load i32**, i32*** %5, align 8
  store i32* %18, i32** %19, align 8
  br label %31

20:                                               ; preds = %2
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @compat_keys, i32 0, i32 0), align 8
  %22 = load i32**, i32*** %5, align 8
  store i32* %21, i32** %22, align 8
  br label %31

23:                                               ; preds = %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = load i32, i32* @AV_LOG_ERROR, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @av_color_space_name(i32 %28)
  %30 = call i32 @av_log(%struct.TYPE_5__* %24, i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 -1, i32* %3, align 4
  br label %32

31:                                               ; preds = %20, %17, %14, %12, %9
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*, i32) #1

declare dso_local i32 @av_color_space_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
