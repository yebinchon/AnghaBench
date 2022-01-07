; ModuleID = '/home/carl/AnghaBench/darwin-xnu/iokit/Kernel/extr_IOHibernateRestoreKernel.c_uart_putc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/iokit/Kernel/extr_IOHibernateRestoreKernel.c_uart_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COM1_PORT_ADDR = common dso_local global i64 0, align 8
@UART_LSR = common dso_local global i64 0, align 8
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_THR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @uart_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_putc(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  br label %3

3:                                                ; preds = %12, %1
  %4 = load i64, i64* @COM1_PORT_ADDR, align 8
  %5 = load i64, i64* @UART_LSR, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @inb(i64 %6)
  %8 = load i32, i32* @UART_LSR_THRE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %3

13:                                               ; preds = %3
  %14 = load i64, i64* @COM1_PORT_ADDR, align 8
  %15 = load i64, i64* @UART_THR, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i8, i8* %2, align 1
  %18 = call i32 @outb(i64 %16, i8 signext %17)
  ret void
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i64, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
