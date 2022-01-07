; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/Sample/OS/extr_SEGGER_SYSVIEW_FreeRTOS.c_SYSVIEW_AddTask.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/Sample/OS/extr_SEGGER_SYSVIEW_FreeRTOS.c_SYSVIEW_AddTask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i32, i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@SYSVIEW_FREERTOS_MAX_NOF_TASKS = common dso_local global i32 0, align 4
@_aTasks = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [80 x i8] c"SYSTEMVIEW: Could not record task information. Maximum number of tasks reached.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SYSVIEW_AddTask(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @memcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 5)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %78

16:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @SYSVIEW_FREERTOS_MAX_NOF_TASKS, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_aTasks, align 8
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %34

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %11, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %17

34:                                               ; preds = %29, %17
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @SYSVIEW_FREERTOS_MAX_NOF_TASKS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @SEGGER_SYSVIEW_Warn(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0))
  br label %78

40:                                               ; preds = %34
  %41 = load i8*, i8** %6, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_aTasks, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 %42, i64* %47, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_aTasks, align 8
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i8* %48, i8** %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_aTasks, align 8
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 %54, i32* %59, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_aTasks, align 8
  %62 = load i32, i32* %11, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  store i8* %60, i8** %65, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_aTasks, align 8
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  store i32 %66, i32* %71, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @SYSVIEW_SendTaskInfo(i8* %72, i8* %73, i32 %74, i8* %75, i32 %76)
  br label %78

78:                                               ; preds = %40, %38, %15
  ret void
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @SEGGER_SYSVIEW_Warn(i8*) #1

declare dso_local i32 @SYSVIEW_SendTaskInfo(i8*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
