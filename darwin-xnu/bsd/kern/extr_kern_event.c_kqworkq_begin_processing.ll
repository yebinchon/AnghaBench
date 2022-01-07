; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkq_begin_processing.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkq_begin_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqworkq = type { i32 }
%struct.kqrequest = type { i32, i32, i32 }

@BSD_KEVENT_KQWQ_PROCESS_BEGIN = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@KQWQAE_BEGIN_PROCESSING = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kqworkq*, %struct.kqrequest*, i32)* @kqworkq_begin_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kqworkq_begin_processing(%struct.kqworkq* %0, %struct.kqrequest* %1, i32 %2) #0 {
  %4 = alloca %struct.kqworkq*, align 8
  %5 = alloca %struct.kqrequest*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kqworkq* %0, %struct.kqworkq** %4, align 8
  store %struct.kqrequest* %1, %struct.kqrequest** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @BSD_KEVENT_KQWQ_PROCESS_BEGIN, align 4
  %9 = call i32 @KEV_EVTID(i32 %8)
  %10 = load i32, i32* @DBG_FUNC_START, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %13 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @KDBG_FILTERED(i32 %11, i32 0, i32 %14)
  %16 = load %struct.kqworkq*, %struct.kqworkq** %4, align 8
  %17 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @KQWQAE_BEGIN_PROCESSING, align 4
  %20 = call i32 @kqworkq_acknowledge_events(%struct.kqworkq* %16, %struct.kqrequest* %17, i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @BSD_KEVENT_KQWQ_PROCESS_BEGIN, align 4
  %22 = call i32 @KEV_EVTID(i32 %21)
  %23 = load i32, i32* @DBG_FUNC_END, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %26 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @thread_tid(i32 %27)
  %29 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %30 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @KDBG_FILTERED(i32 %24, i32 %28, i32 %31)
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @KDBG_FILTERED(i32, i32, i32) #1

declare dso_local i32 @KEV_EVTID(i32) #1

declare dso_local i32 @kqworkq_acknowledge_events(%struct.kqworkq*, %struct.kqrequest*, i32, i32) #1

declare dso_local i32 @thread_tid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
