; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvdec.c_flv_same_video_codec.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvdec.c_flv_same_video_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FLV_VIDEO_CODECID_MASK = common dso_local global i32 0, align 4
@AV_CODEC_ID_FLV1 = common dso_local global i32 0, align 4
@AV_CODEC_ID_FLASHSV = common dso_local global i32 0, align 4
@AV_CODEC_ID_FLASHSV2 = common dso_local global i32 0, align 4
@AV_CODEC_ID_VP6F = common dso_local global i32 0, align 4
@AV_CODEC_ID_VP6A = common dso_local global i32 0, align 4
@AV_CODEC_ID_H264 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @flv_same_video_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flv_same_video_codec(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @FLV_VIDEO_CODECID_MASK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %71

20:                                               ; preds = %14, %2
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %64 [
    i32 133, label %22
    i32 131, label %29
    i32 130, label %36
    i32 129, label %43
    i32 128, label %50
    i32 132, label %57
  ]

22:                                               ; preds = %20
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AV_CODEC_ID_FLV1, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %71

29:                                               ; preds = %20
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AV_CODEC_ID_FLASHSV, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %71

36:                                               ; preds = %20
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AV_CODEC_ID_FLASHSV2, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %71

43:                                               ; preds = %20
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AV_CODEC_ID_VP6F, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %71

50:                                               ; preds = %20
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AV_CODEC_ID_VP6A, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %71

57:                                               ; preds = %20
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AV_CODEC_ID_H264, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %71

64:                                               ; preds = %20
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %64, %57, %50, %43, %36, %29, %22, %19
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
