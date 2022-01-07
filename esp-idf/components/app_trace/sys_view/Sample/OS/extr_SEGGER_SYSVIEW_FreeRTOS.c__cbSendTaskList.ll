; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/Sample/OS/extr_SEGGER_SYSVIEW_FreeRTOS.c__cbSendTaskList.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/Sample/OS/extr_SEGGER_SYSVIEW_FreeRTOS.c__cbSendTaskList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32, i64 }

@SYSVIEW_FREERTOS_MAX_NOF_TASKS = common dso_local global i32 0, align 4
@_aTasks = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @_cbSendTaskList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_cbSendTaskList() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %51, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @SYSVIEW_FREERTOS_MAX_NOF_TASKS, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %54

6:                                                ; preds = %2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_aTasks, align 8
  %8 = load i32, i32* %1, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %6
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_aTasks, align 8
  %16 = load i32, i32* %1, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_aTasks, align 8
  %23 = load i32, i32* %1, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_aTasks, align 8
  %29 = load i32, i32* %1, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_aTasks, align 8
  %36 = load i32, i32* %1, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_aTasks, align 8
  %43 = load i32, i32* %1, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @SYSVIEW_SendTaskInfo(i32 %21, i32 %27, i32 %34, i32 %41, i32 %48)
  br label %50

50:                                               ; preds = %14, %6
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %1, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %2

54:                                               ; preds = %2
  ret void
}

declare dso_local i32 @SYSVIEW_SendTaskInfo(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
