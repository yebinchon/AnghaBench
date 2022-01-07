; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_set_line_inverse.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_set_line_inverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UART_NUM_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"uart_num error\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@UART_LINE_INV_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"inverse_mask error\00", align 1
@uart_spinlock = common dso_local global i32* null, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_set_line_inverse(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @UART_NUM_MAX, align 8
  %7 = icmp ult i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* @ESP_FAIL, align 4
  %10 = call i32 @UART_CHECK(i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @UART_LINE_INV_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i1 [ true, %2 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @ESP_FAIL, align 4
  %23 = call i32 @UART_CHECK(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** @uart_spinlock, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = call i32 @UART_ENTER_CRITICAL(i32* %26)
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @UART_CONF0_REG(i64 %28)
  %30 = load i32, i32* @UART_LINE_INV_MASK, align 4
  %31 = call i32 @CLEAR_PERI_REG_MASK(i32 %29, i32 %30)
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @UART_CONF0_REG(i64 %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @SET_PERI_REG_MASK(i32 %33, i32 %34)
  %36 = load i32*, i32** @uart_spinlock, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i32 @UART_EXIT_CRITICAL(i32* %38)
  %40 = load i32, i32* @ESP_OK, align 4
  ret i32 %40
}

declare dso_local i32 @UART_CHECK(i32, i8*, i32) #1

declare dso_local i32 @UART_ENTER_CRITICAL(i32*) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @UART_CONF0_REG(i64) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @UART_EXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
