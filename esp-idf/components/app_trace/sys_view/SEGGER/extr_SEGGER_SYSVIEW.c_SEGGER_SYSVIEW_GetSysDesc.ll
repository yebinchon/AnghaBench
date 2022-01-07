; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_GetSysDesc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_GetSysDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32, i32, i32 }

@SEGGER_SYSVIEW_INFO_SIZE = common dso_local global i64 0, align 8
@SEGGER_SYSVIEW_QUANTA_U32 = common dso_local global i32 0, align 4
@_SYSVIEW_Globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SEGGER_SYSVIEW_ID_SHIFT = common dso_local global i32 0, align 4
@SYSVIEW_EVTID_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SEGGER_SYSVIEW_GetSysDesc() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i64, i64* @SEGGER_SYSVIEW_INFO_SIZE, align 8
  %4 = load i32, i32* @SEGGER_SYSVIEW_QUANTA_U32, align 4
  %5 = mul nsw i32 4, %4
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %3, %6
  %8 = call i32 @RECORD_START(i64 %7)
  %9 = load i32*, i32** %2, align 8
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 3), align 8
  %12 = call i32 @ENCODE_U32(i32* %10, i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 2), align 4
  %15 = call i32 @ENCODE_U32(i32* %13, i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 1), align 8
  %18 = call i32 @ENCODE_U32(i32* %16, i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = load i32, i32* @SEGGER_SYSVIEW_ID_SHIFT, align 4
  %21 = call i32 @ENCODE_U32(i32* %19, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* @SYSVIEW_EVTID_INIT, align 4
  %25 = call i32 @_SendPacket(i32* %22, i32* %23, i32 %24)
  %26 = call i32 (...) @RECORD_END()
  %27 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 0), align 8
  %28 = icmp ne i32 (...)* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %0
  %30 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_SYSVIEW_Globals, i32 0, i32 0), align 8
  %31 = call i32 (...) %30()
  br label %32

32:                                               ; preds = %29, %0
  ret void
}

declare dso_local i32 @RECORD_START(i64) #1

declare dso_local i32 @ENCODE_U32(i32*, i32) #1

declare dso_local i32 @_SendPacket(i32*, i32*, i32) #1

declare dso_local i32 @RECORD_END(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
