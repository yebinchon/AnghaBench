; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread.c_pthread_kill.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread.c_pthread_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@pte_thread_reuse_lock = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_kill(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @pte_thread_reuse_lock, align 4
  %8 = call i32 @pte_osMutexLock(i32 %7)
  %9 = load i64, i64* %3, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %6, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %12 = icmp eq %struct.TYPE_2__* null, %11
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 0, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %13, %2
  %28 = load i32, i32* @ESRCH, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* @pte_thread_reuse_lock, align 4
  %31 = call i32 @pte_osMutexUnlock(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 0, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 0, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %34, %29
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @pte_osMutexLock(i32) #1

declare dso_local i32 @pte_osMutexUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
