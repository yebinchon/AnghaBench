; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libdavs2.c_davs2_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libdavs2.c_davs2_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32* }

@DAVS2_DEFAULT = common dso_local global i32 0, align 4
@DAVS2_ERROR = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Decoder error: can't read packet\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32*, %struct.TYPE_11__*)* @davs2_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davs2_decode_frame(%struct.TYPE_12__* %0, i8* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %10, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %13, align 8
  %26 = load i32, i32* @DAVS2_DEFAULT, align 4
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @send_delayed_frame(%struct.TYPE_12__* %30, i32* %31, i32* %32)
  store i32 %33, i32* %5, align 4
  br label %106

34:                                               ; preds = %4
  %35 = load i32*, i32** %12, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 3
  store i32* %35, i32** %38, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = call i32 @davs2_decoder_send_packet(i32 %57, %struct.TYPE_13__* %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @DAVS2_ERROR, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %34
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = load i32, i32* @AV_LOG_ERROR, align 4
  %67 = call i32 @av_log(%struct.TYPE_12__* %65, i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %68, i32* %5, align 4
  br label %106

69:                                               ; preds = %34
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = call i32 @davs2_decoder_recv_frame(i32 %72, i32* %74, i32* %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @DAVS2_DEFAULT, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %69
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32*, i32** %8, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32, i32* %14, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = call i32 @davs2_dump_frames(%struct.TYPE_12__* %82, i32* %84, i32* %85, i32* %87, i32 %88, i32* %89)
  store i32 %90, i32* %14, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = call i32 @davs2_decoder_frame_unref(i32 %93, i32* %95)
  br label %97

97:                                               ; preds = %81, %69
  %98 = load i32, i32* %14, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  br label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %14, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %64, %29
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @send_delayed_frame(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @davs2_decoder_send_packet(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @davs2_decoder_recv_frame(i32, i32*, i32*) #1

declare dso_local i32 @davs2_dump_frames(%struct.TYPE_12__*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @davs2_decoder_frame_unref(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
