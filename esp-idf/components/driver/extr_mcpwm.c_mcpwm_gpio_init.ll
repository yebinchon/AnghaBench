; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_gpio_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCPWM_PIN_IGNORE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@MCPWM_UNIT_MAX = common dso_local global i64 0, align 8
@MCPWM_UNIT_NUM_ERROR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@MCPWM_GPIO_ERROR = common dso_local global i32 0, align 4
@PERIPH_PWM0_MODULE = common dso_local global i64 0, align 8
@GPIO_PIN_MUX_REG = common dso_local global i32* null, align 8
@PIN_FUNC_GPIO = common dso_local global i32 0, align 4
@MCPWM2B = common dso_local global i64 0, align 8
@MCPWM_UNIT_0 = common dso_local global i64 0, align 8
@GPIO_MODE_OUTPUT = common dso_local global i32 0, align 4
@PWM0_OUT0A_IDX = common dso_local global i64 0, align 8
@GPIO_MODE_INPUT = common dso_local global i32 0, align 4
@PWM0_SYNC0_IN_IDX = common dso_local global i64 0, align 8
@OFFSET_FOR_GPIO_IDX_1 = common dso_local global i64 0, align 8
@PWM1_OUT0A_IDX = common dso_local global i64 0, align 8
@MCPWM_SYNC_0 = common dso_local global i64 0, align 8
@MCPWM_FAULT_2 = common dso_local global i64 0, align 8
@PWM1_SYNC0_IN_IDX = common dso_local global i64 0, align 8
@OFFSET_FOR_GPIO_IDX_2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcpwm_gpio_init(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MCPWM_PIN_IGNORE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @ESP_OK, align 4
  store i32 %13, i32* %4, align 4
  br label %125

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @MCPWM_UNIT_MAX, align 8
  %17 = icmp slt i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @MCPWM_UNIT_NUM_ERROR, align 4
  %20 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %21 = call i32 @MCPWM_CHECK(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @GPIO_IS_VALID_GPIO(i32 %22)
  %24 = load i32, i32* @MCPWM_GPIO_ERROR, align 4
  %25 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %26 = call i32 @MCPWM_CHECK(i32 %23, i32 %24, i32 %25)
  %27 = load i64, i64* @PERIPH_PWM0_MODULE, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @periph_module_enable(i64 %29)
  %31 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %37 = call i32 @PIN_FUNC_SELECT(i32 %35, i32 %36)
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @MCPWM2B, align 8
  %40 = icmp sle i64 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %8, align 4
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @MCPWM_UNIT_0, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %14
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @GPIO_IS_VALID_OUTPUT_GPIO(i32 %49)
  %51 = load i32, i32* @MCPWM_GPIO_ERROR, align 4
  %52 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %53 = call i32 @MCPWM_CHECK(i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @GPIO_MODE_OUTPUT, align 4
  %56 = call i32 @gpio_set_direction(i32 %54, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = load i64, i64* @PWM0_OUT0A_IDX, align 8
  %59 = load i64, i64* %6, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @gpio_matrix_out(i32 %57, i64 %60, i32 0, i32 0)
  br label %73

62:                                               ; preds = %45
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @GPIO_MODE_INPUT, align 4
  %65 = call i32 @gpio_set_direction(i32 %63, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = load i64, i64* @PWM0_SYNC0_IN_IDX, align 8
  %68 = load i64, i64* %6, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i64, i64* @OFFSET_FOR_GPIO_IDX_1, align 8
  %71 = sub nsw i64 %69, %70
  %72 = call i32 @gpio_matrix_in(i32 %66, i64 %71, i32 0)
  br label %73

73:                                               ; preds = %62, %48
  br label %123

74:                                               ; preds = %14
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @GPIO_IS_VALID_OUTPUT_GPIO(i32 %78)
  %80 = load i32, i32* @MCPWM_GPIO_ERROR, align 4
  %81 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %82 = call i32 @MCPWM_CHECK(i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @GPIO_MODE_OUTPUT, align 4
  %85 = call i32 @gpio_set_direction(i32 %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = load i64, i64* @PWM1_OUT0A_IDX, align 8
  %88 = load i64, i64* %6, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @gpio_matrix_out(i32 %86, i64 %89, i32 0, i32 0)
  br label %122

91:                                               ; preds = %74
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* @MCPWM_SYNC_0, align 8
  %94 = icmp sge i64 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* @MCPWM_FAULT_2, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @GPIO_MODE_INPUT, align 4
  %102 = call i32 @gpio_set_direction(i32 %100, i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = load i64, i64* @PWM1_SYNC0_IN_IDX, align 8
  %105 = load i64, i64* %6, align 8
  %106 = add nsw i64 %104, %105
  %107 = load i64, i64* @OFFSET_FOR_GPIO_IDX_1, align 8
  %108 = sub nsw i64 %106, %107
  %109 = call i32 @gpio_matrix_in(i32 %103, i64 %108, i32 0)
  br label %121

110:                                              ; preds = %95, %91
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @GPIO_MODE_INPUT, align 4
  %113 = call i32 @gpio_set_direction(i32 %111, i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = load i64, i64* @PWM1_SYNC0_IN_IDX, align 8
  %116 = load i64, i64* %6, align 8
  %117 = add nsw i64 %115, %116
  %118 = load i64, i64* @OFFSET_FOR_GPIO_IDX_2, align 8
  %119 = sub nsw i64 %117, %118
  %120 = call i32 @gpio_matrix_in(i32 %114, i64 %119, i32 0)
  br label %121

121:                                              ; preds = %110, %99
  br label %122

122:                                              ; preds = %121, %77
  br label %123

123:                                              ; preds = %122, %73
  %124 = load i32, i32* @ESP_OK, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %123, %12
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @MCPWM_CHECK(i32, i32, i32) #1

declare dso_local i32 @GPIO_IS_VALID_GPIO(i32) #1

declare dso_local i32 @periph_module_enable(i64) #1

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

declare dso_local i32 @GPIO_IS_VALID_OUTPUT_GPIO(i32) #1

declare dso_local i32 @gpio_set_direction(i32, i32) #1

declare dso_local i32 @gpio_matrix_out(i32, i64, i32, i32) #1

declare dso_local i32 @gpio_matrix_in(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
