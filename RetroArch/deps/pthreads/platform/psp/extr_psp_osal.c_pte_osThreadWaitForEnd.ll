; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/platform/psp/extr_psp_osal.c_pte_osThreadWaitForEnd.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/platform/psp/extr_psp_osal.c_pte_osThreadWaitForEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64 }

@PSP_THREAD_STOPPED = common dso_local global i64 0, align 8
@PTE_OS_OK = common dso_local global i32 0, align 4
@SCE_KERNEL_ERROR_OK = common dso_local global i64 0, align 8
@PTE_OS_INTERRUPTED = common dso_local global i32 0, align 4
@POLLING_DELAY_IN_us = common dso_local global i32 0, align 4
@PTE_OS_GENERAL_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pte_osThreadWaitForEnd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = call i32 (...) @sceKernelGetThreadId()
  %9 = call %struct.TYPE_8__* @getThreadData(i32 %8)
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %4, align 8
  br label %10

10:                                               ; preds = %1, %46
  %11 = call i32 @memset(%struct.TYPE_9__* %5, i32 0, i32 16)
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 16, i32* %12, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @sceKernelReferThreadRunStatus(i32 %13, %struct.TYPE_9__* %5)
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PSP_THREAD_STOPPED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* @PTE_OS_OK, align 4
  store i32 %20, i32* %3, align 4
  br label %47

21:                                               ; preds = %10
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @sceKernelReferSemaStatus(i32 %27, %struct.TYPE_10__* %6)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @SCE_KERNEL_ERROR_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @PTE_OS_INTERRUPTED, align 4
  store i32 %37, i32* %3, align 4
  br label %47

38:                                               ; preds = %32
  %39 = load i32, i32* @POLLING_DELAY_IN_us, align 4
  %40 = call i32 @sceKernelDelayThread(i32 %39)
  br label %41

41:                                               ; preds = %38
  br label %44

42:                                               ; preds = %24
  %43 = load i32, i32* @PTE_OS_GENERAL_FAILURE, align 4
  store i32 %43, i32* %3, align 4
  br label %47

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %21
  br label %46

46:                                               ; preds = %45
  br label %10

47:                                               ; preds = %42, %36, %19
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_8__* @getThreadData(i32) #1

declare dso_local i32 @sceKernelGetThreadId(...) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @sceKernelReferThreadRunStatus(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @sceKernelReferSemaStatus(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @sceKernelDelayThread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
