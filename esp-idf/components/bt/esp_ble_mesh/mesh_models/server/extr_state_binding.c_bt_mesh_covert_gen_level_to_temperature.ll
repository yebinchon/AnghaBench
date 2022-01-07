; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_state_binding.c_bt_mesh_covert_gen_level_to_temperature.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_state_binding.c_bt_mesh_covert_gen_level_to_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT16_MAX = common dso_local global float 0.000000e+00, align 4
@INT16_MIN = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bt_mesh_covert_gen_level_to_temperature(float %0, i64 %1, i64 %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca float, align 4
  %8 = alloca i64, align 8
  store float %0, float* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = sub nsw i64 %9, %10
  %12 = sitofp i64 %11 to float
  %13 = load float, float* @UINT16_MAX, align 4
  %14 = fdiv float %12, %13
  store float %14, float* %7, align 4
  %15 = load float, float* %4, align 4
  %16 = load float, float* @INT16_MIN, align 4
  %17 = fsub float %15, %16
  %18 = load float, float* %7, align 4
  %19 = fmul float %17, %18
  %20 = fptosi float %19 to i64
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %8, align 8
  %23 = add nsw i64 %21, %22
  ret i64 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
