; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_serial.c_uart_getc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_serial.c_uart_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (...)* }

@uart_initted = common dso_local global i64 0, align 8
@legacy_uart_enabled = common dso_local global i64 0, align 8
@lpss_uart_enabled = common dso_local global i64 0, align 8
@pcie_uart_enabled = common dso_local global i64 0, align 8
@gPESF = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @uart_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_getc() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @uart_initted, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %25

4:                                                ; preds = %0
  %5 = load i64, i64* @legacy_uart_enabled, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = load i64, i64* @lpss_uart_enabled, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i64, i64* @pcie_uart_enabled, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %10, %7, %4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gPESF, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32 (...)*, i32 (...)** %15, align 8
  %17 = call i32 (...) %16()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 -1, i32* %1, align 4
  br label %26

20:                                               ; preds = %13
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gPESF, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (...)*, i32 (...)** %22, align 8
  %24 = call i32 (...) %23()
  store i32 %24, i32* %1, align 4
  br label %26

25:                                               ; preds = %10, %0
  store i32 -1, i32* %1, align 4
  br label %26

26:                                               ; preds = %25, %20, %19
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
