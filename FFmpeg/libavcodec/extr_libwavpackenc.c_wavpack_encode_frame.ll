; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libwavpackenc.c_wavpack_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libwavpackenc.c_wavpack_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i64* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error encoding a frame: %s\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Error flushing the encoder: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_12__*, i32*)* @wavpack_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wavpack_encode_frame(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %10, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 4
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %19, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = icmp ne %struct.TYPE_12__* %25, null
  br i1 %26, label %27, label %62

27:                                               ; preds = %4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = call i32 @ff_af_queue_add(i32* %29, %struct.TYPE_12__* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %113

36:                                               ; preds = %27
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @WavpackPackSamples(i32 %39, i32* %45, i64 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %36
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = load i32, i32* @AV_LOG_ERROR, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @WavpackGetErrorMessage(i32 %57)
  %59 = call i32 @av_log(%struct.TYPE_13__* %53, i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %60, i32* %5, align 4
  br label %113

61:                                               ; preds = %36
  br label %62

62:                                               ; preds = %61, %4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %95, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = icmp ne %struct.TYPE_12__* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %70, %67
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @WavpackFlushSamples(i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %78
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = load i32, i32* @AV_LOG_ERROR, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @WavpackGetErrorMessage(i32 %90)
  %92 = call i32 @av_log(%struct.TYPE_13__* %86, i32 %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %93, i32* %5, align 4
  br label %113

94:                                               ; preds = %78
  br label %95

95:                                               ; preds = %94, %70, %62
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = call i32 @ff_af_queue_remove(i32* %102, i64 %105, i32* %107, i32* %109)
  %111 = load i32*, i32** %9, align 8
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %100, %95
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %85, %52, %34
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @ff_af_queue_add(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @WavpackPackSamples(i32, i32*, i64) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, i32) #1

declare dso_local i32 @WavpackGetErrorMessage(i32) #1

declare dso_local i32 @WavpackFlushSamples(i32) #1

declare dso_local i32 @ff_af_queue_remove(i32*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
