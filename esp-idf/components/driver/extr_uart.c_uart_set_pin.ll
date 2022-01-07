; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_set_pin.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_set_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"uart_num error\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"tx_io_num error\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"rx_io_num error\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"rts_io_num error\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"cts_io_num error\00", align 1
@U0TXD_OUT_IDX = common dso_local global i32 0, align 4
@U0RXD_IN_IDX = common dso_local global i32 0, align 4
@U0RTS_OUT_IDX = common dso_local global i32 0, align 4
@U0CTS_IN_IDX = common dso_local global i32 0, align 4
@U1TXD_OUT_IDX = common dso_local global i32 0, align 4
@U1RXD_IN_IDX = common dso_local global i32 0, align 4
@U1RTS_OUT_IDX = common dso_local global i32 0, align 4
@U1CTS_IN_IDX = common dso_local global i32 0, align 4
@GPIO_PIN_MUX_REG = common dso_local global i32* null, align 8
@PIN_FUNC_GPIO = common dso_local global i32 0, align 4
@GPIO_PULLUP_ONLY = common dso_local global i32 0, align 4
@GPIO_MODE_INPUT = common dso_local global i32 0, align 4
@GPIO_MODE_OUTPUT = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@U2CTS_IN_IDX = common dso_local global i32 0, align 4
@U2RTS_OUT_IDX = common dso_local global i32 0, align 4
@U2RXD_IN_IDX = common dso_local global i32 0, align 4
@U2TXD_OUT_IDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_set_pin(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 128
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @ESP_FAIL, align 4
  %19 = call i32 @UART_CHECK(i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @GPIO_IS_VALID_OUTPUT_GPIO(i32 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %22, %5
  %27 = phi i1 [ true, %5 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @ESP_FAIL, align 4
  %30 = call i32 @UART_CHECK(i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @GPIO_IS_VALID_GPIO(i32 %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %33, %26
  %38 = phi i1 [ true, %26 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* @ESP_FAIL, align 4
  %41 = call i32 @UART_CHECK(i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @GPIO_IS_VALID_OUTPUT_GPIO(i32 %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %44, %37
  %49 = phi i1 [ true, %37 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* @ESP_FAIL, align 4
  %52 = call i32 @UART_CHECK(i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @GPIO_IS_VALID_GPIO(i32 %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %55, %48
  %60 = phi i1 [ true, %48 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* @ESP_FAIL, align 4
  %63 = call i32 @UART_CHECK(i32 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %6, align 4
  switch i32 %64, label %76 [
    i32 131, label %65
    i32 130, label %70
    i32 128, label %75
  ]

65:                                               ; preds = %59
  %66 = load i32, i32* @U0TXD_OUT_IDX, align 4
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* @U0RXD_IN_IDX, align 4
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* @U0RTS_OUT_IDX, align 4
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* @U0CTS_IN_IDX, align 4
  store i32 %69, i32* %14, align 4
  br label %81

70:                                               ; preds = %59
  %71 = load i32, i32* @U1TXD_OUT_IDX, align 4
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* @U1RXD_IN_IDX, align 4
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* @U1RTS_OUT_IDX, align 4
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* @U1CTS_IN_IDX, align 4
  store i32 %74, i32* %14, align 4
  br label %81

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %59, %75
  %77 = load i32, i32* @U0TXD_OUT_IDX, align 4
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* @U0RXD_IN_IDX, align 4
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* @U0RTS_OUT_IDX, align 4
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* @U0CTS_IN_IDX, align 4
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %76, %70, %65
  %82 = load i32, i32* %7, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %91 = call i32 @PIN_FUNC_SELECT(i32 %89, i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @gpio_set_level(i32 %92, i32 1)
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @gpio_matrix_out(i32 %94, i32 %95, i32 0, i32 0)
  br label %97

97:                                               ; preds = %84, %81
  %98 = load i32, i32* %8, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %97
  %101 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %107 = call i32 @PIN_FUNC_SELECT(i32 %105, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @GPIO_PULLUP_ONLY, align 4
  %110 = call i32 @gpio_set_pull_mode(i32 %108, i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @GPIO_MODE_INPUT, align 4
  %113 = call i32 @gpio_set_direction(i32 %111, i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @gpio_matrix_in(i32 %114, i32 %115, i32 0)
  br label %117

117:                                              ; preds = %100, %97
  %118 = load i32, i32* %9, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %127 = call i32 @PIN_FUNC_SELECT(i32 %125, i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @GPIO_MODE_OUTPUT, align 4
  %130 = call i32 @gpio_set_direction(i32 %128, i32 %129)
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @gpio_matrix_out(i32 %131, i32 %132, i32 0, i32 0)
  br label %134

134:                                              ; preds = %120, %117
  %135 = load i32, i32* %10, align 4
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %134
  %138 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %144 = call i32 @PIN_FUNC_SELECT(i32 %142, i32 %143)
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @GPIO_PULLUP_ONLY, align 4
  %147 = call i32 @gpio_set_pull_mode(i32 %145, i32 %146)
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @GPIO_MODE_INPUT, align 4
  %150 = call i32 @gpio_set_direction(i32 %148, i32 %149)
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %14, align 4
  %153 = call i32 @gpio_matrix_in(i32 %151, i32 %152, i32 0)
  br label %154

154:                                              ; preds = %137, %134
  %155 = load i32, i32* @ESP_OK, align 4
  ret i32 %155
}

declare dso_local i32 @UART_CHECK(i32, i8*, i32) #1

declare dso_local i64 @GPIO_IS_VALID_OUTPUT_GPIO(i32) #1

declare dso_local i64 @GPIO_IS_VALID_GPIO(i32) #1

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

declare dso_local i32 @gpio_set_level(i32, i32) #1

declare dso_local i32 @gpio_matrix_out(i32, i32, i32, i32) #1

declare dso_local i32 @gpio_set_pull_mode(i32, i32) #1

declare dso_local i32 @gpio_set_direction(i32, i32) #1

declare dso_local i32 @gpio_matrix_in(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
