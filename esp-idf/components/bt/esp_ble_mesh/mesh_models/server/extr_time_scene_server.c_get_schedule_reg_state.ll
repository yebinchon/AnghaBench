; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_time_scene_server.c_get_schedule_reg_state.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_time_scene_server.c_get_schedule_reg_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_scheduler_state = type { %struct.schedule_register* }
%struct.schedule_register = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_mesh_scheduler_state*, i64)* @get_schedule_reg_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_schedule_reg_state(%struct.bt_mesh_scheduler_state* %0, i64 %1) #0 {
  %3 = alloca %struct.bt_mesh_scheduler_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.schedule_register*, align 8
  %6 = alloca i32, align 4
  store %struct.bt_mesh_scheduler_state* %0, %struct.bt_mesh_scheduler_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.bt_mesh_scheduler_state*, %struct.bt_mesh_scheduler_state** %3, align 8
  %8 = getelementptr inbounds %struct.bt_mesh_scheduler_state, %struct.bt_mesh_scheduler_state* %7, i32 0, i32 0
  %9 = load %struct.schedule_register*, %struct.schedule_register** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.schedule_register, %struct.schedule_register* %9, i64 %10
  store %struct.schedule_register* %11, %struct.schedule_register** %5, align 8
  %12 = load %struct.schedule_register*, %struct.schedule_register** %5, align 8
  %13 = getelementptr inbounds %struct.schedule_register, %struct.schedule_register* %12, i32 0, i32 8
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = shl i32 %15, 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %4, align 8
  %19 = or i64 %17, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.schedule_register*, %struct.schedule_register** %5, align 8
  %22 = getelementptr inbounds %struct.schedule_register, %struct.schedule_register* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 23
  %26 = load %struct.schedule_register*, %struct.schedule_register** %5, align 8
  %27 = getelementptr inbounds %struct.schedule_register, %struct.schedule_register* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = shl i32 %29, 11
  %31 = or i32 %25, %30
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.schedule_register*, %struct.schedule_register** %5, align 8
  %35 = getelementptr inbounds %struct.schedule_register, %struct.schedule_register* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = shl i32 %37, 33
  %39 = load %struct.schedule_register*, %struct.schedule_register** %5, align 8
  %40 = getelementptr inbounds %struct.schedule_register, %struct.schedule_register* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = shl i32 %42, 28
  %44 = or i32 %38, %43
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.schedule_register*, %struct.schedule_register** %5, align 8
  %48 = getelementptr inbounds %struct.schedule_register, %struct.schedule_register* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = shl i32 %50, 45
  %52 = load %struct.schedule_register*, %struct.schedule_register** %5, align 8
  %53 = getelementptr inbounds %struct.schedule_register, %struct.schedule_register* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = shl i32 %55, 39
  %57 = or i32 %51, %56
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load %struct.schedule_register*, %struct.schedule_register** %5, align 8
  %61 = getelementptr inbounds %struct.schedule_register, %struct.schedule_register* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = shl i32 %63, 56
  %65 = load %struct.schedule_register*, %struct.schedule_register** %5, align 8
  %66 = getelementptr inbounds %struct.schedule_register, %struct.schedule_register* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = shl i32 %68, 52
  %70 = or i32 %64, %69
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
