; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_serial.c_uart_putc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_serial.c_uart_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8)*, i32 (...)* }

@uart_initted = common dso_local global i64 0, align 8
@legacy_uart_enabled = common dso_local global i64 0, align 8
@lpss_uart_enabled = common dso_local global i64 0, align 8
@pcie_uart_enabled = common dso_local global i64 0, align 8
@gPESF = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @uart_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_putc(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i64, i64* @uart_initted, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = load i64, i64* @legacy_uart_enabled, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = load i64, i64* @lpss_uart_enabled, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i64, i64* @pcie_uart_enabled, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %11, %8, %5
  br label %15

15:                                               ; preds = %22, %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gPESF, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32 (...)*, i32 (...)** %17, align 8
  %19 = call i32 (...) %18()
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %15

23:                                               ; preds = %15
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gPESF, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (i8)*, i32 (i8)** %25, align 8
  %27 = load i8, i8* %2, align 1
  %28 = call i32 %26(i8 signext %27)
  br label %29

29:                                               ; preds = %23, %11, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
