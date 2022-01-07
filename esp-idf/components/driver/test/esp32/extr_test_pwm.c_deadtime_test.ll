; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_pwm.c_deadtime_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_pwm.c_deadtime_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCPWM_BYPASS_RED = common dso_local global i32 0, align 4
@MCPWM_BYPASS_FED = common dso_local global i32 0, align 4
@MCPWM_ACTIVE_HIGH_MODE = common dso_local global i32 0, align 4
@MCPWM_ACTIVE_LOW_MODE = common dso_local global i32 0, align 4
@MCPWM_ACTIVE_HIGH_COMPLIMENT_MODE = common dso_local global i32 0, align 4
@MCPWM_ACTIVE_LOW_COMPLIMENT_MODE = common dso_local global i32 0, align 4
@MCPWM_ACTIVE_RED_FED_FROM_PWMXA = common dso_local global i32 0, align 4
@MCPWM_ACTIVE_RED_FED_FROM_PWMXB = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @deadtime_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deadtime_test(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @mcpwm_basic_config(i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %17 = load i32, i32* @MCPWM_BYPASS_RED, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @MCPWM_BYPASS_FED, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @MCPWM_ACTIVE_HIGH_MODE, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @MCPWM_ACTIVE_LOW_MODE, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @MCPWM_ACTIVE_HIGH_COMPLIMENT_MODE, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @MCPWM_ACTIVE_LOW_COMPLIMENT_MODE, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @MCPWM_ACTIVE_RED_FED_FROM_PWMXA, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @MCPWM_ACTIVE_RED_FED_FROM_PWMXB, align 4
  store i32 %31, i32* %30, align 4
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %49, %4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mcpwm_deadtime_enable(i32 %36, i32 %37, i32 %41, i32 1000, i32 1000)
  %43 = load i32, i32* @portTICK_RATE_MS, align 4
  %44 = sdiv i32 1000, %43
  %45 = call i32 @vTaskDelay(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @mcpwm_deadtime_disable(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %32

52:                                               ; preds = %32
  ret void
}

declare dso_local i32 @mcpwm_basic_config(i32, i32, i32, i32) #1

declare dso_local i32 @mcpwm_deadtime_enable(i32, i32, i32, i32, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @mcpwm_deadtime_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
