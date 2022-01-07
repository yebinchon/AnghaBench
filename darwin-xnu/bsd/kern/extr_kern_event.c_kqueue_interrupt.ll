; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_interrupt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32, i32 }
%struct.kqtailq = type { i32 }
%struct.waitq = type { i32 }

@KQ_WORKQ = common dso_local global i32 0, align 4
@KQ_SLEEP = common dso_local global i32 0, align 4
@KQ_SEL = common dso_local global i32 0, align 4
@KQ_EVENT = common dso_local global i32 0, align 4
@THREAD_RESTART = common dso_local global i32 0, align 4
@WAITQ_ALL_PRIORITIES = common dso_local global i32 0, align 4
@KQ_PROCWAIT = common dso_local global i32 0, align 4
@KQ_PROCESSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kqueue*)* @kqueue_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kqueue_interrupt(%struct.kqueue* %0) #0 {
  %2 = alloca %struct.kqueue*, align 8
  %3 = alloca %struct.kqtailq*, align 8
  store %struct.kqueue* %0, %struct.kqueue** %2, align 8
  %4 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %5 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @KQ_WORKQ, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %13 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @KQ_SLEEP, align 4
  %16 = load i32, i32* @KQ_SEL, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load i32, i32* @KQ_SLEEP, align 4
  %22 = load i32, i32* @KQ_SEL, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %26 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %30 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %29, i32 0, i32 1
  %31 = bitcast i32* %30 to %struct.waitq*
  %32 = load i32, i32* @KQ_EVENT, align 4
  %33 = load i32, i32* @THREAD_RESTART, align 4
  %34 = load i32, i32* @WAITQ_ALL_PRIORITIES, align 4
  %35 = call i32 @waitq_wakeup64_all(%struct.waitq* %31, i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %20, %1
  %37 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %38 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @KQ_PROCWAIT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %36
  %44 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %45 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @KQ_PROCESSING, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* @KQ_PROCWAIT, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %53 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %57 = call %struct.kqtailq* @kqueue_get_suppressed_queue(%struct.kqueue* %56, i32* null)
  store %struct.kqtailq* %57, %struct.kqtailq** %3, align 8
  %58 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %59 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %58, i32 0, i32 1
  %60 = bitcast i32* %59 to %struct.waitq*
  %61 = load %struct.kqtailq*, %struct.kqtailq** %3, align 8
  %62 = call i32 @CAST_EVENT64_T(%struct.kqtailq* %61)
  %63 = load i32, i32* @THREAD_RESTART, align 4
  %64 = load i32, i32* @WAITQ_ALL_PRIORITIES, align 4
  %65 = call i32 @waitq_wakeup64_all(%struct.waitq* %60, i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %43, %36
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_wakeup64_all(%struct.waitq*, i32, i32, i32) #1

declare dso_local %struct.kqtailq* @kqueue_get_suppressed_queue(%struct.kqueue*, i32*) #1

declare dso_local i32 @CAST_EVENT64_T(%struct.kqtailq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
