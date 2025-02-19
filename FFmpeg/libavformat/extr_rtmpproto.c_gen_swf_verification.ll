; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_gen_swf_verification.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_gen_swf_verification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32* }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Sending SWF verification...\0A\00", align 1
@RTMP_NETWORK_CHANNEL = common dso_local global i32 0, align 4
@RTMP_PT_USER_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @gen_swf_verification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_swf_verification(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @AV_LOG_DEBUG, align 4
  %11 = call i32 @av_log(i32* %9, i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @RTMP_NETWORK_CHANNEL, align 4
  %13 = load i32, i32* @RTMP_PT_USER_CONTROL, align 4
  %14 = call i32 @ff_rtmp_packet_create(%struct.TYPE_7__* %6, i32 %12, i32 %13, i32 0, i32 44)
  store i32 %14, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = call i32 @bytestream_put_be16(i32** %7, i32 27)
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memcpy(i32* %22, i32 %25, i32 42)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = call i32 @rtmp_send_packet(%struct.TYPE_8__* %27, %struct.TYPE_7__* %6, i32 0)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %18, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @ff_rtmp_packet_create(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @bytestream_put_be16(i32**, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @rtmp_send_packet(%struct.TYPE_8__*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
