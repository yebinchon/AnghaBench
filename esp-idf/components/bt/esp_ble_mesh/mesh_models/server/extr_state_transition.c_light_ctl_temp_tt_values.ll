; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_state_transition.c_light_ctl_temp_tt_values.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_state_transition.c_light_ctl_temp_tt_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_light_ctl_temp_srv = type { float, float, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { float }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @light_ctl_temp_tt_values(%struct.bt_mesh_light_ctl_temp_srv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bt_mesh_light_ctl_temp_srv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bt_mesh_light_ctl_temp_srv* %0, %struct.bt_mesh_light_ctl_temp_srv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bt_mesh_light_ctl_temp_srv*, %struct.bt_mesh_light_ctl_temp_srv** %4, align 8
  %8 = getelementptr inbounds %struct.bt_mesh_light_ctl_temp_srv, %struct.bt_mesh_light_ctl_temp_srv* %7, i32 0, i32 2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @transition_time_values(%struct.TYPE_4__* %8, i32 %9, i32 %10)
  %12 = load %struct.bt_mesh_light_ctl_temp_srv*, %struct.bt_mesh_light_ctl_temp_srv** %4, align 8
  %13 = getelementptr inbounds %struct.bt_mesh_light_ctl_temp_srv, %struct.bt_mesh_light_ctl_temp_srv* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.bt_mesh_light_ctl_temp_srv*, %struct.bt_mesh_light_ctl_temp_srv** %4, align 8
  %18 = getelementptr inbounds %struct.bt_mesh_light_ctl_temp_srv, %struct.bt_mesh_light_ctl_temp_srv* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %16, %21
  %23 = sitofp i64 %22 to float
  %24 = load %struct.bt_mesh_light_ctl_temp_srv*, %struct.bt_mesh_light_ctl_temp_srv** %4, align 8
  %25 = getelementptr inbounds %struct.bt_mesh_light_ctl_temp_srv, %struct.bt_mesh_light_ctl_temp_srv* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 8
  %28 = fdiv float %23, %27
  %29 = load %struct.bt_mesh_light_ctl_temp_srv*, %struct.bt_mesh_light_ctl_temp_srv** %4, align 8
  %30 = getelementptr inbounds %struct.bt_mesh_light_ctl_temp_srv, %struct.bt_mesh_light_ctl_temp_srv* %29, i32 0, i32 0
  store float %28, float* %30, align 8
  %31 = load %struct.bt_mesh_light_ctl_temp_srv*, %struct.bt_mesh_light_ctl_temp_srv** %4, align 8
  %32 = getelementptr inbounds %struct.bt_mesh_light_ctl_temp_srv, %struct.bt_mesh_light_ctl_temp_srv* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.bt_mesh_light_ctl_temp_srv*, %struct.bt_mesh_light_ctl_temp_srv** %4, align 8
  %37 = getelementptr inbounds %struct.bt_mesh_light_ctl_temp_srv, %struct.bt_mesh_light_ctl_temp_srv* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %35, %40
  %42 = sitofp i64 %41 to float
  %43 = load %struct.bt_mesh_light_ctl_temp_srv*, %struct.bt_mesh_light_ctl_temp_srv** %4, align 8
  %44 = getelementptr inbounds %struct.bt_mesh_light_ctl_temp_srv, %struct.bt_mesh_light_ctl_temp_srv* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load float, float* %45, align 8
  %47 = fdiv float %42, %46
  %48 = load %struct.bt_mesh_light_ctl_temp_srv*, %struct.bt_mesh_light_ctl_temp_srv** %4, align 8
  %49 = getelementptr inbounds %struct.bt_mesh_light_ctl_temp_srv, %struct.bt_mesh_light_ctl_temp_srv* %48, i32 0, i32 1
  store float %47, float* %49, align 4
  ret void
}

declare dso_local i32 @transition_time_values(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
