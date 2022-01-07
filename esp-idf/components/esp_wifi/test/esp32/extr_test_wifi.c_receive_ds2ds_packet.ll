; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/esp32/extr_test_wifi.c_receive_ds2ds_packet.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/esp32/extr_test_wifi.c_receive_ds2ds_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"sender ready\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"receiver ready\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @receive_ds2ds_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_ds2ds_packet() #0 {
  %1 = call i32 (...) @test_case_uses_tcpip()
  %2 = call i32 (...) @start_wifi_as_softap()
  %3 = call i32 @unity_wait_for_signal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @unity_send_signal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %6 = sdiv i32 1000, %5
  %7 = call i32 @vTaskDelay(i32 %6)
  %8 = call i32 (...) @stop_wifi()
  ret void
}

declare dso_local i32 @test_case_uses_tcpip(...) #1

declare dso_local i32 @start_wifi_as_softap(...) #1

declare dso_local i32 @unity_wait_for_signal(i8*) #1

declare dso_local i32 @unity_send_signal(i8*) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @stop_wifi(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
