; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_ancs/main/extr_ble_ancs_demo.c_esp_get_app_attributes.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_ancs/main/extr_ble_ancs_demo.c_esp_get_app_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@CommandIDGetAppAttributes = common dso_local global i64 0, align 8
@gl_profile_tab = common dso_local global %struct.TYPE_2__* null, align 8
@PROFILE_A_APP_ID = common dso_local global i64 0, align 8
@ESP_GATT_WRITE_TYPE_RSP = common dso_local global i32 0, align 4
@ESP_GATT_AUTH_REQ_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_get_app_attributes(i64* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca [600 x i64], align 16
  %10 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = bitcast [600 x i64]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 4800, i1 false)
  store i64 0, i64* %10, align 8
  %12 = load i64, i64* @CommandIDGetAppAttributes, align 8
  %13 = getelementptr inbounds [600 x i64], [600 x i64]* %9, i64 0, i64 0
  store i64 %12, i64* %13, align 16
  %14 = load i64, i64* %10, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = getelementptr inbounds [600 x i64], [600 x i64]* %9, i64 0, i64 %16
  %18 = load i64*, i64** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @memcpy(i64* %17, i64* %18, i64 %19)
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %10, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds [600 x i64], [600 x i64]* %9, i64 0, i64 %24
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @memcpy(i64* %25, i64* %26, i64 %27)
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %10, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %10, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gl_profile_tab, align 8
  %33 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gl_profile_tab, align 8
  %38 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gl_profile_tab, align 8
  %43 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds [600 x i64], [600 x i64]* %9, i64 0, i64 0
  %49 = load i32, i32* @ESP_GATT_WRITE_TYPE_RSP, align 4
  %50 = load i32, i32* @ESP_GATT_AUTH_REQ_NONE, align 4
  %51 = call i32 @esp_ble_gattc_write_char(i32 %36, i32 %41, i32 %46, i64 %47, i64* %48, i32 %49, i32 %50)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #2

declare dso_local i32 @esp_ble_gattc_write_char(i32, i32, i32, i64, i64*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
