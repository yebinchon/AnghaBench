; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_timertouch.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_timertouch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32 }
%struct.kevent_internal_s = type { i32, i32, i32 }
%struct.filt_timer_params = type { i32 }

@NOTE_ABSOLUTE = common dso_local global i32 0, align 4
@EV_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TIMER_IMMEDIATE = common dso_local global i32 0, align 4
@relaxed = common dso_local global i32 0, align 4
@FILTER_ACTIVE = common dso_local global i32 0, align 4
@FILTER_UPDATE_REQ_QOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.kevent_internal_s*)* @filt_timertouch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_timertouch(%struct.knote* %0, %struct.kevent_internal_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.kevent_internal_s*, align 8
  %6 = alloca %struct.filt_timer_params, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.kevent_internal_s* %1, %struct.kevent_internal_s** %5, align 8
  %9 = load %struct.knote*, %struct.knote** %4, align 8
  %10 = getelementptr inbounds %struct.knote, %struct.knote* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %13 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %11, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @NOTE_ABSOLUTE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i32, i32* @EV_ERROR, align 4
  %22 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %23 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %28 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %68

29:                                               ; preds = %2
  %30 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %31 = call i32 @filt_timervalidate(%struct.kevent_internal_s* %30, %struct.filt_timer_params* %6)
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i32, i32* @EV_ERROR, align 4
  %35 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %36 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %41 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %3, align 4
  br label %68

42:                                               ; preds = %29
  %43 = load %struct.knote*, %struct.knote** %4, align 8
  %44 = call i32 @filt_timercancel(%struct.knote* %43)
  %45 = load %struct.knote*, %struct.knote** %4, align 8
  %46 = call i32 @filt_timer_set_params(%struct.knote* %45, %struct.filt_timer_params* %6)
  %47 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %48 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.knote*, %struct.knote** %4, align 8
  %51 = getelementptr inbounds %struct.knote, %struct.knote* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.knote*, %struct.knote** %4, align 8
  %53 = call i64 @filt_timer_is_ready(%struct.knote* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %42
  %56 = load %struct.knote*, %struct.knote** %4, align 8
  %57 = getelementptr inbounds %struct.knote, %struct.knote* %56, i32 0, i32 1
  %58 = load i32, i32* @TIMER_IMMEDIATE, align 4
  %59 = load i32, i32* @relaxed, align 4
  %60 = call i32 @os_atomic_store(i32* %57, i32 %58, i32 %59)
  %61 = load i32, i32* @FILTER_ACTIVE, align 4
  %62 = load i32, i32* @FILTER_UPDATE_REQ_QOS, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %3, align 4
  br label %68

64:                                               ; preds = %42
  %65 = load %struct.knote*, %struct.knote** %4, align 8
  %66 = call i32 @filt_timerarm(%struct.knote* %65)
  %67 = load i32, i32* @FILTER_UPDATE_REQ_QOS, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %55, %33, %20
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @filt_timervalidate(%struct.kevent_internal_s*, %struct.filt_timer_params*) #1

declare dso_local i32 @filt_timercancel(%struct.knote*) #1

declare dso_local i32 @filt_timer_set_params(%struct.knote*, %struct.filt_timer_params*) #1

declare dso_local i64 @filt_timer_is_ready(%struct.knote*) #1

declare dso_local i32 @os_atomic_store(i32*, i32, i32) #1

declare dso_local i32 @filt_timerarm(%struct.knote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
