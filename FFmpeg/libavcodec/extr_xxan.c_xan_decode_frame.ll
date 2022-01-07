; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xxan.c_xan_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xxan.c_xan_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown frame type %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32*, %struct.TYPE_11__*)* @xan_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xan_decode_frame(%struct.TYPE_12__* %0, i8* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %10, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ff_reget_buffer(%struct.TYPE_12__* %16, i32 %19, i32 0)
  store i32 %20, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %69

24:                                               ; preds = %4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bytestream2_init(i32* %26, i32 %29, i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = call i32 @bytestream2_get_le32(i32* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  switch i32 %37, label %44 [
    i32 0, label %38
    i32 1, label %41
  ]

38:                                               ; preds = %24
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = call i32 @xan_decode_frame_type0(%struct.TYPE_12__* %39)
  store i32 %40, i32* %12, align 4
  br label %50

41:                                               ; preds = %24
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = call i32 @xan_decode_frame_type1(%struct.TYPE_12__* %42)
  store i32 %43, i32* %12, align 4
  br label %50

44:                                               ; preds = %24
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = load i32, i32* @AV_LOG_ERROR, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @av_log(%struct.TYPE_12__* %45, i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %49, i32* %5, align 4
  br label %69

50:                                               ; preds = %41, %38
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %69

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @av_frame_ref(i8* %56, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %5, align 4
  br label %69

64:                                               ; preds = %55
  %65 = load i32*, i32** %8, align 8
  store i32 1, i32* %65, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %62, %53, %44, %22
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @xan_decode_frame_type0(%struct.TYPE_12__*) #1

declare dso_local i32 @xan_decode_frame_type1(%struct.TYPE_12__*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i32) #1

declare dso_local i32 @av_frame_ref(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
