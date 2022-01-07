; ModuleID = '/home/carl/AnghaBench/darwin-xnu/iokit/Kernel/extr_IOHibernateRestoreKernel.c_debug_probe.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/iokit/Kernel/extr_IOHibernateRestoreKernel.c_debug_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COM1_PORT_ADDR = common dso_local global i64 0, align 8
@UART_SCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @debug_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_probe() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @COM1_PORT_ADDR, align 8
  %3 = load i64, i64* @UART_SCR, align 8
  %4 = add nsw i64 %2, %3
  %5 = call i32 @outb(i64 %4, i32 90)
  %6 = load i64, i64* @COM1_PORT_ADDR, align 8
  %7 = load i64, i64* @UART_SCR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @inb(i64 %8)
  %10 = icmp ne i32 %9, 90
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %25

12:                                               ; preds = %0
  %13 = load i64, i64* @COM1_PORT_ADDR, align 8
  %14 = load i64, i64* @UART_SCR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @outb(i64 %15, i32 165)
  %17 = load i64, i64* @COM1_PORT_ADDR, align 8
  %18 = load i64, i64* @UART_SCR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @inb(i64 %19)
  %21 = icmp ne i32 %20, 165
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %25

23:                                               ; preds = %12
  %24 = call i32 @uart_putc(i8 signext 10)
  store i32 1, i32* %1, align 4
  br label %25

25:                                               ; preds = %23, %22, %11
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @uart_putc(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
