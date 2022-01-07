; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rmt.c_rmt_set_pin.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rmt.c_rmt_set_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RMT_CHANNEL_MAX = common dso_local global i64 0, align 8
@RMT_CHANNEL_ERROR_STR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@RMT_MODE_MAX = common dso_local global i64 0, align 8
@RMT_MODE_ERROR_STR = common dso_local global i32 0, align 4
@RMT_MODE_RX = common dso_local global i64 0, align 8
@RMT_MODE_TX = common dso_local global i64 0, align 8
@RMT_GPIO_ERROR_STR = common dso_local global i32 0, align 4
@GPIO_PIN_MUX_REG = common dso_local global i32* null, align 8
@PIN_FUNC_GPIO = common dso_local global i32 0, align 4
@GPIO_MODE_OUTPUT = common dso_local global i32 0, align 4
@RMT_SIG_OUT0_IDX = common dso_local global i64 0, align 8
@GPIO_MODE_INPUT = common dso_local global i32 0, align 4
@RMT_SIG_IN0_IDX = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmt_set_pin(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @RMT_CHANNEL_MAX, align 8
  %9 = icmp slt i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* @RMT_CHANNEL_ERROR_STR, align 4
  %12 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %13 = call i32 @RMT_CHECK(i32 %10, i32 %11, i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @RMT_MODE_MAX, align 8
  %16 = icmp slt i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @RMT_MODE_ERROR_STR, align 4
  %19 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %20 = call i32 @RMT_CHECK(i32 %17, i32 %18, i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @GPIO_IS_VALID_GPIO(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @RMT_MODE_RX, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %24, %3
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @GPIO_IS_VALID_OUTPUT_GPIO(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @RMT_MODE_TX, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ false, %28 ], [ %35, %32 ]
  br label %38

38:                                               ; preds = %36, %24
  %39 = phi i1 [ true, %24 ], [ %37, %36 ]
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* @RMT_GPIO_ERROR_STR, align 4
  %42 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %43 = call i32 @RMT_CHECK(i32 %40, i32 %41, i32 %42)
  %44 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %49 = call i32 @PIN_FUNC_SELECT(i32 %47, i32 %48)
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @RMT_MODE_TX, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %38
  %54 = load i64, i64* %6, align 8
  %55 = load i32, i32* @GPIO_MODE_OUTPUT, align 4
  %56 = call i32 @gpio_set_direction(i64 %54, i32 %55)
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @RMT_SIG_OUT0_IDX, align 8
  %59 = load i64, i64* %4, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @gpio_matrix_out(i64 %57, i64 %60, i32 0, i32 0)
  br label %71

62:                                               ; preds = %38
  %63 = load i64, i64* %6, align 8
  %64 = load i32, i32* @GPIO_MODE_INPUT, align 4
  %65 = call i32 @gpio_set_direction(i64 %63, i32 %64)
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @RMT_SIG_IN0_IDX, align 8
  %68 = load i64, i64* %4, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @gpio_matrix_in(i64 %66, i64 %69, i32 0)
  br label %71

71:                                               ; preds = %62, %53
  %72 = load i32, i32* @ESP_OK, align 4
  ret i32 %72
}

declare dso_local i32 @RMT_CHECK(i32, i32, i32) #1

declare dso_local i64 @GPIO_IS_VALID_GPIO(i64) #1

declare dso_local i64 @GPIO_IS_VALID_OUTPUT_GPIO(i64) #1

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

declare dso_local i32 @gpio_set_direction(i64, i32) #1

declare dso_local i32 @gpio_matrix_out(i64, i64, i32, i32) #1

declare dso_local i32 @gpio_matrix_in(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
