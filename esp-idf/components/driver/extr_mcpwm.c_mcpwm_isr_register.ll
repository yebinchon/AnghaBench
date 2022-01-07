; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_isr_register.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_isr_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCPWM_UNIT_MAX = common dso_local global i64 0, align 8
@MCPWM_UNIT_NUM_ERROR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@MCPWM_PARAM_ADDR_ERROR = common dso_local global i32 0, align 4
@ETS_PWM0_INTR_SOURCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcpwm_isr_register(i64 %0, void (i8*)* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca void (i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store void (i8*)* %1, void (i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @MCPWM_UNIT_MAX, align 8
  %14 = icmp slt i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @MCPWM_UNIT_NUM_ERROR, align 4
  %17 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %18 = call i32 @MCPWM_CHECK(i32 %15, i32 %16, i32 %17)
  %19 = load void (i8*)*, void (i8*)** %7, align 8
  %20 = icmp ne void (i8*)* %19, null
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @MCPWM_PARAM_ADDR_ERROR, align 4
  %23 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %24 = call i32 @MCPWM_CHECK(i32 %21, i32 %22, i32 %23)
  %25 = load i64, i64* @ETS_PWM0_INTR_SOURCE, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* %9, align 4
  %29 = load void (i8*)*, void (i8*)** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @esp_intr_alloc(i64 %27, i32 %28, void (i8*)* %29, i8* %30, i32* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  ret i32 %33
}

declare dso_local i32 @MCPWM_CHECK(i32, i32, i32) #1

declare dso_local i32 @esp_intr_alloc(i64, i32, void (i8*)*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
