; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_wsddec.c_wsd_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_wsddec.c_wsd_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__*, i32, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i64, i32, i32, i32 }

@AV_TIMECODE_STR_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"version: %i.%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"playback_time\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"emphasis\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"composer\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"song_writer\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"artist\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"album\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"genre\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @wsd_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsd_read_header(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %4, align 8
  %17 = load i32, i32* @AV_TIMECODE_STR_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = call %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_15__* %21, i32* null)
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %5, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = icmp ne %struct.TYPE_14__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = call i32 @AVERROR(i32 %26)
  store i32 %27, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %191

28:                                               ; preds = %1
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @avio_skip(i32* %29, i32 8)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @avio_r8(i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = load i32, i32* @AV_LOG_DEBUG, align 4
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 15
  %39 = call i32 @av_log(%struct.TYPE_15__* %33, i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @avio_skip(i32* %40, i32 11)
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 16
  br i1 %43, label %44, label %47

44:                                               ; preds = %28
  store i32 128, i32* %7, align 4
  store i32 2048, i32* %8, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @avio_skip(i32* %45, i32 8)
  br label %52

47:                                               ; preds = %28
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @avio_rb32(i32* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @avio_rb32(i32* %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @avio_skip(i32* %53, i32 4)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @avio_rb32(i32* %55)
  %57 = call i32 @av_timecode_make_smpte_tc_string(i8* %20, i32 %56, i32 0)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = call i32 @av_dict_set(i32* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 0)
  %61 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 5
  store i32 %61, i32* %65, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 4
  store i32 %70, i32* %74, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @avio_rb32(i32* %75)
  %77 = sdiv i32 %76, 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @avio_skip(i32* %82, i32 4)
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @avio_r8(i32* %84)
  %86 = and i32 %85, 15
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  store i32 %86, i32* %90, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = mul nsw i64 %96, %102
  %104 = mul nsw i64 %103, 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  store i64 %104, i64* %108, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %52
  %116 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %116, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %191

117:                                              ; preds = %52
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @avio_skip(i32* %118, i32 3)
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @avio_rb32(i32* %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = and i32 %122, 1
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %150, label %125

125:                                              ; preds = %117
  store i32 1, i32* %13, align 4
  br label %126

126:                                              ; preds = %146, %125
  %127 = load i32, i32* %13, align 4
  %128 = icmp slt i32 %127, 32
  br i1 %128, label %129, label %149

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %13, align 4
  %132 = ashr i32 %130, %131
  %133 = and i32 %132, 1
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %129
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @wsd_to_av_channel_layoyt(%struct.TYPE_15__* %136, i32 %137)
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %138
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %135, %129
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %126

149:                                              ; preds = %126
  br label %150

150:                                              ; preds = %149, %117
  %151 = load i32*, i32** %4, align 8
  %152 = call i32 @avio_skip(i32* %151, i32 16)
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @avio_rb32(i32* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %158 = call i32 @avpriv_request_sample(%struct.TYPE_15__* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %159

159:                                              ; preds = %156, %150
  %160 = load i32*, i32** %4, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @SEEK_SET, align 4
  %163 = call i32 @avio_seek(i32* %160, i32 %161, i32 %162)
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %186

165:                                              ; preds = %159
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %167 = call i32 @get_metadata(%struct.TYPE_15__* %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 128)
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %169 = call i32 @get_metadata(%struct.TYPE_15__* %168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 128)
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %171 = call i32 @get_metadata(%struct.TYPE_15__* %170, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 128)
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %173 = call i32 @get_metadata(%struct.TYPE_15__* %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 128)
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %175 = call i32 @get_metadata(%struct.TYPE_15__* %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 128)
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %177 = call i32 @get_metadata(%struct.TYPE_15__* %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 32)
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %179 = call i32 @get_metadata(%struct.TYPE_15__* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 32)
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %181 = call i32 @get_metadata(%struct.TYPE_15__* %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 32)
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %183 = call i32 @get_metadata(%struct.TYPE_15__* %182, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 512)
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %185 = call i32 @get_metadata(%struct.TYPE_15__* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 512)
  br label %186

186:                                              ; preds = %165, %159
  %187 = load i32*, i32** %4, align 8
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @SEEK_SET, align 4
  %190 = call i32 @avio_seek(i32* %187, i32 %188, i32 %189)
  store i32 %190, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %191

191:                                              ; preds = %186, %115, %25
  %192 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %192)
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_15__*, i32*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @avio_skip(i32*, i32) #2

declare dso_local i32 @avio_r8(i32*) #2

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i32, i32) #2

declare dso_local i32 @avio_rb32(i32*) #2

declare dso_local i32 @av_timecode_make_smpte_tc_string(i8*, i32, i32) #2

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #2

declare dso_local i32 @wsd_to_av_channel_layoyt(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_15__*, i8*) #2

declare dso_local i32 @avio_seek(i32*, i32, i32) #2

declare dso_local i32 @get_metadata(%struct.TYPE_15__*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
