; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/coex/a2dp_gatts_coex/main/extr_bt_app_av.c_volume_change_simulation.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/coex/a2dp_gatts_coex/main/extr_bt_app_av.c_volume_change_simulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BT_RC_TG_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"start volume change simulation\00", align 1
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@s_volume = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @volume_change_simulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @volume_change_simulation(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @BT_RC_TG_TAG, align 4
  %5 = call i32 @ESP_LOGI(i32 %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %6, %1
  %7 = load i32, i32* @portTICK_RATE_MS, align 4
  %8 = sdiv i32 10000, %7
  %9 = call i32 @vTaskDelay(i32 %8)
  %10 = load i32, i32* @s_volume, align 4
  %11 = add nsw i32 %10, 5
  %12 = and i32 %11, 127
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @volume_set_by_local_host(i32 %13)
  br label %6
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @volume_set_by_local_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
