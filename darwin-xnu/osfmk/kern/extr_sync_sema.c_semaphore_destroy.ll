; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@SEMAPHORE_NULL = common dso_local global %struct.TYPE_8__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@TASK_NULL = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @semaphore_destroy(i64 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SEMAPHORE_NULL, align 8
  %9 = icmp eq %struct.TYPE_8__* %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %11, i32* %3, align 4
  br label %52

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @TASK_NULL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = call i32 @semaphore_dereference(%struct.TYPE_8__* %17)
  %19 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %19, i32* %3, align 4
  br label %52

20:                                               ; preds = %12
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @task_lock(i64 %21)
  %23 = call i32 (...) @splsched()
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = call i32 @semaphore_lock(%struct.TYPE_8__* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %20
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = call i32 @semaphore_unlock(%struct.TYPE_8__* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = call i32 @semaphore_dereference(%struct.TYPE_8__* %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @splx(i32 %36)
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @task_unlock(i64 %38)
  %40 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %40, i32* %3, align 4
  br label %52

41:                                               ; preds = %20
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = call i32 @semaphore_destroy_internal(i64 %42, %struct.TYPE_8__* %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @splx(i32 %45)
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @task_unlock(i64 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = call i32 @semaphore_dereference(%struct.TYPE_8__* %49)
  %51 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %41, %31, %16, %10
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @semaphore_dereference(%struct.TYPE_8__*) #1

declare dso_local i32 @task_lock(i64) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @semaphore_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @semaphore_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @task_unlock(i64) #1

declare dso_local i32 @semaphore_destroy_internal(i64, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
