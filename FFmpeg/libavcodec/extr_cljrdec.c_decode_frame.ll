; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cljrdec.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cljrdec.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32, i32**, i32*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid width or height\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Resolution larger than buffer size. Invalid header?\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32*, %struct.TYPE_9__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_11__* %0, i8* %1, i32* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %10, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %13, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32, %4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = load i32, i32* @AV_LOG_ERROR, align 4
  %40 = call i32 @av_log(%struct.TYPE_11__* %38, i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %41, i32* %5, align 4
  br label %170

42:                                               ; preds = %32
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %43, %46
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = load i32, i32* @AV_LOG_ERROR, align 4
  %55 = call i32 @av_log(%struct.TYPE_11__* %53, i32 %54, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %56, i32* %5, align 4
  br label %170

57:                                               ; preds = %42
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %60 = call i32 @ff_get_buffer(%struct.TYPE_11__* %58, %struct.TYPE_10__* %59, i32 0)
  store i32 %60, i32* %16, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %5, align 4
  br label %170

64:                                               ; preds = %57
  %65 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = mul nsw i32 %71, 8
  %73 = call i32 @init_get_bits(i32* %12, i32* %70, i32 %72)
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %164, %64
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %167

80:                                               ; preds = %74
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32**, i32*** %82, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %86, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %85, i64 %93
  store i32* %94, i32** %17, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32**, i32*** %96, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i64 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %100, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %99, i64 %107
  store i32* %108, i32** %18, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %114, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %113, i64 %121
  store i32* %122, i32** %19, align 8
  store i32 0, i32* %14, align 4
  br label %123

123:                                              ; preds = %160, %80
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %163

129:                                              ; preds = %123
  %130 = call i32 @get_bits(i32* %12, i32 5)
  %131 = mul nsw i32 %130, 33
  %132 = ashr i32 %131, 2
  %133 = load i32*, i32** %17, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  store i32 %132, i32* %134, align 4
  %135 = call i32 @get_bits(i32* %12, i32 5)
  %136 = mul nsw i32 %135, 33
  %137 = ashr i32 %136, 2
  %138 = load i32*, i32** %17, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  store i32 %137, i32* %139, align 4
  %140 = call i32 @get_bits(i32* %12, i32 5)
  %141 = mul nsw i32 %140, 33
  %142 = ashr i32 %141, 2
  %143 = load i32*, i32** %17, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 %142, i32* %144, align 4
  %145 = call i32 @get_bits(i32* %12, i32 5)
  %146 = mul nsw i32 %145, 33
  %147 = ashr i32 %146, 2
  %148 = load i32*, i32** %17, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  store i32 %147, i32* %149, align 4
  %150 = load i32*, i32** %17, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 4
  store i32* %151, i32** %17, align 8
  %152 = call i32 @get_bits(i32* %12, i32 6)
  %153 = shl i32 %152, 2
  %154 = load i32*, i32** %18, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %18, align 8
  store i32 %153, i32* %154, align 4
  %156 = call i32 @get_bits(i32* %12, i32 6)
  %157 = shl i32 %156, 2
  %158 = load i32*, i32** %19, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %19, align 8
  store i32 %157, i32* %158, align 4
  br label %160

160:                                              ; preds = %129
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 4
  store i32 %162, i32* %14, align 4
  br label %123

163:                                              ; preds = %123
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %74

167:                                              ; preds = %74
  %168 = load i32*, i32** %8, align 8
  store i32 1, i32* %168, align 4
  %169 = load i32, i32* %11, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %167, %62, %52, %37
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
