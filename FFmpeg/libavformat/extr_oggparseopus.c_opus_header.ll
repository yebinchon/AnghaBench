; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparseopus.c_opus_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparseopus.c_opus_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__**, %struct.ogg* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32, i32, i32, %struct.oggopus_private*, i32* }
%struct.oggopus_private = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OGG_FLAG_BOS = common dso_local global i32 0, align 4
@OPUS_HEAD_SIZE = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_OPUS = common dso_local global i32 0, align 4
@OPUS_SEEK_PREROLL_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"OpusTags\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @opus_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opus_header(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ogg*, align 8
  %7 = alloca %struct.ogg_stream*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.oggopus_private*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load %struct.ogg*, %struct.ogg** %12, align 8
  store %struct.ogg* %13, %struct.ogg** %6, align 8
  %14 = load %struct.ogg*, %struct.ogg** %6, align 8
  %15 = getelementptr inbounds %struct.ogg, %struct.ogg* %14, i32 0, i32 0
  %16 = load %struct.ogg_stream*, %struct.ogg_stream** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %16, i64 %18
  store %struct.ogg_stream* %19, %struct.ogg_stream** %7, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %22, i64 %24
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %8, align 8
  %27 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %28 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %27, i32 0, i32 3
  %29 = load %struct.oggopus_private*, %struct.oggopus_private** %28, align 8
  store %struct.oggopus_private* %29, %struct.oggopus_private** %9, align 8
  %30 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %31 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %34 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  store i32* %37, i32** %10, align 8
  %38 = load %struct.oggopus_private*, %struct.oggopus_private** %9, align 8
  %39 = icmp ne %struct.oggopus_private* %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %2
  %41 = call %struct.oggopus_private* @av_mallocz(i32 8)
  %42 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %43 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %42, i32 0, i32 3
  store %struct.oggopus_private* %41, %struct.oggopus_private** %43, align 8
  store %struct.oggopus_private* %41, %struct.oggopus_private** %9, align 8
  %44 = load %struct.oggopus_private*, %struct.oggopus_private** %9, align 8
  %45 = icmp ne %struct.oggopus_private* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %178

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %52 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @OGG_FLAG_BOS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %147

57:                                               ; preds = %50
  %58 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %59 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @OPUS_HEAD_SIZE, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 8
  %66 = call i32 @AV_RL8(i32* %65)
  %67 = and i32 %66, 240
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63, %57
  %70 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %70, i32* %3, align 4
  br label %178

71:                                               ; preds = %63
  %72 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 6
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* @AV_CODEC_ID_OPUS, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 5
  store i32 %77, i32* %81, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 9
  %84 = call i32 @AV_RL8(i32* %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 10
  %91 = call i32 @AV_RL16(i32* %90)
  %92 = load %struct.oggopus_private*, %struct.oggopus_private** %9, align 8
  %93 = getelementptr inbounds %struct.oggopus_private, %struct.oggopus_private* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.oggopus_private*, %struct.oggopus_private** %9, align 8
  %95 = getelementptr inbounds %struct.oggopus_private, %struct.oggopus_private* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  store i32 %96, i32* %100, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 3
  %105 = call i32 @av_freep(i32* %104)
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %110 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @ff_alloc_extradata(%struct.TYPE_10__* %108, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %71
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = call i32 @AVERROR(i32 %115)
  store i32 %116, i32* %3, align 4
  br label %178

117:                                              ; preds = %71
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %125 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @memcpy(i32 %122, i32* %123, i32 %126)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  store i32 48000, i32* %131, align 4
  %132 = load i32, i32* @OPUS_SEEK_PREROLL_MS, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @av_rescale(i32 %132, i32 %137, i32 1000)
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  store i32 %138, i32* %142, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %144 = call i32 @avpriv_set_pts_info(%struct.TYPE_8__* %143, i32 64, i32 1, i32 48000)
  %145 = load %struct.oggopus_private*, %struct.oggopus_private** %9, align 8
  %146 = getelementptr inbounds %struct.oggopus_private, %struct.oggopus_private* %145, i32 0, i32 0
  store i32 1, i32* %146, align 4
  store i32 1, i32* %3, align 4
  br label %178

147:                                              ; preds = %50
  %148 = load %struct.oggopus_private*, %struct.oggopus_private** %9, align 8
  %149 = getelementptr inbounds %struct.oggopus_private, %struct.oggopus_private* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %177

152:                                              ; preds = %147
  %153 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %154 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %155, 8
  br i1 %156, label %161, label %157

157:                                              ; preds = %152
  %158 = load i32*, i32** %10, align 8
  %159 = call i64 @memcmp(i32* %158, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %157, %152
  %162 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %162, i32* %3, align 4
  br label %178

163:                                              ; preds = %157
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 8
  %168 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %169 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %170, 8
  %172 = call i32 @ff_vorbis_stream_comment(%struct.TYPE_9__* %164, %struct.TYPE_8__* %165, i32* %167, i32 %171)
  %173 = load %struct.oggopus_private*, %struct.oggopus_private** %9, align 8
  %174 = getelementptr inbounds %struct.oggopus_private, %struct.oggopus_private* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %174, align 4
  store i32 1, i32* %3, align 4
  br label %178

177:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %177, %163, %161, %117, %114, %69, %46
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local %struct.oggopus_private* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @AV_RL8(i32*) #1

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i64 @ff_alloc_extradata(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @av_rescale(i32, i32, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @ff_vorbis_stream_comment(%struct.TYPE_9__*, %struct.TYPE_8__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
