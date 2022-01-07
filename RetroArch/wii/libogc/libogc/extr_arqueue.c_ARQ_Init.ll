; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_arqueue.c_ARQ_Init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_arqueue.c_ARQ_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__ARQInitFlag = common dso_local global i32 0, align 4
@__ARQReqPendingLo = common dso_local global i32* null, align 8
@__ARQReqPendingHi = common dso_local global i32* null, align 8
@__ARQCallbackLo = common dso_local global i32* null, align 8
@__ARQCallbackHi = common dso_local global i32* null, align 8
@ARQ_DEF_CHUNK_SIZE = common dso_local global i32 0, align 4
@__ARQChunkSize = common dso_local global i32 0, align 4
@__ARQSyncQueue = common dso_local global i32 0, align 4
@__ARQReqQueueLo = common dso_local global i32 0, align 4
@__ARQReqQueueHi = common dso_local global i32 0, align 4
@__ARInterruptServiceRoutine = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ARQ_Init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @__ARQInitFlag, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %16

5:                                                ; preds = %0
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @_CPU_ISR_Disable(i32 %6)
  store i32* null, i32** @__ARQReqPendingLo, align 8
  store i32* null, i32** @__ARQReqPendingHi, align 8
  store i32* null, i32** @__ARQCallbackLo, align 8
  store i32* null, i32** @__ARQCallbackHi, align 8
  %8 = load i32, i32* @ARQ_DEF_CHUNK_SIZE, align 4
  store i32 %8, i32* @__ARQChunkSize, align 4
  %9 = call i32 @LWP_InitQueue(i32* @__ARQSyncQueue)
  %10 = call i32 @__lwp_queue_init_empty(i32* @__ARQReqQueueLo)
  %11 = call i32 @__lwp_queue_init_empty(i32* @__ARQReqQueueHi)
  %12 = load i32, i32* @__ARInterruptServiceRoutine, align 4
  %13 = call i32 @AR_RegisterCallback(i32 %12)
  store i32 1, i32* @__ARQInitFlag, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @_CPU_ISR_Restore(i32 %14)
  br label %16

16:                                               ; preds = %5, %4
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @LWP_InitQueue(i32*) #1

declare dso_local i32 @__lwp_queue_init_empty(i32*) #1

declare dso_local i32 @AR_RegisterCallback(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
