; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gap/extr_btc_gap_bt.c_bte_search_devices_evt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gap/extr_btc_gap_bt.c_bte_search_devices_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i32, i32 }

@HCI_EXT_INQ_RESPONSE_LEN = common dso_local global i32 0, align 4
@BTC_SIG_API_CB = common dso_local global i32 0, align 4
@BTC_PID_GAP_BT = common dso_local global i32 0, align 4
@BTC_GAP_BT_SEARCH_DEVICES_EVT = common dso_local global i32 0, align 4
@search_devices_copy_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_13__*)* @bte_search_devices_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bte_search_devices_evt(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i32 %8, i32* %9, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %11, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = icmp ne %struct.TYPE_13__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, 16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* %3, align 4
  switch i32 %20, label %52 [
    i32 128, label %21
    i32 129, label %32
  ]

21:                                               ; preds = %19
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @HCI_EXT_INQ_RESPONSE_LEN, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %21
  br label %52

32:                                               ; preds = %19
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %44, %38, %32
  br label %52

52:                                               ; preds = %19, %51, %31
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = call i32 @check_eir_remote_name(%struct.TYPE_13__* %56, i32* null, i32* null)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %52
  %62 = load i32, i32* %6, align 4
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @BTC_SIG_API_CB, align 4
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 2
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @BTC_PID_GAP_BT, align 4
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @BTC_GAP_BT_SEARCH_DEVICES_EVT, align 4
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @search_devices_copy_cb, align 4
  %72 = call i32 @btc_transfer_context(%struct.TYPE_14__* %7, %struct.TYPE_12__* %5, i32 16, i32 %71)
  br label %73

73:                                               ; preds = %64
  ret void
}

declare dso_local i32 @check_eir_remote_name(%struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @btc_transfer_context(%struct.TYPE_14__*, %struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
