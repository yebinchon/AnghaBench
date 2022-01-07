; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_ble_id_key_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_ble_id_key_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, %struct.TYPE_4__*)* }
%struct.TYPE_4__ = type { i32 }

@bta_dm_cb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@BTA_DM_BLE_LOCAL_IR_EVT = common dso_local global i32 0, align 4
@BTA_DM_BLE_LOCAL_ER_EVT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Unknown key type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @bta_dm_ble_id_key_cback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_dm_ble_id_key_cback(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %27 [
    i32 128, label %8
    i32 129, label %8
  ]

8:                                                ; preds = %2, %2
  %9 = load i32 (i32, %struct.TYPE_4__*)*, i32 (i32, %struct.TYPE_4__*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_cb, i32 0, i32 0), align 8
  %10 = icmp ne i32 (i32, %struct.TYPE_4__*)* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @memcpy(i32* %12, i32* %13, i32 4)
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 128
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @BTA_DM_BLE_LOCAL_IR_EVT, align 4
  br label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @BTA_DM_BLE_LOCAL_ER_EVT, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %5, align 4
  %23 = load i32 (i32, %struct.TYPE_4__*)*, i32 (i32, %struct.TYPE_4__*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_cb, i32 0, i32 0), align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 %23(i32 %24, %struct.TYPE_4__* %6)
  br label %26

26:                                               ; preds = %21, %8
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
