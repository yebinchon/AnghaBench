; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_arqueue.c___ARQServiceQueueLo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_arqueue.c___ARQServiceQueueLo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32 }

@__ARQReqPendingLo = common dso_local global %struct.TYPE_3__* null, align 8
@__ARQReqQueueLo = common dso_local global i32 0, align 4
@ARQ_TASK_RUNNING = common dso_local global i32 0, align 4
@__ARQChunkSize = common dso_local global i64 0, align 8
@__ARQCallbackLo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__ARQServiceQueueLo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ARQServiceQueueLo() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__ARQReqPendingLo, align 8
  %3 = icmp ne %struct.TYPE_3__* %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = call i64 @__lwp_queue_getI(i32* @__ARQReqQueueLo)
  %6 = inttoptr i64 %5 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %1, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** @__ARQReqPendingLo, align 8
  br label %8

8:                                                ; preds = %4, %0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__ARQReqPendingLo, align 8
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %1, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %70

12:                                               ; preds = %8
  %13 = load i32, i32* @ARQ_TASK_RUNNING, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @__ARQChunkSize, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %12
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @AR_StartDMA(i32 %24, i32 %27, i32 %30, i64 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__ARQReqPendingLo, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* @__ARQCallbackLo, align 4
  br label %69

38:                                               ; preds = %12
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @__ARQChunkSize, align 8
  %49 = call i32 @AR_StartDMA(i32 %41, i32 %44, i32 %47, i64 %48)
  %50 = load i64, i64* @__ARQChunkSize, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__ARQReqPendingLo, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load i64, i64* @__ARQChunkSize, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__ARQReqPendingLo, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  %62 = load i64, i64* @__ARQChunkSize, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__ARQReqPendingLo, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 8
  br label %69

69:                                               ; preds = %38, %21
  br label %70

70:                                               ; preds = %69, %8
  ret void
}

declare dso_local i64 @__lwp_queue_getI(i32*) #1

declare dso_local i32 @AR_StartDMA(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
