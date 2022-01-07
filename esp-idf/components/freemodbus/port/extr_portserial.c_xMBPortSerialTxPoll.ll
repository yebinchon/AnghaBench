; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/port/extr_portserial.c_xMBPortSerialTxPoll.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/port/extr_portserial.c_xMBPortSerialTxPoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@bTxStateEnabled = common dso_local global i64 0, align 8
@MB_SERIAL_BUF_SIZE = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"MB_TX_buffer send: (%d) bytes\0A\00", align 1
@ucUartNumber = common dso_local global i32 0, align 4
@MB_SERIAL_TX_TOUT_TICKS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"mb serial sent buffer failure.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xMBPortSerialTxPoll() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  %5 = load i64, i64* @FALSE, align 8
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* @bTxStateEnabled, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %20, %8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @FALSE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i64, i64* %2, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* @MB_SERIAL_BUF_SIZE, align 8
  %17 = icmp slt i64 %14, %16
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i1 [ false, %9 ], [ %17, %13 ]
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = call i64 (...) @pxMBFrameCBTransmitterEmpty()
  store i64 %21, i64* %3, align 8
  br label %9

22:                                               ; preds = %18
  %23 = load i32, i32* @TAG, align 4
  %24 = load i64, i64* %2, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @ESP_LOGD(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ucUartNumber, align 4
  %28 = load i32, i32* @MB_SERIAL_TX_TOUT_TICKS, align 4
  %29 = call i64 @uart_wait_tx_done(i32 %27, i32 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* @TRUE, align 8
  %31 = load i64, i64* @FALSE, align 8
  %32 = call i32 @vMBPortSerialEnable(i64 %30, i64 %31)
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @ESP_OK, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* @FALSE, align 8
  %38 = call i32 @MB_PORT_CHECK(i32 %36, i64 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i64, i64* @TRUE, align 8
  store i64 %39, i64* %1, align 8
  br label %42

40:                                               ; preds = %0
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %1, align 8
  br label %42

42:                                               ; preds = %40, %22
  %43 = load i64, i64* %1, align 8
  ret i64 %43
}

declare dso_local i64 @pxMBFrameCBTransmitterEmpty(...) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i64 @uart_wait_tx_done(i32, i32) #1

declare dso_local i32 @vMBPortSerialEnable(i64, i64) #1

declare dso_local i32 @MB_PORT_CHECK(i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
