; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_get_cv_color_primaries.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_get_cv_color_primaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@kCVImageBufferColorPrimaries_ITU_R_709_2 = common dso_local global i32* null, align 8
@compat_keys = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Color primaries %s is not supported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32**)* @get_cv_color_primaries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cv_color_primaries(%struct.TYPE_5__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %19 [
    i32 128, label %11
    i32 129, label %13
    i32 130, label %16
  ]

11:                                               ; preds = %2
  %12 = load i32**, i32*** %5, align 8
  store i32* null, i32** %12, align 8
  br label %26

13:                                               ; preds = %2
  %14 = load i32*, i32** @kCVImageBufferColorPrimaries_ITU_R_709_2, align 8
  %15 = load i32**, i32*** %5, align 8
  store i32* %14, i32** %15, align 8
  br label %26

16:                                               ; preds = %2
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @compat_keys, i32 0, i32 0), align 8
  %18 = load i32**, i32*** %5, align 8
  store i32* %17, i32** %18, align 8
  br label %26

19:                                               ; preds = %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = load i32, i32* @AV_LOG_ERROR, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @av_color_primaries_name(i32 %22)
  %24 = call i32 @av_log(%struct.TYPE_5__* %20, i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32**, i32*** %5, align 8
  store i32* null, i32** %25, align 8
  store i32 -1, i32* %3, align 4
  br label %27

26:                                               ; preds = %16, %13, %11
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*, i32) #1

declare dso_local i32 @av_color_primaries_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
