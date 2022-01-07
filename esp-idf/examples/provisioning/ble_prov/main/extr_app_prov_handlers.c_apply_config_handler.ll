; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/provisioning/ble_prov/main/extr_app_prov_handlers.c_apply_config_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/provisioning/ble_prov/main/extr_app_prov_handlers.c_apply_config_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"WiFi config not set\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"WiFi Credentials Applied\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**)* @apply_config_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_config_handler(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  %5 = load i32**, i32*** %3, align 8
  %6 = call i32* @get_config(i32** %5)
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @TAG, align 4
  %11 = call i32 @ESP_LOGE(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ESP_FAIL, align 4
  store i32 %12, i32* %2, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @app_prov_configure_sta(i32* %14)
  %16 = load i32, i32* @TAG, align 4
  %17 = call i32 @ESP_LOGI(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32**, i32*** %3, align 8
  %19 = call i32 @free_config(i32** %18)
  %20 = load i32, i32* @ESP_OK, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %13, %9
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32* @get_config(i32**) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @app_prov_configure_sta(i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @free_config(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
