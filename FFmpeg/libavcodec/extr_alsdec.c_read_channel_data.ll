; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alsdec.c_read_channel_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alsdec.c_read_channel_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__*, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i8*, i8**, i8*, i8* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid master channel.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Damaged channel data.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_7__*, i32)* @read_channel_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_channel_data(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i32* %13, i32** %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %9, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %118, %3
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32*, i32** %8, align 8
  %26 = call i8* @get_bits1(i32* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = icmp ne i8* %26, null
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %24, %20
  %32 = phi i1 [ false, %20 ], [ %30, %24 ]
  br i1 %32, label %33, label %123

33:                                               ; preds = %31
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @av_ceil_log2(i32 %35)
  %37 = call i32 @get_bits_long(i32* %34, i32 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %33
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = call i32 @av_log(%struct.TYPE_8__* %48, i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %51, i32* %4, align 4
  br label %137

52:                                               ; preds = %33
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %118

58:                                               ; preds = %52
  %59 = load i32*, i32** %8, align 8
  %60 = call i8* @get_bits1(i32* %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i8* @als_weighting(i32* %63, i32 1, i32 16)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  store i8* %64, i8** %68, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = call i8* @als_weighting(i32* %69, i32 2, i32 14)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  store i8* %70, i8** %74, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i8* @als_weighting(i32* %75, i32 1, i32 16)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 2
  store i8* %76, i8** %80, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 4
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %117

85:                                               ; preds = %58
  %86 = load i32*, i32** %8, align 8
  %87 = call i8* @als_weighting(i32* %86, i32 1, i32 16)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  %90 = load i8**, i8*** %89, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 3
  store i8* %87, i8** %91, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = call i8* @als_weighting(i32* %92, i32 1, i32 16)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 4
  store i8* %93, i8** %97, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = call i8* @als_weighting(i32* %98, i32 1, i32 16)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 5
  store i8* %99, i8** %103, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = call i8* @get_bits1(i32* %104)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %111, 3
  %113 = call i64 @get_bits(i32* %108, i64 %112)
  %114 = add nsw i64 %113, 3
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %85, %58
  br label %118

118:                                              ; preds = %117, %52
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 1
  store %struct.TYPE_7__* %120, %struct.TYPE_7__** %9, align 8
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %20

123:                                              ; preds = %31
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = load i32, i32* @AV_LOG_ERROR, align 4
  %132 = call i32 @av_log(%struct.TYPE_8__* %130, i32 %131, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %133 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %133, i32* %4, align 4
  br label %137

134:                                              ; preds = %123
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @align_get_bits(i32* %135)
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %134, %127, %45
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @get_bits_long(i32*, i32) #1

declare dso_local i32 @av_ceil_log2(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i8* @als_weighting(i32*, i32, i32) #1

declare dso_local i64 @get_bits(i32*, i64) #1

declare dso_local i32 @align_get_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
