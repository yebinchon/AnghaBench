; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gatt/extr_btc_gattc.c_btc_ble_gattc_get_all_descr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gatt/extr_btc_gattc.c_btc_ble_gattc_get_all_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_GATT_OK = common dso_local global i32 0, align 4
@ESP_GATT_DB_DESCRIPTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_ble_gattc_get_all_descr(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @BTA_GATTC_GetAllDescriptor(i32 %15, i32 %16, i32** %13, i32* %14)
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @btc_gattc_check_valid_param(i32 %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @ESP_GATT_OK, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %5
  %24 = load i32*, i32** %13, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** %13, align 8
  %28 = call i32 @osi_free(i32* %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32*, i32** %10, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %6, align 4
  br label %52

32:                                               ; preds = %5
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @ESP_GATT_DB_DESCRIPTOR, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @btc_gattc_fill_gatt_db_conversion(i32 %34, i32 %35, i32 %36, i32 %37, i8* %39, i32* %40)
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %14, align 4
  %44 = load i32*, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @osi_free(i32* %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* @ESP_GATT_OK, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %29
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @BTA_GATTC_GetAllDescriptor(i32, i32, i32**, i32*) #1

declare dso_local i32 @btc_gattc_check_valid_param(i32, i32) #1

declare dso_local i32 @osi_free(i32*) #1

declare dso_local i32 @btc_gattc_fill_gatt_db_conversion(i32, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
