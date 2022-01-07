; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_sei.c_decode_buffering_period.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_sei.c_decode_buffering_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8** }
%struct.TYPE_10__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"non-existing SPS %d referenced in buffering period\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVERROR_PS_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, %struct.TYPE_10__*, i8*)* @decode_buffering_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_buffering_period(%struct.TYPE_9__* %0, i32* %1, %struct.TYPE_10__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @get_ue_golomb_31(i32* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ugt i32 %15, 31
  br i1 %16, label %26, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %20, i64 %22
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %17, %4
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* @AV_LOG_ERROR, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @av_log(i8* %27, i32 %28, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = icmp ugt i32 %31, 31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @AVERROR_PS_NOT_FOUND, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %5, align 4
  br label %118

39:                                               ; preds = %17
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %42, i64 %44
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %12, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %78, %54
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %55
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @get_bits_long(i32* %62, i32 %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8* %66, i8** %72, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @skip_bits(i32* %73, i32 %76)
  br label %78

78:                                               ; preds = %61
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %55

81:                                               ; preds = %55
  br label %82

82:                                               ; preds = %81, %39
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %82
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %111, %87
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %88
  %95 = load i32*, i32** %7, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @get_bits_long(i32* %95, i32 %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  store i8* %99, i8** %105, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @skip_bits(i32* %106, i32 %109)
  br label %111

111:                                              ; preds = %94
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %88

114:                                              ; preds = %88
  br label %115

115:                                              ; preds = %114, %82
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %115, %37
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @get_ue_golomb_31(i32*) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i32) #1

declare dso_local i8* @get_bits_long(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
