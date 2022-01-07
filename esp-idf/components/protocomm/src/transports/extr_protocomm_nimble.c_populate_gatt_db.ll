; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_populate_gatt_db.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_populate_gatt_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_gatt_svc_def = type { i64, i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error allocating memory for GATT services\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Error allocating memory for GATT service UUID\00", align 1
@BLE_UUID_TYPE_128 = common dso_local global i32 0, align 4
@BLE_UUID128_VAL_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Error adding primary service !!!\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Error adding GATT characteristic !!!\00", align 1
@BLE_GATT_UUID_CHAR_DSC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Error adding GATT Discriptor !!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ble_gatt_svc_def**, %struct.TYPE_7__*)* @populate_gatt_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_gatt_db(%struct.ble_gatt_svc_def** %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ble_gatt_svc_def**, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ble_gatt_svc_def** %0, %struct.ble_gatt_svc_def*** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = call i64 @calloc(i32 2, i32 16)
  %10 = inttoptr i64 %9 to %struct.ble_gatt_svc_def*
  %11 = load %struct.ble_gatt_svc_def**, %struct.ble_gatt_svc_def*** %4, align 8
  store %struct.ble_gatt_svc_def* %10, %struct.ble_gatt_svc_def** %11, align 8
  %12 = load %struct.ble_gatt_svc_def**, %struct.ble_gatt_svc_def*** %4, align 8
  %13 = load %struct.ble_gatt_svc_def*, %struct.ble_gatt_svc_def** %12, align 8
  %14 = icmp eq %struct.ble_gatt_svc_def* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @TAG, align 4
  %17 = call i32 @ESP_LOGE(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %18, i32* %3, align 4
  br label %105

19:                                               ; preds = %2
  %20 = call i64 @calloc(i32 1, i32 16)
  %21 = inttoptr i64 %20 to i32*
  %22 = load %struct.ble_gatt_svc_def**, %struct.ble_gatt_svc_def*** %4, align 8
  %23 = load %struct.ble_gatt_svc_def*, %struct.ble_gatt_svc_def** %22, align 8
  %24 = getelementptr inbounds %struct.ble_gatt_svc_def, %struct.ble_gatt_svc_def* %23, i32 0, i32 1
  store i32* %21, i32** %24, align 8
  %25 = load %struct.ble_gatt_svc_def**, %struct.ble_gatt_svc_def*** %4, align 8
  %26 = load %struct.ble_gatt_svc_def*, %struct.ble_gatt_svc_def** %25, align 8
  %27 = getelementptr inbounds %struct.ble_gatt_svc_def, %struct.ble_gatt_svc_def* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i32, i32* @TAG, align 4
  %32 = call i32 @ESP_LOGE(i32 %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %33, i32* %3, align 4
  br label %105

34:                                               ; preds = %19
  %35 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 16, i1 false)
  %36 = load i32, i32* @BLE_UUID_TYPE_128, align 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load i32, i32* @BLE_UUID128_VAL_LENGTH, align 4
  %45 = call i32 @memcpy(i8* %40, %struct.TYPE_8__* %43, i32 %44)
  %46 = load %struct.ble_gatt_svc_def**, %struct.ble_gatt_svc_def*** %4, align 8
  %47 = load %struct.ble_gatt_svc_def*, %struct.ble_gatt_svc_def** %46, align 8
  %48 = getelementptr inbounds %struct.ble_gatt_svc_def, %struct.ble_gatt_svc_def* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = call i32 @memcpy(i8* %50, %struct.TYPE_8__* %6, i32 16)
  %52 = load %struct.ble_gatt_svc_def**, %struct.ble_gatt_svc_def*** %4, align 8
  %53 = load %struct.ble_gatt_svc_def*, %struct.ble_gatt_svc_def** %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ble_gatt_add_primary_svcs(%struct.ble_gatt_svc_def* %53, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %34
  %61 = load i32, i32* @TAG, align 4
  %62 = call i32 @ESP_LOGE(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %105

64:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %101, %64
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %104

71:                                               ; preds = %65
  %72 = load %struct.ble_gatt_svc_def**, %struct.ble_gatt_svc_def*** %4, align 8
  %73 = load %struct.ble_gatt_svc_def*, %struct.ble_gatt_svc_def** %72, align 8
  %74 = getelementptr inbounds %struct.ble_gatt_svc_def, %struct.ble_gatt_svc_def* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @ble_gatt_add_characteristics(i8* %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load i32, i32* @TAG, align 4
  %83 = call i32 @ESP_LOGE(i32 %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %105

85:                                               ; preds = %71
  %86 = load %struct.ble_gatt_svc_def**, %struct.ble_gatt_svc_def*** %4, align 8
  %87 = load %struct.ble_gatt_svc_def*, %struct.ble_gatt_svc_def** %86, align 8
  %88 = getelementptr inbounds %struct.ble_gatt_svc_def, %struct.ble_gatt_svc_def* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @BLE_GATT_UUID_CHAR_DSC, align 4
  %93 = call i32 @ble_gatt_add_char_dsc(i8* %90, i32 %91, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %85
  %97 = load i32, i32* @TAG, align 4
  %98 = call i32 @ESP_LOGE(i32 %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %105

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %65

104:                                              ; preds = %65
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %96, %81, %60, %30, %15
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ble_gatt_add_primary_svcs(%struct.ble_gatt_svc_def*, i32) #1

declare dso_local i32 @ble_gatt_add_characteristics(i8*, i32) #1

declare dso_local i32 @ble_gatt_add_char_dsc(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
