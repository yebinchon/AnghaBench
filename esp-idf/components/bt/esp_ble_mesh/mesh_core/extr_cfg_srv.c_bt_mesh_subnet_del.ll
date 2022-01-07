; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_bt_mesh_subnet_del.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_bt_mesh_subnet_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.bt_mesh_app_key* }
%struct.bt_mesh_app_key = type { i64 }
%struct.bt_mesh_subnet = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"NetIdx 0x%03x store %u\00", align 1
@conf = common dso_local global %struct.TYPE_6__* null, align 8
@CONFIG_BLE_MESH_SETTINGS = common dso_local global i32 0, align 4
@bt_mesh = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CONFIG_BLE_MESH_FRIEND = common dso_local global i32 0, align 4
@BLE_MESH_KEY_UNUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bt_mesh_subnet_del(%struct.bt_mesh_subnet* %0, i32 %1) #0 {
  %3 = alloca %struct.bt_mesh_subnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bt_mesh_app_key*, align 8
  store %struct.bt_mesh_subnet* %0, %struct.bt_mesh_subnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %3, align 8
  %8 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %9, i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @conf, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @conf, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %3, align 8
  %20 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %14
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @conf, align 8
  %25 = call i32 @hb_pub_disable(%struct.TYPE_6__* %24)
  %26 = load i32, i32* @CONFIG_BLE_MESH_SETTINGS, align 4
  %27 = call i64 @IS_ENABLED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (...) @bt_mesh_store_hb_pub()
  br label %34

34:                                               ; preds = %32, %29, %23
  br label %35

35:                                               ; preds = %34, %14, %2
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %58, %35
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bt_mesh, i32 0, i32 0), align 8
  %39 = call i32 @ARRAY_SIZE(%struct.bt_mesh_app_key* %38)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bt_mesh, i32 0, i32 0), align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %42, i64 %44
  store %struct.bt_mesh_app_key* %45, %struct.bt_mesh_app_key** %6, align 8
  %46 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %6, align 8
  %47 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %3, align 8
  %50 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %6, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @bt_mesh_app_key_del(%struct.bt_mesh_app_key* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %41
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %36

61:                                               ; preds = %36
  %62 = load i32, i32* @CONFIG_BLE_MESH_FRIEND, align 4
  %63 = call i64 @IS_ENABLED(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %3, align 8
  %67 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @bt_mesh_friend_clear_net_idx(i64 %68)
  br label %70

70:                                               ; preds = %65, %61
  %71 = load i32, i32* @CONFIG_BLE_MESH_SETTINGS, align 4
  %72 = call i64 @IS_ENABLED(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %3, align 8
  %79 = call i32 @bt_mesh_clear_subnet(%struct.bt_mesh_subnet* %78)
  br label %80

80:                                               ; preds = %77, %74, %70
  %81 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %3, align 8
  %82 = call i32 @memset(%struct.bt_mesh_subnet* %81, i32 0, i32 8)
  %83 = load i64, i64* @BLE_MESH_KEY_UNUSED, align 8
  %84 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %3, align 8
  %85 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i64, i32) #1

declare dso_local i32 @hb_pub_disable(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @bt_mesh_store_hb_pub(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.bt_mesh_app_key*) #1

declare dso_local i32 @bt_mesh_app_key_del(%struct.bt_mesh_app_key*, i32) #1

declare dso_local i32 @bt_mesh_friend_clear_net_idx(i64) #1

declare dso_local i32 @bt_mesh_clear_subnet(%struct.bt_mesh_subnet*) #1

declare dso_local i32 @memset(%struct.bt_mesh_subnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
