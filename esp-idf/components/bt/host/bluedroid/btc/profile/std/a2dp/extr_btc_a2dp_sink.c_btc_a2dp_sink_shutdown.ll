; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/a2dp/extr_btc_a2dp_sink.c_btc_a2dp_sink_shutdown.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/a2dp/extr_btc_a2dp_sink.c_btc_a2dp_sink_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [35 x i8] c"## A2DP SINK STOP MEDIA THREAD ##\0A\00", align 1
@BTC_A2DP_SINK_STATE_SHUTTING_DOWN = common dso_local global i32 0, align 4
@btc_a2dp_sink_state = common dso_local global i32 0, align 4
@BTC_MEDIA_TASK_SINK_CLEAN_UP = common dso_local global i32 0, align 4
@a2dp_sink_local_param = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@a2dp_sink_local_param_ptr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btc_a2dp_sink_shutdown() #0 {
  %1 = call i32 @APPL_TRACE_EVENT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @BTC_A2DP_SINK_STATE_SHUTTING_DOWN, align 4
  store i32 %2, i32* @btc_a2dp_sink_state, align 4
  %3 = load i32, i32* @BTC_MEDIA_TASK_SINK_CLEAN_UP, align 4
  %4 = call i32 @btc_a2dp_sink_ctrl(i32 %3, i32* null)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @a2dp_sink_local_param, i32 0, i32 0), align 8
  %5 = load i32*, i32** @a2dp_sink_local_param_ptr, align 8
  %6 = call i32 @osi_free(i32* %5)
  store i32* null, i32** @a2dp_sink_local_param_ptr, align 8
  ret void
}

declare dso_local i32 @APPL_TRACE_EVENT(i8*) #1

declare dso_local i32 @btc_a2dp_sink_ctrl(i32, i32*) #1

declare dso_local i32 @osi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
