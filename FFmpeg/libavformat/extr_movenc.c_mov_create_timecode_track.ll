; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_create_timecode_track.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_create_timecode_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__**, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_18__*, i32, %struct.TYPE_14__*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }

@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AV_TIMECODE_FLAG_DROPFRAME = common dso_local global i32 0, align 4
@MOV_TIMECODE_FLAG_DROPFRAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32, i32, i64)* @mov_create_timecode_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_create_timecode_track(%struct.TYPE_20__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_19__, align 4
  %15 = alloca i32, align 4
  %16 = bitcast %struct.TYPE_17__* %6 to i64*
  store i64 %3, i64* %16, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %11, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i64 %24
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %12, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %28, i64 %30
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  store i32 4, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 3
  %38 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  store i32 %38, i32* %37, align 4
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %41 = call i32 @find_fps(%struct.TYPE_20__* %39, %struct.TYPE_18__* %40)
  store i32 %41, i32* %15, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = call i32 @MKTAG(i8 signext 116, i8 signext 109, i8 signext 99, i8 signext 100)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @AV_TIMECODE_FLAG_DROPFRAME, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %4
  %69 = load i32, i32* @MOV_TIMECODE_FLAG_DROPFRAME, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  store %struct.TYPE_18__* %75, %struct.TYPE_18__** %77, align 8
  %78 = call %struct.TYPE_14__* (...) @avcodec_parameters_alloc()
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 3
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %80, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = icmp ne %struct.TYPE_14__* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %74
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = call i32 @AVERROR(i32 %86)
  store i32 %87, i32* %5, align 4
  br label %129

88:                                               ; preds = %74
  %89 = load i32, i32* @AVMEDIA_TYPE_DATA, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  store i32 %89, i32* %93, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 4
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @av_inv_q(i32 %101)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  store i32 %102, i32* %106, align 4
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @av_malloc(i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  store i32 %109, i32* %110, align 4
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %88
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = call i32 @AVERROR(i32 %115)
  store i32 %116, i32* %5, align 4
  br label %129

117:                                              ; preds = %88
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @AV_WB32(i32 %119, i32 %121)
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %124 = call i32 @ff_mov_write_packet(%struct.TYPE_20__* %123, %struct.TYPE_19__* %14)
  store i32 %124, i32* %10, align 4
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @av_free(i32 %126)
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %117, %114, %85
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @find_fps(%struct.TYPE_20__*, %struct.TYPE_18__*) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local %struct.TYPE_14__* @avcodec_parameters_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_inv_q(i32) #1

declare dso_local i32 @av_malloc(i32) #1

declare dso_local i32 @AV_WB32(i32, i32) #1

declare dso_local i32 @ff_mov_write_packet(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @av_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
