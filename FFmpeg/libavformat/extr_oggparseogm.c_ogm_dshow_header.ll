; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparseogm.c_ogm_dshow_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparseogm.c_ogm_dshow_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__**, %struct.ogg* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i8*, i32 }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32*, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@ff_codec_bmp_tags = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@ff_codec_wav_tags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @ogm_dshow_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogm_dshow_header(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ogg*, align 8
  %7 = alloca %struct.ogg_stream*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.ogg*, %struct.ogg** %12, align 8
  store %struct.ogg* %13, %struct.ogg** %6, align 8
  %14 = load %struct.ogg*, %struct.ogg** %6, align 8
  %15 = getelementptr inbounds %struct.ogg, %struct.ogg* %14, i32 0, i32 0
  %16 = load %struct.ogg_stream*, %struct.ogg_stream** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %16, i64 %18
  store %struct.ogg_stream* %19, %struct.ogg_stream** %7, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %22, i64 %24
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %8, align 8
  %27 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %28 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %31 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %148

40:                                               ; preds = %2
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %148

45:                                               ; preds = %40
  %46 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %47 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 100
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %51, i32* %3, align 4
  br label %148

52:                                               ; preds = %45
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 96
  %55 = call i32 @AV_RL32(i32* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 89694080
  br i1 %57, label %58, label %99

58:                                               ; preds = %52
  %59 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %60 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 184
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %64, i32* %3, align 4
  br label %148

65:                                               ; preds = %58
  %66 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 6
  store i32 %66, i32* %70, align 8
  %71 = load i32, i32* @ff_codec_bmp_tags, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 68
  %74 = call i32 @AV_RL32(i32* %73)
  %75 = call i8* @ff_codec_get_id(i32 %71, i32 %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 5
  store i8* %75, i8** %79, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 164
  %83 = call i32 @AV_RL64(i32* %82)
  %84 = call i32 @avpriv_set_pts_info(%struct.TYPE_7__* %80, i32 64, i32 %83, i32 10000000)
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 176
  %87 = call i32 @AV_RL32(i32* %86)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 180
  %94 = call i32 @AV_RL32(i32* %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  br label %147

99:                                               ; preds = %52
  %100 = load i32, i32* %10, align 4
  %101 = icmp eq i32 %100, 89694081
  br i1 %101, label %102, label %146

102:                                              ; preds = %99
  %103 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %104 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %105, 136
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %108, i32* %3, align 4
  br label %148

109:                                              ; preds = %102
  %110 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 6
  store i32 %110, i32* %114, align 8
  %115 = load i32, i32* @ff_codec_wav_tags, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 124
  %118 = call i32 @AV_RL16(i32* %117)
  %119 = call i8* @ff_codec_get_id(i32 %115, i32 %118)
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 5
  store i8* %119, i8** %123, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 126
  %126 = call i32 @AV_RL16(i32* %125)
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  store i32 %126, i32* %130, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 128
  %133 = call i32 @AV_RL32(i32* %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  store i32 %133, i32* %137, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 132
  %140 = call i32 @AV_RL32(i32* %139)
  %141 = mul nsw i32 %140, 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 4
  store i32 %141, i32* %145, align 8
  br label %146

146:                                              ; preds = %109, %99
  br label %147

147:                                              ; preds = %146, %65
  store i32 1, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %107, %63, %50, %44, %39
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i8* @ff_codec_get_id(i32, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @AV_RL64(i32*) #1

declare dso_local i32 @AV_RL16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
