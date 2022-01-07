; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorspace.c_get_range_off.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorspace.c_get_range_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Input range not set, assuming tv/mpeg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*, i32*, i32, i32)* @get_range_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_range_off(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %12, align 4
  switch i32 %15, label %52 [
    i32 128, label %16
    i32 129, label %31
    i32 130, label %44
  ]

16:                                               ; preds = %6
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %14, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %16
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = load i32, i32* @AV_LOG_WARNING, align 4
  %27 = call i32 @av_log(%struct.TYPE_6__* %25, i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %24, %16
  br label %31

31:                                               ; preds = %6, %30
  %32 = load i32, i32* %13, align 4
  %33 = sub nsw i32 %32, 8
  %34 = shl i32 16, %33
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %13, align 4
  %37 = sub nsw i32 %36, 8
  %38 = shl i32 219, %37
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %13, align 4
  %41 = sub nsw i32 %40, 8
  %42 = shl i32 224, %41
  %43 = load i32*, i32** %11, align 8
  store i32 %42, i32* %43, align 4
  br label %55

44:                                               ; preds = %6
  %45 = load i32*, i32** %9, align 8
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %13, align 4
  %47 = sub nsw i32 %46, 8
  %48 = shl i32 256, %47
  %49 = sub nsw i32 %48, 1
  %50 = load i32*, i32** %11, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %10, align 8
  store i32 %49, i32* %51, align 4
  br label %55

52:                                               ; preds = %6
  %53 = load i32, i32* @EINVAL, align 4
  %54 = call i32 @AVERROR(i32 %53)
  store i32 %54, i32* %7, align 4
  br label %56

55:                                               ; preds = %44, %31
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
