; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_server_common.c_bt_mesh_get_default_trans_time.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_server_common.c_bt_mesh_get_default_trans_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { i64 }
%struct.bt_mesh_elem = type { i64 }
%struct.bt_mesh_gen_def_trans_time_srv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BLE_MESH_MODEL_ID_GEN_DEF_TRANS_TIME_SRV = common dso_local global i32 0, align 4
@INSTANTANEOUS_TRANS_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_get_default_trans_time(%struct.bt_mesh_model* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bt_mesh_model*, align 8
  %4 = alloca %struct.bt_mesh_elem*, align 8
  %5 = alloca %struct.bt_mesh_gen_def_trans_time_srv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bt_mesh_model*, align 8
  %8 = alloca i64, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %3, align 8
  %9 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %3, align 8
  %10 = call %struct.bt_mesh_elem* @bt_mesh_model_elem(%struct.bt_mesh_model* %9)
  store %struct.bt_mesh_elem* %10, %struct.bt_mesh_elem** %4, align 8
  store %struct.bt_mesh_gen_def_trans_time_srv* null, %struct.bt_mesh_gen_def_trans_time_srv** %5, align 8
  %11 = call i64 (...) @bt_mesh_primary_addr()
  store i64 %11, i64* %6, align 8
  store %struct.bt_mesh_model* null, %struct.bt_mesh_model** %7, align 8
  %12 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %4, align 8
  %13 = getelementptr inbounds %struct.bt_mesh_elem, %struct.bt_mesh_elem* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %45, %1
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = load i64, i64* %8, align 8
  %21 = call %struct.bt_mesh_elem* @bt_mesh_elem_find(i64 %20)
  store %struct.bt_mesh_elem* %21, %struct.bt_mesh_elem** %4, align 8
  %22 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %4, align 8
  %23 = icmp ne %struct.bt_mesh_elem* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %4, align 8
  %26 = load i32, i32* @BLE_MESH_MODEL_ID_GEN_DEF_TRANS_TIME_SRV, align 4
  %27 = call %struct.bt_mesh_model* @bt_mesh_model_find(%struct.bt_mesh_elem* %25, i32 %26)
  store %struct.bt_mesh_model* %27, %struct.bt_mesh_model** %7, align 8
  %28 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %7, align 8
  %29 = icmp ne %struct.bt_mesh_model* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %7, align 8
  %32 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.bt_mesh_gen_def_trans_time_srv*
  store %struct.bt_mesh_gen_def_trans_time_srv* %34, %struct.bt_mesh_gen_def_trans_time_srv** %5, align 8
  %35 = load %struct.bt_mesh_gen_def_trans_time_srv*, %struct.bt_mesh_gen_def_trans_time_srv** %5, align 8
  %36 = icmp ne %struct.bt_mesh_gen_def_trans_time_srv* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.bt_mesh_gen_def_trans_time_srv*, %struct.bt_mesh_gen_def_trans_time_srv** %5, align 8
  %39 = getelementptr inbounds %struct.bt_mesh_gen_def_trans_time_srv, %struct.bt_mesh_gen_def_trans_time_srv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %2, align 4
  br label %50

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %24
  br label %44

44:                                               ; preds = %43, %19
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %8, align 8
  br label %15

48:                                               ; preds = %15
  %49 = load i32, i32* @INSTANTANEOUS_TRANS_TIME, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %37
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.bt_mesh_elem* @bt_mesh_model_elem(%struct.bt_mesh_model*) #1

declare dso_local i64 @bt_mesh_primary_addr(...) #1

declare dso_local %struct.bt_mesh_elem* @bt_mesh_elem_find(i64) #1

declare dso_local %struct.bt_mesh_model* @bt_mesh_model_find(%struct.bt_mesh_elem*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
