; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gatt/extr_btc_gattc.c_btc_ble_gattc_get_service.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gatt/extr_btc_gattc.c_btc_ble_gattc_get_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_GATT_OK = common dso_local global i32 0, align 4
@ESP_GATT_DB_PRIMARY_SERVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_ble_gattc_get_service(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = call i32* @osi_malloc(i32 4)
  store i32* %19, i32** %15, align 8
  %20 = load i32*, i32** %15, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @btc_to_bta_uuid(i32* %20, i32* %21)
  br label %23

23:                                               ; preds = %18, %5
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %15, align 8
  %26 = call i32 @BTA_GATTC_GetServiceWithUUID(i32 %24, i32* %25, i32** %13, i32* %14)
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @btc_gattc_check_valid_param(i32 %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* @ESP_GATT_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %23
  %33 = load i32*, i32** %13, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @osi_free(i32* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32*, i32** %15, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32*, i32** %15, align 8
  %43 = call i32 @osi_free(i32* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32*, i32** %10, align 8
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %6, align 4
  br label %73

47:                                               ; preds = %23
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @ESP_GATT_DB_PRIMARY_SERVICE, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @btc_gattc_fill_gatt_db_conversion(i32 %49, i32 %50, i32 %51, i32 %52, i8* %54, i32* %55)
  br label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %14, align 4
  %59 = load i32*, i32** %10, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %13, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @osi_free(i32* %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load i32*, i32** %15, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32*, i32** %15, align 8
  %70 = call i32 @osi_free(i32* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* @ESP_GATT_OK, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %44
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32* @osi_malloc(i32) #1

declare dso_local i32 @btc_to_bta_uuid(i32*, i32*) #1

declare dso_local i32 @BTA_GATTC_GetServiceWithUUID(i32, i32*, i32**, i32*) #1

declare dso_local i32 @btc_gattc_check_valid_param(i32, i32) #1

declare dso_local i32 @osi_free(i32*) #1

declare dso_local i32 @btc_gattc_fill_gatt_db_conversion(i32, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
