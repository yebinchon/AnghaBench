; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/mesh/internal_communication/main/extr_mesh_light.c_mesh_light_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/mesh/internal_communication/main/extr_mesh_light.c_mesh_light_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }

@s_light_inited = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@LEDC_LOW_SPEED_MODE = common dso_local global i32 0, align 4
@LEDC_AUTO_CLK = common dso_local global i32 0, align 4
@LEDC_TIMER_0 = common dso_local global i32 0, align 4
@LEDC_TIMER_13_BIT = common dso_local global i32 0, align 4
@LEDC_IO_0 = common dso_local global i32 0, align 4
@LEDC_CHANNEL_0 = common dso_local global i32 0, align 4
@LEDC_INTR_FADE_END = common dso_local global i32 0, align 4
@LEDC_CHANNEL_1 = common dso_local global i32 0, align 4
@LEDC_IO_1 = common dso_local global i32 0, align 4
@LEDC_CHANNEL_2 = common dso_local global i32 0, align 4
@LEDC_IO_2 = common dso_local global i32 0, align 4
@LEDC_CHANNEL_3 = common dso_local global i32 0, align 4
@LEDC_IO_3 = common dso_local global i32 0, align 4
@MESH_LIGHT_INIT = common dso_local global i32 0, align 4
@LEDC_HIGH_SPEED_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_light_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = load i32, i32* @s_light_inited, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @ESP_OK, align 4
  store i32 %7, i32* %1, align 4
  br label %51

8:                                                ; preds = %0
  store i32 1, i32* @s_light_inited, align 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 5000, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %11 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %13 = load i32, i32* @LEDC_AUTO_CLK, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  %15 = load i32, i32* @LEDC_TIMER_0, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  %17 = load i32, i32* @LEDC_TIMER_13_BIT, align 4
  store i32 %17, i32* %16, align 4
  %18 = call i32 @ledc_timer_config(%struct.TYPE_5__* %2)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 100, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %21 = load i32, i32* @LEDC_IO_0, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %23 = load i32, i32* @LEDC_CHANNEL_0, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  %26 = load i32, i32* @LEDC_TIMER_0, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 5
  %28 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 6
  %30 = load i32, i32* @LEDC_INTR_FADE_END, align 4
  store i32 %30, i32* %29, align 4
  %31 = call i32 @ledc_channel_config(%struct.TYPE_6__* %3)
  %32 = load i32, i32* @LEDC_CHANNEL_1, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @LEDC_IO_1, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = call i32 @ledc_channel_config(%struct.TYPE_6__* %3)
  %37 = load i32, i32* @LEDC_CHANNEL_2, align 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @LEDC_IO_2, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = call i32 @ledc_channel_config(%struct.TYPE_6__* %3)
  %42 = load i32, i32* @LEDC_CHANNEL_3, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @LEDC_IO_3, align 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = call i32 @ledc_channel_config(%struct.TYPE_6__* %3)
  %47 = call i32 @ledc_fade_func_install(i32 0)
  %48 = load i32, i32* @MESH_LIGHT_INIT, align 4
  %49 = call i32 @mesh_light_set(i32 %48)
  %50 = load i32, i32* @ESP_OK, align 4
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %8, %6
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @ledc_timer_config(%struct.TYPE_5__*) #1

declare dso_local i32 @ledc_channel_config(%struct.TYPE_6__*) #1

declare dso_local i32 @ledc_fade_func_install(i32) #1

declare dso_local i32 @mesh_light_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
