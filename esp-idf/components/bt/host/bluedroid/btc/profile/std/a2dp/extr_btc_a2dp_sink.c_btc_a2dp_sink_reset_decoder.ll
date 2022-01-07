; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/a2dp/extr_btc_a2dp_sink.c_btc_a2dp_sink_reset_decoder.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/a2dp/extr_btc_a2dp_sink.c_btc_a2dp_sink_reset_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"btc reset decoder\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"btc reset decoder p_codec_info[%x:%x:%x:%x:%x:%x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"btc reset decoder No Buffer \00", align 1
@AVDT_CODEC_SIZE = common dso_local global i32 0, align 4
@BTC_MEDIA_AUDIO_SINK_CFG_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btc_a2dp_sink_reset_decoder(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = call i32 @APPL_TRACE_EVENT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 5
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 6
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 %10, i32 %13, i32 %16, i32 %19, i32 %22)
  %24 = call %struct.TYPE_4__* @osi_malloc(i32 4)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %3, align 8
  %25 = icmp eq %struct.TYPE_4__* null, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = call i32 @APPL_TRACE_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %38

28:                                               ; preds = %1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @AVDT_CODEC_SIZE, align 4
  %34 = call i32 @memcpy(i32 %31, i32* %32, i32 %33)
  %35 = load i32, i32* @BTC_MEDIA_AUDIO_SINK_CFG_UPDATE, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = call i32 @btc_a2dp_sink_ctrl(i32 %35, %struct.TYPE_4__* %36)
  br label %38

38:                                               ; preds = %28, %26
  ret void
}

declare dso_local i32 @APPL_TRACE_EVENT(i8*) #1

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @osi_malloc(i32) #1

declare dso_local i32 @APPL_TRACE_ERROR(i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @btc_a2dp_sink_ctrl(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
