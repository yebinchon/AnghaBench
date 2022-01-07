; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspenc.c_rtsp_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspenc.c_rtsp_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i64, %struct.TYPE_14__**, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i64 }
%struct.pollfd = type { i32, i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@RTSP_STATE_STREAMING = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@RTSP_LOWER_TRANSPORT_TCP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @rtsp_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsp_write_packet(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pollfd, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %6, align 8
  %16 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 0
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ffurl_get_file_handle(i32 %19)
  store i32 %20, i32* %16, align 4
  %21 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 1
  %22 = load i32, i32* @POLLIN, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 3
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %2, %60
  %26 = call i32 @poll(%struct.pollfd* %9, i32 1, i32 0)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %61

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @POLLIN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = call i32 @ff_rtsp_read_reply(%struct.TYPE_17__* %37, i32* %12, i32* null, i32 1, i32* null)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EPIPE, align 4
  %43 = call i32 @AVERROR(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %106

44:                                               ; preds = %36
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = call i32 @ff_rtsp_skip_packet(%struct.TYPE_17__* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RTSP_STATE_STREAMING, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EPIPE, align 4
  %58 = call i32 @AVERROR(i32 %57)
  store i32 %58, i32* %3, align 4
  br label %106

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %30
  br label %25

61:                                               ; preds = %29
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp uge i64 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %66, %61
  %75 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %75, i32* %3, align 4
  br label %106

76:                                               ; preds = %66
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %78, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %79, i64 %82
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  store %struct.TYPE_14__* %84, %struct.TYPE_14__** %7, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  store %struct.TYPE_17__* %87, %struct.TYPE_17__** %10, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = call i32 @ff_write_chained(%struct.TYPE_17__* %88, i32 0, %struct.TYPE_16__* %89, %struct.TYPE_17__* %90, i32 0)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %76
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @RTSP_LOWER_TRANSPORT_TCP, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %103 = call i32 @ff_rtsp_tcp_write_packet(%struct.TYPE_17__* %101, %struct.TYPE_14__* %102)
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %100, %94, %76
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %74, %56, %41
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @ffurl_get_file_handle(i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @ff_rtsp_read_reply(%struct.TYPE_17__*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_rtsp_skip_packet(%struct.TYPE_17__*) #1

declare dso_local i32 @ff_write_chained(%struct.TYPE_17__*, i32, %struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @ff_rtsp_tcp_write_packet(%struct.TYPE_17__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
