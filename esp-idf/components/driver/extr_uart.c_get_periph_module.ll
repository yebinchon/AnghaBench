; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_get_periph_module.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_get_periph_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERIPH_UART0_MODULE = common dso_local global i32 0, align 4
@UART_NUM_0 = common dso_local global i64 0, align 8
@UART_NUM_1 = common dso_local global i64 0, align 8
@PERIPH_UART1_MODULE = common dso_local global i32 0, align 4
@PERIPH_UART2_MODULE = common dso_local global i32 0, align 4
@UART_NUM_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @get_periph_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_periph_module(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @PERIPH_UART0_MODULE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @UART_NUM_0, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @PERIPH_UART0_MODULE, align 4
  store i32 %9, i32* %3, align 4
  br label %19

10:                                               ; preds = %1
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @UART_NUM_1, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @PERIPH_UART1_MODULE, align 4
  store i32 %15, i32* %3, align 4
  br label %18

16:                                               ; preds = %10
  %17 = call i32 @assert(i32 0)
  br label %18

18:                                               ; preds = %16, %14
  br label %19

19:                                               ; preds = %18, %8
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
