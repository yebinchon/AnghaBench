; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/modbus/extr_mb.c_eMBInit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/modbus/extr_mb.c_eMBInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_ENOERR = common dso_local global i64 0, align 8
@MB_ADDRESS_BROADCAST = common dso_local global i64 0, align 8
@MB_ADDRESS_MIN = common dso_local global i64 0, align 8
@MB_ADDRESS_MAX = common dso_local global i64 0, align 8
@MB_EINVAL = common dso_local global i64 0, align 8
@ucMBAddress = common dso_local global i64 0, align 8
@MB_EPORTERR = common dso_local global i64 0, align 8
@eMBCurrentMode = common dso_local global i32 0, align 4
@STATE_DISABLED = common dso_local global i32 0, align 4
@eMBState = common dso_local global i32 0, align 4
@MB_PORT_HAS_CLOSE = common dso_local global i32 0, align 4
@eMBASCIIReceive = common dso_local global i32 0, align 4
@eMBASCIISend = common dso_local global i32 0, align 4
@eMBASCIIStart = common dso_local global i32 0, align 4
@eMBASCIIStop = common dso_local global i32 0, align 4
@eMBRTUReceive = common dso_local global i32 0, align 4
@eMBRTUSend = common dso_local global i32 0, align 4
@eMBRTUStart = common dso_local global i32 0, align 4
@eMBRTUStop = common dso_local global i32 0, align 4
@peMBFrameReceiveCur = common dso_local global i32 0, align 4
@peMBFrameSendCur = common dso_local global i32 0, align 4
@pvMBFrameCloseCur = common dso_local global i32* null, align 8
@pvMBFrameStartCur = common dso_local global i32 0, align 4
@pvMBFrameStopCur = common dso_local global i32 0, align 4
@pxMBFrameCBByteReceived = common dso_local global i32 0, align 4
@pxMBFrameCBTransmitterEmpty = common dso_local global i32 0, align 4
@pxMBPortCBTimerExpired = common dso_local global i32 0, align 4
@vMBPortClose = common dso_local global i32* null, align 8
@xMBASCIIReceiveFSM = common dso_local global i32 0, align 4
@xMBASCIITimerT1SExpired = common dso_local global i32 0, align 4
@xMBASCIITransmitFSM = common dso_local global i32 0, align 4
@xMBRTUReceiveFSM = common dso_local global i32 0, align 4
@xMBRTUTimerT35Expired = common dso_local global i32 0, align 4
@xMBRTUTransmitFSM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @eMBInit(i32 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* @MB_ENOERR, align 8
  store i64 %12, i64* %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @MB_ADDRESS_BROADCAST, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %5
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @MB_ADDRESS_MIN, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @MB_ADDRESS_MAX, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %16, %5
  %25 = load i64, i64* @MB_EINVAL, align 8
  store i64 %25, i64* %11, align 8
  br label %45

26:                                               ; preds = %20
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* @ucMBAddress, align 8
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %29 [
  ]

29:                                               ; preds = %26
  %30 = load i64, i64* @MB_EINVAL, align 8
  store i64 %30, i64* %11, align 8
  br label %31

31:                                               ; preds = %29
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @MB_ENOERR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = call i32 (...) @xMBPortEventInit()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* @MB_EPORTERR, align 8
  store i64 %39, i64* %11, align 8
  br label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* @eMBCurrentMode, align 4
  %42 = load i32, i32* @STATE_DISABLED, align 4
  store i32 %42, i32* @eMBState, align 4
  br label %43

43:                                               ; preds = %40, %38
  br label %44

44:                                               ; preds = %43, %31
  br label %45

45:                                               ; preds = %44, %24
  %46 = load i64, i64* %11, align 8
  ret i64 %46
}

declare dso_local i32 @xMBPortEventInit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
