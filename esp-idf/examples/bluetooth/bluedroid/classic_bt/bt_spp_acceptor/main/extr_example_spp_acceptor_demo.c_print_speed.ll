; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_spp_acceptor/main/extr_example_spp_acceptor_demo.c_print_speed.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_spp_acceptor/main/extr_example_spp_acceptor_demo.c_print_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double }
%struct.TYPE_4__ = type { double, double }

@time_old = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@time_new = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@data_num = common dso_local global i32 0, align 4
@SPP_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"speed(%fs ~ %fs): %f kbit/s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_speed() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @time_old, i32 0, i32 0), align 8
  %6 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @time_old, i32 0, i32 1), align 8
  %7 = fdiv double %6, 1.000000e+06
  %8 = fadd double %5, %7
  %9 = fptrunc double %8 to float
  store float %9, float* %1, align 4
  %10 = load double, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @time_new, i32 0, i32 0), align 8
  %11 = load double, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @time_new, i32 0, i32 1), align 8
  %12 = fdiv double %11, 1.000000e+06
  %13 = fadd double %10, %12
  %14 = fptrunc double %13 to float
  store float %14, float* %2, align 4
  %15 = load float, float* %2, align 4
  %16 = load float, float* %1, align 4
  %17 = fsub float %15, %16
  store float %17, float* %3, align 4
  %18 = load i32, i32* @data_num, align 4
  %19 = mul nsw i32 %18, 8
  %20 = sitofp i32 %19 to float
  %21 = load float, float* %3, align 4
  %22 = fdiv float %20, %21
  %23 = fpext float %22 to double
  %24 = fdiv double %23, 1.000000e+03
  %25 = fptrunc double %24 to float
  store float %25, float* %4, align 4
  %26 = load i32, i32* @SPP_TAG, align 4
  %27 = load float, float* %1, align 4
  %28 = load float, float* %2, align 4
  %29 = load float, float* %4, align 4
  %30 = call i32 @ESP_LOGI(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), float %27, float %28, float %29)
  store i32 0, i32* @data_num, align 4
  %31 = load double, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @time_new, i32 0, i32 0), align 8
  store double %31, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @time_old, i32 0, i32 0), align 8
  %32 = load double, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @time_new, i32 0, i32 1), align 8
  store double %32, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @time_old, i32 0, i32 1), align 8
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
