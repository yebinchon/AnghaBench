; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/a2dp_sink/main/extr_bt_app_av.c_volume_set_by_local_host.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/a2dp_sink/main/extr_bt_app_av.c_volume_set_by_local_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@BT_RC_TG_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Volume is set locally to: %d%%\00", align 1
@s_volume_lock = common dso_local global i32 0, align 4
@s_volume = common dso_local global i64 0, align 8
@s_volume_notify = common dso_local global i32 0, align 4
@ESP_AVRC_RN_VOLUME_CHANGE = common dso_local global i32 0, align 4
@ESP_AVRC_RN_RSP_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @volume_set_by_local_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @volume_set_by_local_host(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @BT_RC_TG_TAG, align 4
  %5 = load i64, i64* %2, align 8
  %6 = trunc i64 %5 to i32
  %7 = mul nsw i32 %6, 100
  %8 = sdiv i32 %7, 127
  %9 = call i32 @ESP_LOGI(i32 %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 @_lock_acquire(i32* @s_volume_lock)
  %11 = load i64, i64* %2, align 8
  store i64 %11, i64* @s_volume, align 8
  %12 = call i32 @_lock_release(i32* @s_volume_lock)
  %13 = load i32, i32* @s_volume_notify, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i64, i64* @s_volume, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = load i32, i32* @ESP_AVRC_RN_VOLUME_CHANGE, align 4
  %19 = load i32, i32* @ESP_AVRC_RN_RSP_CHANGED, align 4
  %20 = call i32 @esp_avrc_tg_send_rn_rsp(i32 %18, i32 %19, %struct.TYPE_3__* %3)
  store i32 0, i32* @s_volume_notify, align 4
  br label %21

21:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, i32) #1

declare dso_local i32 @_lock_acquire(i32*) #1

declare dso_local i32 @_lock_release(i32*) #1

declare dso_local i32 @esp_avrc_tg_send_rn_rsp(i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
