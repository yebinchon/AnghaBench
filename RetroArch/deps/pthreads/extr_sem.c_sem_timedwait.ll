; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_sem.c_sem_timedwait.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_sem.c_sem_timedwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.timespec = type { i32 }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_5__* }

@EINVAL = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@pte_sem_timedwait_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sem_timedwait(%struct.TYPE_5__** %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %7, align 8
  %14 = call i32 (...) @pthread_testcancel()
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %16 = icmp eq %struct.TYPE_5__** %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i8*, i8** @EINVAL, align 8
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %6, align 4
  br label %68

20:                                               ; preds = %2
  %21 = load %struct.timespec*, %struct.timespec** %5, align 8
  %22 = icmp eq %struct.timespec* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32* null, i32** %9, align 8
  br label %27

24:                                               ; preds = %20
  %25 = load %struct.timespec*, %struct.timespec** %5, align 8
  %26 = call i32 @pte_relmillisecs(%struct.timespec* %25)
  store i32 %26, i32* %8, align 4
  store i32* %8, i32** %9, align 8
  br label %27

27:                                               ; preds = %24, %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = call i32 @pthread_mutex_lock(i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %27
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = icmp eq %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = call i32 @pthread_mutex_unlock(i32* %38)
  %40 = load i8*, i8** @EINVAL, align 8
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %74

42:                                               ; preds = %32
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = call i32 @pthread_mutex_unlock(i32* %48)
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %42
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32* %6, i32** %55, align 8
  %56 = load i32, i32* @pte_sem_timedwait_cleanup, align 4
  %57 = bitcast %struct.TYPE_4__* %11 to i8*
  %58 = call i32 @pthread_cleanup_push(i32 %56, i8* %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @pte_cancellable_wait(i32 %61, i32* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @pthread_cleanup_pop(i32 %64)
  br label %66

66:                                               ; preds = %52, %42
  br label %67

67:                                               ; preds = %66, %27
  br label %68

68:                                               ; preds = %67, %17
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %74

73:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %71, %36
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @pthread_testcancel(...) #1

declare dso_local i32 @pte_relmillisecs(%struct.timespec*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_cleanup_push(i32, i8*) #1

declare dso_local i32 @pte_cancellable_wait(i32, i32*) #1

declare dso_local i32 @pthread_cleanup_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
