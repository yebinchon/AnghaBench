; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tmv.c_tmv_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tmv.c_tmv_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32, i32**, i32, i32*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Input buffer too small, truncated sample?\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@ff_cga_palette = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i64 0, align 8
@avpriv_cga_font = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32*, %struct.TYPE_9__*)* @tmv_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmv_decode_frame(%struct.TYPE_11__* %0, i8* %1, i32* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %10, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 3
  store i32 %29, i32* %13, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 3
  store i32 %33, i32* %14, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %36 = call i32 @ff_get_buffer(%struct.TYPE_11__* %34, %struct.TYPE_10__* %35, i32 0)
  store i32 %36, i32* %20, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* %20, align 4
  store i32 %39, i32* %5, align 4
  br label %140

40:                                               ; preds = %4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %14, align 4
  %45 = mul i32 2, %44
  %46 = load i32, i32* %13, align 4
  %47 = mul i32 %45, %46
  %48 = icmp ult i32 %43, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = call i32 @av_log(%struct.TYPE_11__* %50, i32 %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %53 = load i32*, i32** %8, align 8
  store i32 0, i32* %53, align 4
  %54 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %54, i32* %5, align 4
  br label %140

55:                                               ; preds = %40
  %56 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32**, i32*** %62, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 0
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %12, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32**, i32*** %69, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @ff_cga_palette, align 4
  %74 = call i32 @memcpy(i32* %72, i32 %73, i32 64)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32**, i32*** %76, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 64
  %81 = load i64, i64* @AVPALETTE_SIZE, align 8
  %82 = sub nsw i64 %81, 64
  %83 = call i32 @memset(i32* %80, i32 0, i64 %82)
  store i32 0, i32* %16, align 4
  br label %84

84:                                               ; preds = %132, %55
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %135

88:                                               ; preds = %84
  store i32 0, i32* %15, align 4
  br label %89

89:                                               ; preds = %119, %88
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %122

93:                                               ; preds = %89
  %94 = load i32*, i32** %11, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %11, align 8
  %96 = load i32, i32* %94, align 4
  store i32 %96, i32* %19, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 4
  store i32 %99, i32* %18, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %11, align 8
  %102 = load i32, i32* %100, align 4
  %103 = and i32 %102, 15
  store i32 %103, i32* %17, align 4
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %15, align 4
  %106 = mul i32 %105, 8
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @avpriv_cga_font, align 4
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %18, align 4
  %118 = call i32 @ff_draw_pc_font(i32* %108, i32 %113, i32 %114, i32 8, i32 %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %93
  %120 = load i32, i32* %15, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %89

122:                                              ; preds = %89
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %127, 8
  %129 = load i32*, i32** %12, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32* %131, i32** %12, align 8
  br label %132

132:                                              ; preds = %122
  %133 = load i32, i32* %16, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %16, align 4
  br label %84

135:                                              ; preds = %84
  %136 = load i32*, i32** %8, align 8
  store i32 1, i32* %136, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %135, %49, %38
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @ff_draw_pc_font(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
