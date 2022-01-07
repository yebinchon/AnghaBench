; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_access.c_bt_mesh_model_find_group.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_access.c_bt_mesh_model_find_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @bt_mesh_model_find_group(%struct.bt_mesh_model* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.bt_mesh_model*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %32, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %10 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = call i32 @ARRAY_SIZE(i64* %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %7
  %15 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %16 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %14
  %25 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %26 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  store i64* %30, i64** %3, align 8
  br label %36

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %7

35:                                               ; preds = %7
  store i64* null, i64** %3, align 8
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i64*, i64** %3, align 8
  ret i64* %37
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
