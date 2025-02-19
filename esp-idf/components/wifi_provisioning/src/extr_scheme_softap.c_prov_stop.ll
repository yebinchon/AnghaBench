; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_scheme_softap.c_prov_stop.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_scheme_softap.c_prov_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Error occurred while stopping protocomm_httpd\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"_esp_wifi_prov\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_tcp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @prov_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prov_stop(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i64 @protocomm_httpd_stop(i32* %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @ESP_OK, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @TAG, align 4
  %11 = call i32 @ESP_LOGW(i32 %10, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = call i32 @mdns_service_remove(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i64, i64* %3, align 8
  ret i64 %14
}

declare dso_local i64 @protocomm_httpd_stop(i32*) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

declare dso_local i32 @mdns_service_remove(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
