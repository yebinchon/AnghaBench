; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_dport.c_run_tasks_with_change_freq_cpu.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_dport.c_run_tasks_with_change_freq_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@CONFIG_ESP_CONSOLE_UART_NUM = common dso_local global i32 0, align 4
@CONFIG_ESP_CONSOLE_UART_BAUDRATE = common dso_local global i32 0, align 4
@dport_test_result = common dso_local global i32 0, align 4
@apb_test_result = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"CPU_FREQ = %d MHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid frequency value\00", align 1
@XT_TICK_PER_SEC = common dso_local global i32 0, align 4
@_xt_tick_divisor = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"CPU_FREQ switched to %d MHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"accessDPORT\00", align 1
@accessDPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"accessAPB\00", align 1
@accessAPB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_tasks_with_change_freq_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @CONFIG_ESP_CONSOLE_UART_NUM, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @CONFIG_ESP_CONSOLE_UART_BAUDRATE, align 4
  store i32 %9, i32* %4, align 4
  store i32 0, i32* @dport_test_result, align 4
  store i32 0, i32* @apb_test_result, align 4
  %10 = call i32 @rtc_clk_cpu_freq_get_config(%struct.TYPE_5__* %5)
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %1
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @rtc_clk_cpu_freq_mhz_to_config(i32 %19, %struct.TYPE_5__* %6)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %18
  %25 = phi i1 [ false, %18 ], [ true, %23 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @uart_tx_wait_idle(i32 %28)
  %30 = call i32 @rtc_clk_cpu_freq_set_config(%struct.TYPE_5__* %6)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (...) @rtc_clk_apb_freq_get()
  %33 = shl i32 %32, 4
  %34 = load i32, i32* %4, align 4
  %35 = sdiv i32 %33, %34
  %36 = call i32 @uart_div_modify(i32 %31, i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = mul nsw i32 %37, 1000000
  %39 = load i32, i32* @XT_TICK_PER_SEC, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* @_xt_tick_divisor, align 4
  %41 = call i32 @vTaskDelay(i32 2)
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %24, %1
  %45 = load i32, i32* @accessDPORT, align 4
  %46 = load i32, i32* @accessAPB, align 4
  %47 = call i32 @run_tasks(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %46, i32 10000)
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @uart_tx_wait_idle(i32 %48)
  %50 = call i32 @rtc_clk_cpu_freq_set_config(%struct.TYPE_5__* %5)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (...) @rtc_clk_apb_freq_get()
  %53 = shl i32 %52, 4
  %54 = load i32, i32* %4, align 4
  %55 = sdiv i32 %53, %54
  %56 = call i32 @uart_div_modify(i32 %51, i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 1000000
  %60 = load i32, i32* @XT_TICK_PER_SEC, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* @_xt_tick_divisor, align 4
  ret void
}

declare dso_local i32 @rtc_clk_cpu_freq_get_config(%struct.TYPE_5__*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @rtc_clk_cpu_freq_mhz_to_config(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uart_tx_wait_idle(i32) #1

declare dso_local i32 @rtc_clk_cpu_freq_set_config(%struct.TYPE_5__*) #1

declare dso_local i32 @uart_div_modify(i32, i32) #1

declare dso_local i32 @rtc_clk_apb_freq_get(...) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @run_tasks(i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
