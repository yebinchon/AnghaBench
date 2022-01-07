; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_mpegts.c_rtp_mpegts_write_close.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_mpegts.c_rtp_mpegts_write_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.MuxChain* }
%struct.MuxChain = type { %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @rtp_mpegts_write_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_mpegts_write_close(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.MuxChain*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load %struct.MuxChain*, %struct.MuxChain** %5, align 8
  store %struct.MuxChain* %6, %struct.MuxChain** %3, align 8
  %7 = load %struct.MuxChain*, %struct.MuxChain** %3, align 8
  %8 = getelementptr inbounds %struct.MuxChain, %struct.MuxChain* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.MuxChain*, %struct.MuxChain** %3, align 8
  %13 = getelementptr inbounds %struct.MuxChain, %struct.MuxChain* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = call i32 @av_write_trailer(%struct.TYPE_6__* %14)
  %16 = load %struct.MuxChain*, %struct.MuxChain** %3, align 8
  %17 = getelementptr inbounds %struct.MuxChain, %struct.MuxChain* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @ffio_free_dyn_buf(i32* %19)
  %21 = load %struct.MuxChain*, %struct.MuxChain** %3, align 8
  %22 = getelementptr inbounds %struct.MuxChain, %struct.MuxChain* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = call i32 @avformat_free_context(%struct.TYPE_6__* %23)
  br label %25

25:                                               ; preds = %11, %1
  %26 = load %struct.MuxChain*, %struct.MuxChain** %3, align 8
  %27 = getelementptr inbounds %struct.MuxChain, %struct.MuxChain* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.MuxChain*, %struct.MuxChain** %3, align 8
  %32 = getelementptr inbounds %struct.MuxChain, %struct.MuxChain* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i32 @av_write_trailer(%struct.TYPE_6__* %33)
  %35 = load %struct.MuxChain*, %struct.MuxChain** %3, align 8
  %36 = getelementptr inbounds %struct.MuxChain, %struct.MuxChain* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call i32 @avformat_free_context(%struct.TYPE_6__* %37)
  br label %39

39:                                               ; preds = %30, %25
  ret i32 0
}

declare dso_local i32 @av_write_trailer(%struct.TYPE_6__*) #1

declare dso_local i32 @ffio_free_dyn_buf(i32*) #1

declare dso_local i32 @avformat_free_context(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
