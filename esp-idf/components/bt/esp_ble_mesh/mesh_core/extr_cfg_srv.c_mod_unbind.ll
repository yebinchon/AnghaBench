; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_mod_unbind.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_mod_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"model %p key_idx 0x%03x store %u\00", align 1
@STATUS_INVALID_APPKEY = common dso_local global i32 0, align 4
@BLE_MESH_KEY_UNUSED = common dso_local global i64 0, align 8
@CONFIG_BLE_MESH_SETTINGS = common dso_local global i32 0, align 4
@BLE_MESH_ADDR_UNASSIGNED = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_mesh_model*, i64, i32)* @mod_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mod_unbind(%struct.bt_mesh_model* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bt_mesh_model*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.bt_mesh_model* %9, i64 %10, i32 %11)
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @app_key_is_valid(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @STATUS_INVALID_APPKEY, align 4
  store i32 %17, i32* %4, align 4
  br label %78

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %73, %18
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %5, align 8
  %22 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = call i32 @ARRAY_SIZE(i64* %23)
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %76

26:                                               ; preds = %19
  %27 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %5, align 8
  %28 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %73

37:                                               ; preds = %26
  %38 = load i64, i64* @BLE_MESH_KEY_UNUSED, align 8
  %39 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %5, align 8
  %40 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  store i64 %38, i64* %44, align 8
  %45 = load i32, i32* @CONFIG_BLE_MESH_SETTINGS, align 4
  %46 = call i64 @IS_ENABLED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %5, align 8
  %53 = call i32 @bt_mesh_store_mod_bind(%struct.bt_mesh_model* %52)
  br label %54

54:                                               ; preds = %51, %48, %37
  %55 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %5, align 8
  %56 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = icmp ne %struct.TYPE_2__* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %5, align 8
  %61 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %5, align 8
  %69 = load i32, i32* @BLE_MESH_ADDR_UNASSIGNED, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @_mod_pub_set(%struct.bt_mesh_model* %68, i32 %69, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %70)
  br label %72

72:                                               ; preds = %67, %59, %54
  br label %73

73:                                               ; preds = %72, %36
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %19

76:                                               ; preds = %19
  %77 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %16
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @BT_DBG(i8*, %struct.bt_mesh_model*, i64, i32) #1

declare dso_local i32 @app_key_is_valid(i64) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @bt_mesh_store_mod_bind(%struct.bt_mesh_model*) #1

declare dso_local i32 @_mod_pub_set(%struct.bt_mesh_model*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
