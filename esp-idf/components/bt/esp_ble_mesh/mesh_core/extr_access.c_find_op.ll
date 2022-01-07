; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_access.c_find_op.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_access.c_find_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model_op = type { i64, i64 }
%struct.bt_mesh_model = type { %struct.bt_mesh_model_op* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bt_mesh_model_op* (%struct.bt_mesh_model*, i64, i32, i32, i64, %struct.bt_mesh_model**)* @find_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bt_mesh_model_op* @find_op(%struct.bt_mesh_model* %0, i64 %1, i32 %2, i32 %3, i64 %4, %struct.bt_mesh_model** %5) #0 {
  %7 = alloca %struct.bt_mesh_model_op*, align 8
  %8 = alloca %struct.bt_mesh_model*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.bt_mesh_model**, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.bt_mesh_model_op*, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store %struct.bt_mesh_model** %5, %struct.bt_mesh_model*** %13, align 8
  store i64 0, i64* %14, align 8
  br label %16

16:                                               ; preds = %70, %6
  %17 = load i64, i64* %14, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %16
  %21 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %8, align 8
  %22 = load i64, i64* %14, align 8
  %23 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %21, i64 %22
  %24 = load %struct.bt_mesh_model**, %struct.bt_mesh_model*** %13, align 8
  store %struct.bt_mesh_model* %23, %struct.bt_mesh_model** %24, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @BLE_MESH_ADDR_IS_GROUP(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @BLE_MESH_ADDR_IS_VIRTUAL(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28, %20
  %33 = load %struct.bt_mesh_model**, %struct.bt_mesh_model*** %13, align 8
  %34 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @bt_mesh_model_find_group(%struct.bt_mesh_model* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %70

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.bt_mesh_model**, %struct.bt_mesh_model*** %13, align 8
  %42 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @model_has_key(%struct.bt_mesh_model* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %70

47:                                               ; preds = %40
  %48 = load %struct.bt_mesh_model**, %struct.bt_mesh_model*** %13, align 8
  %49 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %48, align 8
  %50 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %49, i32 0, i32 0
  %51 = load %struct.bt_mesh_model_op*, %struct.bt_mesh_model_op** %50, align 8
  store %struct.bt_mesh_model_op* %51, %struct.bt_mesh_model_op** %15, align 8
  br label %52

52:                                               ; preds = %66, %47
  %53 = load %struct.bt_mesh_model_op*, %struct.bt_mesh_model_op** %15, align 8
  %54 = getelementptr inbounds %struct.bt_mesh_model_op, %struct.bt_mesh_model_op* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load %struct.bt_mesh_model_op*, %struct.bt_mesh_model_op** %15, align 8
  %59 = getelementptr inbounds %struct.bt_mesh_model_op, %struct.bt_mesh_model_op* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load %struct.bt_mesh_model_op*, %struct.bt_mesh_model_op** %15, align 8
  store %struct.bt_mesh_model_op* %64, %struct.bt_mesh_model_op** %7, align 8
  br label %75

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.bt_mesh_model_op*, %struct.bt_mesh_model_op** %15, align 8
  %68 = getelementptr inbounds %struct.bt_mesh_model_op, %struct.bt_mesh_model_op* %67, i32 1
  store %struct.bt_mesh_model_op* %68, %struct.bt_mesh_model_op** %15, align 8
  br label %52

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %46, %38
  %71 = load i64, i64* %14, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %14, align 8
  br label %16

73:                                               ; preds = %16
  %74 = load %struct.bt_mesh_model**, %struct.bt_mesh_model*** %13, align 8
  store %struct.bt_mesh_model* null, %struct.bt_mesh_model** %74, align 8
  store %struct.bt_mesh_model_op* null, %struct.bt_mesh_model_op** %7, align 8
  br label %75

75:                                               ; preds = %73, %63
  %76 = load %struct.bt_mesh_model_op*, %struct.bt_mesh_model_op** %7, align 8
  ret %struct.bt_mesh_model_op* %76
}

declare dso_local i64 @BLE_MESH_ADDR_IS_GROUP(i32) #1

declare dso_local i64 @BLE_MESH_ADDR_IS_VIRTUAL(i32) #1

declare dso_local i32 @bt_mesh_model_find_group(%struct.bt_mesh_model*, i32) #1

declare dso_local i32 @model_has_key(%struct.bt_mesh_model*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
