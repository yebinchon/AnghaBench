; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_unsuppress.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_unsuppress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i32, i32 }
%struct.kqtailq = type { i32 }
%struct.kqueue = type { i32 }
%struct.kqworkloop = type { i32 }

@KN_SUPPRESSED = common dso_local global i32 0, align 4
@kn_tqe = common dso_local global i32 0, align 4
@KN_ACTIVE = common dso_local global i32 0, align 4
@KQ_WORKLOOP = common dso_local global i32 0, align 4
@KQWL_UTQ_RESET_WAKEUP_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @knote_unsuppress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knote_unsuppress(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.kqtailq*, align 8
  %4 = alloca %struct.kqueue*, align 8
  %5 = alloca %struct.kqworkloop*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %6 = load %struct.knote*, %struct.knote** %2, align 8
  %7 = call %struct.kqueue* @knote_get_kq(%struct.knote* %6)
  store %struct.kqueue* %7, %struct.kqueue** %4, align 8
  %8 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %9 = call i32 @kqlock_held(%struct.kqueue* %8)
  %10 = load %struct.knote*, %struct.knote** %2, align 8
  %11 = getelementptr inbounds %struct.knote, %struct.knote* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @KN_SUPPRESSED, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %89

17:                                               ; preds = %1
  %18 = load i32, i32* @KN_SUPPRESSED, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.knote*, %struct.knote** %2, align 8
  %21 = getelementptr inbounds %struct.knote, %struct.knote* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %25 = load %struct.knote*, %struct.knote** %2, align 8
  %26 = call %struct.kqtailq* @kqueue_get_suppressed_queue(%struct.kqueue* %24, %struct.knote* %25)
  store %struct.kqtailq* %26, %struct.kqtailq** %3, align 8
  %27 = load %struct.kqtailq*, %struct.kqtailq** %3, align 8
  %28 = load %struct.knote*, %struct.knote** %2, align 8
  %29 = load i32, i32* @kn_tqe, align 4
  %30 = call i32 @TAILQ_REMOVE(%struct.kqtailq* %27, %struct.knote* %28, i32 %29)
  %31 = load %struct.knote*, %struct.knote** %2, align 8
  %32 = getelementptr inbounds %struct.knote, %struct.knote* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @KN_ACTIVE, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %17
  %38 = load %struct.knote*, %struct.knote** %2, align 8
  %39 = getelementptr inbounds %struct.knote, %struct.knote* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.knote*, %struct.knote** %2, align 8
  %42 = getelementptr inbounds %struct.knote, %struct.knote* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %17
  %44 = load %struct.knote*, %struct.knote** %2, align 8
  %45 = getelementptr inbounds %struct.knote, %struct.knote* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.knote*, %struct.knote** %2, align 8
  %48 = getelementptr inbounds %struct.knote, %struct.knote* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.knote*, %struct.knote** %2, align 8
  %50 = call i64 @knote_enqueue(%struct.knote* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %43
  %53 = load %struct.knote*, %struct.knote** %2, align 8
  %54 = getelementptr inbounds %struct.knote, %struct.knote* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @KN_ACTIVE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.knote*, %struct.knote** %2, align 8
  %61 = call i32 @knote_wakeup(%struct.knote* %60)
  br label %62

62:                                               ; preds = %59, %52, %43
  %63 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %64 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @KQ_WORKLOOP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %62
  %70 = load %struct.kqtailq*, %struct.kqtailq** %3, align 8
  %71 = call i64 @TAILQ_EMPTY(%struct.kqtailq* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %75 = bitcast %struct.kqueue* %74 to %struct.kqworkloop*
  store %struct.kqworkloop* %75, %struct.kqworkloop** %5, align 8
  %76 = load %struct.kqworkloop*, %struct.kqworkloop** %5, align 8
  %77 = call i64 @kqworkloop_is_processing_on_current_thread(%struct.kqworkloop* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %88

80:                                               ; preds = %73
  %81 = load %struct.kqworkloop*, %struct.kqworkloop** %5, align 8
  %82 = call i32 @kq_req_lock(%struct.kqworkloop* %81)
  %83 = load %struct.kqworkloop*, %struct.kqworkloop** %5, align 8
  %84 = load i32, i32* @KQWL_UTQ_RESET_WAKEUP_OVERRIDE, align 4
  %85 = call i32 @kqworkloop_update_threads_qos(%struct.kqworkloop* %83, i32 %84, i32 0)
  %86 = load %struct.kqworkloop*, %struct.kqworkloop** %5, align 8
  %87 = call i32 @kq_req_unlock(%struct.kqworkloop* %86)
  br label %88

88:                                               ; preds = %80, %79
  br label %89

89:                                               ; preds = %16, %88, %69, %62
  ret void
}

declare dso_local %struct.kqueue* @knote_get_kq(%struct.knote*) #1

declare dso_local i32 @kqlock_held(%struct.kqueue*) #1

declare dso_local %struct.kqtailq* @kqueue_get_suppressed_queue(%struct.kqueue*, %struct.knote*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.kqtailq*, %struct.knote*, i32) #1

declare dso_local i64 @knote_enqueue(%struct.knote*) #1

declare dso_local i32 @knote_wakeup(%struct.knote*) #1

declare dso_local i64 @TAILQ_EMPTY(%struct.kqtailq*) #1

declare dso_local i64 @kqworkloop_is_processing_on_current_thread(%struct.kqworkloop*) #1

declare dso_local i32 @kq_req_lock(%struct.kqworkloop*) #1

declare dso_local i32 @kqworkloop_update_threads_qos(%struct.kqworkloop*, i32, i32) #1

declare dso_local i32 @kq_req_unlock(%struct.kqworkloop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
