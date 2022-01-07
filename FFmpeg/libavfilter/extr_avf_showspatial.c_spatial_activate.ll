; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showspatial.c_spatial_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showspatial.c_spatial_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__*, %struct.TYPE_14__*, i32**, i32** }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_16__*, i32, %struct.TYPE_15__*, i32*, i32)* }
%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i64, i32, i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@run_channel_fft = common dso_local global i32 0, align 4
@FFERROR_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @spatial_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spatial_activate(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 3
  %12 = load i32**, i32*** %11, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = load i32**, i32*** %16, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %5, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %6, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @FF_FILTER_FORWARD_STATUS_BACK(i32* %23, i32* %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @av_audio_fifo_size(i32 %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @ff_inlink_consume_frame(i32* %35, %struct.TYPE_15__** %8)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %191

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 4
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8**
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @av_audio_fifo_write(i32 %54, i8** %58, i64 %61)
  %63 = call i32 @av_frame_free(%struct.TYPE_15__** %8)
  br label %64

64:                                               ; preds = %44, %41
  br label %65

65:                                               ; preds = %64, %1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @av_audio_fifo_size(i32 %68)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %69, %72
  br i1 %73, label %74, label %158

74:                                               ; preds = %65
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call %struct.TYPE_15__* @ff_get_audio_buffer(i32* %75, i64 %78)
  store %struct.TYPE_15__* %79, %struct.TYPE_15__** %9, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %81 = icmp ne %struct.TYPE_15__* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = call i32 @AVERROR(i32 %83)
  store i32 %84, i32* %2, align 4
  br label %191

85:                                               ; preds = %74
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, %97
  store i64 %101, i64* %99, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i8**
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @av_audio_fifo_size(i32 %114)
  %116 = call i32 @FFMIN(i64 %111, i64 %115)
  %117 = call i32 @av_audio_fifo_peek(i32 %104, i8** %108, i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %85
  %121 = call i32 @av_frame_free(%struct.TYPE_15__** %9)
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %2, align 4
  br label %191

123:                                              ; preds = %85
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %126, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @av_assert0(i32 %131)
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i32 (%struct.TYPE_16__*, i32, %struct.TYPE_15__*, i32*, i32)*, i32 (%struct.TYPE_16__*, i32, %struct.TYPE_15__*, i32*, i32)** %136, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %139 = load i32, i32* @run_channel_fft, align 4
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %141 = call i32 %137(%struct.TYPE_16__* %138, i32 %139, %struct.TYPE_15__* %140, i32* null, i32 2)
  %142 = load i32*, i32** %4, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %144 = call i32 @draw_spatial(i32* %142, %struct.TYPE_15__* %143)
  store i32 %144, i32* %7, align 4
  %145 = call i32 @av_frame_free(%struct.TYPE_15__** %9)
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @av_audio_fifo_drain(i32 %148, i64 %151)
  %153 = load i32, i32* %7, align 4
  %154 = icmp sle i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %123
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %2, align 4
  br label %191

157:                                              ; preds = %123
  br label %158

158:                                              ; preds = %157, %65
  %159 = load i32*, i32** %4, align 8
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @FF_FILTER_FORWARD_STATUS(i32* %159, i32* %160)
  %162 = load i32*, i32** %5, align 8
  %163 = call i64 @ff_outlink_frame_wanted(i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %158
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @av_audio_fifo_size(i32 %168)
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp slt i64 %169, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %165
  %175 = load i32*, i32** %4, align 8
  %176 = call i32 @ff_inlink_request_frame(i32* %175)
  store i32 0, i32* %2, align 4
  br label %191

177:                                              ; preds = %165, %158
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = call i64 @av_audio_fifo_size(i32 %180)
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp sge i64 %181, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %177
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %188 = call i32 @ff_filter_set_ready(%struct.TYPE_16__* %187, i32 10)
  store i32 0, i32* %2, align 4
  br label %191

189:                                              ; preds = %177
  %190 = load i32, i32* @FFERROR_NOT_READY, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %189, %186, %174, %155, %120, %82, %39
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK(i32*, i32*) #1

declare dso_local i64 @av_audio_fifo_size(i32) #1

declare dso_local i32 @ff_inlink_consume_frame(i32*, %struct.TYPE_15__**) #1

declare dso_local i32 @av_audio_fifo_write(i32, i8**, i64) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_15__**) #1

declare dso_local %struct.TYPE_15__* @ff_get_audio_buffer(i32*, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_audio_fifo_peek(i32, i8**, i32) #1

declare dso_local i32 @FFMIN(i64, i64) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @draw_spatial(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @av_audio_fifo_drain(i32, i64) #1

declare dso_local i32 @FF_FILTER_FORWARD_STATUS(i32*, i32*) #1

declare dso_local i64 @ff_outlink_frame_wanted(i32*) #1

declare dso_local i32 @ff_inlink_request_frame(i32*) #1

declare dso_local i32 @ff_filter_set_ready(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
