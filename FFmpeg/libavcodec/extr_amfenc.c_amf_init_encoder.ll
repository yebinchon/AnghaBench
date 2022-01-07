; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amfenc.c_amf_init_encoder.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amfenc.c_amf_init_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32, %struct.TYPE_16__*, %struct.TYPE_11__* }
%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_16__*, i32, i32*, i32*)* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@AMFVideoEncoderVCE_AVC = common dso_local global i32* null, align 8
@AMFVideoEncoder_HEVC = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Codec %d is not supported\0A\00", align 1
@AMF_SURFACE_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Format %s is not supported\0A\00", align 1
@AMF_OK = common dso_local global i64 0, align 8
@AVERROR_ENCODER_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"CreateComponent(%ls) failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @amf_init_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amf_init_encoder(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %3, align 8
  store i32* null, i32** %4, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %19 [
    i32 129, label %15
    i32 128, label %17
  ]

15:                                               ; preds = %1
  %16 = load i32*, i32** @AMFVideoEncoderVCE_AVC, align 8
  store i32* %16, i32** %4, align 8
  br label %20

17:                                               ; preds = %1
  %18 = load i32*, i32** @AMFVideoEncoder_HEVC, align 8
  store i32* %18, i32** %4, align 8
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %17, %15
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @EINVAL, align 4
  %26 = call i32 @AVERROR(i32 %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.TYPE_13__*, i32, i32, i8*, i32, ...) @AMF_RETURN_IF_FALSE(%struct.TYPE_13__* %21, i32 %24, i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = icmp ne %struct.TYPE_11__* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %20
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.TYPE_14__*
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  br label %50

46:                                               ; preds = %20
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %46, %37
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @amf_av_to_amf_format(i32 %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AMF_SURFACE_UNKNOWN, align 8
  %60 = icmp ne i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* @EINVAL, align 4
  %63 = call i32 @AVERROR(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @av_get_pix_fmt_name(i32 %64)
  %66 = call i32 (%struct.TYPE_13__*, i32, i32, i8*, i32, ...) @AMF_RETURN_IF_FALSE(%struct.TYPE_13__* %55, i32 %61, i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64 (%struct.TYPE_16__*, i32, i32*, i32*)*, i64 (%struct.TYPE_16__*, i32, i32*, i32*)** %72, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = call i64 %73(%struct.TYPE_16__* %76, i32 %79, i32* %80, i32* %82)
  store i64 %83, i64* %5, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @AMF_OK, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* @AVERROR_ENCODER_NOT_FOUND, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = ptrtoint i32* %90 to i32
  %92 = load i64, i64* %5, align 8
  %93 = call i32 (%struct.TYPE_13__*, i32, i32, i8*, i32, ...) @AMF_RETURN_IF_FALSE(%struct.TYPE_13__* %84, i32 %88, i32 %89, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %91, i64 %92)
  ret i32 0
}

declare dso_local i32 @AMF_RETURN_IF_FALSE(%struct.TYPE_13__*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @amf_av_to_amf_format(i32) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
