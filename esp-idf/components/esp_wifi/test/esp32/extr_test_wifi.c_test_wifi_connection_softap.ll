; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/esp32/extr_test_wifi.c_test_wifi_connection_softap.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/esp32/extr_test_wifi.c_test_wifi_connection_softap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_IF_WIFI_AP = common dso_local global i32 0, align 4
@MACSTR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"SoftAP mac\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"STA connected\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_wifi_connection_softap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_wifi_connection_softap() #0 {
  %1 = alloca [19 x i8], align 16
  %2 = alloca [6 x i32], align 16
  %3 = bitcast [19 x i8]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 19, i1 false)
  %4 = call i32 (...) @test_case_uses_tcpip()
  %5 = call i32 (...) @start_wifi_as_softap()
  %6 = load i32, i32* @ESP_IF_WIFI_AP, align 4
  %7 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %8 = call i32 @esp_wifi_get_mac(i32 %6, i32* %7)
  %9 = call i32 @TEST_ESP_OK(i32 %8)
  %10 = getelementptr inbounds [19 x i8], [19 x i8]* %1, i64 0, i64 0
  %11 = load i8*, i8** @MACSTR, align 8
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %13 = call i32 @MAC2STR(i32* %12)
  %14 = call i32 @sprintf(i8* %10, i8* %11, i32 %13)
  %15 = getelementptr inbounds [19 x i8], [19 x i8]* %1, i64 0, i64 0
  %16 = call i32 @unity_send_signal_param(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = call i32 @unity_wait_for_signal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %19 = sdiv i32 60000, %18
  %20 = call i32 @vTaskDelay(i32 %19)
  %21 = call i32 (...) @stop_wifi()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @test_case_uses_tcpip(...) #2

declare dso_local i32 @start_wifi_as_softap(...) #2

declare dso_local i32 @TEST_ESP_OK(i32) #2

declare dso_local i32 @esp_wifi_get_mac(i32, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @MAC2STR(i32*) #2

declare dso_local i32 @unity_send_signal_param(i8*, i8*) #2

declare dso_local i32 @unity_wait_for_signal(i8*) #2

declare dso_local i32 @vTaskDelay(i32) #2

declare dso_local i32 @stop_wifi(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
