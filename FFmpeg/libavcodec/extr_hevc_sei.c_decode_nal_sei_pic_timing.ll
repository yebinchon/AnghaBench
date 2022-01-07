; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_sei.c_decode_nal_sei_pic_timing.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_sei.c_decode_nal_sei_pic_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_PICTURE_STRUCTURE_UNKNOWN = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"BOTTOM Field\0A\00", align 1
@AV_PICTURE_STRUCTURE_BOTTOM_FIELD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"TOP Field\0A\00", align 1
@AV_PICTURE_STRUCTURE_TOP_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, %struct.TYPE_14__*, i8*, i32)* @decode_nal_sei_pic_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_nal_sei_pic_timing(%struct.TYPE_13__* %0, i32* %1, %struct.TYPE_14__* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %12, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %19, i64 %22
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = call i32 @AVERROR(i32 %27)
  store i32 %28, i32* %6, align 4
  br label %98

29:                                               ; preds = %5
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %31, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %32, i64 %35
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %13, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %29
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @get_bits(i32* %47, i32 4)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* @AV_PICTURE_STRUCTURE_UNKNOWN, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %60, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %14, align 4
  %56 = icmp eq i32 %55, 10
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %14, align 4
  %59 = icmp eq i32 %58, 12
  br i1 %59, label %60, label %67

60:                                               ; preds = %57, %54, %46
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* @AV_LOG_DEBUG, align 4
  %63 = call i32 @av_log(i8* %61, i32 %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @AV_PICTURE_STRUCTURE_BOTTOM_FIELD, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %84

67:                                               ; preds = %57
  %68 = load i32, i32* %14, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %14, align 4
  %72 = icmp eq i32 %71, 9
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  %75 = icmp eq i32 %74, 11
  br i1 %75, label %76, label %83

76:                                               ; preds = %73, %70, %67
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* @AV_LOG_DEBUG, align 4
  %79 = call i32 @av_log(i8* %77, i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @AV_PICTURE_STRUCTURE_TOP_FIELD, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %76, %73
  br label %84

84:                                               ; preds = %83, %60
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @get_bits(i32* %85, i32 2)
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @get_bits(i32* %87, i32 1)
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @skip_bits1(i32* %89)
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %84, %29
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %11, align 4
  %96 = mul nsw i32 8, %95
  %97 = call i32 @skip_bits_long(i32* %94, i32 %96)
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %93, %26
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*) #1

declare dso_local i32 @skip_bits1(i32*) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
