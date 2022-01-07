; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_isr_register.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_isr_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UART_NUM_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"uart_num error\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@uart_spinlock = common dso_local global i32* null, align 8
@ETS_UART1_INTR_SOURCE = common dso_local global i32 0, align 4
@ETS_UART0_INTR_SOURCE = common dso_local global i32 0, align 4
@ETS_UART2_INTR_SOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_isr_register(i64 %0, void (i8*)* %1, i8* %2, i32 %3, i32* %4) #0 {
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
  %13 = load i64, i64* @UART_NUM_MAX, align 8
  %14 = icmp ult i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @ESP_FAIL, align 4
  %17 = call i32 @UART_CHECK(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** @uart_spinlock, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = call i32 @UART_ENTER_CRITICAL(i32* %20)
  %22 = load i64, i64* %6, align 8
  switch i64 %22, label %31 [
    i64 129, label %23
    i64 130, label %30
  ]

23:                                               ; preds = %5
  %24 = load i32, i32* @ETS_UART1_INTR_SOURCE, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load void (i8*)*, void (i8*)** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @esp_intr_alloc(i32 %24, i32 %25, void (i8*)* %26, i8* %27, i32* %28)
  store i32 %29, i32* %11, align 4
  br label %38

30:                                               ; preds = %5
  br label %31

31:                                               ; preds = %5, %30
  %32 = load i32, i32* @ETS_UART0_INTR_SOURCE, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load void (i8*)*, void (i8*)** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @esp_intr_alloc(i32 %32, i32 %33, void (i8*)* %34, i8* %35, i32* %36)
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %31, %23
  %39 = load i32*, i32** @uart_spinlock, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i32 @UART_EXIT_CRITICAL(i32* %41)
  %43 = load i32, i32* %11, align 4
  ret i32 %43
}

declare dso_local i32 @UART_CHECK(i32, i8*, i32) #1

declare dso_local i32 @UART_ENTER_CRITICAL(i32*) #1

declare dso_local i32 @esp_intr_alloc(i32, i32, void (i8*)*, i8*, i32*) #1

declare dso_local i32 @UART_EXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
