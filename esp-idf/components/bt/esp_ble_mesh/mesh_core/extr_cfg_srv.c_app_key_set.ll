; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_app_key_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_app_key_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_app_keys = type { i32, i32 }
%struct.bt_mesh_app_key = type { i64, i32, i64, %struct.bt_mesh_app_keys* }
%struct.bt_mesh_subnet = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"net_idx 0x%04x app_idx %04x update %u val %s\00", align 1
@STATUS_INVALID_NETKEY = common dso_local global i32 0, align 4
@STATUS_INVALID_APPKEY = common dso_local global i32 0, align 4
@STATUS_INVALID_BINDING = common dso_local global i32 0, align 4
@BLE_MESH_KR_PHASE_1 = common dso_local global i64 0, align 8
@STATUS_CANNOT_UPDATE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_IDX_ALREADY_STORED = common dso_local global i32 0, align 4
@STATUS_INSUFF_RESOURCES = common dso_local global i32 0, align 4
@STATUS_STORAGE_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"app_idx 0x%04x AID 0x%02x\00", align 1
@CONFIG_BLE_MESH_SETTINGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Storing AppKey persistently\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*, i32)* @app_key_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @app_key_set(i64 %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bt_mesh_app_keys*, align 8
  %11 = alloca %struct.bt_mesh_app_key*, align 8
  %12 = alloca %struct.bt_mesh_subnet*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @bt_hex(i32* %16, i32 16)
  %18 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %14, i32 %15, i32 %17)
  %19 = load i64, i64* %6, align 8
  %20 = call %struct.bt_mesh_subnet* @bt_mesh_subnet_get(i64 %19)
  store %struct.bt_mesh_subnet* %20, %struct.bt_mesh_subnet** %12, align 8
  %21 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %12, align 8
  %22 = icmp ne %struct.bt_mesh_subnet* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @STATUS_INVALID_NETKEY, align 4
  store i32 %24, i32* %5, align 4
  br label %157

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = call %struct.bt_mesh_app_key* @bt_mesh_app_key_find(i64 %26)
  store %struct.bt_mesh_app_key* %27, %struct.bt_mesh_app_key** %11, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %74

30:                                               ; preds = %25
  %31 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %11, align 8
  %32 = icmp ne %struct.bt_mesh_app_key* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @STATUS_INVALID_APPKEY, align 4
  store i32 %34, i32* %5, align 4
  br label %157

35:                                               ; preds = %30
  %36 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %11, align 8
  %37 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @STATUS_INVALID_BINDING, align 4
  store i32 %42, i32* %5, align 4
  br label %157

43:                                               ; preds = %35
  %44 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %11, align 8
  %45 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %44, i32 0, i32 3
  %46 = load %struct.bt_mesh_app_keys*, %struct.bt_mesh_app_keys** %45, align 8
  %47 = getelementptr inbounds %struct.bt_mesh_app_keys, %struct.bt_mesh_app_keys* %46, i64 1
  store %struct.bt_mesh_app_keys* %47, %struct.bt_mesh_app_keys** %10, align 8
  %48 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %12, align 8
  %49 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BLE_MESH_KR_PHASE_1, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @STATUS_CANNOT_UPDATE, align 4
  store i32 %54, i32* %5, align 4
  br label %157

55:                                               ; preds = %43
  %56 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %11, align 8
  %57 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.bt_mesh_app_keys*, %struct.bt_mesh_app_keys** %10, align 8
  %62 = getelementptr inbounds %struct.bt_mesh_app_keys, %struct.bt_mesh_app_keys* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = call i64 @memcmp(i32 %63, i32* %64, i32 16)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @STATUS_CANNOT_UPDATE, align 4
  store i32 %68, i32* %5, align 4
  br label %157

69:                                               ; preds = %60
  %70 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %70, i32* %5, align 4
  br label %157

71:                                               ; preds = %55
  %72 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %11, align 8
  %73 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %72, i32 0, i32 1
  store i32 1, i32* %73, align 8
  br label %117

74:                                               ; preds = %25
  %75 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %11, align 8
  %76 = icmp ne %struct.bt_mesh_app_key* %75, null
  br i1 %76, label %77, label %105

77:                                               ; preds = %74
  %78 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %11, align 8
  %79 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %77
  %84 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %11, align 8
  %85 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %84, i32 0, i32 3
  %86 = load %struct.bt_mesh_app_keys*, %struct.bt_mesh_app_keys** %85, align 8
  %87 = getelementptr inbounds %struct.bt_mesh_app_keys, %struct.bt_mesh_app_keys* %86, i64 0
  %88 = getelementptr inbounds %struct.bt_mesh_app_keys, %struct.bt_mesh_app_keys* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = call i64 @memcmp(i32 %89, i32* %90, i32 16)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %83
  %94 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %94, i32* %5, align 4
  br label %157

95:                                               ; preds = %83, %77
  %96 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %11, align 8
  %97 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @STATUS_IDX_ALREADY_STORED, align 4
  store i32 %102, i32* %5, align 4
  br label %157

103:                                              ; preds = %95
  %104 = load i32, i32* @STATUS_INVALID_NETKEY, align 4
  store i32 %104, i32* %5, align 4
  br label %157

105:                                              ; preds = %74
  %106 = load i64, i64* %7, align 8
  %107 = call %struct.bt_mesh_app_key* @bt_mesh_app_key_alloc(i64 %106)
  store %struct.bt_mesh_app_key* %107, %struct.bt_mesh_app_key** %11, align 8
  %108 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %11, align 8
  %109 = icmp ne %struct.bt_mesh_app_key* %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* @STATUS_INSUFF_RESOURCES, align 4
  store i32 %111, i32* %5, align 4
  br label %157

112:                                              ; preds = %105
  %113 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %11, align 8
  %114 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %113, i32 0, i32 3
  %115 = load %struct.bt_mesh_app_keys*, %struct.bt_mesh_app_keys** %114, align 8
  %116 = getelementptr inbounds %struct.bt_mesh_app_keys, %struct.bt_mesh_app_keys* %115, i64 0
  store %struct.bt_mesh_app_keys* %116, %struct.bt_mesh_app_keys** %10, align 8
  br label %117

117:                                              ; preds = %112, %71
  %118 = load i32*, i32** %8, align 8
  %119 = load %struct.bt_mesh_app_keys*, %struct.bt_mesh_app_keys** %10, align 8
  %120 = getelementptr inbounds %struct.bt_mesh_app_keys, %struct.bt_mesh_app_keys* %119, i32 0, i32 1
  %121 = call i64 @bt_mesh_app_id(i32* %118, i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %117
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %11, align 8
  %128 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %127, i32 0, i32 1
  store i32 0, i32* %128, align 8
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32, i32* @STATUS_STORAGE_FAIL, align 4
  store i32 %130, i32* %5, align 4
  br label %157

131:                                              ; preds = %117
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.bt_mesh_app_keys*, %struct.bt_mesh_app_keys** %10, align 8
  %134 = getelementptr inbounds %struct.bt_mesh_app_keys, %struct.bt_mesh_app_keys* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %132, i32 %135)
  %137 = load i64, i64* %6, align 8
  %138 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %11, align 8
  %139 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load i64, i64* %7, align 8
  %141 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %11, align 8
  %142 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %141, i32 0, i32 2
  store i64 %140, i64* %142, align 8
  %143 = load %struct.bt_mesh_app_keys*, %struct.bt_mesh_app_keys** %10, align 8
  %144 = getelementptr inbounds %struct.bt_mesh_app_keys, %struct.bt_mesh_app_keys* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @memcpy(i32 %145, i32* %146, i32 16)
  %148 = load i32, i32* @CONFIG_BLE_MESH_SETTINGS, align 4
  %149 = call i64 @IS_ENABLED(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %131
  %152 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %153 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %11, align 8
  %154 = call i32 @bt_mesh_store_app_key(%struct.bt_mesh_app_key* %153)
  br label %155

155:                                              ; preds = %151, %131
  %156 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %155, %129, %110, %103, %101, %93, %69, %67, %53, %41, %33, %23
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @bt_hex(i32*, i32) #1

declare dso_local %struct.bt_mesh_subnet* @bt_mesh_subnet_get(i64) #1

declare dso_local %struct.bt_mesh_app_key* @bt_mesh_app_key_find(i64) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local %struct.bt_mesh_app_key* @bt_mesh_app_key_alloc(i64) #1

declare dso_local i64 @bt_mesh_app_id(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @bt_mesh_store_app_key(%struct.bt_mesh_app_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
