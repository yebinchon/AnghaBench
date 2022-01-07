; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_serial.c_uart_putc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_serial.c_uart_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8)*, i32 (...)* }

@uart_initted = common dso_local global i64 0, align 8
@gPESF = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_putc(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i64, i64* @uart_initted, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %13, %5
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gPESF, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32 (...)*, i32 (...)** %8, align 8
  %10 = call i32 (...) %9()
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %6

14:                                               ; preds = %6
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gPESF, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i8)*, i32 (i8)** %16, align 8
  %18 = load i8, i8* %2, align 1
  %19 = call i32 %17(i8 signext %18)
  br label %20

20:                                               ; preds = %14, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
