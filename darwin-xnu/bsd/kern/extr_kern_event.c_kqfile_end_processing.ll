; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqfile_end_processing.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqfile_end_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32, i32 }
%struct.knote = type { i32 }
%struct.kqtailq = type { i32 }
%struct.waitq = type { i32 }

@KQ_WORKQ = common dso_local global i32 0, align 4
@KQ_WORKLOOP = common dso_local global i32 0, align 4
@BSD_KEVENT_KQ_PROCESS_END = common dso_local global i32 0, align 4
@KN_SUPPRESSED = common dso_local global i32 0, align 4
@KQ_PROCWAIT = common dso_local global i32 0, align 4
@KQ_PROCESSING = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i32 0, align 4
@WAITQ_ALL_PRIORITIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kqueue*)* @kqfile_end_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kqfile_end_processing(%struct.kqueue* %0) #0 {
  %2 = alloca %struct.kqueue*, align 8
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.kqtailq*, align 8
  %5 = alloca i32, align 4
  store %struct.kqueue* %0, %struct.kqueue** %2, align 8
  %6 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %7 = call i32 @kqlock_held(%struct.kqueue* %6)
  %8 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %9 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @KQ_WORKQ, align 4
  %12 = load i32, i32* @KQ_WORKLOOP, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* @BSD_KEVENT_KQ_PROCESS_END, align 4
  %19 = call i32 @KEV_EVTID(i32 %18)
  %20 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %21 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.kqueue* %20)
  %22 = call i32 @KDBG_FILTERED(i32 %19, i32 %21, i32 0)
  %23 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %24 = call %struct.kqtailq* @kqueue_get_suppressed_queue(%struct.kqueue* %23, i32* null)
  store %struct.kqtailq* %24, %struct.kqtailq** %4, align 8
  br label %25

25:                                               ; preds = %29, %1
  %26 = load %struct.kqtailq*, %struct.kqtailq** %4, align 8
  %27 = call %struct.knote* @TAILQ_FIRST(%struct.kqtailq* %26)
  store %struct.knote* %27, %struct.knote** %3, align 8
  %28 = icmp ne %struct.knote* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.knote*, %struct.knote** %3, align 8
  %31 = getelementptr inbounds %struct.knote, %struct.knote* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @KN_SUPPRESSED, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.knote*, %struct.knote** %3, align 8
  %37 = call i32 @knote_unsuppress(%struct.knote* %36)
  br label %25

38:                                               ; preds = %25
  %39 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %40 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @KQ_PROCWAIT, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @KQ_PROCESSING, align 4
  %45 = load i32, i32* @KQ_PROCWAIT, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %49 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %38
  %55 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %56 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %55, i32 0, i32 1
  %57 = bitcast i32* %56 to %struct.waitq*
  %58 = load %struct.kqtailq*, %struct.kqtailq** %4, align 8
  %59 = call i32 @CAST_EVENT64_T(%struct.kqtailq* %58)
  %60 = load i32, i32* @THREAD_AWAKENED, align 4
  %61 = load i32, i32* @WAITQ_ALL_PRIORITIES, align 4
  %62 = call i32 @waitq_wakeup64_all(%struct.waitq* %57, i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %54, %38
  ret void
}

declare dso_local i32 @kqlock_held(%struct.kqueue*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @KDBG_FILTERED(i32, i32, i32) #1

declare dso_local i32 @KEV_EVTID(i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.kqueue*) #1

declare dso_local %struct.kqtailq* @kqueue_get_suppressed_queue(%struct.kqueue*, i32*) #1

declare dso_local %struct.knote* @TAILQ_FIRST(%struct.kqtailq*) #1

declare dso_local i32 @knote_unsuppress(%struct.knote*) #1

declare dso_local i32 @waitq_wakeup64_all(%struct.waitq*, i32, i32, i32) #1

declare dso_local i32 @CAST_EVENT64_T(%struct.kqtailq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
