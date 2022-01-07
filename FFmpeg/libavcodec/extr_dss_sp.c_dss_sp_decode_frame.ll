; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dss_sp.c_dss_sp_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dss_sp.c_dss_sp_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i64*, i32 }

@DSS_SP_FRAME_SIZE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Expected %d bytes, got %d - skipping packet.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@DSS_SP_SAMPLE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32*, %struct.TYPE_9__*)* @dss_sp_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_sp_decode_frame(%struct.TYPE_11__* %0, i8* %1, i32* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %11, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @DSS_SP_FRAME_SIZE, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = load i32, i32* @AV_LOG_WARNING, align 4
  %36 = load i32, i32* @DSS_SP_FRAME_SIZE, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @av_log(%struct.TYPE_11__* %34, i32 %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32*, i32** %8, align 8
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %41, i32* %5, align 4
  br label %65

42:                                               ; preds = %4
  %43 = load i32, i32* @DSS_SP_SAMPLE_COUNT, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %48 = call i32 @ff_get_buffer(%struct.TYPE_11__* %46, %struct.TYPE_10__* %47, i32 0)
  store i32 %48, i32* %15, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %5, align 4
  br label %65

52:                                               ; preds = %42
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %14, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @dss_sp_decode_one_frame(i32* %59, i32* %60, i32* %61)
  %63 = load i32*, i32** %8, align 8
  store i32 1, i32* %63, align 4
  %64 = load i32, i32* @DSS_SP_FRAME_SIZE, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %52, %50, %39
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @dss_sp_decode_one_frame(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
