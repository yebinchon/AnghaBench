; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gatt/extr_btc_gattc.c_btc_ble_gattc_get_char_by_uuid.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gatt/extr_btc_gattc.c_btc_ble_gattc_get_char_by_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ESP_GATT_OK = common dso_local global i32 0, align 4
@ESP_GATT_DB_CHARACTERISTIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_ble_gattc_get_char_by_uuid(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %18 = bitcast %struct.TYPE_4__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = call i32 @btc_to_bta_uuid(%struct.TYPE_4__* %17, i32* %11)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @BTA_GATTC_GetCharByUUID(i32 %20, i32 %21, i32 %22, i32 %24, i32** %15, i32* %16)
  %26 = load i32, i32* %16, align 4
  %27 = call i32 @btc_gattc_check_valid_param(i32 %26, i32 0)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* @ESP_GATT_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %6
  %31 = load i32*, i32** %15, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32*, i32** %15, align 8
  %35 = call i32 @osi_free(i32* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32*, i32** %13, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %7, align 4
  br label %58

39:                                               ; preds = %6
  %40 = load i32*, i32** %13, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* @ESP_GATT_DB_CHARACTERISTIC, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = bitcast i32* %44 to i8*
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @btc_gattc_fill_gatt_db_conversion(i32 %41, i32 %42, i32 %43, i32 0, i8* %45, i32* %46)
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %16, align 4
  %50 = load i32*, i32** %13, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %15, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32*, i32** %15, align 8
  %55 = call i32 @osi_free(i32* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* @ESP_GATT_OK, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %56, %36
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @btc_to_bta_uuid(%struct.TYPE_4__*, i32*) #2

declare dso_local i32 @BTA_GATTC_GetCharByUUID(i32, i32, i32, i32, i32**, i32*) #2

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
