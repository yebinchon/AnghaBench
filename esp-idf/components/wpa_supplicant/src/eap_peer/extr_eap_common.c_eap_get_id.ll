; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_common.c_eap_get_id.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_common.c_eap_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_get_id(%struct.wpabuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.eap_hdr*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  %5 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %6 = call i32 @wpabuf_len(%struct.wpabuf* %5)
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 4
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

10:                                               ; preds = %1
  %11 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %12 = call %struct.eap_hdr* @wpabuf_head(%struct.wpabuf* %11)
  store %struct.eap_hdr* %12, %struct.eap_hdr** %4, align 8
  %13 = load %struct.eap_hdr*, %struct.eap_hdr** %4, align 8
  %14 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %10, %9
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local %struct.eap_hdr* @wpabuf_head(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
