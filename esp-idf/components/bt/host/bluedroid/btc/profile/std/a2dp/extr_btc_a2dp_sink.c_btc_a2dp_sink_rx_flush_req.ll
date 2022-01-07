; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/a2dp/extr_btc_a2dp_sink.c_btc_a2dp_sink_rx_flush_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/a2dp/extr_btc_a2dp_sink.c_btc_a2dp_sink_rx_flush_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@a2dp_sink_local_param = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@TRUE = common dso_local global i64 0, align 8
@BTC_MEDIA_FLUSH_AA_RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btc_a2dp_sink_rx_flush_req() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @a2dp_sink_local_param, i32 0, i32 0, i32 0), align 4
  %3 = call i64 @fixed_queue_is_empty(i32 %2)
  %4 = load i64, i64* @TRUE, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i64, i64* @TRUE, align 8
  store i64 %7, i64* %1, align 8
  br label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @BTC_MEDIA_FLUSH_AA_RX, align 4
  %10 = call i64 @btc_a2dp_sink_ctrl(i32 %9, i32* null)
  store i64 %10, i64* %1, align 8
  br label %11

11:                                               ; preds = %8, %6
  %12 = load i64, i64* %1, align 8
  ret i64 %12
}

declare dso_local i64 @fixed_queue_is_empty(i32) #1

declare dso_local i64 @btc_a2dp_sink_ctrl(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
