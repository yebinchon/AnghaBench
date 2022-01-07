; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c__HandleIncomingPacket.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c__HandleIncomingPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHANNEL_ID_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @_HandleIncomingPacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_HandleIncomingPacket() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @CHANNEL_ID_DOWN, align 4
  %4 = call i32 @SEGGER_RTT_ReadNoLock(i32 %3, i32* %1, i32 1)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  switch i32 %8, label %32 [
    i32 129, label %9
    i32 128, label %11
    i32 131, label %13
    i32 130, label %15
    i32 132, label %17
    i32 133, label %19
    i32 134, label %21
    i32 135, label %23
  ]

9:                                                ; preds = %7
  %10 = call i32 (...) @SEGGER_SYSVIEW_Start()
  br label %39

11:                                               ; preds = %7
  %12 = call i32 (...) @SEGGER_SYSVIEW_Stop()
  br label %39

13:                                               ; preds = %7
  %14 = call i32 (...) @SEGGER_SYSVIEW_RecordSystime()
  br label %39

15:                                               ; preds = %7
  %16 = call i32 (...) @SEGGER_SYSVIEW_SendTaskList()
  br label %39

17:                                               ; preds = %7
  %18 = call i32 (...) @SEGGER_SYSVIEW_GetSysDesc()
  br label %39

19:                                               ; preds = %7
  %20 = call i32 (...) @SEGGER_SYSVIEW_SendNumModules()
  br label %39

21:                                               ; preds = %7
  %22 = call i32 (...) @SEGGER_SYSVIEW_SendModuleDescription()
  br label %39

23:                                               ; preds = %7
  %24 = load i32, i32* @CHANNEL_ID_DOWN, align 4
  %25 = call i32 @SEGGER_RTT_ReadNoLock(i32 %24, i32* %1, i32 1)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @SEGGER_SYSVIEW_SendModule(i32 %29)
  br label %31

31:                                               ; preds = %28, %23
  br label %39

32:                                               ; preds = %7
  %33 = load i32, i32* %1, align 4
  %34 = icmp sge i32 %33, 128
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @CHANNEL_ID_DOWN, align 4
  %37 = call i32 @SEGGER_RTT_ReadNoLock(i32 %36, i32* %1, i32 1)
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38, %31, %21, %19, %17, %15, %13, %11, %9
  br label %40

40:                                               ; preds = %39, %0
  ret void
}

declare dso_local i32 @SEGGER_RTT_ReadNoLock(i32, i32*, i32) #1

declare dso_local i32 @SEGGER_SYSVIEW_Start(...) #1

declare dso_local i32 @SEGGER_SYSVIEW_Stop(...) #1

declare dso_local i32 @SEGGER_SYSVIEW_RecordSystime(...) #1

declare dso_local i32 @SEGGER_SYSVIEW_SendTaskList(...) #1

declare dso_local i32 @SEGGER_SYSVIEW_GetSysDesc(...) #1

declare dso_local i32 @SEGGER_SYSVIEW_SendNumModules(...) #1

declare dso_local i32 @SEGGER_SYSVIEW_SendModuleDescription(...) #1

declare dso_local i32 @SEGGER_SYSVIEW_SendModule(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
