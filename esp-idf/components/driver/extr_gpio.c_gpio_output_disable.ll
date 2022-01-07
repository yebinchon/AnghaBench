; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_gpio.c_gpio_output_disable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_gpio.c_gpio_output_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"GPIO number error\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@GPIO = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GPIO_FUNC0_OUT_SEL_CFG_REG = common dso_local global i64 0, align 8
@SIG_GPIO_OUT_IDX = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gpio_output_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_output_disable(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @GPIO_IS_VALID_GPIO(i32 %3)
  %5 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %6 = call i32 @GPIO_CHECK(i32 %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 32
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @GPIO, i32 0, i32 0), align 4
  br label %16

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = sub nsw i32 %13, 32
  %15 = shl i32 1, %14
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @GPIO, i32 0, i32 1, i32 0), align 4
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i64, i64* @GPIO_FUNC0_OUT_SEL_CFG_REG, align 8
  %18 = load i32, i32* %2, align 4
  %19 = mul nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = load i32, i32* @SIG_GPIO_OUT_IDX, align 4
  %23 = call i32 @REG_WRITE(i64 %21, i32 %22)
  %24 = load i32, i32* @ESP_OK, align 4
  ret i32 %24
}

declare dso_local i32 @GPIO_CHECK(i32, i8*, i32) #1

declare dso_local i32 @GPIO_IS_VALID_GPIO(i32) #1

declare dso_local i32 @REG_WRITE(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
