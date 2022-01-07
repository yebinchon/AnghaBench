; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/i2s/main/extr_i2s_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/i2s/main/extr_i2s_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@I2S_MODE_MASTER = common dso_local global i32 0, align 4
@I2S_MODE_TX = common dso_local global i32 0, align 4
@I2S_COMM_FORMAT_I2S = common dso_local global i32 0, align 4
@I2S_COMM_FORMAT_I2S_MSB = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_LEVEL1 = common dso_local global i32 0, align 4
@I2S_CHANNEL_FMT_RIGHT_LEFT = common dso_local global i32 0, align 4
@SAMPLE_RATE = common dso_local global i32 0, align 4
@I2S_DI_IO = common dso_local global i32 0, align 4
@I2S_DO_IO = common dso_local global i32 0, align 4
@I2S_WS_IO = common dso_local global i32 0, align 4
@I2S_BCK_IO = common dso_local global i32 0, align 4
@I2S_NUM = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %5 = load i32, i32* @I2S_MODE_MASTER, align 4
  %6 = load i32, i32* @I2S_MODE_TX, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %4, align 4
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  store i32 16, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %10 = load i32, i32* @I2S_COMM_FORMAT_I2S, align 4
  %11 = load i32, i32* @I2S_COMM_FORMAT_I2S_MSB, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  store i32 6, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 4
  store i32 60, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 5
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 6
  %17 = load i32, i32* @ESP_INTR_FLAG_LEVEL1, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 7
  %19 = load i32, i32* @I2S_CHANNEL_FMT_RIGHT_LEFT, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 8
  %21 = load i32, i32* @SAMPLE_RATE, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %23 = load i32, i32* @I2S_DI_IO, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %25 = load i32, i32* @I2S_DO_IO, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %27 = load i32, i32* @I2S_WS_IO, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  %29 = load i32, i32* @I2S_BCK_IO, align 4
  store i32 %29, i32* %28, align 4
  %30 = load i32, i32* @I2S_NUM, align 4
  %31 = call i32 @i2s_driver_install(i32 %30, %struct.TYPE_6__* %1, i32 0, i32* null)
  %32 = load i32, i32* @I2S_NUM, align 4
  %33 = call i32 @i2s_set_pin(i32 %32, %struct.TYPE_5__* %2)
  store i32 16, i32* %3, align 4
  br label %34

34:                                               ; preds = %0, %45
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @setup_triangle_sine_waves(i32 %35)
  %37 = load i32, i32* @portTICK_RATE_MS, align 4
  %38 = sdiv i32 5000, %37
  %39 = call i32 @vTaskDelay(i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 8
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp sgt i32 %42, 32
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 16, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %34
  br label %34
}

declare dso_local i32 @i2s_driver_install(i32, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @i2s_set_pin(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @setup_triangle_sine_waves(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
