; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/modbus/extr_mb.c_eMBPoll.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/modbus/extr_mb.c_eMBPoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32*, i32*)* }

@eMBPoll.ucMBFrame = internal global i32* null, align 8
@eMBPoll.ucRcvAddress = internal global i32 0, align 4
@eMBPoll.ucFunctionCode = internal global i32 0, align 4
@eMBPoll.usLength = internal global i32 0, align 4
@eMBPoll.eException = internal global i32 0, align 4
@MB_ENOERR = common dso_local global i32 0, align 4
@eMBState = common dso_local global i64 0, align 8
@STATE_ENABLED = common dso_local global i64 0, align 8
@MB_EILLSTATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ucMBAddress = common dso_local global i32 0, align 4
@MB_ADDRESS_BROADCAST = common dso_local global i32 0, align 4
@MB_PDU_FUNC_OFF = common dso_local global i64 0, align 8
@MB_EX_ILLEGAL_FUNCTION = common dso_local global i32 0, align 4
@MB_FUNC_HANDLERS_MAX = common dso_local global i32 0, align 4
@xFuncHandlers = common dso_local global %struct.TYPE_2__* null, align 8
@MB_EX_NONE = common dso_local global i32 0, align 4
@MB_FUNC_ERROR = common dso_local global i32 0, align 4
@eMBCurrentMode = common dso_local global i32 0, align 4
@MB_ASCII = common dso_local global i32 0, align 4
@MB_ASCII_TIMEOUT_WAIT_BEFORE_SEND_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eMBPoll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MB_ENOERR, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i64, i64* @eMBState, align 8
  %7 = load i64, i64* @STATE_ENABLED, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @MB_EILLSTATE, align 4
  store i32 %10, i32* %1, align 4
  br label %120

11:                                               ; preds = %0
  %12 = call i64 @xMBPortEventGet(i32* %4)
  %13 = load i64, i64* @TRUE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %118

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %117 [
    i32 128, label %17
    i32 130, label %18
    i32 131, label %35
    i32 129, label %116
  ]

17:                                               ; preds = %15
  br label %117

18:                                               ; preds = %15
  %19 = call i32 @peMBFrameReceiveCur(i32* @eMBPoll.ucRcvAddress, i32** @eMBPoll.ucMBFrame, i32* @eMBPoll.usLength)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @MB_ENOERR, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32, i32* @eMBPoll.ucRcvAddress, align 4
  %25 = load i32, i32* @ucMBAddress, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @eMBPoll.ucRcvAddress, align 4
  %29 = load i32, i32* @MB_ADDRESS_BROADCAST, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23
  %32 = call i32 @xMBPortEventPost(i32 131)
  br label %33

33:                                               ; preds = %31, %27
  br label %34

34:                                               ; preds = %33, %18
  br label %117

35:                                               ; preds = %15
  %36 = load i32*, i32** @eMBPoll.ucMBFrame, align 8
  %37 = load i64, i64* @MB_PDU_FUNC_OFF, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* @eMBPoll.ucFunctionCode, align 4
  %40 = load i32, i32* @MB_EX_ILLEGAL_FUNCTION, align 4
  store i32 %40, i32* @eMBPoll.eException, align 4
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %74, %35
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @MB_FUNC_HANDLERS_MAX, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %41
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xFuncHandlers, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %77

54:                                               ; preds = %45
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xFuncHandlers, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @eMBPoll.ucFunctionCode, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %54
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xFuncHandlers, align 8
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %68, align 8
  %70 = load i32*, i32** @eMBPoll.ucMBFrame, align 8
  %71 = call i32 %69(i32* %70, i32* @eMBPoll.usLength)
  store i32 %71, i32* @eMBPoll.eException, align 4
  br label %77

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %2, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %2, align 4
  br label %41

77:                                               ; preds = %63, %53, %41
  %78 = load i32, i32* @eMBPoll.ucRcvAddress, align 4
  %79 = load i32, i32* @MB_ADDRESS_BROADCAST, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %115

81:                                               ; preds = %77
  %82 = load i32, i32* @eMBPoll.eException, align 4
  %83 = load i32, i32* @MB_EX_NONE, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  store i32 0, i32* @eMBPoll.usLength, align 4
  %86 = load i32, i32* @eMBPoll.ucFunctionCode, align 4
  %87 = load i32, i32* @MB_FUNC_ERROR, align 4
  %88 = or i32 %86, %87
  %89 = load i32*, i32** @eMBPoll.ucMBFrame, align 8
  %90 = load i32, i32* @eMBPoll.usLength, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* @eMBPoll.usLength, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %88, i32* %93, align 4
  %94 = load i32, i32* @eMBPoll.eException, align 4
  %95 = load i32*, i32** @eMBPoll.ucMBFrame, align 8
  %96 = load i32, i32* @eMBPoll.usLength, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* @eMBPoll.usLength, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32 %94, i32* %99, align 4
  br label %100

100:                                              ; preds = %85, %81
  %101 = load i32, i32* @eMBCurrentMode, align 4
  %102 = load i32, i32* @MB_ASCII, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i32, i32* @MB_ASCII_TIMEOUT_WAIT_BEFORE_SEND_MS, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* @MB_ASCII_TIMEOUT_WAIT_BEFORE_SEND_MS, align 4
  %109 = call i32 @vMBPortTimersDelay(i32 %108)
  br label %110

110:                                              ; preds = %107, %104, %100
  %111 = load i32, i32* @ucMBAddress, align 4
  %112 = load i32*, i32** @eMBPoll.ucMBFrame, align 8
  %113 = load i32, i32* @eMBPoll.usLength, align 4
  %114 = call i32 @peMBFrameSendCur(i32 %111, i32* %112, i32 %113)
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %110, %77
  br label %117

116:                                              ; preds = %15
  br label %117

117:                                              ; preds = %15, %116, %115, %34, %17
  br label %118

118:                                              ; preds = %117, %11
  %119 = load i32, i32* @MB_ENOERR, align 4
  store i32 %119, i32* %1, align 4
  br label %120

120:                                              ; preds = %118, %9
  %121 = load i32, i32* %1, align 4
  ret i32 %121
}

declare dso_local i64 @xMBPortEventGet(i32*) #1

declare dso_local i32 @peMBFrameReceiveCur(i32*, i32**, i32*) #1

declare dso_local i32 @xMBPortEventPost(i32) #1

declare dso_local i32 @vMBPortTimersDelay(i32) #1

declare dso_local i32 @peMBFrameSendCur(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
