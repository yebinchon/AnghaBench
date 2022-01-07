; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvdsubdec.c_dvdsub_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvdsubdec.c_dvdsub_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i64, i32* }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_14__**, i32, i32 }
%struct.TYPE_14__ = type { i32, i64*, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@AV_SUBTITLE_FLAG_FORCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i8*, i32*, %struct.TYPE_17__*)* @dvdsub_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvdsub_decode(%struct.TYPE_18__* %0, i8* %1, i32* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %10, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %11, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %13, align 8
  store i32 0, i32* %14, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @append_to_cached_buf(%struct.TYPE_18__* %33, i32* %34, i32 %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32*, i32** %8, align 8
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %16, align 4
  store i32 %41, i32* %5, align 4
  br label %113

42:                                               ; preds = %32
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %11, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %12, align 4
  store i32 1, i32* %14, align 4
  br label %49

49:                                               ; preds = %42, %4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @decode_dvd_subtitles(%struct.TYPE_15__* %50, %struct.TYPE_16__* %51, i32* %52, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = call i32 @AVERROR(i32 %56)
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %49
  %60 = load i32*, i32** %8, align 8
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %69

64:                                               ; preds = %59
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @append_to_cached_buf(%struct.TYPE_18__* %65, i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %63
  %70 = phi i32 [ 0, %63 ], [ %68, %64 ]
  store i32 %70, i32* %5, align 4
  br label %113

71:                                               ; preds = %49
  %72 = load i32, i32* %15, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  br label %77

77:                                               ; preds = %107, %90, %74
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %79 = call i32 @reset_rects(%struct.TYPE_16__* %78)
  %80 = load i32*, i32** %8, align 8
  store i32 0, i32* %80, align 4
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %5, align 4
  br label %113

82:                                               ; preds = %71
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %88 = call i64 @find_smallest_bounding_rectangle(%struct.TYPE_15__* %86, %struct.TYPE_16__* %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %77

91:                                               ; preds = %85, %82
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %99, i64 0
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @AV_SUBTITLE_FLAG_FORCED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %96
  br label %77

108:                                              ; preds = %96, %91
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  %111 = load i32*, i32** %8, align 8
  store i32 1, i32* %111, align 4
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %108, %77, %69, %39
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @append_to_cached_buf(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @decode_dvd_subtitles(%struct.TYPE_15__*, %struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @reset_rects(%struct.TYPE_16__*) #1

declare dso_local i64 @find_smallest_bounding_rectangle(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
