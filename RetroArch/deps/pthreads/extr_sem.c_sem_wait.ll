; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_sem.c_sem_wait.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_sem.c_sem_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@pte_sem_wait_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sem_wait(%struct.TYPE_3__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %5, align 8
  %9 = call i32 (...) @pthread_testcancel()
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** @EINVAL, align 8
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %4, align 4
  br label %53

15:                                               ; preds = %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = call i32 @pthread_mutex_lock(i32* %17)
  store i32 %18, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp eq %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = call i32 @pthread_mutex_unlock(i32* %26)
  %28 = load i8*, i8** @EINVAL, align 8
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %59

30:                                               ; preds = %20
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  store i32 %34, i32* %6, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = call i32 @pthread_mutex_unlock(i32* %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %30
  %41 = load i32, i32* @pte_sem_wait_cleanup, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = bitcast %struct.TYPE_3__* %42 to i8*
  %44 = call i32 @pthread_cleanup_push(i32 %41, i8* %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pte_cancellable_wait(i32 %47, i32* null)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @pthread_cleanup_pop(i32 %49)
  br label %51

51:                                               ; preds = %40, %30
  br label %52

52:                                               ; preds = %51, %15
  br label %53

53:                                               ; preds = %52, %12
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %59

58:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %56, %24
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @pthread_testcancel(...) #1

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
