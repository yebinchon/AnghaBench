; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_arqueue.c_ARQ_PostRequestAsync.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_arqueue.c_ARQ_PostRequestAsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64, i64, i64, i64, i32, i32, i64, i64 }

@ARQ_TASK_READY = common dso_local global i32 0, align 4
@__ARQCallbackDummy = common dso_local global i32* null, align 8
@ARQ_PRIO_LO = common dso_local global i64 0, align 8
@__ARQReqQueueLo = common dso_local global i32 0, align 4
@__ARQReqQueueHi = common dso_local global i32 0, align 4
@__ARQReqPendingLo = common dso_local global i32 0, align 4
@__ARQReqPendingHi = common dso_local global %struct.TYPE_4__* null, align 8
@ARQ_TASK_RUNNING = common dso_local global i32 0, align 4
@__ARQCallbackHi = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ARQ_PostRequestAsync(%struct.TYPE_4__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i32* %7, i32** %16, align 8
  %19 = load i32, i32* @ARQ_TASK_READY, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 8
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %15, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 7
  store i64 %37, i64* %39, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %8
  %43 = load i32*, i32** @__ARQCallbackDummy, align 8
  br label %46

44:                                               ; preds = %8
  %45 = load i32*, i32** %16, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32* [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load i64, i64* %17, align 8
  %51 = call i32 @_CPU_ISR_Disable(i64 %50)
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @ARQ_PRIO_LO, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 6
  %58 = call i32 @__lwp_queue_appendI(i32* @__ARQReqQueueLo, i32* %57)
  br label %63

59:                                               ; preds = %46
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 6
  %62 = call i32 @__lwp_queue_appendI(i32* @__ARQReqQueueHi, i32* %61)
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* @__ARQReqPendingLo, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %101, label %66

66:                                               ; preds = %63
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__ARQReqPendingHi, align 8
  %68 = icmp ne %struct.TYPE_4__* %67, null
  br i1 %68, label %101, label %69

69:                                               ; preds = %66
  %70 = call i64 @__lwp_queue_getI(i32* @__ARQReqQueueHi)
  %71 = inttoptr i64 %70 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %18, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %73 = icmp ne %struct.TYPE_4__* %72, null
  br i1 %73, label %74, label %95

74:                                               ; preds = %69
  %75 = load i32, i32* @ARQ_TASK_RUNNING, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @AR_StartDMA(i64 %80, i64 %83, i64 %86, i64 %89)
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  store i32* %93, i32** @__ARQCallbackHi, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %94, %struct.TYPE_4__** @__ARQReqPendingHi, align 8
  br label %95

95:                                               ; preds = %74, %69
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__ARQReqPendingHi, align 8
  %97 = icmp ne %struct.TYPE_4__* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = call i32 (...) @__ARQServiceQueueLo()
  br label %100

100:                                              ; preds = %98, %95
  br label %101

101:                                              ; preds = %100, %66, %63
  %102 = load i64, i64* %17, align 8
  %103 = call i32 @_CPU_ISR_Restore(i64 %102)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local i32 @__lwp_queue_appendI(i32*, i32*) #1

declare dso_local i64 @__lwp_queue_getI(i32*) #1

declare dso_local i32 @AR_StartDMA(i64, i64, i64, i64) #1

declare dso_local i32 @__ARQServiceQueueLo(...) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
