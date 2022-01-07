; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/modbus/rtu/extr_mbrtu.c_xMBRTUTransmitFSM.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/modbus/rtu/extr_mbrtu.c_xMBRTUTransmitFSM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@eRcvState = common dso_local global i64 0, align 8
@STATE_RX_IDLE = common dso_local global i64 0, align 8
@eSndState = common dso_local global i32 0, align 4
@usSndBufferCount = common dso_local global i32 0, align 4
@pucSndBufferCur = common dso_local global i32* null, align 8
@EV_FRAME_SENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xMBRTUTransmitFSM() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @FALSE, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i64, i64* @eRcvState, align 8
  %4 = load i64, i64* @STATE_RX_IDLE, align 8
  %5 = icmp eq i64 %3, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* @eSndState, align 4
  switch i32 %8, label %27 [
    i32 129, label %9
    i32 128, label %10
  ]

9:                                                ; preds = %0
  br label %27

10:                                               ; preds = %0
  %11 = load i32, i32* @usSndBufferCount, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load i32*, i32** @pucSndBufferCur, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @xMBPortSerialPutByte(i32 %15)
  %17 = load i32*, i32** @pucSndBufferCur, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** @pucSndBufferCur, align 8
  %19 = load i32, i32* @usSndBufferCount, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* @usSndBufferCount, align 4
  br label %26

21:                                               ; preds = %10
  %22 = load i32, i32* @EV_FRAME_SENT, align 4
  %23 = call i32 @xMBPortEventPost(i32 %22)
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %1, align 4
  store i32 129, i32* @eSndState, align 4
  %25 = call i32 (...) @vMBPortTimersEnable()
  br label %26

26:                                               ; preds = %21, %13
  br label %27

27:                                               ; preds = %0, %26, %9
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @xMBPortSerialPutByte(i32) #1

declare dso_local i32 @xMBPortEventPost(i32) #1

declare dso_local i32 @vMBPortTimersEnable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
