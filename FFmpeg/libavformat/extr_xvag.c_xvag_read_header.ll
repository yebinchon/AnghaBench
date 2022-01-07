; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_xvag.c_xvag_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_xvag.c_xvag_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, i8* }
%struct.TYPE_9__ = type { i32, i32, i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@FF_SANE_NB_CHANNELS = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_PSX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"codec %X\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_CODEC_ID_MP3 = common dso_local global i32 0, align 4
@AVSTREAM_PARSE_FULL_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @xvag_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvag_read_header(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @avio_skip(i32 %10, i32 4)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = call %struct.TYPE_10__* @avformat_new_stream(%struct.TYPE_11__* %12, i32* null)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = call i32 @AVERROR(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %211

19:                                               ; preds = %1
  %20 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 4
  store i32 %20, i32* %24, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @avio_rl32(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @av_bswap32(i32 %31)
  %33 = icmp ugt i32 %30, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %80

37:                                               ; preds = %19
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @av_bswap32(i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @avio_skip(i32 %42, i32 28)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @avio_rb32(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @avio_rb32(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @avio_skip(i32 %60, i32 4)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @avio_rb32(i32 %64)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @avio_skip(i32 %70, i32 8)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @avio_rb32(i32 %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  store i8* %75, i8** %79, align 8
  br label %121

80:                                               ; preds = %19
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @avio_skip(i32 %83, i32 28)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @avio_rl32(i32 %87)
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %6, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @avio_rl32(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @avio_skip(i32 %101, i32 4)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @avio_rl32(i32 %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @avio_skip(i32 %111, i32 8)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @avio_rl32(i32 %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  store i8* %116, i8** %120, align 8
  br label %121

121:                                              ; preds = %80, %37
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ule i8* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %129, i32* %2, align 4
  br label %211

130:                                              ; preds = %121
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp sle i32 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %130
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @FF_SANE_NB_CHANNELS, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %137, %130
  %146 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %146, i32* %2, align 4
  br label %211

147:                                              ; preds = %137
  %148 = load i32, i32* %6, align 4
  switch i32 %148, label %165 [
    i32 28, label %149
  ]

149:                                              ; preds = %147
  %150 = load i32, i32* @AV_CODEC_ID_ADPCM_PSX, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 3
  store i32 %150, i32* %154, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = mul nsw i32 16, %159
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  store i32 %160, i32* %164, align 4
  br label %170

165:                                              ; preds = %147
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @avpriv_request_sample(%struct.TYPE_11__* %166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %169, i32* %2, align 4
  br label %211

170:                                              ; preds = %149
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %4, align 4
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @avio_tell(i32 %177)
  %179 = sub i32 %174, %178
  %180 = call i32 @avio_skip(i32 %173, i32 %179)
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @avio_rb16(i32 %183)
  %185 = icmp eq i32 %184, 65531
  br i1 %185, label %186, label %199

186:                                              ; preds = %170
  %187 = load i32, i32* @AV_CODEC_ID_MP3, align 4
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 3
  store i32 %187, i32* %191, align 8
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  store i32 4096, i32* %195, align 4
  %196 = load i32, i32* @AVSTREAM_PARSE_FULL_RAW, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 8
  br label %199

199:                                              ; preds = %186, %170
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @avio_skip(i32 %202, i32 -2)
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @avpriv_set_pts_info(%struct.TYPE_10__* %204, i32 64, i32 1, i8* %209)
  store i32 0, i32* %2, align 4
  br label %211

211:                                              ; preds = %199, %165, %145, %128, %16
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local i32 @avio_skip(i32, i32) #1

declare dso_local %struct.TYPE_10__* @avformat_new_stream(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @avio_rl32(i32) #1

declare dso_local i32 @av_bswap32(i32) #1

declare dso_local i8* @avio_rb32(i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @avio_rb16(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_10__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
