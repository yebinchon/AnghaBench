; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_pattern_link_free.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_pattern_link_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i64, i64 }

@p_uart_obj = common dso_local global %struct.TYPE_5__** null, align 8
@.str = private unnamed_addr constant [18 x i8] c"uart driver error\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@uart_spinlock = common dso_local global i32* null, align 8
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @uart_pattern_link_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_pattern_link_free(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @p_uart_obj, align 8
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %4, i64 %5
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = load i32, i32* @ESP_FAIL, align 4
  %9 = call i32 @UART_CHECK(%struct.TYPE_5__* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @p_uart_obj, align 8
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %10, i64 %11
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %54

18:                                               ; preds = %1
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @p_uart_obj, align 8
  %20 = load i64, i64* %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %19, i64 %20
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %3, align 8
  %26 = load i32*, i32** @uart_spinlock, align 8
  %27 = load i64, i64* %2, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i32 @UART_ENTER_CRITICAL(i32* %28)
  %30 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @p_uart_obj, align 8
  %31 = load i64, i64* %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %30, i64 %31
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @p_uart_obj, align 8
  %37 = load i64, i64* %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %36, i64 %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @p_uart_obj, align 8
  %43 = load i64, i64* %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %42, i64 %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load i32*, i32** @uart_spinlock, align 8
  %49 = load i64, i64* %2, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = call i32 @UART_EXIT_CRITICAL(i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @free(i32* %52)
  br label %54

54:                                               ; preds = %18, %1
  %55 = load i32, i32* @ESP_OK, align 4
  ret i32 %55
}

declare dso_local i32 @UART_CHECK(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @UART_ENTER_CRITICAL(i32*) #1

declare dso_local i32 @UART_EXIT_CRITICAL(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
