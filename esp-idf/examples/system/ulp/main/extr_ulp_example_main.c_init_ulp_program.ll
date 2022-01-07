; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/ulp/main/extr_ulp_example_main.c_init_ulp_program.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/ulp/main/extr_ulp_example_main.c_init_ulp_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@ulp_main_bin_start = common dso_local global i32 0, align 4
@ulp_main_bin_end = common dso_local global i32 0, align 4
@GPIO_NUM_0 = common dso_local global i64 0, align 8
@rtc_gpio_desc = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"GPIO used for pulse counting must be an RTC IO\00", align 1
@ulp_debounce_counter = common dso_local global i32 0, align 4
@ulp_debounce_max_count = common dso_local global i32 0, align 4
@ulp_next_edge = common dso_local global i64 0, align 8
@ulp_io_number = common dso_local global i32 0, align 4
@ulp_edge_count_to_wake_up = common dso_local global i32 0, align 4
@RTC_GPIO_MODE_INPUT_ONLY = common dso_local global i32 0, align 4
@GPIO_NUM_12 = common dso_local global i32 0, align 4
@GPIO_NUM_15 = common dso_local global i32 0, align 4
@ulp_entry = common dso_local global i32 0, align 4
@RTC_SLOW_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_ulp_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ulp_program() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @ulp_main_bin_start, align 4
  %4 = load i32, i32* @ulp_main_bin_end, align 4
  %5 = load i32, i32* @ulp_main_bin_start, align 4
  %6 = sub nsw i32 %4, %5
  %7 = sext i32 %6 to i64
  %8 = udiv i64 %7, 4
  %9 = trunc i64 %8 to i32
  %10 = call i32 @ulp_load_binary(i32 0, i32 %3, i32 %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @ESP_ERROR_CHECK(i32 %11)
  %13 = load i64, i64* @GPIO_NUM_0, align 8
  store i64 %13, i64* %2, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rtc_gpio_desc, align 8
  %15 = load i64, i64* %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  br label %21

21:                                               ; preds = %20, %0
  %22 = phi i1 [ false, %0 ], [ true, %20 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  store i32 3, i32* @ulp_debounce_counter, align 4
  store i32 3, i32* @ulp_debounce_max_count, align 4
  store i64 0, i64* @ulp_next_edge, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rtc_gpio_desc, align 8
  %26 = load i64, i64* %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* @ulp_io_number, align 4
  store i32 10, i32* @ulp_edge_count_to_wake_up, align 4
  %30 = load i64, i64* %2, align 8
  %31 = call i32 @rtc_gpio_init(i64 %30)
  %32 = load i64, i64* %2, align 8
  %33 = load i32, i32* @RTC_GPIO_MODE_INPUT_ONLY, align 4
  %34 = call i32 @rtc_gpio_set_direction(i64 %32, i32 %33)
  %35 = load i64, i64* %2, align 8
  %36 = call i32 @rtc_gpio_pulldown_dis(i64 %35)
  %37 = load i64, i64* %2, align 8
  %38 = call i32 @rtc_gpio_pullup_dis(i64 %37)
  %39 = load i64, i64* %2, align 8
  %40 = call i32 @rtc_gpio_hold_en(i64 %39)
  %41 = load i32, i32* @GPIO_NUM_12, align 4
  %42 = call i32 @rtc_gpio_isolate(i32 %41)
  %43 = load i32, i32* @GPIO_NUM_15, align 4
  %44 = call i32 @rtc_gpio_isolate(i32 %43)
  %45 = call i32 (...) @esp_deep_sleep_disable_rom_logging()
  %46 = call i32 @ulp_set_wakeup_period(i32 0, i32 20000)
  %47 = load i32, i32* @RTC_SLOW_MEM, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 0, %48
  %50 = getelementptr inbounds i32, i32* @ulp_entry, i64 %49
  %51 = call i32 @ulp_run(i32* %50)
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @ESP_ERROR_CHECK(i32 %52)
  ret void
}

declare dso_local i32 @ulp_load_binary(i32, i32, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rtc_gpio_init(i64) #1

declare dso_local i32 @rtc_gpio_set_direction(i64, i32) #1

declare dso_local i32 @rtc_gpio_pulldown_dis(i64) #1

declare dso_local i32 @rtc_gpio_pullup_dis(i64) #1

declare dso_local i32 @rtc_gpio_hold_en(i64) #1

declare dso_local i32 @rtc_gpio_isolate(i32) #1

declare dso_local i32 @esp_deep_sleep_disable_rom_logging(...) #1

declare dso_local i32 @ulp_set_wakeup_period(i32, i32) #1

declare dso_local i32 @ulp_run(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
