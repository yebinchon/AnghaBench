; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_pwm.c_get_action_level.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_pwm.c_get_action_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCPWM_NO_CHANGE_IN_MCPWMXA = common dso_local global i64 0, align 8
@GPIO_PWMA_PCNT_INPUT = common dso_local global i32 0, align 4
@PCNT_CTRL_FLOATING_IO1 = common dso_local global i32 0, align 4
@MCPWM_FORCE_MCPWMXA_LOW = common dso_local global i64 0, align 8
@MCPWM_FORCE_MCPWMXA_HIGH = common dso_local global i64 0, align 8
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@MCPWM_NO_CHANGE_IN_MCPWMXB = common dso_local global i64 0, align 8
@GPIO_PWMB_PCNT_INPUT = common dso_local global i32 0, align 4
@MCPWM_FORCE_MCPWMXB_LOW = common dso_local global i64 0, align 8
@MCPWM_FORCE_MCPWMXB_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i32, i32)* @get_action_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_action_level(i32 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @MCPWM_NO_CHANGE_IN_MCPWMXA, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @GPIO_PWMA_PCNT_INPUT, align 4
  %19 = load i32, i32* @PCNT_CTRL_FLOATING_IO1, align 4
  %20 = call i32 @pcnt_count(i32 %18, i32 %19, i32 1000)
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @TEST_ASSERT_INT16_WITHIN(i32 %17, i32 %20, i32 %21)
  br label %57

23:                                               ; preds = %5
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @MCPWM_FORCE_MCPWMXA_LOW, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @GPIO_PWMA_PCNT_INPUT, align 4
  %29 = call i32 @gpio_get_level(i32 %28)
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @TEST_ASSERT(i32 %31)
  br label %56

33:                                               ; preds = %23
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @MCPWM_FORCE_MCPWMXA_HIGH, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @GPIO_PWMA_PCNT_INPUT, align 4
  %39 = call i32 @gpio_get_level(i32 %38)
  %40 = icmp eq i32 %39, 1
  %41 = zext i1 %40 to i32
  %42 = call i32 @TEST_ASSERT(i32 %41)
  br label %55

43:                                               ; preds = %33
  %44 = load i32, i32* @GPIO_PWMA_PCNT_INPUT, align 4
  %45 = call i32 @gpio_get_level(i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @portTICK_RATE_MS, align 4
  %47 = sdiv i32 100, %46
  %48 = call i32 @vTaskDelay(i32 %47)
  %49 = load i32, i32* @GPIO_PWMA_PCNT_INPUT, align 4
  %50 = call i32 @gpio_get_level(i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @TEST_ASSERT(i32 %53)
  br label %55

55:                                               ; preds = %43, %37
  br label %56

56:                                               ; preds = %55, %27
  br label %57

57:                                               ; preds = %56, %16
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @MCPWM_NO_CHANGE_IN_MCPWMXB, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @GPIO_PWMB_PCNT_INPUT, align 4
  %64 = load i32, i32* @PCNT_CTRL_FLOATING_IO1, align 4
  %65 = call i32 @pcnt_count(i32 %63, i32 %64, i32 1000)
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @TEST_ASSERT_INT16_WITHIN(i32 %62, i32 %65, i32 %66)
  br label %102

68:                                               ; preds = %57
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @MCPWM_FORCE_MCPWMXB_LOW, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* @GPIO_PWMB_PCNT_INPUT, align 4
  %74 = call i32 @gpio_get_level(i32 %73)
  %75 = icmp eq i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @TEST_ASSERT(i32 %76)
  br label %101

78:                                               ; preds = %68
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @MCPWM_FORCE_MCPWMXB_HIGH, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* @GPIO_PWMB_PCNT_INPUT, align 4
  %84 = call i32 @gpio_get_level(i32 %83)
  %85 = icmp eq i32 %84, 1
  %86 = zext i1 %85 to i32
  %87 = call i32 @TEST_ASSERT(i32 %86)
  br label %100

88:                                               ; preds = %78
  %89 = load i32, i32* @GPIO_PWMB_PCNT_INPUT, align 4
  %90 = call i32 @gpio_get_level(i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* @portTICK_RATE_MS, align 4
  %92 = sdiv i32 100, %91
  %93 = call i32 @vTaskDelay(i32 %92)
  %94 = load i32, i32* @GPIO_PWMB_PCNT_INPUT, align 4
  %95 = call i32 @gpio_get_level(i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @TEST_ASSERT(i32 %98)
  br label %100

100:                                              ; preds = %88, %82
  br label %101

101:                                              ; preds = %100, %72
  br label %102

102:                                              ; preds = %101, %61
  ret void
}

declare dso_local i32 @TEST_ASSERT_INT16_WITHIN(i32, i32, i32) #1

declare dso_local i32 @pcnt_count(i32, i32, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @gpio_get_level(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
