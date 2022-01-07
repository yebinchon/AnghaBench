; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_spdifdec.c_spdif_get_offset_and_codec.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_spdifdec.c_spdif_get_offset_and_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AC3_FRAME_SIZE = common dso_local global i32 0, align 4
@AV_CODEC_ID_AC3 = common dso_local global i32 0, align 4
@spdif_mpeg_pkt_offset = common dso_local global i32** null, align 8
@AV_CODEC_ID_MP1 = common dso_local global i32 0, align 4
@AV_CODEC_ID_MP3 = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid AAC packet in IEC 61937\0A\00", align 1
@AV_CODEC_ID_AAC = common dso_local global i32 0, align 4
@AV_CODEC_ID_MP2 = common dso_local global i32 0, align 4
@AV_CODEC_ID_DTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Data type 0x%04x in IEC 61937\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32*, i32*)* @spdif_get_offset_and_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spdif_get_offset_and_codec(i32* %0, i32 %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %15, 255
  switch i32 %16, label %104 [
    i32 138, label %17
    i32 134, label %23
    i32 133, label %32
    i32 131, label %41
    i32 132, label %45
    i32 130, label %65
    i32 129, label %74
    i32 128, label %83
    i32 137, label %92
    i32 136, label %96
    i32 135, label %100
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* @AC3_FRAME_SIZE, align 4
  %19 = shl i32 %18, 2
  %20 = load i32*, i32** %10, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @AV_CODEC_ID_AC3, align 4
  %22 = load i32*, i32** %11, align 8
  store i32 %21, i32* %22, align 4
  br label %113

23:                                               ; preds = %5
  %24 = load i32**, i32*** @spdif_mpeg_pkt_offset, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %10, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @AV_CODEC_ID_MP1, align 4
  %31 = load i32*, i32** %11, align 8
  store i32 %30, i32* %31, align 4
  br label %113

32:                                               ; preds = %5
  %33 = load i32**, i32*** @spdif_mpeg_pkt_offset, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @AV_CODEC_ID_MP3, align 4
  %40 = load i32*, i32** %11, align 8
  store i32 %39, i32* %40, align 4
  br label %113

41:                                               ; preds = %5
  %42 = load i32*, i32** %10, align 8
  store i32 4608, i32* %42, align 4
  %43 = load i32, i32* @AV_CODEC_ID_MP3, align 4
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  br label %113

45:                                               ; preds = %5
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @av_adts_header_parse(i8* %46, i32* %12, i32* %13)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32*, i32** %7, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = call i32 @av_log(i32* %54, i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %6, align 4
  br label %114

59:                                               ; preds = %45
  %60 = load i32, i32* %12, align 4
  %61 = shl i32 %60, 2
  %62 = load i32*, i32** %10, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @AV_CODEC_ID_AAC, align 4
  %64 = load i32*, i32** %11, align 8
  store i32 %63, i32* %64, align 4
  br label %113

65:                                               ; preds = %5
  %66 = load i32**, i32*** @spdif_mpeg_pkt_offset, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %10, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @AV_CODEC_ID_MP1, align 4
  %73 = load i32*, i32** %11, align 8
  store i32 %72, i32* %73, align 4
  br label %113

74:                                               ; preds = %5
  %75 = load i32**, i32*** @spdif_mpeg_pkt_offset, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %10, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @AV_CODEC_ID_MP2, align 4
  %82 = load i32*, i32** %11, align 8
  store i32 %81, i32* %82, align 4
  br label %113

83:                                               ; preds = %5
  %84 = load i32**, i32*** @spdif_mpeg_pkt_offset, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %10, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @AV_CODEC_ID_MP3, align 4
  %91 = load i32*, i32** %11, align 8
  store i32 %90, i32* %91, align 4
  br label %113

92:                                               ; preds = %5
  %93 = load i32*, i32** %10, align 8
  store i32 2048, i32* %93, align 4
  %94 = load i32, i32* @AV_CODEC_ID_DTS, align 4
  %95 = load i32*, i32** %11, align 8
  store i32 %94, i32* %95, align 4
  br label %113

96:                                               ; preds = %5
  %97 = load i32*, i32** %10, align 8
  store i32 4096, i32* %97, align 4
  %98 = load i32, i32* @AV_CODEC_ID_DTS, align 4
  %99 = load i32*, i32** %11, align 8
  store i32 %98, i32* %99, align 4
  br label %113

100:                                              ; preds = %5
  %101 = load i32*, i32** %10, align 8
  store i32 8192, i32* %101, align 4
  %102 = load i32, i32* @AV_CODEC_ID_DTS, align 4
  %103 = load i32*, i32** %11, align 8
  store i32 %102, i32* %103, align 4
  br label %113

104:                                              ; preds = %5
  %105 = load i32*, i32** %7, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @avpriv_request_sample(i32* %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %107, %104
  %112 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %112, i32* %6, align 4
  br label %114

113:                                              ; preds = %100, %96, %92, %83, %74, %65, %59, %41, %32, %23, %17
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %113, %111, %57
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @av_adts_header_parse(i8*, i32*, i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @avpriv_request_sample(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
