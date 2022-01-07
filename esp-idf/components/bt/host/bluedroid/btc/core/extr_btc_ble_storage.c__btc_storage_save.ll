; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_ble_storage.c__btc_storage_save.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_ble_storage.c__btc_storage_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@BTC_BLE_STORAGE_DEV_TYPE_STR = common dso_local global i32 0, align 4
@BTC_BLE_STORAGE_ADDR_TYPE_STR = common dso_local global i32 0, align 4
@BTC_BLE_STORAGE_LINK_KEY_STR = common dso_local global i32 0, align 4
@BTC_BLE_STORAGE_LE_KEY_PENC_STR = common dso_local global i32 0, align 4
@BTC_BLE_STORAGE_LE_KEY_PID_STR = common dso_local global i32 0, align 4
@BTC_BLE_STORAGE_LE_KEY_PCSRK_STR = common dso_local global i32 0, align 4
@BTC_BLE_STORAGE_LE_KEY_LENC_STR = common dso_local global i32 0, align 4
@BTC_BLE_STORAGE_LE_KEY_LCSRK_STR = common dso_local global i32 0, align 4
@BT_DEVICE_TYPE_BLE = common dso_local global i32 0, align 4
@BONED_DEVICES_MAX_COUNT = common dso_local global i64 0, align 8
@BT_TRANSPORT_LE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"exceeded the maximum nubmer of bonded devices, delete the last device info : %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @_btc_storage_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_btc_storage_save() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i64 0, i64* %1, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  %8 = call i32* (...) @btc_config_section_begin()
  store i32* %8, i32** %5, align 8
  br label %9

9:                                                ; preds = %88, %79, %59, %0
  %10 = load i32*, i32** %5, align 8
  %11 = call i32* (...) @btc_config_section_end()
  %12 = icmp ne i32* %10, %11
  br i1 %12, label %13, label %93

13:                                               ; preds = %9
  %14 = load i32*, i32** %5, align 8
  %15 = call i8* @btc_config_section_name(i32* %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @string_is_bdaddr(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @BTC_BLE_STORAGE_DEV_TYPE_STR, align 4
  %22 = call i32 @btc_config_exist(i8* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %64, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @BTC_BLE_STORAGE_ADDR_TYPE_STR, align 4
  %27 = call i32 @btc_config_exist(i8* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %64, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* @BTC_BLE_STORAGE_LINK_KEY_STR, align 4
  %32 = call i32 @btc_config_exist(i8* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %64, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @BTC_BLE_STORAGE_LE_KEY_PENC_STR, align 4
  %37 = call i32 @btc_config_exist(i8* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @BTC_BLE_STORAGE_LE_KEY_PID_STR, align 4
  %42 = call i32 @btc_config_exist(i8* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* @BTC_BLE_STORAGE_LE_KEY_PCSRK_STR, align 4
  %47 = call i32 @btc_config_exist(i8* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* @BTC_BLE_STORAGE_LE_KEY_LENC_STR, align 4
  %52 = call i32 @btc_config_exist(i8* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* @BTC_BLE_STORAGE_LE_KEY_LCSRK_STR, align 4
  %57 = call i32 @btc_config_exist(i8* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i32*, i32** %5, align 8
  %61 = call i32* @btc_config_section_next(i32* %60)
  store i32* %61, i32** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i64 @btc_config_remove_section(i8* %62)
  br label %9

64:                                               ; preds = %54, %49, %44, %39, %34, %29, %24, %19, %13
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @string_is_bdaddr(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* @BTC_BLE_STORAGE_DEV_TYPE_STR, align 4
  %71 = call i32 @btc_config_get_int(i8* %69, i32 %70, i32* %3)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @BT_DEVICE_TYPE_BLE, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @BT_DEVICE_TYPE_BLE, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73, %68, %64
  %80 = load i32*, i32** %5, align 8
  %81 = call i32* @btc_config_section_next(i32* %80)
  store i32* %81, i32** %5, align 8
  br label %9

82:                                               ; preds = %73
  %83 = load i64, i64* %1, align 8
  %84 = load i64, i64* @BONED_DEVICES_MAX_COUNT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32*, i32** %5, align 8
  store i32* %87, i32** %4, align 8
  br label %88

88:                                               ; preds = %86, %82
  %89 = load i64, i64* %1, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %1, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = call i32* @btc_config_section_next(i32* %91)
  store i32* %92, i32** %5, align 8
  br label %9

93:                                               ; preds = %9
  %94 = load i32*, i32** %4, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %138

96:                                               ; preds = %93
  br label %97

97:                                               ; preds = %136, %118, %96
  %98 = load i32*, i32** %4, align 8
  %99 = call i32* (...) @btc_config_section_end()
  %100 = icmp ne i32* %98, %99
  br i1 %100, label %101, label %137

101:                                              ; preds = %97
  %102 = load i32*, i32** %4, align 8
  %103 = call i8* @btc_config_section_name(i32* %102)
  store i8* %103, i8** %7, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = call i64 @string_is_bdaddr(i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* @BTC_BLE_STORAGE_DEV_TYPE_STR, align 4
  %110 = call i32 @btc_config_get_int(i8* %108, i32 %109, i32* %3)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @BT_DEVICE_TYPE_BLE, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* @BT_DEVICE_TYPE_BLE, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112, %107, %101
  %119 = load i32*, i32** %4, align 8
  %120 = call i32* @btc_config_section_next(i32* %119)
  store i32* %120, i32** %4, align 8
  br label %97

121:                                              ; preds = %112
  %122 = load i32*, i32** %4, align 8
  %123 = call i32* @btc_config_section_next(i32* %122)
  store i32* %123, i32** %4, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 @string_to_bdaddr(i8* %124, %struct.TYPE_3__* %2)
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @BT_TRANSPORT_LE, align 4
  %129 = call i32 @BTM_SecDeleteDevice(i32 %127, i32 %128)
  %130 = load i8*, i8** %7, align 8
  %131 = call i64 @btc_config_remove_section(i8* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %121
  %134 = load i8*, i8** %7, align 8
  %135 = call i32 @BTIF_TRACE_WARNING(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i8* %134)
  br label %136

136:                                              ; preds = %133, %121
  br label %97

137:                                              ; preds = %97
  br label %138

138:                                              ; preds = %137, %93
  %139 = call i32 (...) @btc_config_flush()
  ret void
}

declare dso_local i32* @btc_config_section_begin(...) #1

declare dso_local i32* @btc_config_section_end(...) #1

declare dso_local i8* @btc_config_section_name(i32*) #1

declare dso_local i64 @string_is_bdaddr(i8*) #1

declare dso_local i32 @btc_config_exist(i8*, i32) #1

declare dso_local i32* @btc_config_section_next(i32*) #1

declare dso_local i64 @btc_config_remove_section(i8*) #1

declare dso_local i32 @btc_config_get_int(i8*, i32, i32*) #1

declare dso_local i32 @string_to_bdaddr(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @BTM_SecDeleteDevice(i32, i32) #1

declare dso_local i32 @BTIF_TRACE_WARNING(i8*, i8*) #1

declare dso_local i32 @btc_config_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
