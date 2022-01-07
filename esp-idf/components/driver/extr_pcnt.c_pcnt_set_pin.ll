; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_pcnt.c_pcnt_set_pin.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_pcnt.c_pcnt_set_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCNT_UNIT_MAX = common dso_local global i32 0, align 4
@PCNT_UNIT_ERR_STR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@PCNT_CHANNEL_MAX = common dso_local global i64 0, align 8
@PCNT_CHANNEL_ERR_STR = common dso_local global i32 0, align 4
@PCNT_GPIO_ERR_STR = common dso_local global i32 0, align 4
@PCNT_SIG_CH0_IN0_IDX = common dso_local global i32 0, align 4
@PCNT_SIG_CH1_IN0_IDX = common dso_local global i32 0, align 4
@PCNT_CTRL_CH0_IN0_IDX = common dso_local global i32 0, align 4
@PCNT_CTRL_CH1_IN0_IDX = common dso_local global i32 0, align 4
@GPIO_PIN_MUX_REG = common dso_local global i32* null, align 8
@PIN_FUNC_GPIO = common dso_local global i32 0, align 4
@GPIO_MODE_INPUT = common dso_local global i32 0, align 4
@GPIO_PULLUP_ONLY = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcnt_set_pin(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PCNT_UNIT_MAX, align 4
  %15 = icmp slt i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* @PCNT_UNIT_ERR_STR, align 4
  %18 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %19 = call i32 @PCNT_CHECK(i32 %16, i32 %17, i32 %18)
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @PCNT_CHANNEL_MAX, align 8
  %22 = icmp slt i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @PCNT_CHANNEL_ERR_STR, align 4
  %25 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %26 = call i32 @PCNT_CHECK(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @GPIO_IS_VALID_GPIO(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br label %33

33:                                               ; preds = %30, %4
  %34 = phi i1 [ true, %4 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* @PCNT_GPIO_ERR_STR, align 4
  %37 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %38 = call i32 @PCNT_CHECK(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @GPIO_IS_VALID_GPIO(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br label %45

45:                                               ; preds = %42, %33
  %46 = phi i1 [ true, %33 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* @PCNT_GPIO_ERR_STR, align 4
  %49 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %50 = call i32 @PCNT_CHECK(i32 %47, i32 %48, i32 %49)
  %51 = load i64, i64* %6, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @PCNT_SIG_CH0_IN0_IDX, align 4
  br label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @PCNT_SIG_CH1_IN0_IDX, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %9, align 4
  %59 = load i64, i64* %6, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @PCNT_CTRL_CH0_IN0_IDX, align 4
  br label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @PCNT_CTRL_CH1_IN0_IDX, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp sgt i32 %67, 4
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 12
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 12
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %69, %65
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %5, align 4
  %77 = mul nsw i32 4, %76
  %78 = add nsw i32 %75, %77
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %5, align 4
  %81 = mul nsw i32 4, %80
  %82 = add nsw i32 %79, %81
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %74
  %86 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %92 = call i32 @PIN_FUNC_SELECT(i32 %90, i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @GPIO_MODE_INPUT, align 4
  %95 = call i32 @gpio_set_direction(i32 %93, i32 %94)
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @GPIO_PULLUP_ONLY, align 4
  %98 = call i32 @gpio_set_pull_mode(i32 %96, i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @gpio_matrix_in(i32 %99, i32 %100, i32 0)
  br label %102

102:                                              ; preds = %85, %74
  %103 = load i32, i32* %8, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %102
  %106 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %112 = call i32 @PIN_FUNC_SELECT(i32 %110, i32 %111)
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @GPIO_MODE_INPUT, align 4
  %115 = call i32 @gpio_set_direction(i32 %113, i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @GPIO_PULLUP_ONLY, align 4
  %118 = call i32 @gpio_set_pull_mode(i32 %116, i32 %117)
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @gpio_matrix_in(i32 %119, i32 %120, i32 0)
  br label %122

122:                                              ; preds = %105, %102
  %123 = load i32, i32* @ESP_OK, align 4
  ret i32 %123
}

declare dso_local i32 @PCNT_CHECK(i32, i32, i32) #1

declare dso_local i64 @GPIO_IS_VALID_GPIO(i32) #1

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

declare dso_local i32 @gpio_set_direction(i32, i32) #1

declare dso_local i32 @gpio_set_pull_mode(i32, i32) #1

declare dso_local i32 @gpio_matrix_in(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
