; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv40.c_rv40_parse_slice_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv40.c_rv40_parse_slice_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i8*, i8*, i8*, i8* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, %struct.TYPE_8__*)* @rv40_parse_slice_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv40_parse_slice_header(%struct.TYPE_9__* %0, i32* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = call i32 @memset(%struct.TYPE_8__* %21, i32 0, i32 48)
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @get_bits1(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %27, i32* %4, align 4
  br label %106

28:                                               ; preds = %3
  %29 = load i32*, i32** %6, align 8
  %30 = call i8* @get_bits(i32* %29, i32 2)
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %28
  %42 = load i32*, i32** %6, align 8
  %43 = call i8* @get_bits(i32* %42, i32 5)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i8* @get_bits(i32* %46, i32 2)
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %50, i32* %4, align 4
  br label %106

51:                                               ; preds = %41
  %52 = load i32*, i32** %6, align 8
  %53 = call i8* @get_bits(i32* %52, i32 2)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @skip_bits1(i32* %56)
  %58 = load i32*, i32** %6, align 8
  %59 = call i8* @get_bits(i32* %58, i32 13)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %51
  %67 = load i32*, i32** %6, align 8
  %68 = call i64 @get_bits1(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66, %51
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @rv40_parse_picture_size(i32* %71, i32* %9, i32* %10)
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @av_image_check_size(i32 %74, i32 %75, i32 0, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %4, align 4
  br label %106

84:                                               ; preds = %73
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 15
  %93 = ashr i32 %92, 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 15
  %96 = ashr i32 %95, 4
  %97 = mul nsw i32 %93, %96
  store i32 %97, i32* %11, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @ff_rv34_get_start_offset(i32* %98, i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i8* @get_bits(i32* %101, i32 %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %84, %82, %49, %26
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits1(i32*) #1

declare dso_local i32 @rv40_parse_picture_size(i32*, i32*, i32*) #1

declare dso_local i32 @av_image_check_size(i32, i32, i32, i32) #1

declare dso_local i32 @ff_rv34_get_start_offset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
