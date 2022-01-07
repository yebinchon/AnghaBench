; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tiertexseq.c_seq_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tiertexseq.c_seq_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SEQ_FRAME_RATE = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_TIERTEXSEQVIDEO = common dso_local global i32 0, align 4
@SEQ_FRAME_W = common dso_local global i32 0, align 4
@SEQ_FRAME_H = common dso_local global i32 0, align 4
@SEQ_SAMPLE_RATE = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16BE = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @seq_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_read_header(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %6, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @seq_init_frame_buffers(%struct.TYPE_13__* %15, i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = call i32 @seq_read_close(%struct.TYPE_15__* %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %180

24:                                               ; preds = %1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  store i32 1, i32* %4, align 4
  br label %27

27:                                               ; preds = %41, %24
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %28, 100
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @seq_parse_frame_data(%struct.TYPE_13__* %31, i32* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = call i32 @seq_read_close(%struct.TYPE_15__* %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %180

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %27

44:                                               ; preds = %27
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = call %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_15__* %49, i32* null)
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %8, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = icmp ne %struct.TYPE_14__* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %44
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = call i32 @seq_read_close(%struct.TYPE_15__* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %2, align 4
  br label %180

58:                                               ; preds = %44
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %60 = load i32, i32* @SEQ_FRAME_RATE, align 4
  %61 = call i32 @avpriv_set_pts_info(%struct.TYPE_14__* %59, i32 32, i32 1, i32 %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 8
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* @AV_CODEC_ID_TIERTEXSEQVIDEO, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 7
  store i32 %72, i32* %76, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 6
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* @SEQ_FRAME_W, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 10
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* @SEQ_FRAME_H, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 9
  store i32 %86, i32* %90, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = call %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_15__* %91, i32* null)
  store %struct.TYPE_14__* %92, %struct.TYPE_14__** %8, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %94 = icmp ne %struct.TYPE_14__* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %58
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %97 = call i32 @seq_read_close(%struct.TYPE_15__* %96)
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = call i32 @AVERROR(i32 %98)
  store i32 %99, i32* %2, align 4
  br label %180

100:                                              ; preds = %58
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = load i32, i32* @SEQ_SAMPLE_RATE, align 4
  %105 = call i32 @avpriv_set_pts_info(%struct.TYPE_14__* %103, i32 32, i32 1, i32 %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 8
  store i32 %111, i32* %115, align 4
  %116 = load i32, i32* @AV_CODEC_ID_PCM_S16BE, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 7
  store i32 %116, i32* %120, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 6
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 5
  store i32 %129, i32* %133, align 4
  %134 = load i32, i32* @SEQ_SAMPLE_RATE, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  store i32 %134, i32* %138, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  store i32 16, i32* %142, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = mul nsw i32 %147, %152
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = mul nsw i32 %153, %158
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 3
  store i32 %159, i32* %163, align 4
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = mul nsw i32 %168, %173
  %175 = sdiv i32 %174, 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 4
  store i32 %175, i32* %179, align 8
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %100, %95, %53, %36, %20
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @seq_init_frame_buffers(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @seq_read_close(%struct.TYPE_15__*) #1

declare dso_local i32 @seq_parse_frame_data(%struct.TYPE_13__*, i32*) #1

declare dso_local %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_14__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
