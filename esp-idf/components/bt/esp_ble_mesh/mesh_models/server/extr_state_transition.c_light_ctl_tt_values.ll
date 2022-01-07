; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_state_transition.c_light_ctl_tt_values.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_state_transition.c_light_ctl_tt_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_light_ctl_srv = type { float, float, float, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { float }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @light_ctl_tt_values(%struct.bt_mesh_light_ctl_srv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bt_mesh_light_ctl_srv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bt_mesh_light_ctl_srv* %0, %struct.bt_mesh_light_ctl_srv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bt_mesh_light_ctl_srv*, %struct.bt_mesh_light_ctl_srv** %4, align 8
  %8 = getelementptr inbounds %struct.bt_mesh_light_ctl_srv, %struct.bt_mesh_light_ctl_srv* %7, i32 0, i32 3
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @transition_time_values(%struct.TYPE_4__* %8, i32 %9, i32 %10)
  %12 = load %struct.bt_mesh_light_ctl_srv*, %struct.bt_mesh_light_ctl_srv** %4, align 8
  %13 = getelementptr inbounds %struct.bt_mesh_light_ctl_srv, %struct.bt_mesh_light_ctl_srv* %12, i32 0, i32 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.bt_mesh_light_ctl_srv*, %struct.bt_mesh_light_ctl_srv** %4, align 8
  %18 = getelementptr inbounds %struct.bt_mesh_light_ctl_srv, %struct.bt_mesh_light_ctl_srv* %17, i32 0, i32 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %16, %21
  %23 = sitofp i64 %22 to float
  %24 = load %struct.bt_mesh_light_ctl_srv*, %struct.bt_mesh_light_ctl_srv** %4, align 8
  %25 = getelementptr inbounds %struct.bt_mesh_light_ctl_srv, %struct.bt_mesh_light_ctl_srv* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 4
  %28 = fdiv float %23, %27
  %29 = load %struct.bt_mesh_light_ctl_srv*, %struct.bt_mesh_light_ctl_srv** %4, align 8
  %30 = getelementptr inbounds %struct.bt_mesh_light_ctl_srv, %struct.bt_mesh_light_ctl_srv* %29, i32 0, i32 0
  store float %28, float* %30, align 8
  %31 = load %struct.bt_mesh_light_ctl_srv*, %struct.bt_mesh_light_ctl_srv** %4, align 8
  %32 = getelementptr inbounds %struct.bt_mesh_light_ctl_srv, %struct.bt_mesh_light_ctl_srv* %31, i32 0, i32 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.bt_mesh_light_ctl_srv*, %struct.bt_mesh_light_ctl_srv** %4, align 8
  %37 = getelementptr inbounds %struct.bt_mesh_light_ctl_srv, %struct.bt_mesh_light_ctl_srv* %36, i32 0, i32 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %35, %40
  %42 = sitofp i64 %41 to float
  %43 = load %struct.bt_mesh_light_ctl_srv*, %struct.bt_mesh_light_ctl_srv** %4, align 8
  %44 = getelementptr inbounds %struct.bt_mesh_light_ctl_srv, %struct.bt_mesh_light_ctl_srv* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load float, float* %45, align 4
  %47 = fdiv float %42, %46
  %48 = load %struct.bt_mesh_light_ctl_srv*, %struct.bt_mesh_light_ctl_srv** %4, align 8
  %49 = getelementptr inbounds %struct.bt_mesh_light_ctl_srv, %struct.bt_mesh_light_ctl_srv* %48, i32 0, i32 1
  store float %47, float* %49, align 4
  %50 = load %struct.bt_mesh_light_ctl_srv*, %struct.bt_mesh_light_ctl_srv** %4, align 8
  %51 = getelementptr inbounds %struct.bt_mesh_light_ctl_srv, %struct.bt_mesh_light_ctl_srv* %50, i32 0, i32 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.bt_mesh_light_ctl_srv*, %struct.bt_mesh_light_ctl_srv** %4, align 8
  %56 = getelementptr inbounds %struct.bt_mesh_light_ctl_srv, %struct.bt_mesh_light_ctl_srv* %55, i32 0, i32 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %54, %59
  %61 = sitofp i64 %60 to float
  %62 = load %struct.bt_mesh_light_ctl_srv*, %struct.bt_mesh_light_ctl_srv** %4, align 8
  %63 = getelementptr inbounds %struct.bt_mesh_light_ctl_srv, %struct.bt_mesh_light_ctl_srv* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load float, float* %64, align 4
  %66 = fdiv float %61, %65
  %67 = load %struct.bt_mesh_light_ctl_srv*, %struct.bt_mesh_light_ctl_srv** %4, align 8
  %68 = getelementptr inbounds %struct.bt_mesh_light_ctl_srv, %struct.bt_mesh_light_ctl_srv* %67, i32 0, i32 2
  store float %66, float* %68, align 8
  ret void
}

declare dso_local i32 @transition_time_values(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
