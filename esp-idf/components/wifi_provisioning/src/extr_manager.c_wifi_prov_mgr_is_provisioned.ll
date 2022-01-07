; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_is_provisioned.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_is_provisioned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@prov_ctx_lock = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Provisioning manager not initialized\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@ESP_IF_WIFI_STA = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"Found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wifi_prov_mgr_is_provisioned(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %8, i64* %2, align 8
  br label %39

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @prov_ctx_lock, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @TAG, align 4
  %15 = call i32 @ESP_LOGE(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %16, i64* %2, align 8
  br label %39

17:                                               ; preds = %9
  %18 = load i32, i32* @ESP_IF_WIFI_STA, align 4
  %19 = call i64 @esp_wifi_get_config(i32 %18, %struct.TYPE_4__* %4)
  %20 = load i64, i64* @ESP_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i64, i64* @ESP_FAIL, align 8
  store i64 %23, i64* %2, align 8
  br label %39

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i64 @strlen(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32*, i32** %3, align 8
  store i32 1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @debug_print_wifi_credentials(i64 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %31, %24
  %38 = load i64, i64* @ESP_OK, align 8
  store i64 %38, i64* %2, align 8
  br label %39

39:                                               ; preds = %37, %22, %13, %7
  %40 = load i64, i64* %2, align 8
  ret i64 %40
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @esp_wifi_get_config(i32, %struct.TYPE_4__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @debug_print_wifi_credentials(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
