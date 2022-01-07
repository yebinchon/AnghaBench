; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mmvideo.c_mm_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mmvideo.c_mm_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32* }

@MM_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_14__*)* @mm_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mm_decode_frame(%struct.TYPE_15__* %0, i8* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %10, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %12, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @MM_PREAMBLE_SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %28, i32* %5, align 4
  br label %112

29:                                               ; preds = %4
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = call i32 @AV_RL16(i32* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* @MM_PREAMBLE_SIZE, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %10, align 8
  %37 = load i32, i32* @MM_PREAMBLE_SIZE, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %11, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @bytestream2_init(i32* %41, i32* %42, i32 %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = call i32 @ff_reget_buffer(%struct.TYPE_15__* %45, %struct.TYPE_12__* %48, i32 0)
  store i32 %49, i32* %14, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %29
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %5, align 4
  br label %112

53:                                               ; preds = %29
  %54 = load i32, i32* %13, align 4
  switch i32 %54, label %79 [
    i32 128, label %55
    i32 131, label %61
    i32 130, label %64
    i32 129, label %67
    i32 134, label %70
    i32 133, label %73
    i32 132, label %76
  ]

55:                                               ; preds = %53
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %57 = call i32 @mm_decode_pal(%struct.TYPE_13__* %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %5, align 4
  br label %112

61:                                               ; preds = %53
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %63 = call i32 @mm_decode_intra(%struct.TYPE_13__* %62, i32 0, i32 0)
  store i32 %63, i32* %14, align 4
  br label %81

64:                                               ; preds = %53
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %66 = call i32 @mm_decode_intra(%struct.TYPE_13__* %65, i32 1, i32 0)
  store i32 %66, i32* %14, align 4
  br label %81

67:                                               ; preds = %53
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %69 = call i32 @mm_decode_intra(%struct.TYPE_13__* %68, i32 1, i32 1)
  store i32 %69, i32* %14, align 4
  br label %81

70:                                               ; preds = %53
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %72 = call i32 @mm_decode_inter(%struct.TYPE_13__* %71, i32 0, i32 0)
  store i32 %72, i32* %14, align 4
  br label %81

73:                                               ; preds = %53
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %75 = call i32 @mm_decode_inter(%struct.TYPE_13__* %74, i32 1, i32 0)
  store i32 %75, i32* %14, align 4
  br label %81

76:                                               ; preds = %53
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %78 = call i32 @mm_decode_inter(%struct.TYPE_13__* %77, i32 1, i32 1)
  store i32 %78, i32* %14, align 4
  br label %81

79:                                               ; preds = %53
  %80 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %79, %76, %73, %70, %67, %64, %61
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %5, align 4
  br label %112

86:                                               ; preds = %81
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @AVPALETTE_SIZE, align 4
  %98 = call i32 @memcpy(i32 %93, i32 %96, i32 %97)
  %99 = load i8*, i8** %7, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = call i32 @av_frame_ref(i8* %99, %struct.TYPE_12__* %102)
  store i32 %103, i32* %14, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %86
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %5, align 4
  br label %112

107:                                              ; preds = %86
  %108 = load i32*, i32** %8, align 8
  store i32 1, i32* %108, align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %107, %105, %84, %55, %51, %27
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_15__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @mm_decode_pal(%struct.TYPE_13__*) #1

declare dso_local i32 @mm_decode_intra(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @mm_decode_inter(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
