; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gatt/extr_btc_gattc.c_btc_ble_gattc_get_descr_by_char_handle.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gatt/extr_btc_gattc.c_btc_ble_gattc_get_descr_by_char_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ESP_GATT_OK = common dso_local global i32 0, align 4
@ESP_GATT_DB_DESCRIPTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_ble_gattc_get_descr_by_char_handle(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %16 = bitcast %struct.TYPE_4__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = call i32 @btc_to_bta_uuid(%struct.TYPE_4__* %15, i32* %9)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BTA_GATTC_GetDescrByCharHandle(i32 %18, i32 %19, i32 %21, i32** %13, i32* %14)
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @btc_gattc_check_valid_param(i32 %23, i32 0)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* @ESP_GATT_OK, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %5
  %28 = load i32*, i32** %13, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @osi_free(i32* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32*, i32** %11, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %55

36:                                               ; preds = %5
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @ESP_GATT_DB_DESCRIPTOR, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @btc_gattc_fill_gatt_db_conversion(i32 %38, i32 %39, i32 %40, i32 0, i8* %42, i32* %43)
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %14, align 4
  %47 = load i32*, i32** %11, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @osi_free(i32* %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* @ESP_GATT_OK, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %33
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @btc_to_bta_uuid(%struct.TYPE_4__*, i32*) #2

declare dso_local i32 @BTA_GATTC_GetDescrByCharHandle(i32, i32, i32, i32**, i32*) #2

declare dso_local i32 @btc_gattc_check_valid_param(i32, i32) #2

declare dso_local i32 @osi_free(i32*) #2

declare dso_local i32 @btc_gattc_fill_gatt_db_conversion(i32, i32, i32, i32, i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
