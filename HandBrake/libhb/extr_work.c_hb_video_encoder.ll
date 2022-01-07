; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_work.c_hb_video_encoder.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_work.c_hb_video_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@WORK_ENCAVCODEC = common dso_local global i32 0, align 4
@AV_CODEC_ID_MPEG4 = common dso_local global i8* null, align 8
@AV_CODEC_ID_MPEG2VIDEO = common dso_local global i8* null, align 8
@AV_CODEC_ID_VP8 = common dso_local global i8* null, align 8
@AV_CODEC_ID_VP9 = common dso_local global i8* null, align 8
@WORK_ENCX264 = common dso_local global i32 0, align 4
@WORK_ENCQSV = common dso_local global i32 0, align 4
@WORK_ENCTHEORA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unknown video codec (0x%x)\00", align 1
@AV_CODEC_ID_H264 = common dso_local global i8* null, align 8
@AV_CODEC_ID_HEVC = common dso_local global i8* null, align 8
@WORK_ENCX265 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @hb_video_encoder(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %47 [
    i32 146, label %7
    i32 147, label %14
    i32 141, label %21
    i32 140, label %28
    i32 132, label %35
    i32 133, label %35
    i32 137, label %39
    i32 136, label %39
    i32 135, label %39
    i32 134, label %43
  ]

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @WORK_ENCAVCODEC, align 4
  %10 = call %struct.TYPE_4__* @hb_get_work(i32* %8, i32 %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %5, align 8
  %11 = load i8*, i8** @AV_CODEC_ID_MPEG4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  br label %50

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @WORK_ENCAVCODEC, align 4
  %17 = call %struct.TYPE_4__* @hb_get_work(i32* %15, i32 %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %5, align 8
  %18 = load i8*, i8** @AV_CODEC_ID_MPEG2VIDEO, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  br label %50

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @WORK_ENCAVCODEC, align 4
  %24 = call %struct.TYPE_4__* @hb_get_work(i32* %22, i32 %23)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %5, align 8
  %25 = load i8*, i8** @AV_CODEC_ID_VP8, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  br label %50

28:                                               ; preds = %2
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @WORK_ENCAVCODEC, align 4
  %31 = call %struct.TYPE_4__* @hb_get_work(i32* %29, i32 %30)
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %5, align 8
  %32 = load i8*, i8** @AV_CODEC_ID_VP9, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %50

35:                                               ; preds = %2, %2
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @WORK_ENCX264, align 4
  %38 = call %struct.TYPE_4__* @hb_get_work(i32* %36, i32 %37)
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %5, align 8
  br label %50

39:                                               ; preds = %2, %2, %2
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @WORK_ENCQSV, align 4
  %42 = call %struct.TYPE_4__* @hb_get_work(i32* %40, i32 %41)
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %5, align 8
  br label %50

43:                                               ; preds = %2
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @WORK_ENCTHEORA, align 4
  %46 = call %struct.TYPE_4__* @hb_get_work(i32* %44, i32 %45)
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %5, align 8
  br label %50

47:                                               ; preds = %2
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @hb_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %43, %39, %35, %28, %21, %14, %7
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %51
}

declare dso_local %struct.TYPE_4__* @hb_get_work(i32*, i32) #1

declare dso_local i32 @hb_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
