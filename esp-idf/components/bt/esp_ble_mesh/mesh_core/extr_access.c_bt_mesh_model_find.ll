; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_access.c_bt_mesh_model_find.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_access.c_bt_mesh_model_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { i64 }
%struct.bt_mesh_elem = type { i64, %struct.bt_mesh_model* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bt_mesh_model* @bt_mesh_model_find(%struct.bt_mesh_elem* %0, i64 %1) #0 {
  %3 = alloca %struct.bt_mesh_model*, align 8
  %4 = alloca %struct.bt_mesh_elem*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.bt_mesh_elem* %0, %struct.bt_mesh_elem** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %30, %2
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %4, align 8
  %10 = getelementptr inbounds %struct.bt_mesh_elem, %struct.bt_mesh_elem* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  %14 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %4, align 8
  %15 = getelementptr inbounds %struct.bt_mesh_elem, %struct.bt_mesh_elem* %14, i32 0, i32 1
  %16 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %16, i64 %17
  %19 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %13
  %24 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %4, align 8
  %25 = getelementptr inbounds %struct.bt_mesh_elem, %struct.bt_mesh_elem* %24, i32 0, i32 1
  %26 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %26, i64 %27
  store %struct.bt_mesh_model* %28, %struct.bt_mesh_model** %3, align 8
  br label %34

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %7

33:                                               ; preds = %7
  store %struct.bt_mesh_model* null, %struct.bt_mesh_model** %3, align 8
  br label %34

34:                                               ; preds = %33, %23
  %35 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %3, align 8
  ret %struct.bt_mesh_model* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
