; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_RecordSystime.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_RecordSystime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (...)* }

@_SYSVIEW_Globals = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SYSVIEW_EVTID_SYSTIME_US = common dso_local global i32 0, align 4
@SYSVIEW_EVTID_SYSTIME_CYCLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SEGGER_SYSVIEW_RecordSystime() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_SYSVIEW_Globals, i32 0, i32 0), align 8
  %3 = icmp ne %struct.TYPE_3__* %2, null
  br i1 %3, label %4, label %19

4:                                                ; preds = %0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_SYSVIEW_Globals, i32 0, i32 0), align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32 (...)*, i32 (...)** %6, align 8
  %8 = icmp ne i32 (...)* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_SYSVIEW_Globals, i32 0, i32 0), align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (...)*, i32 (...)** %11, align 8
  %13 = call i32 (...) %12()
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @SYSVIEW_EVTID_SYSTIME_US, align 4
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = ashr i32 %16, 32
  %18 = call i32 @SEGGER_SYSVIEW_RecordU32x2(i32 %14, i32 %15, i32 %17)
  br label %23

19:                                               ; preds = %4, %0
  %20 = load i32, i32* @SYSVIEW_EVTID_SYSTIME_CYCLES, align 4
  %21 = call i32 (...) @SEGGER_SYSVIEW_GET_TIMESTAMP()
  %22 = call i32 @SEGGER_SYSVIEW_RecordU32(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %9
  ret void
}

declare dso_local i32 @SEGGER_SYSVIEW_RecordU32x2(i32, i32, i32) #1

declare dso_local i32 @SEGGER_SYSVIEW_RecordU32(i32, i32) #1

declare dso_local i32 @SEGGER_SYSVIEW_GET_TIMESTAMP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
