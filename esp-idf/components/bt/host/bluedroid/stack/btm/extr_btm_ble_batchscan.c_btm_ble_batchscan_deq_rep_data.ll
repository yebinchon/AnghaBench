; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_batchscan_deq_rep_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_batchscan_deq_rep_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i64*, i32, i64*, i64*, i64** }

@BTM_BLE_BATCH_REP_MAIN_Q_SIZE = common dso_local global i32 0, align 4
@ble_batchscan_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [56 x i8] c"btm_ble_batchscan_deq_rep_data: rep_format:%d not found\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"btm_ble_batchscan_deq_rep_data: index:%d, rep %d, num %d, data_len %d\00", align 1
@BTM_BLE_BATCH_SCAN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_batchscan_deq_rep_data(i64 %0, i64* %1, i64* %2, i64** %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64** %3, i64*** %9, align 8
  store i64* %4, i64** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %26, %5
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @BTM_BLE_BATCH_REP_MAIN_Q_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 0), align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %17, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %29

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  br label %12

29:                                               ; preds = %24, %12
  %30 = load i32, i32* @BTM_BLE_BATCH_REP_MAIN_Q_SIZE, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %92

36:                                               ; preds = %29
  %37 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %8, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 3), align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %7, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 5), align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64*, i64** %49, i64 %51
  %53 = load i64*, i64** %52, align 8
  %54 = load i64**, i64*** %9, align 8
  store i64* %53, i64** %54, align 8
  %55 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 4), align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %10, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 5), align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64*, i64** %61, i64 %63
  store i64* null, i64** %64, align 8
  %65 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 4), align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 0, i64* %68, align 8
  %69 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 0), align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 0, i64* %72, align 8
  %73 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 3), align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 0, i64* %76, align 8
  %77 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i64, i64* %6, align 8
  %83 = load i64*, i64** %8, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %10, align 8
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %81, i64 %82, i64 %84, i64 %86)
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 2), align 8
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* @BTM_BLE_BATCH_SCAN_MAX, align 4
  %91 = srem i32 %89, %90
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 2), align 8
  br label %92

92:                                               ; preds = %36, %33
  ret void
}

declare dso_local i32 @BTM_TRACE_ERROR(i8*, i64) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
