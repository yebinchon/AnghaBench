; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_mod_bind.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_mod_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { i64* }

@.str = private unnamed_addr constant [24 x i8] c"model %p key_idx 0x%03x\00", align 1
@STATUS_INVALID_APPKEY = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@BLE_MESH_KEY_UNUSED = common dso_local global i64 0, align 8
@CONFIG_BLE_MESH_SETTINGS = common dso_local global i32 0, align 4
@STATUS_INSUFF_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_mesh_model*, i64)* @mod_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mod_bind(%struct.bt_mesh_model* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bt_mesh_model*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.bt_mesh_model* %7, i64 %8)
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @app_key_is_valid(i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @STATUS_INVALID_APPKEY, align 4
  store i32 %14, i32* %3, align 4
  br label %79

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %36, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %19 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = call i32 @ARRAY_SIZE(i64* %20)
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %16
  %24 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %25 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %34, i32* %3, align 4
  br label %79

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %16

39:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %74, %39
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %43 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = call i32 @ARRAY_SIZE(i64* %44)
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %40
  %48 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %49 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BLE_MESH_KEY_UNUSED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %47
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %60 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 %58, i64* %64, align 8
  %65 = load i32, i32* @CONFIG_BLE_MESH_SETTINGS, align 4
  %66 = call i64 @IS_ENABLED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %70 = call i32 @bt_mesh_store_mod_bind(%struct.bt_mesh_model* %69)
  br label %71

71:                                               ; preds = %68, %57
  %72 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %72, i32* %3, align 4
  br label %79

73:                                               ; preds = %47
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %40

77:                                               ; preds = %40
  %78 = load i32, i32* @STATUS_INSUFF_RESOURCES, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %71, %33, %13
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @BT_DBG(i8*, %struct.bt_mesh_model*, i64) #1

declare dso_local i32 @app_key_is_valid(i64) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @bt_mesh_store_mod_bind(%struct.bt_mesh_model*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
