; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@SEMAPHORE_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@TASK_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@SYNC_POLICY_MAX = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@semaphore_zone = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@SYNC_POLICY_DISABLE_IRQ = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@IP_NULL = common dso_local global i32 0, align 4
@sema_refgrp = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @semaphore_create(%struct.TYPE_10__* %0, %struct.TYPE_11__** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SEMAPHORE_NULL, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %10, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SEMAPHORE_NULL, align 8
  %14 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %14, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @TASK_NULL, align 8
  %17 = icmp eq %struct.TYPE_10__* %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SYNC_POLICY_MAX, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %18, %4
  %26 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %26, i64* %5, align 8
  br label %83

27:                                               ; preds = %21
  %28 = load i32, i32* @semaphore_zone, align 4
  %29 = call i64 @zalloc(i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %10, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SEMAPHORE_NULL, align 8
  %33 = icmp eq %struct.TYPE_11__* %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %35, i64* %5, align 8
  br label %83

36:                                               ; preds = %27
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 5
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SYNC_POLICY_DISABLE_IRQ, align 4
  %41 = or i32 %39, %40
  %42 = call i64 @waitq_init(i32* %38, i32 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @KERN_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load i32, i32* @semaphore_zone, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %49 = call i32 @zfree(i32 %47, %struct.TYPE_11__* %48)
  %50 = load i64, i64* %11, align 8
  store i64 %50, i64* %5, align 8
  br label %83

51:                                               ; preds = %36
  %52 = load i32, i32* @IP_NULL, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = call i32 @os_ref_init(i32* %56, i32* @sema_refgrp)
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @TRUE, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = call i32 @task_lock(%struct.TYPE_10__* %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %72 = ptrtoint %struct.TYPE_11__* %71 to i32
  %73 = call i32 @enqueue_head(i32* %70, i32 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = call i32 @task_unlock(%struct.TYPE_10__* %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %81 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %80, %struct.TYPE_11__** %81, align 8
  %82 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %82, i64* %5, align 8
  br label %83

83:                                               ; preds = %51, %46, %34, %25
  %84 = load i64, i64* %5, align 8
  ret i64 %84
}

declare dso_local i64 @zalloc(i32) #1

declare dso_local i64 @waitq_init(i32*, i32) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @os_ref_init(i32*, i32*) #1

declare dso_local i32 @task_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @enqueue_head(i32*, i32) #1

declare dso_local i32 @task_unlock(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
