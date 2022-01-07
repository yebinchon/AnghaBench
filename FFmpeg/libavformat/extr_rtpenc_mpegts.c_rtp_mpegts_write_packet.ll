; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_mpegts.c_rtp_mpegts_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_mpegts.c_rtp_mpegts_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__**, %struct.MuxChain* }
%struct.TYPE_10__ = type { i32 }
%struct.MuxChain = type { %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__**, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64, i64, i64, i32* }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @rtp_mpegts_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_mpegts_write_packet(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.MuxChain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load %struct.MuxChain*, %struct.MuxChain** %12, align 8
  store %struct.MuxChain* %13, %struct.MuxChain** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.MuxChain*, %struct.MuxChain** %6, align 8
  %15 = getelementptr inbounds %struct.MuxChain, %struct.MuxChain* %14, i32 0, i32 1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.MuxChain*, %struct.MuxChain** %6, align 8
  %22 = getelementptr inbounds %struct.MuxChain, %struct.MuxChain* %21, i32 0, i32 1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = call i32 @avio_open_dyn_buf(i32** %24)
  store i32 %25, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %133

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.MuxChain*, %struct.MuxChain** %6, align 8
  %32 = getelementptr inbounds %struct.MuxChain, %struct.MuxChain* %31, i32 0, i32 1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = call i32 @av_write_frame(%struct.TYPE_14__* %33, %struct.TYPE_12__* %34)
  store i32 %35, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %133

39:                                               ; preds = %30
  %40 = load %struct.MuxChain*, %struct.MuxChain** %6, align 8
  %41 = getelementptr inbounds %struct.MuxChain, %struct.MuxChain* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @avio_close_dyn_buf(i32* %44, i32** %9)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.MuxChain*, %struct.MuxChain** %6, align 8
  %47 = getelementptr inbounds %struct.MuxChain, %struct.MuxChain* %46, i32 0, i32 1
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @av_free(i32* %53)
  store i32 0, i32* %3, align 4
  br label %133

55:                                               ; preds = %39
  %56 = call i32 @av_init_packet(%struct.TYPE_12__* %10)
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 4
  store i32* %57, i32** %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %55
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %73, i64 %76
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.MuxChain*, %struct.MuxChain** %6, align 8
  %82 = getelementptr inbounds %struct.MuxChain, %struct.MuxChain* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %85, i64 0
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @av_rescale_q(i64 %70, i32 %80, i32 %89)
  %91 = ptrtoint i8* %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  store i64 %91, i64* %92, align 8
  br label %93

93:                                               ; preds = %67, %55
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %125

99:                                               ; preds = %93
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %104, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %105, i64 %108
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.MuxChain*, %struct.MuxChain** %6, align 8
  %114 = getelementptr inbounds %struct.MuxChain, %struct.MuxChain* %113, i32 0, i32 0
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %117, i64 0
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @av_rescale_q(i64 %102, i32 %112, i32 %121)
  %123 = ptrtoint i8* %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  store i64 %123, i64* %124, align 8
  br label %125

125:                                              ; preds = %99, %93
  %126 = load %struct.MuxChain*, %struct.MuxChain** %6, align 8
  %127 = getelementptr inbounds %struct.MuxChain, %struct.MuxChain* %126, i32 0, i32 0
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = call i32 @av_write_frame(%struct.TYPE_14__* %128, %struct.TYPE_12__* %10)
  store i32 %129, i32* %7, align 4
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @av_free(i32* %130)
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %125, %52, %37, %27
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @av_write_frame(%struct.TYPE_14__*, %struct.TYPE_12__*) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_12__*) #1

declare dso_local i8* @av_rescale_q(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
