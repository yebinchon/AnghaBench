; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_phy_init.c_esp_phy_load_cal_and_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_phy_init.c_esp_phy_load_cal_and_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_15__* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"failed to allocate memory for RF calibration data\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to obtain PHY init data\00", align 1
@PHY_RF_CAL_FULL = common dso_local global i64 0, align 8
@DEEPSLEEP_RESET = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@ESP_RST_BROWNOUT = common dso_local global i64 0, align 8
@PHY_RF_CAL_NONE = common dso_local global i64 0, align 8
@PHY_RF_CAL_PARTIAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_phy_load_cal_and_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i64 @calloc(i32 8, i32 1)
  %6 = inttoptr i64 %5 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %6, %struct.TYPE_15__** %3, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = icmp eq %struct.TYPE_15__* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @TAG, align 4
  %11 = call i32 @ESP_LOGE(i32 %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (...) @abort() #3
  unreachable

13:                                               ; preds = %1
  %14 = call %struct.TYPE_15__* (...) @esp_phy_get_init_data()
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %4, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = icmp eq %struct.TYPE_15__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* @TAG, align 4
  %19 = call i32 @ESP_LOGE(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 (...) @abort() #3
  unreachable

21:                                               ; preds = %13
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = load i64, i64* @PHY_RF_CAL_FULL, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @esp_phy_rf_init(%struct.TYPE_15__* %22, i64 %23, %struct.TYPE_15__* %24, i32 %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = call i32 @esp_phy_release_init_data(%struct.TYPE_15__* %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = call i32 @free(%struct.TYPE_15__* %29)
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local %struct.TYPE_15__* @esp_phy_get_init_data(...) #1

declare dso_local i32 @esp_phy_rf_init(%struct.TYPE_15__*, i64, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @esp_phy_release_init_data(%struct.TYPE_15__*) #1

declare dso_local i32 @free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
