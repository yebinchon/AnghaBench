; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_state_binding.c_bt_mesh_sqrt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_models/server/extr_state_binding.c_bt_mesh_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MINDIFF = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @bt_mesh_sqrt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @bt_mesh_sqrt(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %3, align 4
  %7 = load float, float* %3, align 4
  %8 = fpext float %7 to double
  %9 = fdiv double %8, 3.000000e+00
  %10 = fptrunc double %9 to float
  store float %10, float* %4, align 4
  store float 1.000000e+00, float* %6, align 4
  %11 = load float, float* %3, align 4
  %12 = fcmp ole float %11, 0.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store float 0.000000e+00, float* %2, align 4
  br label %41

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %37, %14
  %16 = load float, float* %4, align 4
  store float %16, float* %5, align 4
  %17 = load float, float* %4, align 4
  %18 = load float, float* %3, align 4
  %19 = load float, float* %4, align 4
  %20 = fdiv float %18, %19
  %21 = fadd float %17, %20
  %22 = fpext float %21 to double
  %23 = fdiv double %22, 2.000000e+00
  %24 = fptrunc double %23 to float
  store float %24, float* %4, align 4
  %25 = load float, float* %4, align 4
  %26 = load float, float* %5, align 4
  %27 = fsub float %25, %26
  store float %27, float* %6, align 4
  br label %28

28:                                               ; preds = %15
  %29 = load float, float* %6, align 4
  %30 = load float, float* @MINDIFF, align 4
  %31 = fcmp ogt float %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load float, float* %6, align 4
  %34 = load float, float* @MINDIFF, align 4
  %35 = fneg float %34
  %36 = fcmp olt float %33, %35
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i1 [ true, %28 ], [ %36, %32 ]
  br i1 %38, label %15, label %39

39:                                               ; preds = %37
  %40 = load float, float* %4, align 4
  store float %40, float* %2, align 4
  br label %41

41:                                               ; preds = %39, %13
  %42 = load float, float* %2, align 4
  ret float %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
