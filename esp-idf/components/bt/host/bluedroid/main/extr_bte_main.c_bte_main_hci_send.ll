; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/main/extr_bte_main.c_bte_main_hci_send.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/main/extr_bte_main.c_bte_main_hci_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i64, %struct.TYPE_6__*)* }
%struct.TYPE_6__ = type { i64 }

@BT_SUB_EVT_MASK = common dso_local global i64 0, align 8
@LOCAL_BR_EDR_CONTROLLER_ID = common dso_local global i64 0, align 8
@LOCAL_BLE_CONTROLLER_ID = common dso_local global i64 0, align 8
@hci = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bte_main_hci_send(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @BT_SUB_EVT_MASK, align 8
  %8 = and i64 %6, %7
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @LOCAL_BR_EDR_CONTROLLER_ID, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @LOCAL_BLE_CONTROLLER_ID, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15, %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hci, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32 (i64, %struct.TYPE_6__*)*, i32 (i64, %struct.TYPE_6__*)** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = call i32 %22(i64 %23, %struct.TYPE_6__* %24)
  br label %29

26:                                               ; preds = %15
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = call i32 @osi_free(%struct.TYPE_6__* %27)
  br label %29

29:                                               ; preds = %26, %19
  ret void
}

declare dso_local i32 @osi_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
