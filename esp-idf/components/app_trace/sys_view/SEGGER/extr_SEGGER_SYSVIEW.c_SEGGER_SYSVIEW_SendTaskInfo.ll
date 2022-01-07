; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_SendTaskInfo.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_SendTaskInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@SEGGER_SYSVIEW_INFO_SIZE = common dso_local global i64 0, align 8
@SEGGER_SYSVIEW_QUANTA_U32 = common dso_local global i64 0, align 8
@SYSVIEW_EVTID_TASK_INFO = common dso_local global i32 0, align 4
@SYSVIEW_EVTID_STACK_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SEGGER_SYSVIEW_SendTaskInfo(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load i64, i64* @SEGGER_SYSVIEW_INFO_SIZE, align 8
  %6 = load i64, i64* @SEGGER_SYSVIEW_QUANTA_U32, align 8
  %7 = add nsw i64 %5, %6
  %8 = add nsw i64 %7, 1
  %9 = add nsw i64 %8, 32
  %10 = call i32 @RECORD_START(i64 %9)
  %11 = load i32*, i32** %4, align 8
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SHRINK_ID(i32 %15)
  %17 = call i32 @ENCODE_U32(i32* %12, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ENCODE_U32(i32* %18, i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @_EncodeStr(i32* %23, i32 %26, i32 32)
  store i32* %27, i32** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @SYSVIEW_EVTID_TASK_INFO, align 4
  %31 = call i32 @_SendPacket(i32* %28, i32* %29, i32 %30)
  %32 = load i32*, i32** %4, align 8
  store i32* %32, i32** %3, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SHRINK_ID(i32 %36)
  %38 = call i32 @ENCODE_U32(i32* %33, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ENCODE_U32(i32* %39, i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ENCODE_U32(i32* %44, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @ENCODE_U32(i32* %49, i32 0)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* @SYSVIEW_EVTID_STACK_INFO, align 4
  %54 = call i32 @_SendPacket(i32* %51, i32* %52, i32 %53)
  %55 = call i32 (...) @RECORD_END()
  ret void
}

declare dso_local i32 @RECORD_START(i64) #1

declare dso_local i32 @ENCODE_U32(i32*, i32) #1

declare dso_local i32 @SHRINK_ID(i32) #1

declare dso_local i32* @_EncodeStr(i32*, i32, i32) #1

declare dso_local i32 @_SendPacket(i32*, i32*, i32) #1

declare dso_local i32 @RECORD_END(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
