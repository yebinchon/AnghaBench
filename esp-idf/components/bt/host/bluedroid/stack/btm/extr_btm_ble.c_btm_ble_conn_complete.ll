; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_btm_ble_conn_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_btm_ble_conn_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"status = %d, handle = %d, role = %d, bda_type = %d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@temp_enhanced = common dso_local global i8* null, align 8
@btm_ble_resolve_random_addr_on_conn_cmpl = common dso_local global i32 0, align 4
@HCI_ENCRYPT_MODE_DISABLED = common dso_local global i32 0, align 4
@BLE_ADDR_TYPE_ID_BIT = common dso_local global i64 0, align 8
@BLE_ADDR_RANDOM = common dso_local global i32 0, align 4
@HCI_ROLE_UNKNOWN = common dso_local global i64 0, align 8
@HCI_ERR_DIRECTED_ADVERTISING_TIMEOUT = common dso_local global i64 0, align 8
@BLE_CONN_IDLE = common dso_local global i32 0, align 4
@HCI_SUCCESS = common dso_local global i64 0, align 8
@BTM_BLE_ADV_DISABLE = common dso_local global i32 0, align 4
@BTM_BLE_RL_ADV = common dso_local global i32 0, align 4
@BTM_BLE_RL_INIT = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_conn_complete(i64* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %21 = load i64*, i64** %4, align 8
  store i64* %21, i64** %7, align 8
  %22 = load i8*, i8** @FALSE, align 8
  store i8* %22, i8** %19, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @UNUSED(i32 %23)
  %25 = load i64, i64* %10, align 8
  %26 = load i64*, i64** %4, align 8
  %27 = call i32 @STREAM_TO_UINT8(i64 %25, i64* %26)
  %28 = load i32, i32* %12, align 4
  %29 = load i64*, i64** %4, align 8
  %30 = call i32 @STREAM_TO_UINT16(i32 %28, i64* %29)
  %31 = load i64, i64* %9, align 8
  %32 = load i64*, i64** %4, align 8
  %33 = call i32 @STREAM_TO_UINT8(i64 %31, i64* %32)
  %34 = load i64, i64* %11, align 8
  %35 = load i64*, i64** %4, align 8
  %36 = call i32 @STREAM_TO_UINT8(i64 %34, i64* %35)
  %37 = load i32, i32* %13, align 4
  %38 = load i64*, i64** %4, align 8
  %39 = call i32 @STREAM_TO_BDADDR(i32 %37, i64* %38)
  %40 = load i64, i64* %10, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %40, i32 %41, i64 %42, i64 %43)
  %45 = load i64, i64* %10, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %120

47:                                               ; preds = %3
  %48 = load i8*, i8** %6, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* %14, align 4
  %52 = load i64*, i64** %4, align 8
  %53 = call i32 @STREAM_TO_BDADDR(i32 %51, i64* %52)
  %54 = load i32, i32* %15, align 4
  %55 = load i64*, i64** %4, align 8
  %56 = call i32 @STREAM_TO_BDADDR(i32 %54, i64* %55)
  br label %57

57:                                               ; preds = %50, %47
  %58 = load i64, i64* %11, align 8
  store i64 %58, i64* %8, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @TRUE, align 4
  %61 = call i8* @btm_identity_addr_to_random_pseudo(i32 %59, i64* %11, i32 %60)
  store i8* %61, i8** %19, align 8
  %62 = load i8*, i8** %19, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %75, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %13, align 4
  %66 = call i64 @BTM_BLE_IS_RESOLVE_BDA(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i8*, i8** %6, align 8
  store i8* %69, i8** @temp_enhanced, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @btm_ble_resolve_random_addr_on_conn_cmpl, align 4
  %72 = load i64*, i64** %7, align 8
  %73 = call i32 @btm_ble_resolve_random_addr(i32 %70, i32 %71, i64* %72)
  %74 = load i8*, i8** @FALSE, align 8
  store i8* %74, i8** @temp_enhanced, align 8
  br label %119

75:                                               ; preds = %64, %57
  %76 = load i32, i32* %16, align 4
  %77 = load i64*, i64** %4, align 8
  %78 = call i32 @STREAM_TO_UINT16(i32 %76, i64* %77)
  %79 = load i32, i32* %17, align 4
  %80 = load i64*, i64** %4, align 8
  %81 = call i32 @STREAM_TO_UINT16(i32 %79, i64* %80)
  %82 = load i32, i32* %18, align 4
  %83 = load i64*, i64** %4, align 8
  %84 = call i32 @STREAM_TO_UINT16(i32 %82, i64* %83)
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @HCID_GET_HANDLE(i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @HCI_ENCRYPT_MODE_DISABLED, align 4
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i8*, i8** %19, align 8
  %93 = call i32 @btm_ble_connected(i32 %87, i32 %88, i32 %89, i64 %90, i64 %91, i8* %92)
  %94 = load i32, i32* %12, align 4
  %95 = load i64, i64* %9, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load i64, i64* %11, align 8
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %18, align 4
  %101 = call i32 @l2cble_conn_comp(i32 %94, i64 %95, i32 %96, i64 %97, i32 %98, i32 %99, i32 %100)
  %102 = load i8*, i8** %6, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %118

104:                                              ; preds = %75
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @btm_ble_refresh_local_resolvable_private_addr(i32 %105, i32 %106)
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* @BLE_ADDR_TYPE_ID_BIT, align 8
  %110 = and i64 %108, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* @BLE_ADDR_RANDOM, align 4
  %116 = call i32 @btm_ble_refresh_peer_resolvable_private_addr(i32 %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %112, %104
  br label %118

118:                                              ; preds = %117, %75
  br label %119

119:                                              ; preds = %118, %68
  br label %130

120:                                              ; preds = %3
  %121 = load i64, i64* @HCI_ROLE_UNKNOWN, align 8
  store i64 %121, i64* %9, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* @HCI_ERR_DIRECTED_ADVERTISING_TIMEOUT, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* @BLE_CONN_IDLE, align 4
  %127 = call i32 @btm_ble_set_conn_st(i32 %126)
  br label %129

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128, %125
  br label %130

130:                                              ; preds = %129, %119
  %131 = load i64, i64* %9, align 8
  %132 = load i32, i32* %13, align 4
  %133 = load i64, i64* %10, align 8
  %134 = call i8* @btm_ble_update_mode_operation(i64 %131, i32 %132, i64 %133)
  store i8* %134, i8** %20, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load i64, i64* @HCI_SUCCESS, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %130
  %139 = load i8*, i8** %20, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %148, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %12, align 4
  %143 = load i64, i64* %10, align 8
  %144 = call i32 @l2c_link_hci_disc_comp(i32 %142, i64 %143)
  %145 = load i32, i32* %12, align 4
  %146 = load i64, i64* %10, align 8
  %147 = call i32 @btm_sec_disconnected(i32 %145, i64 %146)
  br label %148

148:                                              ; preds = %141, %138, %130
  ret void
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @STREAM_TO_UINT8(i64, i64*) #1

declare dso_local i32 @STREAM_TO_UINT16(i32, i64*) #1

declare dso_local i32 @STREAM_TO_BDADDR(i32, i64*) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i64, i32, i64, i64) #1

declare dso_local i8* @btm_identity_addr_to_random_pseudo(i32, i64*, i32) #1

declare dso_local i64 @BTM_BLE_IS_RESOLVE_BDA(i32) #1

declare dso_local i32 @btm_ble_resolve_random_addr(i32, i32, i64*) #1

declare dso_local i32 @HCID_GET_HANDLE(i32) #1

declare dso_local i32 @btm_ble_connected(i32, i32, i32, i64, i64, i8*) #1

declare dso_local i32 @l2cble_conn_comp(i32, i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @btm_ble_refresh_local_resolvable_private_addr(i32, i32) #1

declare dso_local i32 @btm_ble_refresh_peer_resolvable_private_addr(i32, i32, i32) #1

declare dso_local i32 @btm_ble_set_conn_st(i32) #1

declare dso_local i8* @btm_ble_update_mode_operation(i64, i32, i64) #1

declare dso_local i32 @l2c_link_hci_disc_comp(i32, i64) #1

declare dso_local i32 @btm_sec_disconnected(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
