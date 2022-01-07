; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rkmppdec.c_rkmpp_receive_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rkmppdec.c_rkmpp_receive_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 (i32, i32, i32*)* }
%struct.TYPE_19__ = type { i32 }

@MPP_NOK = common dso_local global i32 0, align 4
@MPP_DEC_GET_STREAM_COUNT = common dso_local global i32 0, align 4
@MPP_OK = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to get decoder used slots (code = %d).\0A\00", align 1
@INPUT_MAX_PACKETS = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to send packet to decoder (code = %d)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32*)* @rkmpp_receive_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rkmpp_receive_frame(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %6, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %7, align 8
  %21 = load i32, i32* @MPP_NOK, align 4
  store i32 %21, i32* %8, align 4
  %22 = bitcast %struct.TYPE_19__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %84, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %31, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MPP_DEC_GET_STREAM_COUNT, align 4
  %37 = call i32 %32(i32 %35, i32 %36, i32* %10)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @MPP_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %27
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @av_log(%struct.TYPE_20__* %42, i32 %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %88

47:                                               ; preds = %27
  %48 = load i32, i32* @INPUT_MAX_PACKETS, align 4
  %49 = load i32, i32* %10, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %47
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %55 = call i32 @ff_decode_get_packet(%struct.TYPE_20__* %54, %struct.TYPE_19__* %9)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @AVERROR_EOF, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %88

64:                                               ; preds = %58, %53
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %66 = call i32 @rkmpp_send_packet(%struct.TYPE_20__* %65, %struct.TYPE_19__* %9)
  store i32 %66, i32* %8, align 4
  %67 = call i32 @av_packet_unref(%struct.TYPE_19__* %9)
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %72 = load i32, i32* @AV_LOG_ERROR, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @av_log(%struct.TYPE_20__* %71, i32 %72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %88

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %47
  %78 = load i32, i32* %11, align 4
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @EAGAIN, align 4
  %82 = call i32 @AVERROR(i32 %81)
  store i32 %82, i32* %3, align 4
  br label %88

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %2
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @rkmpp_retrieve_frame(%struct.TYPE_20__* %85, i32* %86)
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %80, %70, %62, %41
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, i32) #2

declare dso_local i32 @ff_decode_get_packet(%struct.TYPE_20__*, %struct.TYPE_19__*) #2

declare dso_local i32 @rkmpp_send_packet(%struct.TYPE_20__*, %struct.TYPE_19__*) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_19__*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @rkmpp_retrieve_frame(%struct.TYPE_20__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
