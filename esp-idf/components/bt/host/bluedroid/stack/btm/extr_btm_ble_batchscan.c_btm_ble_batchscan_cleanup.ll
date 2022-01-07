; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_batchscan_cleanup.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_batchscan_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32** }

@.str = private unnamed_addr constant [27 x i8] c" btm_ble_batchscan_cleanup\00", align 1
@BTM_BLE_BATCH_REP_MAIN_Q_SIZE = common dso_local global i32 0, align 4
@ble_batchscan_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ble_advtrack_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ble_batchscan_cb_ptr = common dso_local global i32* null, align 8
@ble_advtrack_cb_ptr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_batchscan_cleanup() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %26, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @BTM_BLE_BATCH_REP_MAIN_Q_SIZE, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ble_batchscan_cb, i32 0, i32 0, i32 0), align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32*, i32** %8, i64 %10
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* null, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %7
  %15 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ble_batchscan_cb, i32 0, i32 0, i32 0), align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @osi_free(i32* %19)
  %21 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ble_batchscan_cb, i32 0, i32 0, i32 0), align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %14, %7
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %3

29:                                               ; preds = %3
  %30 = call i32 @memset(%struct.TYPE_6__* @ble_batchscan_cb, i32 0, i32 4)
  %31 = call i32 @memset(%struct.TYPE_6__* @ble_advtrack_cb, i32 0, i32 4)
  %32 = load i32*, i32** @ble_batchscan_cb_ptr, align 8
  %33 = call i32 @osi_free(i32* %32)
  %34 = load i32*, i32** @ble_advtrack_cb_ptr, align 8
  %35 = call i32 @osi_free(i32* %34)
  store i32* null, i32** @ble_batchscan_cb_ptr, align 8
  store i32* null, i32** @ble_advtrack_cb_ptr, align 8
  ret void
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*) #1

declare dso_local i32 @osi_free(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
