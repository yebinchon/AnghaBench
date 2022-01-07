; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gatt/extr_btc_gattc.c_btc_ble_gattc_get_descr_by_uuid.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gatt/extr_btc_gattc.c_btc_ble_gattc_get_descr_by_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ESP_GATT_OK = common dso_local global i32 0, align 4
@ESP_GATT_DB_DESCRIPTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_ble_gattc_get_descr_by_uuid(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__, align 4
  %20 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* null, i32** %17, align 8
  store i32 0, i32* %18, align 4
  %21 = bitcast %struct.TYPE_5__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  %22 = bitcast %struct.TYPE_5__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  %23 = call i32 @btc_to_bta_uuid(%struct.TYPE_5__* %19, i32* %12)
  %24 = call i32 @btc_to_bta_uuid(%struct.TYPE_5__* %20, i32* %13)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @BTA_GATTC_GetDescrByUUID(i32 %25, i32 %26, i32 %27, i32 %29, i32 %31, i32** %17, i32* %18)
  %33 = load i32, i32* %18, align 4
  %34 = call i32 @btc_gattc_check_valid_param(i32 %33, i32 0)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* @ESP_GATT_OK, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %7
  %38 = load i32*, i32** %17, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32*, i32** %17, align 8
  %42 = call i32 @osi_free(i32* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32*, i32** %15, align 8
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %8, align 4
  br label %65

46:                                               ; preds = %7
  %47 = load i32*, i32** %15, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* @ESP_GATT_DB_DESCRIPTOR, align 4
  %51 = load i32*, i32** %14, align 8
  %52 = bitcast i32* %51 to i8*
  %53 = load i32*, i32** %17, align 8
  %54 = call i32 @btc_gattc_fill_gatt_db_conversion(i32 %48, i32 %49, i32 %50, i32 0, i8* %52, i32* %53)
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %18, align 4
  %57 = load i32*, i32** %15, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %17, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32*, i32** %17, align 8
  %62 = call i32 @osi_free(i32* %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* @ESP_GATT_OK, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %63, %43
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @btc_to_bta_uuid(%struct.TYPE_5__*, i32*) #2

declare dso_local i32 @BTA_GATTC_GetDescrByUUID(i32, i32, i32, i32, i32, i32**, i32*) #2

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
