; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_serial.c_mmio_uart_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_serial.c_mmio_uart_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i64)* }

@MCR = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@FCR = common dso_local global i32 0, align 4
@LCR = common dso_local global i32 0, align 4
@UART_LCR_8BITS = common dso_local global i32 0, align 4
@uart_baud_rate = common dso_local global i64 0, align 8
@DEFAULT_UART_BAUD_RATE = common dso_local global i64 0, align 8
@gPESF = common dso_local global %struct.TYPE_2__* null, align 8
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@RBR = common dso_local global i32 0, align 4
@uart_initted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mmio_uart_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmio_uart_init() #0 {
  %1 = load i32, i32* @MCR, align 4
  %2 = call i32 @MMIO_WRITE(i32 %1, i32 0)
  %3 = load i32, i32* @IER, align 4
  %4 = call i32 @MMIO_WRITE(i32 %3, i32 0)
  %5 = load i32, i32* @FCR, align 4
  %6 = call i32 @MMIO_WRITE(i32 %5, i32 0)
  %7 = load i32, i32* @LCR, align 4
  %8 = load i32, i32* @UART_LCR_8BITS, align 4
  %9 = call i32 @MMIO_WRITE(i32 %7, i32 %8)
  %10 = load i64, i64* @uart_baud_rate, align 8
  %11 = load i64, i64* @DEFAULT_UART_BAUD_RATE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gPESF, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32, i64)*, i32 (i32, i64)** %15, align 8
  %17 = load i64, i64* @uart_baud_rate, align 8
  %18 = call i32 %16(i32 0, i64 %17)
  br label %19

19:                                               ; preds = %13, %0
  %20 = load i32, i32* @MCR, align 4
  %21 = load i32, i32* @UART_MCR_DTR, align 4
  %22 = load i32, i32* @UART_MCR_RTS, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @MMIO_WRITE(i32 %20, i32 %23)
  %25 = load i32, i32* @RBR, align 4
  %26 = call i32 @MMIO_READ(i32 %25)
  store i32 1, i32* @uart_initted, align 4
  ret void
}

declare dso_local i32 @MMIO_WRITE(i32, i32) #1

declare dso_local i32 @MMIO_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
