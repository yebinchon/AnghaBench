; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_serial.c_legacy_uart_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_serial.c_legacy_uart_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)* }

@MCR = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@FCR = common dso_local global i32 0, align 4
@LCR = common dso_local global i32 0, align 4
@UART_LCR_8BITS = common dso_local global i32 0, align 4
@gPESF = common dso_local global %struct.TYPE_2__* null, align 8
@uart_baud_rate = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@RBR = common dso_local global i32 0, align 4
@uart_initted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @legacy_uart_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @legacy_uart_init() #0 {
  %1 = load i32, i32* @MCR, align 4
  %2 = call i32 @IO_WRITE(i32 %1, i32 0)
  %3 = load i32, i32* @IER, align 4
  %4 = call i32 @IO_WRITE(i32 %3, i32 0)
  %5 = load i32, i32* @FCR, align 4
  %6 = call i32 @IO_WRITE(i32 %5, i32 0)
  %7 = load i32, i32* @LCR, align 4
  %8 = load i32, i32* @UART_LCR_8BITS, align 4
  %9 = call i32 @IO_WRITE(i32 %7, i32 %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gPESF, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = load i32, i32* @uart_baud_rate, align 4
  %14 = call i32 %12(i32 0, i32 %13)
  %15 = load i32, i32* @MCR, align 4
  %16 = load i32, i32* @UART_MCR_DTR, align 4
  %17 = load i32, i32* @UART_MCR_RTS, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @IO_WRITE(i32 %15, i32 %18)
  %20 = load i32, i32* @RBR, align 4
  %21 = call i32 @IO_READ(i32 %20)
  store i32 1, i32* @uart_initted, align 4
  ret void
}

declare dso_local i32 @IO_WRITE(i32, i32) #1

declare dso_local i32 @IO_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
