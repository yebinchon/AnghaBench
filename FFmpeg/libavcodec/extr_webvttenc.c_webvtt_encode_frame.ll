; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_webvttenc.c_webvtt_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_webvttenc.c_webvtt_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i8*, i64 }
%struct.TYPE_21__ = type { i32, i32 }

@SUBTITLE_ASS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Only SUBTITLE_ASS type supported.\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@webvtt_callbacks = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Buffer too small for ASS event.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i8*, i32, %struct.TYPE_19__*)* @webvtt_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @webvtt_encode_frame(%struct.TYPE_20__* %0, i8* %1, i32 %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %10, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = call i32 @av_bprint_clear(%struct.TYPE_16__* %18)
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %76, %4
  %21 = load i32, i32* %12, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %20
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %29, i64 %31
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %13, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %38, i64 %40
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SUBTITLE_ASS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %26
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = call i32 @av_log(%struct.TYPE_20__* %48, i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENOSYS, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %5, align 4
  br label %120

53:                                               ; preds = %26
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %13, align 8
  %58 = call %struct.TYPE_21__* @ff_ass_split_dialog2(i32 %56, i8* %57)
  store %struct.TYPE_21__* %58, %struct.TYPE_21__** %11, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %60 = icmp ne %struct.TYPE_21__* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = call i32 @AVERROR(i32 %62)
  store i32 %63, i32* %5, align 4
  br label %120

64:                                               ; preds = %53
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @webvtt_style_apply(%struct.TYPE_18__* %65, i32 %68)
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ff_ass_split_override_codes(i32* @webvtt_callbacks, %struct.TYPE_18__* %70, i32 %73)
  %75 = call i32 @ff_ass_free_dialog(%struct.TYPE_21__** %11)
  br label %76

76:                                               ; preds = %64
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %20

79:                                               ; preds = %20
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = call i32 @av_bprint_is_complete(%struct.TYPE_16__* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = call i32 @AVERROR(i32 %85)
  store i32 %86, i32* %5, align 4
  br label %120

87:                                               ; preds = %79
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  store i32 0, i32* %5, align 4
  br label %120

94:                                               ; preds = %87
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %103 = load i32, i32* @AV_LOG_ERROR, align 4
  %104 = call i32 @av_log(%struct.TYPE_20__* %102, i32 %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %120

105:                                              ; preds = %94
  %106 = load i8*, i8** %7, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @memcpy(i8* %106, i32 %110, i32 %114)
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %105, %101, %93, %84, %61, %47
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @av_bprint_clear(%struct.TYPE_16__*) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_21__* @ff_ass_split_dialog2(i32, i8*) #1

declare dso_local i32 @webvtt_style_apply(%struct.TYPE_18__*, i32) #1

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
