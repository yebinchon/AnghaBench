; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/gatt_security_client/main/extr_example_ble_sec_gattc_demo.c_esp_gattc_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/gatt_security_client/main/extr_example_ble_sec_gattc_demo.c_esp_gattc_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 (i64, i64, %struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@GATTC_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"EVT %d, gattc if %d\00", align 1
@ESP_GATTC_REG_EVT = common dso_local global i64 0, align 8
@ESP_GATT_OK = common dso_local global i64 0, align 8
@gl_profile_tab = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Reg app failed, app_id %04x, status %d\00", align 1
@PROFILE_NUM = common dso_local global i32 0, align 4
@ESP_GATT_IF_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.TYPE_7__*)* @esp_gattc_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_gattc_cb(i64 %0, i64 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %8 = load i32, i32* @GATTC_TAG, align 4
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @ESP_LOGI(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %9, i64 %10)
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @ESP_GATTC_REG_EVT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ESP_GATT_OK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gl_profile_tab, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i64 %23, i64* %30, align 8
  br label %42

31:                                               ; preds = %15
  %32 = load i32, i32* @GATTC_TAG, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @ESP_LOGI(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %36, i64 %40)
  br label %87

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42, %3
  br label %44

44:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %83, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @PROFILE_NUM, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %45
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @ESP_GATT_IF_NONE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gl_profile_tab, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %54, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %53, %49
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gl_profile_tab, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32 (i64, i64, %struct.TYPE_7__*)*, i32 (i64, i64, %struct.TYPE_7__*)** %67, align 8
  %69 = icmp ne i32 (i64, i64, %struct.TYPE_7__*)* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %62
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gl_profile_tab, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32 (i64, i64, %struct.TYPE_7__*)*, i32 (i64, i64, %struct.TYPE_7__*)** %75, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = call i32 %76(i64 %77, i64 %78, %struct.TYPE_7__* %79)
  br label %81

81:                                               ; preds = %70, %62
  br label %82

82:                                               ; preds = %81, %53
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %45

86:                                               ; preds = %45
  br label %87

87:                                               ; preds = %31, %86
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
