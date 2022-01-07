; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqfile_begin_processing.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqfile_begin_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32, i32 }
%struct.kqtailq = type { i32 }
%struct.waitq = type { i32 }

@KQ_WORKQ = common dso_local global i32 0, align 4
@KQ_WORKLOOP = common dso_local global i32 0, align 4
@BSD_KEVENT_KQ_PROCESS_BEGIN = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@KQ_DRAIN = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@KQ_PROCESSING = common dso_local global i32 0, align 4
@KQ_PROCWAIT = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@THREAD_WAIT_NOREPORT = common dso_local global i32 0, align 4
@TIMEOUT_WAIT_FOREVER = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@KQ_WAKEUP = common dso_local global i32 0, align 4
@QOS_INDEX_KQFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kqueue*)* @kqfile_begin_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kqfile_begin_processing(%struct.kqueue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kqueue*, align 8
  %4 = alloca %struct.kqtailq*, align 8
  store %struct.kqueue* %0, %struct.kqueue** %3, align 8
  %5 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %6 = call i32 @kqlock_held(%struct.kqueue* %5)
  %7 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %8 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @KQ_WORKQ, align 4
  %11 = load i32, i32* @KQ_WORKLOOP, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* @BSD_KEVENT_KQ_PROCESS_BEGIN, align 4
  %18 = call i32 @KEV_EVTID(i32 %17)
  %19 = load i32, i32* @DBG_FUNC_START, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %22 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.kqueue* %21)
  %23 = call i32 (i32, i32, ...) @KDBG_FILTERED(i32 %20, i32 %22, i32 0)
  br label %24

24:                                               ; preds = %47, %1
  %25 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %26 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @KQ_DRAIN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i32, i32* @BSD_KEVENT_KQ_PROCESS_BEGIN, align 4
  %33 = call i32 @KEV_EVTID(i32 %32)
  %34 = load i32, i32* @DBG_FUNC_END, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %37 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.kqueue* %36)
  %38 = call i32 (i32, i32, ...) @KDBG_FILTERED(i32 %35, i32 %37, i32 2)
  store i32 -1, i32* %2, align 4
  br label %106

39:                                               ; preds = %24
  %40 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %41 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @KQ_PROCESSING, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %71

47:                                               ; preds = %39
  %48 = load i32, i32* @KQ_PROCWAIT, align 4
  %49 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %50 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %54 = call %struct.kqtailq* @kqueue_get_suppressed_queue(%struct.kqueue* %53, i32* null)
  store %struct.kqtailq* %54, %struct.kqtailq** %4, align 8
  %55 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %56 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %55, i32 0, i32 1
  %57 = bitcast i32* %56 to %struct.waitq*
  %58 = load %struct.kqtailq*, %struct.kqtailq** %4, align 8
  %59 = call i32 @CAST_EVENT64_T(%struct.kqtailq* %58)
  %60 = load i32, i32* @THREAD_UNINT, align 4
  %61 = load i32, i32* @THREAD_WAIT_NOREPORT, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @TIMEOUT_WAIT_FOREVER, align 4
  %64 = call i32 @waitq_assert_wait64(%struct.waitq* %57, i32 %59, i32 %62, i32 %63)
  %65 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %66 = call i32 @kqunlock(%struct.kqueue* %65)
  %67 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %68 = call i32 @thread_block(i32 %67)
  %69 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %70 = call i32 @kqlock(%struct.kqueue* %69)
  br label %24

71:                                               ; preds = %46
  %72 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %73 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %72, i32 0, i32 1
  %74 = call i32 @waitq_set_clear_preposts(i32* %73)
  %75 = load i32, i32* @KQ_WAKEUP, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %78 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %82 = load i32, i32* @QOS_INDEX_KQFILE, align 4
  %83 = call i64 @kqueue_queue_empty(%struct.kqueue* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %71
  %86 = load i32, i32* @BSD_KEVENT_KQ_PROCESS_BEGIN, align 4
  %87 = call i32 @KEV_EVTID(i32 %86)
  %88 = load i32, i32* @DBG_FUNC_END, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %91 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.kqueue* %90)
  %92 = call i32 (i32, i32, ...) @KDBG_FILTERED(i32 %89, i32 %91, i32 1)
  store i32 -1, i32* %2, align 4
  br label %106

93:                                               ; preds = %71
  %94 = load i32, i32* @KQ_PROCESSING, align 4
  %95 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %96 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* @BSD_KEVENT_KQ_PROCESS_BEGIN, align 4
  %100 = call i32 @KEV_EVTID(i32 %99)
  %101 = load i32, i32* @DBG_FUNC_END, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %104 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.kqueue* %103)
  %105 = call i32 (i32, i32, ...) @KDBG_FILTERED(i32 %102, i32 %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %93, %85, %31
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @kqlock_held(%struct.kqueue*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @KDBG_FILTERED(i32, i32, ...) #1

declare dso_local i32 @KEV_EVTID(i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.kqueue*) #1

declare dso_local %struct.kqtailq* @kqueue_get_suppressed_queue(%struct.kqueue*, i32*) #1

declare dso_local i32 @waitq_assert_wait64(%struct.waitq*, i32, i32, i32) #1

declare dso_local i32 @CAST_EVENT64_T(%struct.kqtailq*) #1

declare dso_local i32 @kqunlock(%struct.kqueue*) #1

declare dso_local i32 @thread_block(i32) #1

declare dso_local i32 @kqlock(%struct.kqueue*) #1

declare dso_local i32 @waitq_set_clear_preposts(i32*) #1

declare dso_local i64 @kqueue_queue_empty(%struct.kqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
