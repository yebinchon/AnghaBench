; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_gpio.c_gpio_isr_level_handler2.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_gpio.c_gpio_isr_level_handler2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@level_intr_times = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"GPIO[%d] intr, val: %d\0A\00", align 1
@GPIO_OUTPUT_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"GPIO[%d] intr, val: %d, level_intr_times = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @gpio_isr_level_handler2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_isr_level_handler2(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = ptrtoint i8* %4 to i32
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @level_intr_times, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @level_intr_times, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @gpio_get_level(i32 %9)
  %11 = call i32 (i8*, i32, i64, ...) @ets_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %8, i64 %10)
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @gpio_get_level(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @GPIO_OUTPUT_IO, align 4
  %17 = call i32 @gpio_set_level(i32 %16, i32 0)
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @GPIO_OUTPUT_IO, align 4
  %20 = call i32 @gpio_set_level(i32 %19, i32 1)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* @GPIO_OUTPUT_IO, align 4
  %23 = load i32, i32* @GPIO_OUTPUT_IO, align 4
  %24 = call i64 @gpio_get_level(i32 %23)
  %25 = load i32, i32* @level_intr_times, align 4
  %26 = call i32 (i8*, i32, i64, ...) @ets_printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %22, i64 %24, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @gpio_get_level(i32 %28)
  %30 = load i32, i32* @level_intr_times, align 4
  %31 = call i32 (i8*, i32, i64, ...) @ets_printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %27, i64 %29, i32 %30)
  ret void
}

declare dso_local i32 @ets_printf(i8*, i32, i64, ...) #1

declare dso_local i64 @gpio_get_level(i32) #1

declare dso_local i32 @gpio_set_level(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
