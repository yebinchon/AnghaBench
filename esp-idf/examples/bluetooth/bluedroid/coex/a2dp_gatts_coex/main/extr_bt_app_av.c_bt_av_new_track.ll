; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/coex/a2dp_gatts_coex/main/extr_bt_app_av.c_bt_av_new_track.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/coex/a2dp_gatts_coex/main/extr_bt_app_av.c_bt_av_new_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_AVRC_MD_ATTR_TITLE = common dso_local global i32 0, align 4
@ESP_AVRC_MD_ATTR_ARTIST = common dso_local global i32 0, align 4
@ESP_AVRC_MD_ATTR_ALBUM = common dso_local global i32 0, align 4
@ESP_AVRC_MD_ATTR_GENRE = common dso_local global i32 0, align 4
@APP_RC_CT_TL_GET_META_DATA = common dso_local global i32 0, align 4
@ESP_AVRC_BIT_MASK_OP_TEST = common dso_local global i32 0, align 4
@s_avrc_peer_rn_cap = common dso_local global i32 0, align 4
@ESP_AVRC_RN_TRACK_CHANGE = common dso_local global i32 0, align 4
@APP_RC_CT_TL_RN_TRACK_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bt_av_new_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt_av_new_track() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ESP_AVRC_MD_ATTR_TITLE, align 4
  %3 = load i32, i32* @ESP_AVRC_MD_ATTR_ARTIST, align 4
  %4 = or i32 %2, %3
  %5 = load i32, i32* @ESP_AVRC_MD_ATTR_ALBUM, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @ESP_AVRC_MD_ATTR_GENRE, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* @APP_RC_CT_TL_GET_META_DATA, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @esp_avrc_ct_send_metadata_cmd(i32 %9, i32 %10)
  %12 = load i32, i32* @ESP_AVRC_BIT_MASK_OP_TEST, align 4
  %13 = load i32, i32* @ESP_AVRC_RN_TRACK_CHANGE, align 4
  %14 = call i64 @esp_avrc_rn_evt_bit_mask_operation(i32 %12, i32* @s_avrc_peer_rn_cap, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load i32, i32* @APP_RC_CT_TL_RN_TRACK_CHANGE, align 4
  %18 = load i32, i32* @ESP_AVRC_RN_TRACK_CHANGE, align 4
  %19 = call i32 @esp_avrc_ct_send_register_notification_cmd(i32 %17, i32 %18, i32 0)
  br label %20

20:                                               ; preds = %16, %0
  ret void
}

declare dso_local i32 @esp_avrc_ct_send_metadata_cmd(i32, i32) #1

declare dso_local i64 @esp_avrc_rn_evt_bit_mask_operation(i32, i32*, i32) #1

declare dso_local i32 @esp_avrc_ct_send_register_notification_cmd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
