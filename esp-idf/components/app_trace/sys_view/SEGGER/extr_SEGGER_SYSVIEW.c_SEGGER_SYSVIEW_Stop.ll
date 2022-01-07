; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_Stop.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_Stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SEGGER_SYSVIEW_INFO_SIZE = common dso_local global i32 0, align 4
@_SYSVIEW_Globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SYSVIEW_EVTID_TRACE_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SEGGER_SYSVIEW_Stop() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @SEGGER_SYSVIEW_INFO_SIZE, align 4
  %3 = call i32 @RECORD_START(i32 %2)
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 0), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i32*, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = load i32, i32* @SYSVIEW_EVTID_TRACE_STOP, align 4
  %10 = call i32 @_SendPacket(i32* %7, i32* %8, i32 %9)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 0), align 8
  br label %11

11:                                               ; preds = %6, %0
  %12 = call i32 (...) @RECORD_END()
  ret void
}

declare dso_local i32 @RECORD_START(i32) #1

declare dso_local i32 @_SendPacket(i32*, i32*, i32) #1

declare dso_local i32 @RECORD_END(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
