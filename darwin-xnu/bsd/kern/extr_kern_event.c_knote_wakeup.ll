; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_wakeup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32 }
%struct.kqueue = type { i32, i32 }
%struct.kqworkq = type { i32 }
%struct.kqworkloop = type { i32 }
%struct.kqfile = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.waitq = type { i32 }

@KQ_WORKQ = common dso_local global i32 0, align 4
@KQ_WORKLOOP = common dso_local global i32 0, align 4
@KQ_PROCESSING = common dso_local global i32 0, align 4
@KQ_WAKEUP = common dso_local global i32 0, align 4
@KQ_SLEEP = common dso_local global i32 0, align 4
@KQ_SEL = common dso_local global i32 0, align 4
@KQ_EVENT = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i32 0, align 4
@WAITQ_ALL_PRIORITIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @knote_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knote_wakeup(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.kqueue*, align 8
  %4 = alloca %struct.kqworkq*, align 8
  %5 = alloca %struct.kqworkloop*, align 8
  %6 = alloca %struct.kqfile*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %7 = load %struct.knote*, %struct.knote** %2, align 8
  %8 = call %struct.kqueue* @knote_get_kq(%struct.knote* %7)
  store %struct.kqueue* %8, %struct.kqueue** %3, align 8
  %9 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %10 = call i32 @kqlock_held(%struct.kqueue* %9)
  %11 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %12 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @KQ_WORKQ, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %19 = bitcast %struct.kqueue* %18 to %struct.kqworkq*
  store %struct.kqworkq* %19, %struct.kqworkq** %4, align 8
  %20 = load %struct.kqworkq*, %struct.kqworkq** %4, align 8
  %21 = load %struct.knote*, %struct.knote** %2, align 8
  %22 = getelementptr inbounds %struct.knote, %struct.knote* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kqworkq_request_help(%struct.kqworkq* %20, i32 %23)
  br label %91

25:                                               ; preds = %1
  %26 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %27 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @KQ_WORKLOOP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %34 = bitcast %struct.kqueue* %33 to %struct.kqworkloop*
  store %struct.kqworkloop* %34, %struct.kqworkloop** %5, align 8
  %35 = load %struct.kqworkloop*, %struct.kqworkloop** %5, align 8
  %36 = call i32 @kqworkloop_is_processing_on_current_thread(%struct.kqworkloop* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.kqworkloop*, %struct.kqworkloop** %5, align 8
  %40 = load %struct.knote*, %struct.knote** %2, align 8
  %41 = getelementptr inbounds %struct.knote, %struct.knote* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @kqworkloop_request_help(%struct.kqworkloop* %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %32
  br label %90

45:                                               ; preds = %25
  %46 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %47 = bitcast %struct.kqueue* %46 to %struct.kqfile*
  store %struct.kqfile* %47, %struct.kqfile** %6, align 8
  %48 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %49 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @KQ_PROCESSING, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load i32, i32* @KQ_WAKEUP, align 4
  %56 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %57 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %45
  %61 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %62 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @KQ_SLEEP, align 4
  %65 = load i32, i32* @KQ_SEL, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %60
  %70 = load i32, i32* @KQ_SLEEP, align 4
  %71 = load i32, i32* @KQ_SEL, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %75 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %79 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %78, i32 0, i32 1
  %80 = bitcast i32* %79 to %struct.waitq*
  %81 = load i32, i32* @KQ_EVENT, align 4
  %82 = load i32, i32* @THREAD_AWAKENED, align 4
  %83 = load i32, i32* @WAITQ_ALL_PRIORITIES, align 4
  %84 = call i32 @waitq_wakeup64_all(%struct.waitq* %80, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %69, %60
  %86 = load %struct.kqfile*, %struct.kqfile** %6, align 8
  %87 = getelementptr inbounds %struct.kqfile, %struct.kqfile* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 @KNOTE(i32* %88, i32 0)
  br label %90

90:                                               ; preds = %85, %44
  br label %91

91:                                               ; preds = %90, %17
  ret void
}

declare dso_local %struct.kqueue* @knote_get_kq(%struct.knote*) #1

declare dso_local i32 @kqlock_held(%struct.kqueue*) #1

declare dso_local i32 @kqworkq_request_help(%struct.kqworkq*, i32) #1

declare dso_local i32 @kqworkloop_is_processing_on_current_thread(%struct.kqworkloop*) #1

declare dso_local i32 @kqworkloop_request_help(%struct.kqworkloop*, i32) #1

declare dso_local i32 @waitq_wakeup64_all(%struct.waitq*, i32, i32, i32) #1

declare dso_local i32 @KNOTE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
