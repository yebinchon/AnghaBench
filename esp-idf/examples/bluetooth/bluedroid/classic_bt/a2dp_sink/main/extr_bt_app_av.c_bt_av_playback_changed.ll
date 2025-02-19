; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/a2dp_sink/main/extr_bt_app_av.c_bt_av_playback_changed.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/a2dp_sink/main/extr_bt_app_av.c_bt_av_playback_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_AVRC_BIT_MASK_OP_TEST = common dso_local global i32 0, align 4
@s_avrc_peer_rn_cap = common dso_local global i32 0, align 4
@ESP_AVRC_RN_PLAY_STATUS_CHANGE = common dso_local global i32 0, align 4
@APP_RC_CT_TL_RN_PLAYBACK_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bt_av_playback_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt_av_playback_changed() #0 {
  %1 = load i32, i32* @ESP_AVRC_BIT_MASK_OP_TEST, align 4
  %2 = load i32, i32* @ESP_AVRC_RN_PLAY_STATUS_CHANGE, align 4
  %3 = call i64 @esp_avrc_rn_evt_bit_mask_operation(i32 %1, i32* @s_avrc_peer_rn_cap, i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @APP_RC_CT_TL_RN_PLAYBACK_CHANGE, align 4
  %7 = load i32, i32* @ESP_AVRC_RN_PLAY_STATUS_CHANGE, align 4
  %8 = call i32 @esp_avrc_ct_send_register_notification_cmd(i32 %6, i32 %7, i32 0)
  br label %9

9:                                                ; preds = %5, %0
  ret void
}

declare dso_local i64 @esp_avrc_rn_evt_bit_mask_operation(i32, i32*, i32) #1

declare dso_local i32 @esp_avrc_ct_send_register_notification_cmd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
