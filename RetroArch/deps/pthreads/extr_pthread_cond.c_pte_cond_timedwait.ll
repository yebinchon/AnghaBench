; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_cond.c_pte_cond_timedwait.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_cond.c_pte_cond_timedwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.timespec = type { i32 }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_COND_INITIALIZER = common dso_local global %struct.TYPE_6__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@pte_cond_wait_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__**, i32*, %struct.timespec*)* @pte_cond_timedwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pte_cond_timedwait(%struct.TYPE_6__** %0, i32* %1, %struct.timespec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %12 = icmp eq %struct.TYPE_6__** %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp eq %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %80

19:                                               ; preds = %13
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PTHREAD_COND_INITIALIZER, align 8
  %23 = icmp eq %struct.TYPE_6__* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %26 = call i32 @pte_cond_check_need_init(%struct.TYPE_6__** %25)
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @EBUSY, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %80

36:                                               ; preds = %30, %27
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %9, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = call i64 @sem_wait(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @errno, align 4
  store i32 %44, i32* %4, align 4
  br label %80

45:                                               ; preds = %36
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = call i64 @sem_post(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @errno, align 4
  store i32 %55, i32* %4, align 4
  br label %80

56:                                               ; preds = %45
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  store i32* %57, i32** %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32* %8, i32** %61, align 8
  %62 = load i32, i32* @pte_cond_wait_cleanup, align 4
  %63 = bitcast %struct.TYPE_7__* %10 to i8*
  %64 = call i32 @pthread_cleanup_push(i32 %62, i8* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @pthread_mutex_unlock(i32* %65)
  store i32 %66, i32* %8, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %56
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.timespec*, %struct.timespec** %7, align 8
  %72 = call i64 @sem_timedwait(i32* %70, %struct.timespec* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @errno, align 4
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %74, %68
  br label %77

77:                                               ; preds = %76, %56
  %78 = call i32 @pthread_cleanup_pop(i32 1)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %77, %54, %43, %34, %17
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @pte_cond_check_need_init(%struct.TYPE_6__**) #1

declare dso_local i64 @sem_wait(i32*) #1

declare dso_local i64 @sem_post(i32*) #1

declare dso_local i32 @pthread_cleanup_push(i32, i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @sem_timedwait(i32*, %struct.timespec*) #1

declare dso_local i32 @pthread_cleanup_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
