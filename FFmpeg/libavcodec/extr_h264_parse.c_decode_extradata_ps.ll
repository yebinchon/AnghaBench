; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_parse.c_decode_extradata_ps.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_parse.c_decode_extradata_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@AV_CODEC_ID_H264 = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"SPS decoding failure, trying again with the complete NAL\0A\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Ignoring NAL type %d in extradata\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i8*)* @decode_extradata_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_extradata_ps(i32* %0, i32 %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = bitcast %struct.TYPE_5__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 24, i1 false)
  store i32 0, i32* %13, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @AV_CODEC_ID_H264, align 4
  %22 = call i32 @ff_h2645_packet_split(%struct.TYPE_5__* %11, i32* %17, i32 %18, i8* %19, i32 %20, i32 2, i32 %21, i32 1, i32 0)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %105

26:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %101, %26
  %28 = load i32, i32* %12, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %104

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %14, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %93 [
    i32 128, label %41
    i32 129, label %80
  ]

41:                                               ; preds = %32
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %15, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @ff_h264_decode_seq_parameter_set(i32* %15, i8* %45, i32* %46, i32 0)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %100

51:                                               ; preds = %41
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* @AV_LOG_DEBUG, align 4
  %54 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %52, i32 %53, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @init_get_bits8(i32* %15, i32 %58, i32 %62)
  %64 = load i8*, i8** %10, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @ff_h264_decode_seq_parameter_set(i32* %15, i8* %64, i32* %65, i32 0)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %51
  br label %100

70:                                               ; preds = %51
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i8*, i8** %10, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @ff_h264_decode_seq_parameter_set(i32* %72, i8* %73, i32* %74, i32 1)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %105

79:                                               ; preds = %70
  br label %100

80:                                               ; preds = %32
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i8*, i8** %10, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ff_h264_decode_picture_parameter_set(i32* %82, i8* %83, i32* %84, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %105

92:                                               ; preds = %80
  br label %100

93:                                               ; preds = %32
  %94 = load i8*, i8** %10, align 8
  %95 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %94, i32 %95, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %93, %92, %79, %69, %50
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %27

104:                                              ; preds = %27
  br label %105

105:                                              ; preds = %104, %91, %78, %25
  %106 = call i32 @ff_h2645_packet_uninit(%struct.TYPE_5__* %11)
  %107 = load i32, i32* %13, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ff_h2645_packet_split(%struct.TYPE_5__*, i32*, i32, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ff_h264_decode_seq_parameter_set(i32*, i8*, i32*, i32) #2

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #2

declare dso_local i32 @init_get_bits8(i32*, i32, i32) #2

declare dso_local i32 @ff_h264_decode_picture_parameter_set(i32*, i8*, i32*, i32) #2

declare dso_local i32 @ff_h2645_packet_uninit(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
