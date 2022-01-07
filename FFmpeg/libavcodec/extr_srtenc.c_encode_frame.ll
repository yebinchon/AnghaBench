; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_srtenc.c_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_srtenc.c_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_16__, i64, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i8*, i64 }
%struct.TYPE_21__ = type { i32, i32 }

@SUBTITLE_ASS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Only SUBTITLE_ASS type supported.\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_CODEC_ID_SUBRIP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Buffer too small for ASS event.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i8*, i32, %struct.TYPE_19__*, i32*)* @encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_frame(%struct.TYPE_20__* %0, i8* %1, i32 %2, %struct.TYPE_19__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %12, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = call i32 @av_bprint_clear(%struct.TYPE_16__* %20)
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %88, %5
  %23 = load i32, i32* %14, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %91

28:                                               ; preds = %22
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %30, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %31, i64 %33
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %15, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %40, i64 %42
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SUBTITLE_ASS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %28
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = call i32 @av_log(%struct.TYPE_20__* %50, i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ENOSYS, align 4
  %54 = call i32 @AVERROR(i32 %53)
  store i32 %54, i32* %6, align 4
  br label %132

55:                                               ; preds = %28
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = call %struct.TYPE_21__* @ff_ass_split_dialog2(i32 %58, i8* %59)
  store %struct.TYPE_21__* %60, %struct.TYPE_21__** %13, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %62 = icmp ne %struct.TYPE_21__* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = call i32 @AVERROR(i32 %64)
  store i32 %65, i32* %6, align 4
  br label %132

66:                                               ; preds = %55
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @AV_CODEC_ID_SUBRIP, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @srt_style_apply(%struct.TYPE_18__* %75, i32 %78)
  br label %80

80:                                               ; preds = %74, %66
  %81 = load i32*, i32** %11, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ff_ass_split_override_codes(i32* %81, %struct.TYPE_18__* %82, i32 %85)
  %87 = call i32 @ff_ass_free_dialog(%struct.TYPE_21__** %13)
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %22

91:                                               ; preds = %22
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = call i32 @av_bprint_is_complete(%struct.TYPE_16__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = call i32 @AVERROR(i32 %97)
  store i32 %98, i32* %6, align 4
  br label %132

99:                                               ; preds = %91
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  br label %132

106:                                              ; preds = %99
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %115 = load i32, i32* @AV_LOG_ERROR, align 4
  %116 = call i32 @av_log(%struct.TYPE_20__* %114, i32 %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %132

117:                                              ; preds = %106
  %118 = load i8*, i8** %8, align 8
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @memcpy(i8* %118, i32 %122, i32 %126)
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %117, %113, %105, %96, %63, %49
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @av_bprint_clear(%struct.TYPE_16__*) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_21__* @ff_ass_split_dialog2(i32, i8*) #1

declare dso_local i32 @srt_style_apply(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ff_ass_split_override_codes(i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @ff_ass_free_dialog(%struct.TYPE_21__**) #1

declare dso_local i32 @av_bprint_is_complete(%struct.TYPE_16__*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
