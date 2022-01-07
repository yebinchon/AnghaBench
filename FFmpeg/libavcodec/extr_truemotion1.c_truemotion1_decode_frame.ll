; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion1.c_truemotion1_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion1.c_truemotion1_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, i32, i32* }
%struct.TYPE_13__ = type { i32, i32* }

@compression_types = common dso_local global %struct.TYPE_11__* null, align 8
@ALGO_RGB24H = common dso_local global i64 0, align 8
@ALGO_NOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*, %struct.TYPE_13__*)* @truemotion1_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truemotion1_decode_frame(%struct.TYPE_14__* %0, i8* %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %10, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %13, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %30 = call i32 @truemotion1_decode_header(%struct.TYPE_12__* %29)
  store i32 %30, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %82

34:                                               ; preds = %4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ff_reget_buffer(%struct.TYPE_14__* %35, i32 %38, i32 0)
  store i32 %39, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %82

43:                                               ; preds = %34
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** @compression_types, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ALGO_RGB24H, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %55 = call i32 @truemotion1_decode_24bit(%struct.TYPE_12__* %54)
  br label %70

56:                                               ; preds = %43
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** @compression_types, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ALGO_NOP, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %68 = call i32 @truemotion1_decode_16bit(%struct.TYPE_12__* %67)
  br label %69

69:                                               ; preds = %66, %56
  br label %70

70:                                               ; preds = %69, %53
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @av_frame_ref(i8* %71, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %5, align 4
  br label %82

79:                                               ; preds = %70
  %80 = load i32*, i32** %8, align 8
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %77, %41, %32
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @truemotion1_decode_header(%struct.TYPE_12__*) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @truemotion1_decode_24bit(%struct.TYPE_12__*) #1

declare dso_local i32 @truemotion1_decode_16bit(%struct.TYPE_12__*) #1

declare dso_local i32 @av_frame_ref(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
