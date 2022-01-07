; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_ancs/main/extr_ble_ancs_demo.c_esp_get_notification_attributes.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_ancs/main/extr_ble_ancs_demo.c_esp_get_notification_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@CommandIDGetNotificationAttributes = common dso_local global i64 0, align 8
@ESP_NOTIFICATIONUID_LEN = common dso_local global i64 0, align 8
@gl_profile_tab = common dso_local global %struct.TYPE_5__* null, align 8
@PROFILE_A_APP_ID = common dso_local global i64 0, align 8
@ESP_GATT_WRITE_TYPE_RSP = common dso_local global i32 0, align 4
@ESP_GATT_AUTH_REQ_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_get_notification_attributes(i64* %0, i64 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca [600 x i64], align 16
  %8 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %9 = bitcast [600 x i64]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 4800, i1 false)
  store i64 0, i64* %8, align 8
  %10 = load i64, i64* @CommandIDGetNotificationAttributes, align 8
  %11 = getelementptr inbounds [600 x i64], [600 x i64]* %7, i64 0, i64 0
  store i64 %10, i64* %11, align 16
  %12 = load i64, i64* %8, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = getelementptr inbounds [600 x i64], [600 x i64]* %7, i64 0, i64 %14
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* @ESP_NOTIFICATIONUID_LEN, align 8
  %18 = call i32 @memcpy(i64* %15, i64* %16, i64 %17)
  %19 = load i64, i64* @ESP_NOTIFICATIONUID_LEN, align 8
  %20 = load i64, i64* %8, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %50, %3
  %23 = load i64, i64* %5, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %22
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %8, align 8
  %31 = getelementptr inbounds [600 x i64], [600 x i64]* %7, i64 0, i64 %29
  store i64 %28, i64* %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %25
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %8, align 8
  %42 = getelementptr inbounds [600 x i64], [600 x i64]* %7, i64 0, i64 %40
  store i64 %39, i64* %42, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = shl i64 %45, 8
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  %49 = getelementptr inbounds [600 x i64], [600 x i64]* %7, i64 0, i64 %47
  store i64 %46, i64* %49, align 8
  br label %50

50:                                               ; preds = %36, %25
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 1
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %6, align 8
  %53 = load i64, i64* %5, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %5, align 8
  br label %22

55:                                               ; preds = %22
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gl_profile_tab, align 8
  %57 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gl_profile_tab, align 8
  %62 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gl_profile_tab, align 8
  %67 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds [600 x i64], [600 x i64]* %7, i64 0, i64 0
  %73 = load i32, i32* @ESP_GATT_WRITE_TYPE_RSP, align 4
  %74 = load i32, i32* @ESP_GATT_AUTH_REQ_NONE, align 4
  %75 = call i32 @esp_ble_gattc_write_char(i32 %60, i32 %65, i32 %70, i64 %71, i64* %72, i32 %73, i32 %74)
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
