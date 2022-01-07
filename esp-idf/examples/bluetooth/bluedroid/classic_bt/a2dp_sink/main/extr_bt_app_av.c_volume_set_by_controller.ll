; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/a2dp_sink/main/extr_bt_app_av.c_volume_set_by_controller.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/a2dp_sink/main/extr_bt_app_av.c_volume_set_by_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BT_RC_TG_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Volume is set by remote controller %d%%\0A\00", align 1
@s_volume_lock = common dso_local global i32 0, align 4
@s_volume = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @volume_set_by_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @volume_set_by_controller(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @BT_RC_TG_TAG, align 4
  %4 = load i64, i64* %2, align 8
  %5 = trunc i64 %4 to i32
  %6 = mul nsw i32 %5, 100
  %7 = sdiv i32 %6, 127
  %8 = call i32 @ESP_LOGI(i32 %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i32 @_lock_acquire(i32* @s_volume_lock)
  %10 = load i64, i64* %2, align 8
  store i64 %10, i64* @s_volume, align 8
  %11 = call i32 @_lock_release(i32* @s_volume_lock)
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, i32) #1

declare dso_local i32 @_lock_acquire(i32*) #1

declare dso_local i32 @_lock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
