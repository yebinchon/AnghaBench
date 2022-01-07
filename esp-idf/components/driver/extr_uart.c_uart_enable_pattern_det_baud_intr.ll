; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_enable_pattern_det_baud_intr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_uart.c_uart_enable_pattern_det_baud_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8, i32 }

@UART_NUM_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"uart_num error\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@UART_RX_GAP_TOUT_V = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"uart pattern set error\0A\00", align 1
@UART_POST_IDLE_NUM_V = common dso_local global i32 0, align 4
@UART_PRE_IDLE_NUM_V = common dso_local global i32 0, align 4
@UART = common dso_local global %struct.TYPE_10__** null, align 8
@UART_AT_CMD_CHAR_DET_INT_ENA_M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_enable_pattern_det_baud_intr(i64 %0, i8 signext %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i8 %1, i8* %8, align 1
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @UART_NUM_MAX, align 8
  %15 = icmp ult i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* @ESP_FAIL, align 4
  %18 = call i32 @UART_CHECK(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %10, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @UART_RX_GAP_TOUT_V, align 4
  %24 = icmp sle i32 %22, %23
  br label %25

25:                                               ; preds = %21, %6
  %26 = phi i1 [ false, %6 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* @ESP_FAIL, align 4
  %29 = call i32 @UART_CHECK(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %11, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @UART_POST_IDLE_NUM_V, align 4
  %35 = icmp sle i32 %33, %34
  br label %36

36:                                               ; preds = %32, %25
  %37 = phi i1 [ false, %25 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @ESP_FAIL, align 4
  %40 = call i32 @UART_CHECK(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %12, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @UART_PRE_IDLE_NUM_V, align 4
  %46 = icmp sle i32 %44, %45
  br label %47

47:                                               ; preds = %43, %36
  %48 = phi i1 [ false, %36 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* @ESP_FAIL, align 4
  %51 = call i32 @UART_CHECK(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i8, i8* %8, align 1
  %53 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @UART, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %53, i64 %54
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i8 %52, i8* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @UART, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %60, i64 %61
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32 %59, i32* %65, align 4
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* @UART_AT_CMD_CHAR_DET_INT_ENA_M, align 4
  %68 = call i32 @uart_enable_intr_mask(i64 %66, i32 %67)
  ret i32 %68
}

declare dso_local i32 @UART_CHECK(i32, i8*, i32) #1

declare dso_local i32 @uart_enable_intr_mask(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
