; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/modbus/rtu/extr_mbrtu.c_xMBRTUReceiveFSM.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/modbus/rtu/extr_mbrtu.c_xMBRTUReceiveFSM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@eSndState = common dso_local global i64 0, align 8
@STATE_TX_IDLE = common dso_local global i64 0, align 8
@eRcvState = common dso_local global i32 0, align 4
@usRcvBufferPos = common dso_local global i32 0, align 4
@ucRTUBuf = common dso_local global i32* null, align 8
@MB_SER_PDU_SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xMBRTUReceiveFSM() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @FALSE, align 4
  store i32 %3, i32* %1, align 4
  %4 = load i64, i64* @eSndState, align 8
  %5 = load i64, i64* @STATE_TX_IDLE, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = call i32 @xMBPortSerialGetByte(i32* %2)
  %10 = load i32, i32* @eRcvState, align 4
  switch i32 %10, label %37 [
    i32 129, label %11
    i32 131, label %13
    i32 130, label %15
    i32 128, label %23
  ]

11:                                               ; preds = %0
  %12 = call i32 (...) @vMBPortTimersEnable()
  br label %37

13:                                               ; preds = %0
  %14 = call i32 (...) @vMBPortTimersEnable()
  br label %37

15:                                               ; preds = %0
  store i32 0, i32* @usRcvBufferPos, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32*, i32** @ucRTUBuf, align 8
  %18 = load i32, i32* @usRcvBufferPos, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @usRcvBufferPos, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32 %16, i32* %21, align 4
  store i32 128, i32* @eRcvState, align 4
  %22 = call i32 (...) @vMBPortTimersEnable()
  br label %37

23:                                               ; preds = %0
  %24 = load i32, i32* @usRcvBufferPos, align 4
  %25 = load i32, i32* @MB_SER_PDU_SIZE_MAX, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = load i32*, i32** @ucRTUBuf, align 8
  %30 = load i32, i32* @usRcvBufferPos, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @usRcvBufferPos, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 %28, i32* %33, align 4
  br label %35

34:                                               ; preds = %23
  store i32 131, i32* @eRcvState, align 4
  br label %35

35:                                               ; preds = %34, %27
  %36 = call i32 (...) @vMBPortTimersEnable()
  br label %37

37:                                               ; preds = %0, %35, %15, %13, %11
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @xMBPortSerialGetByte(i32*) #1

declare dso_local i32 @vMBPortTimersEnable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
