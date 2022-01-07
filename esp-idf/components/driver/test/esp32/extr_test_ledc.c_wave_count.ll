; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_ledc.c_wave_count.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_ledc.c_wave_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@LOWEST_LIMIT = common dso_local global i32 0, align 4
@HIGHEST_LIMIT = common dso_local global i32 0, align 4
@PCNT_MODE_KEEP = common dso_local global i32 0, align 4
@PCNT_MODE_REVERSE = common dso_local global i32 0, align 4
@PCNT_COUNT_DIS = common dso_local global i32 0, align 4
@PCNT_COUNT_INC = common dso_local global i32 0, align 4
@PCNT_UNIT_0 = common dso_local global i32 0, align 4
@PCNT_CHANNEL_0 = common dso_local global i32 0, align 4
@PCNT_CTRL_FLOATING_IO = common dso_local global i32 0, align 4
@PCNT_INPUT_IO = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wave_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wave_count(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* @LOWEST_LIMIT, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %8 = load i32, i32* @HIGHEST_LIMIT, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %10 = load i32, i32* @PCNT_MODE_KEEP, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %12 = load i32, i32* @PCNT_MODE_REVERSE, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  %14 = load i32, i32* @PCNT_COUNT_DIS, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 5
  %16 = load i32, i32* @PCNT_COUNT_INC, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 6
  %18 = load i32, i32* @PCNT_UNIT_0, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 7
  %20 = load i32, i32* @PCNT_CHANNEL_0, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 8
  %22 = load i32, i32* @PCNT_CTRL_FLOATING_IO, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 9
  %24 = load i32, i32* @PCNT_INPUT_IO, align 4
  store i32 %24, i32* %23, align 4
  %25 = call i32 @pcnt_unit_config(%struct.TYPE_3__* %4)
  %26 = call i32 @TEST_ESP_OK(i32 %25)
  %27 = load i32, i32* @PCNT_UNIT_0, align 4
  %28 = call i32 @pcnt_counter_pause(i32 %27)
  %29 = call i32 @TEST_ESP_OK(i32 %28)
  %30 = load i32, i32* @PCNT_UNIT_0, align 4
  %31 = call i32 @pcnt_counter_clear(i32 %30)
  %32 = call i32 @TEST_ESP_OK(i32 %31)
  %33 = load i32, i32* @PCNT_UNIT_0, align 4
  %34 = call i32 @pcnt_counter_resume(i32 %33)
  %35 = call i32 @TEST_ESP_OK(i32 %34)
  %36 = load i32, i32* @PCNT_UNIT_0, align 4
  %37 = call i32 @pcnt_get_counter_value(i32 %36, i32* %3)
  %38 = call i32 @TEST_ESP_OK(i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @portTICK_RATE_MS, align 4
  %41 = sdiv i32 %39, %40
  %42 = call i32 @vTaskDelay(i32 %41)
  %43 = load i32, i32* @PCNT_UNIT_0, align 4
  %44 = call i32 @pcnt_get_counter_value(i32 %43, i32* %3)
  %45 = call i32 @TEST_ESP_OK(i32 %44)
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @pcnt_unit_config(%struct.TYPE_3__*) #1

declare dso_local i32 @pcnt_counter_pause(i32) #1

declare dso_local i32 @pcnt_counter_clear(i32) #1

declare dso_local i32 @pcnt_counter_resume(i32) #1

declare dso_local i32 @pcnt_get_counter_value(i32, i32*) #1

declare dso_local i32 @vTaskDelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
