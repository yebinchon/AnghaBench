; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/port/extr_portserial.c_vMBPortSerialRxPoll.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/port/extr_portserial.c_vMBPortSerialRxPoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bRxStateEnabled = common dso_local global i64 0, align 8
@MB_SERIAL_BUF_SIZE = common dso_local global i64 0, align 8
@uiRxBufferPos = common dso_local global i64 0, align 8
@ucUartNumber = common dso_local global i32 0, align 4
@ucBuffer = common dso_local global i32* null, align 8
@portMAX_DELAY = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Receive: %d(bytes in buffer)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @vMBPortSerialRxPoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vMBPortSerialRxPoll(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* @bRxStateEnabled, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %55

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %7
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @MB_SERIAL_BUF_SIZE, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i64, i64* @MB_SERIAL_BUF_SIZE, align 8
  br label %18

16:                                               ; preds = %10
  %17 = load i64, i64* %2, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  store i64 %19, i64* %2, align 8
  %20 = load i64, i64* @uiRxBufferPos, align 8
  %21 = load i64, i64* %2, align 8
  %22 = add i64 %20, %21
  %23 = load i64, i64* @MB_SERIAL_BUF_SIZE, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %28

26:                                               ; preds = %18
  %27 = load i64, i64* @uiRxBufferPos, align 8
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i64 [ 0, %25 ], [ %27, %26 ]
  store i64 %29, i64* @uiRxBufferPos, align 8
  %30 = load i32, i32* @ucUartNumber, align 4
  %31 = load i32*, i32** @ucBuffer, align 8
  %32 = load i64, i64* @uiRxBufferPos, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i64, i64* %2, align 8
  %35 = load i32, i32* @portMAX_DELAY, align 4
  %36 = call i64 @uart_read_bytes(i32 %30, i32* %33, i64 %34, i32 %35)
  store i64 %36, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %37

37:                                               ; preds = %43, %28
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %3, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = call i32 (...) @pxMBFrameCBByteReceived()
  br label %43

43:                                               ; preds = %41
  %44 = load i64, i64* %4, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %4, align 8
  br label %37

46:                                               ; preds = %37
  %47 = load i32, i32* @ucUartNumber, align 4
  %48 = call i32 @uart_flush_input(i32 %47)
  %49 = call i32 (...) @pxMBPortCBTimerExpired()
  %50 = load i32, i32* @TAG, align 4
  %51 = load i64, i64* %3, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @ESP_LOGD(i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %46, %7
  br label %55

55:                                               ; preds = %54, %1
  ret void
}

declare dso_local i64 @uart_read_bytes(i32, i32*, i64, i32) #1

declare dso_local i32 @pxMBFrameCBByteReceived(...) #1

declare dso_local i32 @uart_flush_input(i32) #1

declare dso_local i32 @pxMBPortCBTimerExpired(...) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
