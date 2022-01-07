; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gatt/extr_btc_gattc.c_btc_ble_gattc_get_include_service.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gatt/extr_btc_gattc.c_btc_ble_gattc_get_include_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ESP_GATT_OK = common dso_local global i32 0, align 4
@ESP_GATT_DB_INCLUDED_SERVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_ble_gattc_get_include_service(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %18 = bitcast %struct.TYPE_4__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %6
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @btc_to_bta_uuid(%struct.TYPE_4__* %17, i32* %22)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @BTA_GATTC_GetIncludeService(i32 %24, i32 %25, i32 %26, %struct.TYPE_4__* %17, i32** %15, i32* %16)
  br label %33

28:                                               ; preds = %6
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @BTA_GATTC_GetIncludeService(i32 %29, i32 %30, i32 %31, %struct.TYPE_4__* null, i32** %15, i32* %16)
  br label %33

33:                                               ; preds = %28, %21
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @btc_gattc_check_valid_param(i32 %34, i32 0)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* @ESP_GATT_OK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i32*, i32** %15, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32*, i32** %15, align 8
  %43 = call i32 @osi_free(i32* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32*, i32** %13, align 8
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %7, align 4
  br label %66

47:                                               ; preds = %33
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @ESP_GATT_DB_INCLUDED_SERVICE, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = load i32*, i32** %15, align 8
  %55 = call i32 @btc_gattc_fill_gatt_db_conversion(i32 %49, i32 %50, i32 %51, i32 0, i8* %53, i32* %54)
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %16, align 4
  %58 = load i32*, i32** %13, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32*, i32** %15, align 8
  %63 = call i32 @osi_free(i32* %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* @ESP_GATT_OK, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %64, %44
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @btc_to_bta_uuid(%struct.TYPE_4__*, i32*) #2

declare dso_local i32 @BTA_GATTC_GetIncludeService(i32, i32, i32, %struct.TYPE_4__*, i32**, i32*) #2

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
