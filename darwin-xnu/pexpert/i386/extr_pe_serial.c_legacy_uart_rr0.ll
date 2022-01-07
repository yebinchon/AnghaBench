; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_serial.c_legacy_uart_rr0.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_serial.c_legacy_uart_rr0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LSR = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i8 0, align 1
@UART_LSR_PE = common dso_local global i8 0, align 1
@UART_LSR_OE = common dso_local global i8 0, align 1
@RBR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @legacy_uart_rr0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_uart_rr0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = load i32, i32* @LSR, align 4
  %4 = call zeroext i8 @IO_READ(i32 %3)
  store i8 %4, i8* %2, align 1
  %5 = load i8, i8* %2, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* @UART_LSR_FE, align 1
  %8 = zext i8 %7 to i32
  %9 = load i8, i8* @UART_LSR_PE, align 1
  %10 = zext i8 %9 to i32
  %11 = or i32 %8, %10
  %12 = load i8, i8* @UART_LSR_OE, align 1
  %13 = zext i8 %12 to i32
  %14 = or i32 %11, %13
  %15 = and i32 %6, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i32, i32* @RBR, align 4
  %19 = call zeroext i8 @IO_READ(i32 %18)
  store i32 0, i32* %1, align 4
  br label %26

20:                                               ; preds = %0
  %21 = load i8, i8* %2, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @UART_LSR_DR, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %22, %24
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local zeroext i8 @IO_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
