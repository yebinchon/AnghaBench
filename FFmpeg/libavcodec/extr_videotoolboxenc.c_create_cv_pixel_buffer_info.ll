; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_create_cv_pixel_buffer_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_create_cv_pixel_buffer_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCFCopyStringDictionaryKeyCallBacks = common dso_local global i32 0, align 4
@kCFTypeDictionaryValueCallBacks = common dso_local global i32 0, align 4
@kCFNumberSInt32Type = common dso_local global i32 0, align 4
@kCVPixelBufferPixelFormatTypeKey = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kCVPixelBufferWidthKey = common dso_local global i32 0, align 4
@kCVPixelBufferHeightKey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32**)* @create_cv_pixel_buffer_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_cv_pixel_buffer_info(%struct.TYPE_5__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @get_cv_pixel_format(%struct.TYPE_5__* %12, i32 %15, i32 %18, i32* %10, i32* null)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %3, align 4
  br label %90

24:                                               ; preds = %2
  %25 = load i32, i32* @kCFAllocatorDefault, align 4
  %26 = call i32* @CFDictionaryCreateMutable(i32 %25, i32 20, i32* @kCFCopyStringDictionaryKeyCallBacks, i32* @kCFTypeDictionaryValueCallBacks)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %78

30:                                               ; preds = %24
  %31 = load i32, i32* @kCFAllocatorDefault, align 4
  %32 = load i32, i32* @kCFNumberSInt32Type, align 4
  %33 = call i32* @CFNumberCreate(i32 %31, i32 %32, i32* %10)
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %78

37:                                               ; preds = %30
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* @kCVPixelBufferPixelFormatTypeKey, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @CFDictionarySetValue(i32* %38, i32 %39, i32* %40)
  %42 = call i32 @vt_release_num(i32** %6)
  %43 = load i32, i32* @kCFAllocatorDefault, align 4
  %44 = load i32, i32* @kCFNumberSInt32Type, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32* @CFNumberCreate(i32 %43, i32 %44, i32* %46)
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %37
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %3, align 4
  br label %90

53:                                               ; preds = %37
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* @kCVPixelBufferWidthKey, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @CFDictionarySetValue(i32* %54, i32 %55, i32* %56)
  %58 = call i32 @vt_release_num(i32** %7)
  %59 = load i32, i32* @kCFAllocatorDefault, align 4
  %60 = load i32, i32* @kCFNumberSInt32Type, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = call i32* @CFNumberCreate(i32 %59, i32 %60, i32* %62)
  store i32* %63, i32** %8, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %53
  br label %78

67:                                               ; preds = %53
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* @kCVPixelBufferHeightKey, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @CFDictionarySetValue(i32* %68, i32 %69, i32* %70)
  %72 = call i32 @vt_release_num(i32** %8)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @add_color_attr(%struct.TYPE_5__* %73, i32* %74)
  %76 = load i32*, i32** %9, align 8
  %77 = load i32**, i32*** %5, align 8
  store i32* %76, i32** %77, align 8
  store i32 0, i32* %3, align 4
  br label %90

78:                                               ; preds = %66, %36, %29
  %79 = call i32 @vt_release_num(i32** %6)
  %80 = call i32 @vt_release_num(i32** %7)
  %81 = call i32 @vt_release_num(i32** %8)
  %82 = load i32*, i32** %9, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @CFRelease(i32* %85)
  br label %87

87:                                               ; preds = %84, %78
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = call i32 @AVERROR(i32 %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %67, %50, %22
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @get_cv_pixel_format(%struct.TYPE_5__*, i32, i32, i32*, i32*) #1

declare dso_local i32* @CFDictionaryCreateMutable(i32, i32, i32*, i32*) #1

declare dso_local i32* @CFNumberCreate(i32, i32, i32*) #1

declare dso_local i32 @CFDictionarySetValue(i32*, i32, i32*) #1

declare dso_local i32 @vt_release_num(i32**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @add_color_attr(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @CFRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
