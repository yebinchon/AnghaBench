; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gatt/extr_btc_gattc.c_btc_ble_gattc_get_all_char.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gatt/extr_btc_gattc.c_btc_ble_gattc_get_all_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_GATT_OK = common dso_local global i32 0, align 4
@ESP_GATT_DB_CHARACTERISTIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_ble_gattc_get_all_char(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @BTA_GATTC_GetAllChar(i32 %17, i32 %18, i32 %19, i32** %15, i32* %16)
  %21 = load i32, i32* %16, align 4
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @btc_gattc_check_valid_param(i32 %21, i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* @ESP_GATT_OK, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %6
  %27 = load i32*, i32** %15, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** %15, align 8
  %31 = call i32 @osi_free(i32* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32*, i32** %12, align 8
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %7, align 4
  br label %55

35:                                               ; preds = %6
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* @ESP_GATT_DB_CHARACTERISTIC, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = load i32*, i32** %15, align 8
  %44 = call i32 @btc_gattc_fill_gatt_db_conversion(i32 %37, i32 %38, i32 %39, i32 %40, i8* %42, i32* %43)
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %16, align 4
  %47 = load i32*, i32** %12, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %15, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32*, i32** %15, align 8
  %52 = call i32 @osi_free(i32* %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* @ESP_GATT_OK, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %53, %32
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @BTA_GATTC_GetAllChar(i32, i32, i32, i32**, i32*) #1

declare dso_local i32 @btc_gattc_check_valid_param(i32, i32) #1

declare dso_local i32 @osi_free(i32*) #1

declare dso_local i32 @btc_gattc_fill_gatt_db_conversion(i32, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
