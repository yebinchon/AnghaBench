; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_state_transition.c_bt_mesh_server_calc_remain_time.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_state_transition.c_bt_mesh_server_calc_remain_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_state_transition = type { i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bt_mesh_server_calc_remain_time(%struct.bt_mesh_state_transition* %0) #0 {
  %2 = alloca %struct.bt_mesh_state_transition*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bt_mesh_state_transition* %0, %struct.bt_mesh_state_transition** %2, align 8
  %7 = load %struct.bt_mesh_state_transition*, %struct.bt_mesh_state_transition** %2, align 8
  %8 = getelementptr inbounds %struct.bt_mesh_state_transition, %struct.bt_mesh_state_transition* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.bt_mesh_state_transition*, %struct.bt_mesh_state_transition** %2, align 8
  %13 = getelementptr inbounds %struct.bt_mesh_state_transition, %struct.bt_mesh_state_transition* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bt_mesh_state_transition*, %struct.bt_mesh_state_transition** %2, align 8
  %16 = getelementptr inbounds %struct.bt_mesh_state_transition, %struct.bt_mesh_state_transition* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  br label %62

17:                                               ; preds = %1
  %18 = call i32 (...) @k_uptime_get()
  store i32 %18, i32* %6, align 4
  %19 = load %struct.bt_mesh_state_transition*, %struct.bt_mesh_state_transition** %2, align 8
  %20 = getelementptr inbounds %struct.bt_mesh_state_transition, %struct.bt_mesh_state_transition* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.bt_mesh_state_transition*, %struct.bt_mesh_state_transition** %2, align 8
  %24 = getelementptr inbounds %struct.bt_mesh_state_transition, %struct.bt_mesh_state_transition* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  %27 = sub nsw i32 %21, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %28, 620000
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  store i32 3, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sdiv i32 %31, 600000
  store i32 %32, i32* %3, align 4
  br label %55

33:                                               ; preds = %17
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 62000
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  store i32 2, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sdiv i32 %37, 10000
  store i32 %38, i32* %3, align 4
  br label %54

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %40, 6200
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = sdiv i32 %43, 1000
  store i32 %44, i32* %3, align 4
  br label %53

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sdiv i32 %49, 100
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %48
  br label %53

53:                                               ; preds = %52, %42
  br label %54

54:                                               ; preds = %53, %36
  br label %55

55:                                               ; preds = %54, %30
  %56 = load i32, i32* %4, align 4
  %57 = shl i32 %56, 6
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.bt_mesh_state_transition*, %struct.bt_mesh_state_transition** %2, align 8
  %61 = getelementptr inbounds %struct.bt_mesh_state_transition, %struct.bt_mesh_state_transition* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %55, %11
  ret void
}

declare dso_local i32 @k_uptime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
