; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pte.c_pte_threadReusePop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pte.c_pte_threadReusePop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@pte_thread_reuse_lock = common dso_local global i32 0, align 4
@PTE_THREAD_REUSE_EMPTY = common dso_local global i8* null, align 8
@pte_threadReuseTop = common dso_local global i8* null, align 8
@pte_threadReuseBottom = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @pte_threadReusePop() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  %3 = load i32, i32* @pte_thread_reuse_lock, align 4
  %4 = call i32 @pte_osMutexLock(i32 %3)
  %5 = load i8*, i8** @PTE_THREAD_REUSE_EMPTY, align 8
  %6 = load i8*, i8** @pte_threadReuseTop, align 8
  %7 = icmp ne i8* %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %0
  %9 = load i8*, i8** @pte_threadReuseTop, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %2, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to i8*
  store i8* %14, i8** @pte_threadReuseTop, align 8
  %15 = load i8*, i8** @PTE_THREAD_REUSE_EMPTY, align 8
  %16 = load i8*, i8** @pte_threadReuseTop, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  %19 = load i8*, i8** @PTE_THREAD_REUSE_EMPTY, align 8
  store i8* %19, i8** @pte_threadReuseBottom, align 8
  br label %20

20:                                               ; preds = %18, %8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %1, align 8
  br label %24

24:                                               ; preds = %20, %0
  %25 = load i32, i32* @pte_thread_reuse_lock, align 4
  %26 = call i32 @pte_osMutexUnlock(i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %27
}

declare dso_local i32 @pte_osMutexLock(i32) #1

declare dso_local i32 @pte_osMutexUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
