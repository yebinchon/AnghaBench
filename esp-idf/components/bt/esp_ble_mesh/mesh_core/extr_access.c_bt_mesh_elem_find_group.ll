; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_access.c_bt_mesh_elem_find_group.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_access.c_bt_mesh_elem_find_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { i32 }
%struct.bt_mesh_elem = type { i32, i32, %struct.bt_mesh_model*, %struct.bt_mesh_model* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bt_mesh_model* (%struct.bt_mesh_elem*, i32)* @bt_mesh_elem_find_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bt_mesh_model* @bt_mesh_elem_find_group(%struct.bt_mesh_elem* %0, i32 %1) #0 {
  %3 = alloca %struct.bt_mesh_model*, align 8
  %4 = alloca %struct.bt_mesh_elem*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bt_mesh_model*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.bt_mesh_elem* %0, %struct.bt_mesh_elem** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %30, %2
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %4, align 8
  %12 = getelementptr inbounds %struct.bt_mesh_elem, %struct.bt_mesh_elem* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %9
  %16 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %4, align 8
  %17 = getelementptr inbounds %struct.bt_mesh_elem, %struct.bt_mesh_elem* %16, i32 0, i32 3
  %18 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %18, i64 %20
  store %struct.bt_mesh_model* %21, %struct.bt_mesh_model** %6, align 8
  %22 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32* @bt_mesh_model_find_group(%struct.bt_mesh_model* %22, i32 %23)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  store %struct.bt_mesh_model* %28, %struct.bt_mesh_model** %3, align 8
  br label %59

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %9

33:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %55, %33
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %4, align 8
  %37 = getelementptr inbounds %struct.bt_mesh_elem, %struct.bt_mesh_elem* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %4, align 8
  %42 = getelementptr inbounds %struct.bt_mesh_elem, %struct.bt_mesh_elem* %41, i32 0, i32 2
  %43 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %43, i64 %45
  store %struct.bt_mesh_model* %46, %struct.bt_mesh_model** %6, align 8
  %47 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32* @bt_mesh_model_find_group(%struct.bt_mesh_model* %47, i32 %48)
  store i32* %49, i32** %7, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  store %struct.bt_mesh_model* %53, %struct.bt_mesh_model** %3, align 8
  br label %59

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %34

58:                                               ; preds = %34
  store %struct.bt_mesh_model* null, %struct.bt_mesh_model** %3, align 8
  br label %59

59:                                               ; preds = %58, %52, %27
  %60 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %3, align 8
  ret %struct.bt_mesh_model* %60
}

declare dso_local i32* @bt_mesh_model_find_group(%struct.bt_mesh_model*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
