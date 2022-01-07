; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_BTM_BleWriteAdvDataRaw.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_BTM_BleWriteAdvDataRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@adv_data_lock = common dso_local global i32 0, align 4
@OSI_MUTEX_MAX_TIMEOUT = common dso_local global i32 0, align 4
@adv_data_sem = common dso_local global i32 0, align 4
@OSI_SEM_MAX_TIMEOUT = common dso_local global i32 0, align 4
@adv_data_status = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_BleWriteAdvDataRaw(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @OSI_MUTEX_MAX_TIMEOUT, align 4
  %7 = call i32 @osi_mutex_lock(i32* @adv_data_lock, i32 %6)
  %8 = load i64, i64* %4, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @btsnd_hcic_ble_set_adv_data(i32 %9, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @OSI_SEM_MAX_TIMEOUT, align 4
  %15 = call i32 @osi_sem_take(i32* @adv_data_sem, i32 %14)
  %16 = load i32, i32* @adv_data_status, align 4
  store i32 %16, i32* %5, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = call i32 @osi_mutex_unlock(i32* @adv_data_lock)
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @osi_mutex_lock(i32*, i32) #1

declare dso_local i64 @btsnd_hcic_ble_set_adv_data(i32, i32*) #1

declare dso_local i32 @osi_sem_take(i32*, i32) #1

declare dso_local i32 @osi_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
