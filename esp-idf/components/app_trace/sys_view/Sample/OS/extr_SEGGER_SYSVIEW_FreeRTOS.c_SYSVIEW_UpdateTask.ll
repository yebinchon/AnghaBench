; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/Sample/OS/extr_SEGGER_SYSVIEW_FreeRTOS.c_SYSVIEW_UpdateTask.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/Sample/OS/extr_SEGGER_SYSVIEW_FreeRTOS.c_SYSVIEW_UpdateTask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i32, i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@SYSVIEW_FREERTOS_MAX_NOF_TASKS = common dso_local global i32 0, align 4
@_aTasks = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SYSVIEW_UpdateTask(i64 %0, i8* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @memcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 5)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %77

16:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @SYSVIEW_FREERTOS_MAX_NOF_TASKS, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_aTasks, align 8
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %35

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %11, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %17

35:                                               ; preds = %30, %17
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @SYSVIEW_FREERTOS_MAX_NOF_TASKS, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_aTasks, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i8* %40, i8** %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_aTasks, align 8
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i32 %46, i32* %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_aTasks, align 8
  %54 = load i32, i32* %11, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  store i64 %52, i64* %57, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_aTasks, align 8
  %60 = load i32, i32* %11, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  store i32 %58, i32* %63, align 4
  %64 = load i64, i64* %6, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i64, i64* %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @SYSVIEW_SendTaskInfo(i64 %64, i8* %65, i32 %66, i64 %67, i32 %68)
  br label %77

70:                                               ; preds = %35
  %71 = load i64, i64* %6, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i64, i64* %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @SYSVIEW_AddTask(i64 %71, i8* %72, i32 %73, i64 %74, i32 %75)
  br label %77

77:                                               ; preds = %15, %70, %39
  ret void
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @SYSVIEW_SendTaskInfo(i64, i8*, i32, i64, i32) #1

declare dso_local i32 @SYSVIEW_AddTask(i64, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
