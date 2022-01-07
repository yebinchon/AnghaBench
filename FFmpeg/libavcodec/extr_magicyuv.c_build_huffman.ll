; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_magicyuv.c_build_huffman.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_magicyuv.c_build_huffman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32**, i32, i32*, i64 (i32*, i32*)* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot build Huffman codes\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid Huffman codes\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Huffman tables too short\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32)* @build_huffman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_huffman(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = call i32 @memset(i32** %20, i32 0, i32 8)
  br label %22

22:                                               ; preds = %115, %3
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @get_bits_left(i32* %23)
  %25 = icmp sge i32 %24, 8
  br i1 %25, label %26, label %116

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @get_bits(i32* %27, i32 1)
  store i32 %28, i32* %12, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @get_bits(i32* %29, i32 7)
  store i32 %30, i32* %13, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %12, align 4
  %33 = mul nsw i32 %32, 8
  %34 = call i32 @get_bitsz(i32* %31, i32 %33)
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %61, %26
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32 %47, i32* %59, align 4
  br label %60

60:                                               ; preds = %46, %40
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %36

64:                                               ; preds = %36
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %105

71:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = load i64 (i32*, i32*)*, i64 (i32*, i32*)** %73, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 %74(i32* %80, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %71
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = load i32, i32* @AV_LOG_ERROR, align 4
  %93 = call i32 @av_log(%struct.TYPE_6__* %91, i32 %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %94, i32* %4, align 4
  br label %128

95:                                               ; preds = %71
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %116

104:                                              ; preds = %95
  br label %115

105:                                              ; preds = %64
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = load i32, i32* @AV_LOG_ERROR, align 4
  %112 = call i32 @av_log(%struct.TYPE_6__* %110, i32 %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %113, i32* %4, align 4
  br label %128

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114, %104
  br label %22

116:                                              ; preds = %103, %22
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %117, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %124 = load i32, i32* @AV_LOG_ERROR, align 4
  %125 = call i32 @av_log(%struct.TYPE_6__* %123, i32 %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %126 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %126, i32* %4, align 4
  br label %128

127:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %127, %122, %109, %90
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bitsz(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
