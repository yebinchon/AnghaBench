; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_generic_server.c_gen_get_user_property.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_generic_server.c_gen_get_user_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_generic_property = type { i64 }
%struct.bt_mesh_model = type { %struct.bt_mesh_gen_user_prop_srv* }
%struct.bt_mesh_gen_user_prop_srv = type { i64, %struct.bt_mesh_generic_property* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bt_mesh_generic_property* @gen_get_user_property(%struct.bt_mesh_model* %0, i64 %1) #0 {
  %3 = alloca %struct.bt_mesh_generic_property*, align 8
  %4 = alloca %struct.bt_mesh_model*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bt_mesh_gen_user_prop_srv*, align 8
  %7 = alloca i64, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %9 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %8, i32 0, i32 0
  %10 = load %struct.bt_mesh_gen_user_prop_srv*, %struct.bt_mesh_gen_user_prop_srv** %9, align 8
  store %struct.bt_mesh_gen_user_prop_srv* %10, %struct.bt_mesh_gen_user_prop_srv** %6, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %34, %2
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.bt_mesh_gen_user_prop_srv*, %struct.bt_mesh_gen_user_prop_srv** %6, align 8
  %14 = getelementptr inbounds %struct.bt_mesh_gen_user_prop_srv, %struct.bt_mesh_gen_user_prop_srv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %11
  %18 = load %struct.bt_mesh_gen_user_prop_srv*, %struct.bt_mesh_gen_user_prop_srv** %6, align 8
  %19 = getelementptr inbounds %struct.bt_mesh_gen_user_prop_srv, %struct.bt_mesh_gen_user_prop_srv* %18, i32 0, i32 1
  %20 = load %struct.bt_mesh_generic_property*, %struct.bt_mesh_generic_property** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.bt_mesh_generic_property, %struct.bt_mesh_generic_property* %20, i64 %21
  %23 = getelementptr inbounds %struct.bt_mesh_generic_property, %struct.bt_mesh_generic_property* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load %struct.bt_mesh_gen_user_prop_srv*, %struct.bt_mesh_gen_user_prop_srv** %6, align 8
  %29 = getelementptr inbounds %struct.bt_mesh_gen_user_prop_srv, %struct.bt_mesh_gen_user_prop_srv* %28, i32 0, i32 1
  %30 = load %struct.bt_mesh_generic_property*, %struct.bt_mesh_generic_property** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.bt_mesh_generic_property, %struct.bt_mesh_generic_property* %30, i64 %31
  store %struct.bt_mesh_generic_property* %32, %struct.bt_mesh_generic_property** %3, align 8
  br label %38

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  br label %11

37:                                               ; preds = %11
  store %struct.bt_mesh_generic_property* null, %struct.bt_mesh_generic_property** %3, align 8
  br label %38

38:                                               ; preds = %37, %27
  %39 = load %struct.bt_mesh_generic_property*, %struct.bt_mesh_generic_property** %3, align 8
  ret %struct.bt_mesh_generic_property* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
