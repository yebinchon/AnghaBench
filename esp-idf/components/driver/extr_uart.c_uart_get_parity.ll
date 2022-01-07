; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_get_parity.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_get_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@UART_NUM_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"uart_num error\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@UART = common dso_local global %struct.TYPE_4__** null, align 8
@UART_PARITY_EN_M = common dso_local global i32 0, align 4
@UART_PARITY_M = common dso_local global i32 0, align 4
@UART_PARITY_ODD = common dso_local global i32 0, align 4
@UART_PARITY_EVEN = common dso_local global i32 0, align 4
@UART_PARITY_DISABLE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_get_parity(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @UART_NUM_MAX, align 8
  %8 = icmp ult i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* @ESP_FAIL, align 4
  %11 = call i32 @UART_CHECK(i32 %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @UART, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %12, i64 %13
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @UART_PARITY_EN_M, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @UART_PARITY_M, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @UART_PARITY_ODD, align 4
  %30 = load i32*, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  br label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @UART_PARITY_EVEN, align 4
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @UART_PARITY_DISABLE, align 4
  %37 = load i32*, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %34
  %39 = load i32, i32* @ESP_OK, align 4
  ret i32 %39
}

declare dso_local i32 @UART_CHECK(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
