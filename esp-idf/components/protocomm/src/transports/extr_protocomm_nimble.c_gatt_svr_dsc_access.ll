; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_gatt_svr_dsc_access.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_gatt_svr_dsc_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_gatt_access_ctxt = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BLE_GATT_ACCESS_OP_READ_DSC = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Invalid operation on Read-only Descriptor\00", align 1
@BLE_ATT_ERR_UNLIKELY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Error duplicating user description of characteristic\00", align 1
@BLE_ATT_ERR_INSUFFICIENT_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ble_gatt_access_ctxt*, i8*)* @gatt_svr_dsc_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gatt_svr_dsc_access(i32 %0, i32 %1, %struct.ble_gatt_access_ctxt* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ble_gatt_access_ctxt*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.ble_gatt_access_ctxt* %2, %struct.ble_gatt_access_ctxt** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %14 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BLE_GATT_ACCESS_OP_READ_DSC, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @TAG, align 4
  %20 = call i32 @ESP_LOGE(i32 %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @BLE_ATT_ERR_UNLIKELY, align 4
  store i32 %21, i32* %5, align 4
  br label %47

22:                                               ; preds = %4
  %23 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %24 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @strdup(i32 %27)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load i32, i32* @TAG, align 4
  %33 = call i32 @ESP_LOGE(i32 %32, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @BLE_ATT_ERR_INSUFFICIENT_RES, align 4
  store i32 %34, i32* %5, align 4
  br label %47

35:                                               ; preds = %22
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @strlen(i8* %36)
  store i32 %37, i32* %12, align 4
  %38 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %39 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @os_mbuf_append(i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %35, %31, %18
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @os_mbuf_append(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
