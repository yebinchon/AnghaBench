; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_serial.c_lpss_uart_enable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_serial.c_lpss_uart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lpss_uart_supported = common dso_local global i32 0, align 4
@PCI_UART2 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@lpss_uart_enabled = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpss_uart_enable(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @lpss_uart_supported, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %33

7:                                                ; preds = %1
  %8 = load i64, i64* @PCI_UART2, align 8
  %9 = add nsw i64 %8, 132
  %10 = call i32 @ml_phys_read_byte(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @FALSE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, 3
  store i32 %16, i32* %3, align 4
  store i32 0, i32* @lpss_uart_enabled, align 4
  br label %20

17:                                               ; preds = %7
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, -4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i64, i64* @PCI_UART2, align 8
  %22 = add nsw i64 %21, 132
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ml_phys_write_byte(i64 %22, i32 %23)
  %25 = load i64, i64* @PCI_UART2, align 8
  %26 = add nsw i64 %25, 132
  %27 = call i32 @ml_phys_read_byte(i64 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i64, i64* %2, align 8
  %29 = load i64, i64* @TRUE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = call i32 (...) @lpss_uart_re_init()
  store i32 1, i32* @lpss_uart_enabled, align 4
  br label %33

33:                                               ; preds = %6, %31, %20
  ret void
}

declare dso_local i32 @ml_phys_read_byte(i64) #1

declare dso_local i32 @ml_phys_write_byte(i64, i32) #1

declare dso_local i32 @lpss_uart_re_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
