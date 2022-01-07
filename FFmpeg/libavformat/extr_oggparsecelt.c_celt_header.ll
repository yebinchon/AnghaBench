; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsecelt.c_celt_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsecelt.c_celt_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__**, %struct.ogg* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i8*, i8*, i32, i32 }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32, i32, %struct.oggcelt_private*, i32* }
%struct.oggcelt_private = type { i8* }

@ff_celt_codec = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_CELT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @celt_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @celt_header(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ogg*, align 8
  %7 = alloca %struct.ogg_stream*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.oggcelt_private*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.ogg*, %struct.ogg** %17, align 8
  store %struct.ogg* %18, %struct.ogg** %6, align 8
  %19 = load %struct.ogg*, %struct.ogg** %6, align 8
  %20 = getelementptr inbounds %struct.ogg, %struct.ogg* %19, i32 0, i32 0
  %21 = load %struct.ogg_stream*, %struct.ogg_stream** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %21, i64 %23
  store %struct.ogg_stream* %24, %struct.ogg_stream** %7, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %27, i64 %29
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %8, align 8
  %32 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %33 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %32, i32 0, i32 2
  %34 = load %struct.oggcelt_private*, %struct.oggcelt_private** %33, align 8
  store %struct.oggcelt_private* %34, %struct.oggcelt_private** %9, align 8
  %35 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %36 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %39 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  store i32* %42, i32** %10, align 8
  %43 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %44 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 60
  br i1 %46, label %47, label %148

47:                                               ; preds = %2
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ff_celt_codec, i32 0, i32 1), align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ff_celt_codec, i32 0, i32 0), align 4
  %51 = call i32 @memcmp(i32* %48, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %148, label %53

53:                                               ; preds = %47
  %54 = call %struct.oggcelt_private* @av_malloc(i32 8)
  store %struct.oggcelt_private* %54, %struct.oggcelt_private** %9, align 8
  %55 = load %struct.oggcelt_private*, %struct.oggcelt_private** %9, align 8
  %56 = icmp ne %struct.oggcelt_private* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = call i32 @AVERROR(i32 %58)
  store i32 %59, i32* %3, align 4
  br label %169

60:                                               ; preds = %53
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = call i64 @ff_alloc_extradata(%struct.TYPE_12__* %63, i32 16)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.oggcelt_private*, %struct.oggcelt_private** %9, align 8
  %68 = call i32 @av_free(%struct.oggcelt_private* %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = call i32 @AVERROR(i32 %69)
  store i32 %70, i32* %3, align 4
  br label %169

71:                                               ; preds = %60
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 28
  %74 = call i8* @AV_RL32(i32* %73)
  store i8* %74, i8** %11, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 36
  %77 = call i8* @AV_RL32(i32* %76)
  store i8* %77, i8** %12, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 40
  %80 = call i8* @AV_RL32(i32* %79)
  store i8* %80, i8** %13, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 48
  %83 = call i8* @AV_RL32(i32* %82)
  store i8* %83, i8** %14, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 56
  %86 = call i8* @AV_RL32(i32* %85)
  store i8* %86, i8** %15, align 8
  %87 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 4
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* @AV_CODEC_ID_CELT, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 3
  store i32 %92, i32* %96, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  store i8* %97, i8** %101, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  store i8* %102, i8** %106, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %71
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = call i32 @avpriv_set_pts_info(%struct.TYPE_9__* %110, i32 64, i32 1, i8* %111)
  br label %113

113:                                              ; preds = %109, %71
  %114 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %115 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %114, i32 0, i32 2
  %116 = load %struct.oggcelt_private*, %struct.oggcelt_private** %115, align 8
  %117 = icmp ne %struct.oggcelt_private* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.oggcelt_private*, %struct.oggcelt_private** %9, align 8
  %120 = call i32 @av_free(%struct.oggcelt_private* %119)
  %121 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %122 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %121, i32 0, i32 2
  %123 = load %struct.oggcelt_private*, %struct.oggcelt_private** %122, align 8
  store %struct.oggcelt_private* %123, %struct.oggcelt_private** %9, align 8
  br label %124

124:                                              ; preds = %118, %113
  %125 = load %struct.oggcelt_private*, %struct.oggcelt_private** %9, align 8
  %126 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %127 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %126, i32 0, i32 2
  store %struct.oggcelt_private* %125, %struct.oggcelt_private** %127, align 8
  %128 = load i8*, i8** %15, align 8
  %129 = getelementptr i8, i8* %128, i64 1
  %130 = load %struct.oggcelt_private*, %struct.oggcelt_private** %9, align 8
  %131 = getelementptr inbounds %struct.oggcelt_private, %struct.oggcelt_private* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 0
  %138 = load i8*, i8** %14, align 8
  %139 = call i32 @AV_WL32(i64 %137, i8* %138)
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 4
  %146 = load i8*, i8** %11, align 8
  %147 = call i32 @AV_WL32(i64 %145, i8* %146)
  store i32 1, i32* %3, align 4
  br label %169

148:                                              ; preds = %47, %2
  %149 = load %struct.oggcelt_private*, %struct.oggcelt_private** %9, align 8
  %150 = icmp ne %struct.oggcelt_private* %149, null
  br i1 %150, label %151, label %168

151:                                              ; preds = %148
  %152 = load %struct.oggcelt_private*, %struct.oggcelt_private** %9, align 8
  %153 = getelementptr inbounds %struct.oggcelt_private, %struct.oggcelt_private* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %168

156:                                              ; preds = %151
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %161 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ff_vorbis_stream_comment(%struct.TYPE_10__* %157, %struct.TYPE_9__* %158, i32* %159, i32 %162)
  %164 = load %struct.oggcelt_private*, %struct.oggcelt_private** %9, align 8
  %165 = getelementptr inbounds %struct.oggcelt_private, %struct.oggcelt_private* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 -1
  store i8* %167, i8** %165, align 8
  store i32 1, i32* %3, align 4
  br label %169

168:                                              ; preds = %151, %148
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %168, %156, %124, %66, %57
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local %struct.oggcelt_private* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @ff_alloc_extradata(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @av_free(%struct.oggcelt_private*) #1

declare dso_local i8* @AV_RL32(i32*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_9__*, i32, i32, i8*) #1

declare dso_local i32 @AV_WL32(i64, i8*) #1

declare dso_local i32 @ff_vorbis_stream_comment(%struct.TYPE_10__*, %struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
