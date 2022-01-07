; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_dereference.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_dereference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }

@TASK_NULL = common dso_local global i64 0, align 8
@semaphore_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @semaphore_dereference(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = icmp eq %struct.TYPE_10__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %84

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %13 = call i64 @os_ref_release(i32* %12)
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %84

16:                                               ; preds = %10
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %5, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = call i64 @IP_VALID(%struct.TYPE_11__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = call i32 @ipc_port_dealloc_kernel(%struct.TYPE_11__* %31)
  br label %33

33:                                               ; preds = %23, %16
  %34 = call i32 (...) @splsched()
  store i32 %34, i32* %4, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = call i32 @semaphore_lock(%struct.TYPE_10__* %35)
  store i64 0, i64* %3, align 8
  br label %37

37:                                               ; preds = %72, %33
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %75

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @TASK_NULL, align 8
  %48 = icmp ne i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @task_lock_try(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %42
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = call i32 @semaphore_destroy_internal(i64 %55, %struct.TYPE_10__* %56)
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @splx(i32 %58)
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @task_unlock(i64 %60)
  br label %80

62:                                               ; preds = %42
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = call i32 @semaphore_unlock(%struct.TYPE_10__* %63)
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @splx(i32 %65)
  %67 = load i64, i64* %3, align 8
  %68 = call i32 @mutex_pause(i64 %67)
  %69 = call i32 (...) @splsched()
  store i32 %69, i32* %4, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %71 = call i32 @semaphore_lock(%struct.TYPE_10__* %70)
  br label %72

72:                                               ; preds = %62
  %73 = load i64, i64* %3, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %3, align 8
  br label %37

75:                                               ; preds = %37
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %77 = call i32 @semaphore_unlock(%struct.TYPE_10__* %76)
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @splx(i32 %78)
  br label %80

80:                                               ; preds = %75, %54
  %81 = load i32, i32* @semaphore_zone, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %83 = call i32 @zfree(i32 %81, %struct.TYPE_10__* %82)
  br label %84

84:                                               ; preds = %80, %15, %9
  ret void
}

declare dso_local i64 @os_ref_release(i32*) #1

declare dso_local i64 @IP_VALID(%struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ipc_port_dealloc_kernel(%struct.TYPE_11__*) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @semaphore_lock(%struct.TYPE_10__*) #1

declare dso_local i64 @task_lock_try(i64) #1

declare dso_local i32 @semaphore_destroy_internal(i64, %struct.TYPE_10__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @task_unlock(i64) #1

declare dso_local i32 @semaphore_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @mutex_pause(i64) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
