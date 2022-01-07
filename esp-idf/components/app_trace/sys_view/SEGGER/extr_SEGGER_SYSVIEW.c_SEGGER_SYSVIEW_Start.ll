; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_Start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_Start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (...)*, i32, i32, i32 }

@_SYSVIEW_Globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CHANNEL_ID_UP = common dso_local global i32 0, align 4
@_abSync = common dso_local global i32 0, align 4
@SYSVIEW_EVTID_TRACE_START = common dso_local global i32 0, align 4
@SEGGER_SYSVIEW_INFO_SIZE = common dso_local global i64 0, align 8
@SEGGER_SYSVIEW_QUANTA_U32 = common dso_local global i32 0, align 4
@SEGGER_SYSVIEW_ID_SHIFT = common dso_local global i32 0, align 4
@SYSVIEW_EVTID_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SEGGER_SYSVIEW_Start() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 0), align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %46

5:                                                ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 0), align 8
  %6 = call i32 (...) @SEGGER_SYSVIEW_LOCK()
  %7 = load i32, i32* @CHANNEL_ID_UP, align 4
  %8 = load i32, i32* @_abSync, align 4
  %9 = call i32 @SEGGER_RTT_WriteSkipNoLock(i32 %7, i32 %8, i32 10)
  %10 = call i32 (...) @SEGGER_SYSVIEW_UNLOCK()
  %11 = load i32, i32* @SYSVIEW_EVTID_TRACE_START, align 4
  %12 = call i32 @SEGGER_SYSVIEW_RecordVoid(i32 %11)
  %13 = load i64, i64* @SEGGER_SYSVIEW_INFO_SIZE, align 8
  %14 = load i32, i32* @SEGGER_SYSVIEW_QUANTA_U32, align 4
  %15 = mul nsw i32 4, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = call i32 @RECORD_START(i64 %17)
  %19 = load i32*, i32** %2, align 8
  store i32* %19, i32** %1, align 8
  %20 = load i32*, i32** %1, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 4), align 8
  %22 = call i32 @ENCODE_U32(i32* %20, i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 3), align 4
  %25 = call i32 @ENCODE_U32(i32* %23, i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 2), align 8
  %28 = call i32 @ENCODE_U32(i32* %26, i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = load i32, i32* @SEGGER_SYSVIEW_ID_SHIFT, align 4
  %31 = call i32 @ENCODE_U32(i32* %29, i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32*, i32** %1, align 8
  %34 = load i32, i32* @SYSVIEW_EVTID_INIT, align 4
  %35 = call i32 @_SendPacket(i32* %32, i32* %33, i32 %34)
  %36 = call i32 (...) @RECORD_END()
  %37 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 1), align 8
  %38 = icmp ne i32 (...)* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %5
  %40 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 1), align 8
  %41 = call i32 (...) %40()
  br label %42

42:                                               ; preds = %39, %5
  %43 = call i32 (...) @SEGGER_SYSVIEW_RecordSystime()
  %44 = call i32 (...) @SEGGER_SYSVIEW_SendTaskList()
  %45 = call i32 (...) @SEGGER_SYSVIEW_SendNumModules()
  br label %46

46:                                               ; preds = %42, %0
  ret void
}

declare dso_local i32 @SEGGER_SYSVIEW_LOCK(...) #1

declare dso_local i32 @SEGGER_RTT_WriteSkipNoLock(i32, i32, i32) #1

declare dso_local i32 @SEGGER_SYSVIEW_UNLOCK(...) #1

declare dso_local i32 @SEGGER_SYSVIEW_RecordVoid(i32) #1

declare dso_local i32 @RECORD_START(i64) #1

declare dso_local i32 @ENCODE_U32(i32*, i32) #1

declare dso_local i32 @_SendPacket(i32*, i32*, i32) #1

declare dso_local i32 @RECORD_END(...) #1

declare dso_local i32 @SEGGER_SYSVIEW_RecordSystime(...) #1

declare dso_local i32 @SEGGER_SYSVIEW_SendTaskList(...) #1

declare dso_local i32 @SEGGER_SYSVIEW_SendNumModules(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
