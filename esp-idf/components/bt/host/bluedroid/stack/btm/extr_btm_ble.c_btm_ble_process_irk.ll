; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_btm_ble_process_irk.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_btm_ble_process_irk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"btm_ble_process_irk\00", align 1
@HCI_BLE_ENCRYPT = common dso_local global i64 0, align 8
@btm_cb = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@BT_OCTET16_LEN = common dso_local global i32 0, align 4
@BTM_BLE_KEY_TYPE_ID = common dso_local global i32 0, align 4
@BTM_PRIVACY_NONE = common dso_local global i64 0, align 8
@btm_gen_resolve_paddr_low = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Generating IRK exception.\00", align 1
@btm_ble_process_er = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Generating ER failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @btm_ble_process_irk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btm_ble_process_irk(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = icmp ne %struct.TYPE_10__* %4, null
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HCI_BLE_ENCRYPT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %6
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 1, i32 0, i32 0), align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BT_OCTET16_LEN, align 4
  %18 = call i32 @memcpy(i32 %13, i32 %16, i32 %17)
  %19 = load i32, i32* @BTM_BLE_KEY_TYPE_ID, align 4
  %20 = call i32 @btm_notify_new_key(i32 %19)
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %22 = load i64, i64* @BTM_PRIVACY_NONE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %12
  %25 = load i64, i64* @btm_gen_resolve_paddr_low, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @btm_gen_resolvable_private_addr(i8* %26)
  br label %28

28:                                               ; preds = %24, %12
  br label %31

29:                                               ; preds = %6, %1
  %30 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %28
  %32 = load i64, i64* @btm_ble_process_er, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @btsnd_hcic_ble_rand(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @btm_notify_new_key(i32) #1

declare dso_local i32 @btm_gen_resolvable_private_addr(i8*) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

declare dso_local i32 @btsnd_hcic_ble_rand(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
