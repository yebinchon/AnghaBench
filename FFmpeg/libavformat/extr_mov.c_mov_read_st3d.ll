; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_st3d.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_st3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Empty stereoscopic video box\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_STEREO3D_2D = common dso_local global i32 0, align 4
@AV_STEREO3D_TOPBOTTOM = common dso_local global i32 0, align 4
@AV_STEREO3D_SIDEBYSIDE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown st3d mode value %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32)* @mov_read_st3d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_st3d(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %84

20:                                               ; preds = %3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %24, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %25, i64 %32
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %8, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 5
  br i1 %40, label %41, label %48

41:                                               ; preds = %20
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = load i32, i32* @AV_LOG_ERROR, align 4
  %46 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %44, i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %47, i32* %4, align 4
  br label %84

48:                                               ; preds = %20
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @avio_skip(i32* %49, i32 4)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @avio_r8(i32* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  switch i32 %53, label %60 [
    i32 0, label %54
    i32 1, label %56
    i32 2, label %58
  ]

54:                                               ; preds = %48
  %55 = load i32, i32* @AV_STEREO3D_2D, align 4
  store i32 %55, i32* %10, align 4
  br label %67

56:                                               ; preds = %48
  %57 = load i32, i32* @AV_STEREO3D_TOPBOTTOM, align 4
  store i32 %57, i32* %10, align 4
  br label %67

58:                                               ; preds = %48
  %59 = load i32, i32* @AV_STEREO3D_SIDEBYSIDE, align 4
  store i32 %59, i32* %10, align 4
  br label %67

60:                                               ; preds = %48
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = load i32, i32* @AV_LOG_WARNING, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %63, i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  store i32 0, i32* %4, align 4
  br label %84

67:                                               ; preds = %58, %56, %54
  %68 = call %struct.TYPE_13__* (...) @av_stereo3d_alloc()
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %70, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = icmp ne %struct.TYPE_13__* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = call i32 @AVERROR(i32 %76)
  store i32 %77, i32* %4, align 4
  br label %84

78:                                               ; preds = %67
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 4
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %78, %75, %60, %41, %19
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local %struct.TYPE_13__* @av_stereo3d_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
