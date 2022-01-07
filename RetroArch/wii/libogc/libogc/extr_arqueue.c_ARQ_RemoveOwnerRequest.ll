; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_arqueue.c_ARQ_RemoveOwnerRequest.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_arqueue.c_ARQ_RemoveOwnerRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@__ARQReqQueueHi = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@__ARQReqQueueLo = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@__ARQReqPendingLo = common dso_local global %struct.TYPE_7__* null, align 8
@__ARQCallbackLo = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ARQ_RemoveOwnerRequest(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @_CPU_ISR_Disable(i64 %6)
  store i64 0, i64* %4, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @__ARQReqQueueHi, i32 0, i32 0), align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %5, align 8
  br label %10

10:                                               ; preds = %27, %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = call i64 @__lwp_queue_tail(%struct.TYPE_8__* @__ARQReqQueueHi)
  %13 = inttoptr i64 %12 to %struct.TYPE_7__*
  %14 = icmp ne %struct.TYPE_7__* %11, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %2, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = call i32 @__lwp_queue_extractI(%struct.TYPE_9__* %23)
  %25 = load i64, i64* %4, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %4, align 8
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %5, align 8
  br label %10

33:                                               ; preds = %10
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @__ARQReqQueueLo, i32 0, i32 0), align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %5, align 8
  br label %36

36:                                               ; preds = %53, %33
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = call i64 @__lwp_queue_tail(%struct.TYPE_8__* @__ARQReqQueueLo)
  %39 = inttoptr i64 %38 to %struct.TYPE_7__*
  %40 = icmp ne %struct.TYPE_7__* %37, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %2, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = call i32 @__lwp_queue_extractI(%struct.TYPE_9__* %49)
  %51 = load i64, i64* %4, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %5, align 8
  br label %36

59:                                               ; preds = %36
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__ARQReqPendingLo, align 8
  %61 = icmp ne %struct.TYPE_7__* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__ARQReqPendingLo, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = icmp eq %struct.TYPE_7__* %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32*, i32** @__ARQCallbackLo, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store %struct.TYPE_7__* null, %struct.TYPE_7__** @__ARQReqPendingLo, align 8
  br label %70

70:                                               ; preds = %69, %66, %62, %59
  %71 = load i64, i64* %3, align 8
  %72 = call i32 @_CPU_ISR_Restore(i64 %71)
  %73 = load i64, i64* %4, align 8
  ret i64 %73
}

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local i64 @__lwp_queue_tail(%struct.TYPE_8__*) #1

declare dso_local i32 @__lwp_queue_extractI(%struct.TYPE_9__*) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
