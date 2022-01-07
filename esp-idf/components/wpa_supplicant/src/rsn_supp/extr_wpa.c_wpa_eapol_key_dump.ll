; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_eapol_key_dump.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_eapol_key_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_eapol_key = type { i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@WPA_KEY_INFO_ACK = common dso_local global i32 0, align 4
@WPA_KEY_INFO_ENCR_KEY_DATA = common dso_local global i32 0, align 4
@WPA_KEY_INFO_ERROR = common dso_local global i32 0, align 4
@WPA_KEY_INFO_INSTALL = common dso_local global i32 0, align 4
@WPA_KEY_INFO_KEY_INDEX_MASK = common dso_local global i32 0, align 4
@WPA_KEY_INFO_KEY_INDEX_SHIFT = common dso_local global i32 0, align 4
@WPA_KEY_INFO_KEY_TYPE = common dso_local global i32 0, align 4
@WPA_KEY_INFO_MIC = common dso_local global i32 0, align 4
@WPA_KEY_INFO_REQUEST = common dso_local global i32 0, align 4
@WPA_KEY_INFO_SECURE = common dso_local global i32 0, align 4
@WPA_KEY_INFO_TYPE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_eapol_key_dump(i32 %0, %struct.wpa_eapol_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_eapol_key*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.wpa_eapol_key* %1, %struct.wpa_eapol_key** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
