; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvenc.c_flv_write_codec_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvenc.c_flv_write_codec_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.TYPE_13__ = type { i64, i64, i32, i32, i32 }

@AV_CODEC_ID_AAC = common dso_local global i64 0, align 8
@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@AV_CODEC_ID_MPEG4 = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@FLV_TAG_TYPE_VIDEO = common dso_local global i32 0, align 4
@FLV_TAG_TYPE_AUDIO = common dso_local global i32 0, align 4
@FLV_AAC_SEQ_HEADER_DETECT = common dso_local global i32 0, align 4
@mpeg4audio_sample_rates = common dso_local global i64* null, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"AAC sequence header: %02x %02x.\0A\00", align 1
@FLV_FRAME_KEY = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*, i32)* @flv_write_codec_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flv_write_codec_header(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %9, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AV_CODEC_ID_AAC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %3
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AV_CODEC_ID_MPEG4, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %205

38:                                               ; preds = %32, %26, %3
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @FLV_TAG_TYPE_VIDEO, align 4
  br label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @FLV_TAG_TYPE_AUDIO, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = call i32 @avio_w8(i32* %39, i32 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @avio_wb24(i32* %52, i32 0)
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @put_timestamp(i32* %54, i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @avio_wb24(i32* %57, i32 0)
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @avio_tell(i32* %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AV_CODEC_ID_AAC, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %162

66:                                               ; preds = %49
  %67 = load i32*, i32** %8, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = call i32 @get_audio_flags(%struct.TYPE_12__* %68, %struct.TYPE_13__* %69)
  %71 = call i32 @avio_w8(i32* %67, i32 %70)
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @avio_w8(i32* %72, i32 0)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %153, label %78

78:                                               ; preds = %66
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @FLV_AAC_SEQ_HEADER_DETECT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %153

85:                                               ; preds = %78
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 8
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1, i32 0
  %99 = sub nsw i32 %90, %98
  store i32 %99, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %100

100:                                              ; preds = %117, %85
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %101, 16
  br i1 %102, label %103, label %120

103:                                              ; preds = %100
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** @mpeg4audio_sample_rates, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %108, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  br label %120

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %100

120:                                              ; preds = %115, %100
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %122 = call i32 @init_put_bits(i32* %11, i32* %121, i32 8)
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  %129 = call i32 @put_bits(i32* %11, i32 5, i32 %128)
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @put_bits(i32* %11, i32 4, i32 %130)
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @put_bits(i32* %11, i32 4, i32 %132)
  %134 = call i32 @put_bits(i32* %11, i32 1, i32 0)
  %135 = call i32 @put_bits(i32* %11, i32 1, i32 0)
  %136 = call i32 @put_bits(i32* %11, i32 1, i32 0)
  %137 = call i32 @flush_put_bits(i32* %11)
  %138 = load i32*, i32** %8, align 8
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @avio_w8(i32* %138, i32 %140)
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @avio_w8(i32* %142, i32 %144)
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %147 = load i32, i32* @AV_LOG_WARNING, align 4
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @av_log(%struct.TYPE_12__* %146, i32 %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %149, i32 %151)
  br label %153

153:                                              ; preds = %120, %78, %66
  %154 = load i32*, i32** %8, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @avio_write(i32* %154, i32 %157, i32 %160)
  br label %182

162:                                              ; preds = %49
  %163 = load i32*, i32** %8, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @FLV_FRAME_KEY, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @avio_w8(i32* %163, i32 %168)
  %170 = load i32*, i32** %8, align 8
  %171 = call i32 @avio_w8(i32* %170, i32 0)
  %172 = load i32*, i32** %8, align 8
  %173 = call i32 @avio_wb24(i32* %172, i32 0)
  %174 = load i32*, i32** %8, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @ff_isom_write_avcc(i32* %174, i32 %177, i32 %180)
  br label %182

182:                                              ; preds = %162, %153
  %183 = load i32*, i32** %8, align 8
  %184 = call i32 @avio_tell(i32* %183)
  %185 = load i32, i32* %10, align 4
  %186 = sub nsw i32 %184, %185
  store i32 %186, i32* %7, align 4
  %187 = load i32*, i32** %8, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sub nsw i32 0, %188
  %190 = sub nsw i32 %189, 10
  %191 = load i32, i32* @SEEK_CUR, align 4
  %192 = call i32 @avio_seek(i32* %187, i32 %190, i32 %191)
  %193 = load i32*, i32** %8, align 8
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @avio_wb24(i32* %193, i32 %194)
  %196 = load i32*, i32** %8, align 8
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 10
  %199 = sub nsw i32 %198, 3
  %200 = call i32 @avio_skip(i32* %196, i32 %199)
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 11
  %204 = call i32 @avio_wb32(i32* %201, i32 %203)
  br label %205

205:                                              ; preds = %182, %32
  ret void
}

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb24(i32*, i32) #1

declare dso_local i32 @put_timestamp(i32*, i32) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @get_audio_flags(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @init_put_bits(i32*, i32*, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i32, i32) #1

declare dso_local i32 @avio_write(i32*, i32, i32) #1

declare dso_local i32 @ff_isom_write_avcc(i32*, i32, i32) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
