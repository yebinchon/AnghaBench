; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_input_sensor_get_input.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_input_sensor_get_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float (i64, i32, i32)* }

@current_input_data = common dso_local global i64 0, align 8
@current_input = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @input_sensor_get_input(i32 %0, i32 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* @current_input_data, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_input, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load float (i64, i32, i32)*, float (i64, i32, i32)** %10, align 8
  %12 = icmp ne float (i64, i32, i32)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_input, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load float (i64, i32, i32)*, float (i64, i32, i32)** %15, align 8
  %17 = load i64, i64* @current_input_data, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call float %16(i64 %17, i32 %18, i32 %19)
  store float %20, float* %3, align 4
  br label %22

21:                                               ; preds = %8, %2
  store float 0.000000e+00, float* %3, align 4
  br label %22

22:                                               ; preds = %21, %13
  %23 = load float, float* %3, align 4
  ret float %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
