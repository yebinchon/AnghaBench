; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_check_buf_full.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_check_buf_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32 }

@p_uart_obj = common dso_local global %struct.TYPE_2__** null, align 8
@pdTRUE = common dso_local global i64 0, align 8
@uart_spinlock = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @uart_check_buf_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_check_buf_full(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @p_uart_obj, align 8
  %6 = load i64, i64* %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %5, i64 %6
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %72

12:                                               ; preds = %1
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @p_uart_obj, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @p_uart_obj, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @p_uart_obj, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @xRingbufferSend(i32 %18, i32 %24, i64 %30, i32 1)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @pdTRUE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %12
  %36 = load i32*, i32** @uart_spinlock, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i32 @UART_ENTER_CRITICAL(i32* %38)
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @p_uart_obj, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @p_uart_obj, align 8
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %45
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 8
  %55 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @p_uart_obj, align 8
  %56 = load i64, i64* %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %55, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load i32*, i32** @uart_spinlock, align 8
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = call i32 @UART_EXIT_CRITICAL(i32* %62)
  %64 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @p_uart_obj, align 8
  %65 = load i64, i64* %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %64, i64 %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @uart_enable_rx_intr(i32 %69)
  store i32 1, i32* %2, align 4
  br label %73

71:                                               ; preds = %12
  br label %72

72:                                               ; preds = %71, %1
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %35
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @xRingbufferSend(i32, i32, i64, i32) #1

declare dso_local i32 @UART_ENTER_CRITICAL(i32*) #1

declare dso_local i32 @UART_EXIT_CRITICAL(i32*) #1

declare dso_local i32 @uart_enable_rx_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
