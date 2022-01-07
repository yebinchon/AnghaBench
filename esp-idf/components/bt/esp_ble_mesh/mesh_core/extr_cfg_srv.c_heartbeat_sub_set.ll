; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_heartbeat_sub_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_heartbeat_sub_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { %struct.bt_mesh_cfg_srv* }
%struct.bt_mesh_cfg_srv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i64 }
%struct.bt_mesh_msg_ctx = type { i32 }
%struct.net_buf_simple = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"src 0x%04x\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"sub_src 0x%04x sub_dst 0x%04x period 0x%02x\00", align 1
@BLE_MESH_ADDR_UNASSIGNED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Prohibited source address\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Prohibited destination address\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Prohibited subscription period 0x%02x\00", align 1
@BLE_MESH_TTL_MAX = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"period_ms %u\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*, %struct.net_buf_simple*)* @heartbeat_sub_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heartbeat_sub_set(%struct.bt_mesh_model* %0, %struct.bt_mesh_msg_ctx* %1, %struct.net_buf_simple* %2) #0 {
  %4 = alloca %struct.bt_mesh_model*, align 8
  %5 = alloca %struct.bt_mesh_msg_ctx*, align 8
  %6 = alloca %struct.net_buf_simple*, align 8
  %7 = alloca %struct.bt_mesh_cfg_srv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %4, align 8
  store %struct.bt_mesh_msg_ctx* %1, %struct.bt_mesh_msg_ctx** %5, align 8
  store %struct.net_buf_simple* %2, %struct.net_buf_simple** %6, align 8
  %12 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %13 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %12, i32 0, i32 0
  %14 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %13, align 8
  store %struct.bt_mesh_cfg_srv* %14, %struct.bt_mesh_cfg_srv** %7, align 8
  %15 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.bt_mesh_msg_ctx, %struct.bt_mesh_msg_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %20 = call i64 @net_buf_simple_pull_le16(%struct.net_buf_simple* %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %22 = call i64 @net_buf_simple_pull_le16(%struct.net_buf_simple* %21)
  store i64 %22, i64* %9, align 8
  %23 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %24 = call i32 @net_buf_simple_pull_u8(%struct.net_buf_simple* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i64, i64* %8, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %26, i64 %27, i32 %28)
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @BLE_MESH_ADDR_UNASSIGNED, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @BLE_MESH_ADDR_IS_UNICAST(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = call i32 (i8*, ...) @BT_WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %159

39:                                               ; preds = %33, %3
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @BLE_MESH_ADDR_IS_VIRTUAL(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @BLE_MESH_ADDR_IS_RFU(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @BLE_MESH_ADDR_IS_UNICAST(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i64, i64* %9, align 8
  %53 = call i64 (...) @bt_mesh_primary_addr()
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %43, %39
  %56 = call i32 (i8*, ...) @BT_WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %159

57:                                               ; preds = %51, %47
  %58 = load i32, i32* %10, align 4
  %59 = icmp sgt i32 %58, 17
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (i8*, ...) @BT_WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  br label %159

63:                                               ; preds = %57
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @BLE_MESH_ADDR_UNASSIGNED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @BLE_MESH_ADDR_UNASSIGNED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %71, %67, %63
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @BLE_MESH_ADDR_UNASSIGNED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @BLE_MESH_ADDR_UNASSIGNED, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %78, %74
  %83 = load i64, i64* @BLE_MESH_ADDR_UNASSIGNED, align 8
  %84 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %85 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 5
  store i64 %83, i64* %86, align 8
  %87 = load i64, i64* @BLE_MESH_ADDR_UNASSIGNED, align 8
  %88 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %89 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  store i64 %87, i64* %90, align 8
  %91 = load i8*, i8** @BLE_MESH_TTL_MAX, align 8
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %94 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %97 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i32 0, i32* %98, align 4
  %99 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %100 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  store i32 0, i32* %101, align 8
  br label %102

102:                                              ; preds = %82, %78
  store i32 0, i32* %11, align 4
  br label %126

103:                                              ; preds = %71
  %104 = load i64, i64* %8, align 8
  %105 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %106 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 5
  store i64 %104, i64* %107, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %110 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  store i64 %108, i64* %111, align 8
  %112 = load i8*, i8** @BLE_MESH_TTL_MAX, align 8
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %115 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %118 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  store i32 0, i32* %119, align 4
  %120 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %121 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  store i32 0, i32* %122, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @hb_pwr2(i32 %123, i32 1)
  %125 = mul i32 %124, 1000
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %103, %102
  %127 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %128 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @bt_mesh_set_hb_sub_dst(i64 %130)
  %132 = load i32, i32* %11, align 4
  %133 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %126
  %137 = call i64 (...) @k_uptime_get()
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %137, %139
  %141 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %142 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 3
  store i64 %140, i64* %143, align 8
  br label %148

144:                                              ; preds = %126
  %145 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %146 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 3
  store i64 0, i64* %147, align 8
  br label %148

148:                                              ; preds = %144, %136
  %149 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %150 = load %struct.bt_mesh_msg_ctx*, %struct.bt_mesh_msg_ctx** %5, align 8
  %151 = load i32, i32* @STATUS_SUCCESS, align 4
  %152 = call i32 @hb_sub_send_status(%struct.bt_mesh_model* %149, %struct.bt_mesh_msg_ctx* %150, i32 %151)
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %148
  %156 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %7, align 8
  %157 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  store i32 0, i32* %158, align 8
  br label %159

159:                                              ; preds = %37, %55, %60, %155, %148
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i64 @net_buf_simple_pull_le16(%struct.net_buf_simple*) #1

declare dso_local i32 @net_buf_simple_pull_u8(%struct.net_buf_simple*) #1

declare dso_local i64 @BLE_MESH_ADDR_IS_UNICAST(i64) #1

declare dso_local i32 @BT_WARN(i8*, ...) #1

declare dso_local i64 @BLE_MESH_ADDR_IS_VIRTUAL(i64) #1

declare dso_local i64 @BLE_MESH_ADDR_IS_RFU(i64) #1

declare dso_local i64 @bt_mesh_primary_addr(...) #1

declare dso_local i32 @hb_pwr2(i32, i32) #1

declare dso_local i32 @bt_mesh_set_hb_sub_dst(i64) #1

declare dso_local i64 @k_uptime_get(...) #1

declare dso_local i32 @hb_sub_send_status(%struct.bt_mesh_model*, %struct.bt_mesh_msg_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
