; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_sensor_server.c_find_sensor_setting.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_sensor_server.c_find_sensor_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sensor_setting = type { i64 }
%struct.bt_mesh_model = type { %struct.bt_mesh_sensor_setup_srv* }
%struct.bt_mesh_sensor_setup_srv = type { i64, %struct.bt_mesh_sensor_state* }
%struct.bt_mesh_sensor_state = type { i64, i64, %struct.sensor_setting* }

@INVALID_SENSOR_PROPERTY_ID = common dso_local global i64 0, align 8
@INVALID_SENSOR_SETTING_PROPERTY_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sensor_setting* (%struct.bt_mesh_model*, i64, i64)* @find_sensor_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sensor_setting* @find_sensor_setting(%struct.bt_mesh_model* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.sensor_setting*, align 8
  %5 = alloca %struct.bt_mesh_model*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bt_mesh_sensor_setup_srv*, align 8
  %9 = alloca %struct.bt_mesh_sensor_state*, align 8
  %10 = alloca %struct.sensor_setting*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %5, align 8
  %14 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %13, i32 0, i32 0
  %15 = load %struct.bt_mesh_sensor_setup_srv*, %struct.bt_mesh_sensor_setup_srv** %14, align 8
  store %struct.bt_mesh_sensor_setup_srv* %15, %struct.bt_mesh_sensor_setup_srv** %8, align 8
  store %struct.bt_mesh_sensor_state* null, %struct.bt_mesh_sensor_state** %9, align 8
  store %struct.sensor_setting* null, %struct.sensor_setting** %10, align 8
  store i64 0, i64* %11, align 8
  br label %16

16:                                               ; preds = %71, %3
  %17 = load i64, i64* %11, align 8
  %18 = load %struct.bt_mesh_sensor_setup_srv*, %struct.bt_mesh_sensor_setup_srv** %8, align 8
  %19 = getelementptr inbounds %struct.bt_mesh_sensor_setup_srv, %struct.bt_mesh_sensor_setup_srv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %74

22:                                               ; preds = %16
  %23 = load %struct.bt_mesh_sensor_setup_srv*, %struct.bt_mesh_sensor_setup_srv** %8, align 8
  %24 = getelementptr inbounds %struct.bt_mesh_sensor_setup_srv, %struct.bt_mesh_sensor_setup_srv* %23, i32 0, i32 1
  %25 = load %struct.bt_mesh_sensor_state*, %struct.bt_mesh_sensor_state** %24, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds %struct.bt_mesh_sensor_state, %struct.bt_mesh_sensor_state* %25, i64 %26
  store %struct.bt_mesh_sensor_state* %27, %struct.bt_mesh_sensor_state** %9, align 8
  %28 = load %struct.bt_mesh_sensor_state*, %struct.bt_mesh_sensor_state** %9, align 8
  %29 = getelementptr inbounds %struct.bt_mesh_sensor_state, %struct.bt_mesh_sensor_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @INVALID_SENSOR_PROPERTY_ID, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %22
  %34 = load %struct.bt_mesh_sensor_state*, %struct.bt_mesh_sensor_state** %9, align 8
  %35 = getelementptr inbounds %struct.bt_mesh_sensor_state, %struct.bt_mesh_sensor_state* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %33
  store i64 0, i64* %12, align 8
  br label %40

40:                                               ; preds = %66, %39
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.bt_mesh_sensor_state*, %struct.bt_mesh_sensor_state** %9, align 8
  %43 = getelementptr inbounds %struct.bt_mesh_sensor_state, %struct.bt_mesh_sensor_state* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %40
  %47 = load %struct.bt_mesh_sensor_state*, %struct.bt_mesh_sensor_state** %9, align 8
  %48 = getelementptr inbounds %struct.bt_mesh_sensor_state, %struct.bt_mesh_sensor_state* %47, i32 0, i32 2
  %49 = load %struct.sensor_setting*, %struct.sensor_setting** %48, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds %struct.sensor_setting, %struct.sensor_setting* %49, i64 %50
  store %struct.sensor_setting* %51, %struct.sensor_setting** %10, align 8
  %52 = load %struct.sensor_setting*, %struct.sensor_setting** %10, align 8
  %53 = getelementptr inbounds %struct.sensor_setting, %struct.sensor_setting* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @INVALID_SENSOR_SETTING_PROPERTY_ID, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = load %struct.sensor_setting*, %struct.sensor_setting** %10, align 8
  %59 = getelementptr inbounds %struct.sensor_setting, %struct.sensor_setting* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load %struct.sensor_setting*, %struct.sensor_setting** %10, align 8
  store %struct.sensor_setting* %64, %struct.sensor_setting** %4, align 8
  br label %75

65:                                               ; preds = %57, %46
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %12, align 8
  br label %40

69:                                               ; preds = %40
  br label %70

70:                                               ; preds = %69, %33, %22
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %11, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %11, align 8
  br label %16

74:                                               ; preds = %16
  store %struct.sensor_setting* null, %struct.sensor_setting** %4, align 8
  br label %75

75:                                               ; preds = %74, %63
  %76 = load %struct.sensor_setting*, %struct.sensor_setting** %4, align 8
  ret %struct.sensor_setting* %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
