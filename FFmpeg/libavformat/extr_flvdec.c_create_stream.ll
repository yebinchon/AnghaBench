; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvdec.c_create_stream.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvdec.c_create_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_14__**, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32 }

@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_DATA = common dso_local global i64 0, align 8
@AVFMTCTX_NOHEADER = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@FLV_HEADER_FLAG_HASAUDIO = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@FLV_HEADER_FLAG_HASVIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_18__*, i32)* @create_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @create_stream(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %6, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = call %struct.TYPE_17__* @avformat_new_stream(%struct.TYPE_18__* %11, i32* null)
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %7, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %14 = icmp ne %struct.TYPE_17__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %139

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 3
  br i1 %25, label %79, label %26

26:                                               ; preds = %16
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %86

31:                                               ; preds = %26
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %34, i64 0
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %86

43:                                               ; preds = %31
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %46, i64 1
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %43
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %58, i64 0
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AVMEDIA_TYPE_DATA, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %55
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %70, i64 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AVMEDIA_TYPE_DATA, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %67, %16
  %80 = load i32, i32* @AVFMTCTX_NOHEADER, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %79, %67, %55, %43, %31, %26
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* @FLV_HEADER_FLAG_HASAUDIO, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %90, %86
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %104
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  store i32 %111, i32* %115, align 4
  %116 = load i32, i32* @FLV_HEADER_FLAG_HASVIDEO, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %108, %104
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %129 = call i32 @avpriv_set_pts_info(%struct.TYPE_17__* %128, i32 32, i32 1, i32 1000)
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 1
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %137 = call i32 @add_keyframes_index(%struct.TYPE_18__* %136)
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %138, %struct.TYPE_17__** %3, align 8
  br label %139

139:                                              ; preds = %127, %15
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  ret %struct.TYPE_17__* %140
}

declare dso_local %struct.TYPE_17__* @avformat_new_stream(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @add_keyframes_index(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
