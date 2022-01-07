; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_crystalhd.c_crystalhd_receive_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_crystalhd.c_crystalhd_receive_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64, i32 }

@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"CrystalHD: receive_frame\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"CrystalHD: Waiting for space in input buffer\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@BC_STS_SUCCESS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"CrystalHD: GetDriverStatus failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"CrystalHD: Insufficient frames ready. Returning\0A\00", align 1
@RET_OK = common dso_local global i64 0, align 8
@RET_COPY_AGAIN = common dso_local global i64 0, align 8
@RET_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*)* @crystalhd_receive_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crystalhd_receive_frame(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = bitcast %struct.TYPE_15__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %9, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = bitcast %struct.TYPE_16__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 16, i1 false)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %24 = call i32 @av_log(%struct.TYPE_17__* %22, i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = call i32 @ff_decode_get_packet(%struct.TYPE_17__* %25, %struct.TYPE_16__* %13)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @AVERROR_EOF, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %3, align 4
  br label %114

35:                                               ; preds = %29, %2
  br label %36

36:                                               ; preds = %42, %35
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @DtsTxFreeSize(i32 %39)
  %41 = icmp sgt i64 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %44 = load i32, i32* @AV_LOG_TRACE, align 4
  %45 = call i32 @av_log(%struct.TYPE_17__* %43, i32 %44, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %36

46:                                               ; preds = %36
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = call i32 @crystalhd_decode_packet(%struct.TYPE_17__* %47, %struct.TYPE_16__* %13)
  store i32 %48, i32* %12, align 4
  %49 = call i32 @av_packet_unref(%struct.TYPE_16__* %13)
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = call i32 @AVERROR(i32 %51)
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %54, %46
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @AVERROR_EOF, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %3, align 4
  br label %114

65:                                               ; preds = %59, %56
  br label %66

66:                                               ; preds = %89, %65
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @DtsGetDriverStatus(i32 %67, %struct.TYPE_15__* %7)
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @BC_STS_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %74 = load i32, i32* @AV_LOG_ERROR, align 4
  %75 = call i32 @av_log(%struct.TYPE_17__* %73, i32 %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %114

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %83 = call i32 @av_log(%struct.TYPE_17__* %81, i32 %82, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  %84 = load i64, i64* @RET_OK, align 8
  store i64 %84, i64* %8, align 8
  br label %93

85:                                               ; preds = %76
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = call i64 @receive_frame(%struct.TYPE_17__* %86, i32* %87, i32* %11)
  store i64 %88, i64* %8, align 8
  br label %89

89:                                               ; preds = %85
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* @RET_COPY_AGAIN, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %66, label %93

93:                                               ; preds = %89, %80
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* @RET_ERROR, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 -1, i32* %3, align 4
  br label %114

98:                                               ; preds = %93
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %98
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @AVERROR_EOF, align 4
  br label %111

108:                                              ; preds = %101
  %109 = load i32, i32* @EAGAIN, align 4
  %110 = call i32 @AVERROR(i32 %109)
  br label %111

111:                                              ; preds = %108, %106
  %112 = phi i32 [ %107, %106 ], [ %110, %108 ]
  store i32 %112, i32* %3, align 4
  br label %114

113:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %111, %97, %72, %63, %33
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*) #2

declare dso_local i32 @ff_decode_get_packet(%struct.TYPE_17__*, %struct.TYPE_16__*) #2

declare dso_local i64 @DtsTxFreeSize(i32) #2

declare dso_local i32 @crystalhd_decode_packet(%struct.TYPE_17__*, %struct.TYPE_16__*) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_16__*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i64 @DtsGetDriverStatus(i32, %struct.TYPE_15__*) #2

declare dso_local i64 @receive_frame(%struct.TYPE_17__*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
