; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_calc_yaw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_calc_yaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ir_t = type { i32 }

@WIIMOTE_FOV_COEFFICIENT = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @calc_yaw(%struct.ir_t* %0) #0 {
  %2 = alloca %struct.ir_t*, align 8
  %3 = alloca float, align 4
  store %struct.ir_t* %0, %struct.ir_t** %2, align 8
  %4 = load %struct.ir_t*, %struct.ir_t** %2, align 8
  %5 = getelementptr inbounds %struct.ir_t, %struct.ir_t* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sub nsw i32 %6, 512
  %8 = sitofp i32 %7 to float
  store float %8, float* %3, align 4
  %9 = load double, double* @WIIMOTE_FOV_COEFFICIENT, align 8
  %10 = fdiv double %9, 5.120000e+02
  %11 = load float, float* %3, align 4
  %12 = fpext float %11 to double
  %13 = fmul double %12, %10
  %14 = fptrunc double %13 to float
  store float %14, float* %3, align 4
  %15 = load float, float* %3, align 4
  %16 = call i32 @atanf(float %15)
  %17 = call float @RAD_TO_DEGREE(i32 %16)
  ret float %17
}

declare dso_local float @RAD_TO_DEGREE(i32) #1

declare dso_local i32 @atanf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
