; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_srtdec.c_srt_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_srtdec.c_srt_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i32 }

@AV_PKT_DATA_SUBTITLE_POSITION = common dso_local global i32 0, align 4
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_16__*)* @srt_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srt_decode_frame(%struct.TYPE_17__* %0, i8* %1, i32* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_18__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %10, align 8
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %23 = load i32, i32* @AV_PKT_DATA_SUBTITLE_POSITION, align 4
  %24 = call i32* @av_packet_get_side_data(%struct.TYPE_16__* %22, i32 %23, i32* %16)
  store i32* %24, i32** %18, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %19, align 8
  %28 = load i32*, i32** %18, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %4
  %31 = load i32, i32* %16, align 4
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load i32*, i32** %18, align 8
  %35 = call i32 @AV_RL32(i32* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32*, i32** %18, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = call i32 @AV_RL32(i32* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32*, i32** %18, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 8
  %41 = call i32 @AV_RL32(i32* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32*, i32** %18, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 12
  %44 = call i32 @AV_RL32(i32* %43)
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %33, %30, %4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  br label %93

54:                                               ; preds = %45
  %55 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %56 = call i32 @av_bprint_init(%struct.TYPE_18__* %11, i32 0, i32 %55)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @srt_to_ass(%struct.TYPE_17__* %57, %struct.TYPE_18__* %11, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %54
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = call i32 @ff_ass_add_rect(%struct.TYPE_15__* %69, i32 %71, i32 %74, i32 0, i32* null, i32* null)
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %68, %54
  %78 = call i32 @av_bprint_finalize(%struct.TYPE_18__* %11, i32* null)
  %79 = load i32, i32* %17, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %5, align 4
  br label %93

83:                                               ; preds = %77
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = load i32*, i32** %8, align 8
  store i32 %88, i32* %89, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %83, %81, %50
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32* @av_packet_get_side_data(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @av_bprint_init(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @srt_to_ass(%struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_ass_add_rect(%struct.TYPE_15__*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
