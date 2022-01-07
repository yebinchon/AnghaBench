; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp.c_LWP_InitQueue.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp.c_LWP_InitQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@LWP_THREADQ_MODEFIFO = common dso_local global i32 0, align 4
@LWP_STATES_WAITING_ON_THREADQ = common dso_local global i32 0, align 4
@LWP_OBJTYPE_TQUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LWP_InitQueue(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i64* %0, i64** %3, align 8
  %5 = load i64*, i64** %3, align 8
  %6 = icmp ne i64* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %30

8:                                                ; preds = %1
  %9 = call %struct.TYPE_5__* (...) @__lwp_tqueue_allocate()
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %30

13:                                               ; preds = %8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* @LWP_THREADQ_MODEFIFO, align 4
  %17 = load i32, i32* @LWP_STATES_WAITING_ON_THREADQ, align 4
  %18 = call i32 @__lwp_threadqueue_init(i32* %15, i32 %16, i32 %17, i32 0)
  %19 = load i32, i32* @LWP_OBJTYPE_TQUEUE, align 4
  %20 = call i32 @LWP_OBJMASKTYPE(i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @LWP_OBJMASKID(i32 %24)
  %26 = or i32 %20, %25
  %27 = sext i32 %26 to i64
  %28 = load i64*, i64** %3, align 8
  store i64 %27, i64* %28, align 8
  %29 = call i32 (...) @__lwp_thread_dispatchenable()
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %13, %12, %7
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.TYPE_5__* @__lwp_tqueue_allocate(...) #1

declare dso_local i32 @__lwp_threadqueue_init(i32*, i32, i32, i32) #1

declare dso_local i32 @LWP_OBJMASKTYPE(i32) #1

declare dso_local i32 @LWP_OBJMASKID(i32) #1

declare dso_local i32 @__lwp_thread_dispatchenable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
