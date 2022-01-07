; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pte.c_pte_threadReusePush.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pte.c_pte_threadReusePush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, i64 }

@pte_thread_reuse_lock = common dso_local global i32 0, align 4
@PTE_THREAD_REUSE_EMPTY = common dso_local global %struct.TYPE_8__* null, align 8
@pte_threadReuseBottom = common dso_local global %struct.TYPE_8__* null, align 8
@pte_threadReuseTop = common dso_local global %struct.TYPE_8__* null, align 8
@PTE_THREAD_ID_REUSE_INCREMENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pte_threadReusePush(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %3, align 8
  %6 = load i32, i32* @pte_thread_reuse_lock, align 4
  %7 = call i32 @pte_osMutexLock(i32 %6)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = call i32 @memset(%struct.TYPE_8__* %9, i32 0, i32 16)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PTE_THREAD_REUSE_EMPTY, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %18, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PTE_THREAD_REUSE_EMPTY, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pte_threadReuseBottom, align 8
  %21 = icmp ne %struct.TYPE_8__* %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pte_threadReuseBottom, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %25, align 8
  br label %28

26:                                               ; preds = %1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** @pte_threadReuseTop, align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** @pte_threadReuseBottom, align 8
  %30 = load i32, i32* @pte_thread_reuse_lock, align 4
  %31 = call i32 @pte_osMutexUnlock(i32 %30)
  ret void
}

declare dso_local i32 @pte_osMutexLock(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @pte_osMutexUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
