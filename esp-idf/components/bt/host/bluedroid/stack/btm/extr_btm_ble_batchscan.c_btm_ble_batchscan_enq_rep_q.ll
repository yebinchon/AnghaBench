; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_batchscan_enq_rep_q.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_batchscan_enq_rep_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i64, i32**, i64*, i64*, i32* }

@BTM_BLE_BATCH_REP_MAIN_Q_SIZE = common dso_local global i32 0, align 4
@ble_batchscan_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"btm_ble_batchscan_enq_rep_q: index:%d, rep %d, ref %d\00", align 1
@BTM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_ble_batchscan_enq_rep_q(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @BTM_BLE_BATCH_REP_MAIN_Q_SIZE, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load i64, i64* %4, align 8
  %13 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 0), align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %12, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %20, i32* %3, align 4
  br label %53

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load i64, i64* %4, align 8
  %27 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 0), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  store i64 %26, i64* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 5), align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 4), align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  store i64 0, i64* %36, align 8
  %37 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 3), align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 0, i64* %39, align 8
  %40 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 2), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  store i32* null, i32** %42, align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44, i32 %45)
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  %48 = add i64 %47, 1
  %49 = load i32, i32* @BTM_BLE_BATCH_REP_MAIN_Q_SIZE, align 4
  %50 = sext i32 %49 to i64
  %51 = urem i64 %48, %50
  store i64 %51, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  %52 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %25, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
