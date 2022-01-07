; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_pattern_get_pos.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_pattern_get_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32* }

@p_uart_obj = common dso_local global %struct.TYPE_5__** null, align 8
@.str = private unnamed_addr constant [18 x i8] c"uart driver error\00", align 1
@uart_spinlock = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_pattern_get_pos(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @p_uart_obj, align 8
  %6 = load i64, i64* %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %5, i64 %6
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = call i32 @UART_CHECK(%struct.TYPE_5__* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 -1)
  %10 = load i32*, i32** @uart_spinlock, align 8
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = call i32 @UART_ENTER_CRITICAL(i32* %12)
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @p_uart_obj, align 8
  %15 = load i64, i64* %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %14, i64 %15
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %3, align 8
  store i32 -1, i32* %4, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %29, %21, %1
  %39 = load i32*, i32** @uart_spinlock, align 8
  %40 = load i64, i64* %2, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i32 @UART_EXIT_CRITICAL(i32* %41)
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @UART_CHECK(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @UART_ENTER_CRITICAL(i32*) #1

declare dso_local i32 @UART_EXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
