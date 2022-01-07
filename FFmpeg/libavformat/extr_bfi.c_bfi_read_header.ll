; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_bfi.c_bfi_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_bfi.c_bfi_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, i8*, i8* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid sample rate %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_BFI = common dso_local global i32 0, align 4
@AV_PIX_FMT_PAL8 = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_U8 = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @bfi_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfi_read_header(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %4, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = call %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__* %17, i32* null)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %6, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %177

24:                                               ; preds = %1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = call %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__* %25, i32* null)
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %7, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = call i32 @AVERROR(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %177

32:                                               ; preds = %24
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @avio_skip(i32* %33, i32 8)
  %35 = load i32*, i32** %5, align 8
  %36 = call i8* @avio_rl32(i32* %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i8* @avio_rl32(i32* %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i8* @avio_rl32(i32* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i8* @avio_rl32(i32* %44)
  %46 = load i32*, i32** %5, align 8
  %47 = call i8* @avio_rl32(i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i8* @avio_rl32(i32* %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @avio_skip(i32* %51, i32 12)
  %53 = load i32*, i32** %5, align 8
  %54 = call i8* @avio_rl32(i32* %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 9
  store i8* %54, i8** %58, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i8* @avio_rl32(i32* %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 8
  store i8* %60, i8** %64, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @avio_skip(i32* %65, i32 8)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @ff_get_extradata(%struct.TYPE_13__* %67, %struct.TYPE_14__* %70, i32* %71, i32 768)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %32
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %2, align 4
  br label %177

77:                                               ; preds = %32
  %78 = load i32*, i32** %5, align 8
  %79 = call i8* @avio_rl32(i32* %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %77
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = load i32, i32* @AV_LOG_ERROR, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @av_log(%struct.TYPE_13__* %92, i32 %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %100, i32* %2, align 4
  br label %177

101:                                              ; preds = %77
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @avpriv_set_pts_info(%struct.TYPE_12__* %102, i32 32, i32 1, i32 %103)
  %105 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 6
  store i32 %105, i32* %109, align 8
  %110 = load i32, i32* @AV_CODEC_ID_BFI, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 5
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 7
  store i32 %115, i32* %119, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 2
  store i8* %122, i8** %126, align 8
  %127 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 6
  store i32 %127, i32* %131, align 8
  %132 = load i32, i32* @AV_CODEC_ID_PCM_U8, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 5
  store i32 %132, i32* %136, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  store i32 1, i32* %140, align 4
  %141 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 4
  store i32 %141, i32* %145, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  store i32 8, i32* %149, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = mul nsw i32 %154, %159
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 3
  store i32 %160, i32* %164, align 4
  %165 = load i32*, i32** %5, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sub nsw i32 %166, 3
  %168 = load i32, i32* @SEEK_SET, align 4
  %169 = call i32 @avio_seek(i32* %165, i32 %167, i32 %168)
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @avpriv_set_pts_info(%struct.TYPE_12__* %170, i32 64, i32 1, i32 %175)
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %101, %91, %75, %29, %21
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i8* @avio_rl32(i32*) #1

declare dso_local i32 @ff_get_extradata(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
