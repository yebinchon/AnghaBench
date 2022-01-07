; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparseflac.c_flac_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparseflac.c_flac_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__**, %struct.ogg* }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32*, i64, i32 }

@OGG_FLAC_METADATA_TYPE_STREAMINFO = common dso_local global i32 0, align 4
@FLAC_STREAMINFO_SIZE = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_FLAC = common dso_local global i32 0, align 4
@AVSTREAM_PARSE_HEADERS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@FLAC_METADATA_TYPE_VORBIS_COMMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @flac_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flac_header(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ogg*, align 8
  %7 = alloca %struct.ogg_stream*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.ogg*, %struct.ogg** %14, align 8
  store %struct.ogg* %15, %struct.ogg** %6, align 8
  %16 = load %struct.ogg*, %struct.ogg** %6, align 8
  %17 = getelementptr inbounds %struct.ogg, %struct.ogg* %16, i32 0, i32 0
  %18 = load %struct.ogg_stream*, %struct.ogg_stream** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %18, i64 %20
  store %struct.ogg_stream* %21, %struct.ogg_stream** %7, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %24, i64 %26
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %8, align 8
  %29 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %30 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %33 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 255
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %154

39:                                               ; preds = %2
  %40 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %41 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %44 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %48 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %49, 8
  %51 = call i32 @init_get_bits(i32* %9, i32* %46, i32 %50)
  %52 = call i32 @skip_bits1(i32* %9)
  %53 = call i32 @get_bits(i32* %9, i32 7)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @OGG_FLAC_METADATA_TYPE_STREAMINFO, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %132

57:                                               ; preds = %39
  %58 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %59 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %62 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  store i32* %68, i32** %11, align 8
  %69 = call i32 @skip_bits_long(i32* %9, i32 32)
  %70 = call i32 @get_bits(i32* %9, i32 8)
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  store i32 -1, i32* %3, align 4
  br label %154

73:                                               ; preds = %57
  %74 = call i32 @skip_bits_long(i32* %9, i32 24)
  %75 = call i32 @skip_bits_long(i32* %9, i32 32)
  %76 = call i64 @get_bits_long(i32* %9, i32 32)
  %77 = load i64, i64* @FLAC_STREAMINFO_SIZE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 -1, i32* %3, align 4
  br label %154

80:                                               ; preds = %73
  %81 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  store i32 %81, i32* %85, align 8
  %86 = load i32, i32* @AV_CODEC_ID_FLAC, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* @AVSTREAM_PARSE_HEADERS, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = load i64, i64* @FLAC_STREAMINFO_SIZE, align 8
  %98 = call i64 @ff_alloc_extradata(%struct.TYPE_10__* %96, i64 %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %80
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = call i32 @AVERROR(i32 %101)
  store i32 %102, i32* %3, align 4
  br label %154

103:                                              ; preds = %80
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @memcpy(i64 %108, i32* %109, i32 %114)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 10
  %122 = call i32 @AV_RB24(i64 %121)
  %123 = ashr i32 %122, 4
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %103
  %127 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %127, i32* %3, align 4
  br label %154

128:                                              ; preds = %103
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @avpriv_set_pts_info(%struct.TYPE_8__* %129, i32 64, i32 1, i32 %130)
  br label %153

132:                                              ; preds = %39
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @FLAC_METADATA_TYPE_VORBIS_COMMENT, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %152

136:                                              ; preds = %132
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %139 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %140 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %143 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = getelementptr inbounds i32, i32* %145, i64 4
  %147 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %148 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %149, 4
  %151 = call i32 @ff_vorbis_stream_comment(%struct.TYPE_9__* %137, %struct.TYPE_8__* %138, i32* %146, i32 %150)
  br label %152

152:                                              ; preds = %136, %132
  br label %153

153:                                              ; preds = %152, %128
  store i32 1, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %126, %100, %79, %72, %38
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @skip_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i64 @get_bits_long(i32*, i32) #1

declare dso_local i64 @ff_alloc_extradata(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @AV_RB24(i64) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @ff_vorbis_stream_comment(%struct.TYPE_9__*, %struct.TYPE_8__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
