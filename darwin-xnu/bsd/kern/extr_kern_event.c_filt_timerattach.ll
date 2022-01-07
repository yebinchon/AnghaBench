; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_timerattach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_timerattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i32, i32* }
%struct.kevent_internal_s = type { i32 }
%struct.filt_timer_params = type { i32 }

@filt_timerexpire = common dso_local global i32 0, align 4
@THREAD_CALL_PRIORITY_HIGH = common dso_local global i32 0, align 4
@THREAD_CALL_OPTIONS_ONCE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EV_CLEAR = common dso_local global i32 0, align 4
@TIMER_IDLE = common dso_local global i32 0, align 4
@relaxed = common dso_local global i32 0, align 4
@NOTE_ABSOLUTE = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@TIMER_IMMEDIATE = common dso_local global i32 0, align 4
@FILTER_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.kevent_internal_s*)* @filt_timerattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_timerattach(%struct.knote* %0, %struct.kevent_internal_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.kevent_internal_s*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.filt_timer_params, align 4
  %8 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.kevent_internal_s* %1, %struct.kevent_internal_s** %5, align 8
  %9 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %5, align 8
  %10 = call i32 @filt_timervalidate(%struct.kevent_internal_s* %9, %struct.filt_timer_params* %7)
  store i32 %10, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.knote*, %struct.knote** %4, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @knote_set_error(%struct.knote* %13, i32 %14)
  store i32 0, i32* %3, align 4
  br label %71

16:                                               ; preds = %2
  %17 = load i32, i32* @filt_timerexpire, align 4
  %18 = load %struct.knote*, %struct.knote** %4, align 8
  %19 = ptrtoint %struct.knote* %18 to i32
  %20 = load i32, i32* @THREAD_CALL_PRIORITY_HIGH, align 4
  %21 = load i32, i32* @THREAD_CALL_OPTIONS_ONCE, align 4
  %22 = call i32* @thread_call_allocate_with_options(i32 %17, i32 %19, i32 %20, i32 %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* null, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.knote*, %struct.knote** %4, align 8
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = call i32 @knote_set_error(%struct.knote* %26, i32 %27)
  store i32 0, i32* %3, align 4
  br label %71

29:                                               ; preds = %16
  %30 = load %struct.knote*, %struct.knote** %4, align 8
  %31 = call i32 @filt_timer_set_params(%struct.knote* %30, %struct.filt_timer_params* %7)
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.knote*, %struct.knote** %4, align 8
  %34 = getelementptr inbounds %struct.knote, %struct.knote* %33, i32 0, i32 3
  store i32* %32, i32** %34, align 8
  %35 = load i32, i32* @EV_CLEAR, align 4
  %36 = load %struct.knote*, %struct.knote** %4, align 8
  %37 = getelementptr inbounds %struct.knote, %struct.knote* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.knote*, %struct.knote** %4, align 8
  %41 = getelementptr inbounds %struct.knote, %struct.knote* %40, i32 0, i32 1
  %42 = load i32, i32* @TIMER_IDLE, align 4
  %43 = load i32, i32* @relaxed, align 4
  %44 = call i32 @os_atomic_store(i32* %41, i32 %42, i32 %43)
  %45 = load %struct.knote*, %struct.knote** %4, align 8
  %46 = getelementptr inbounds %struct.knote, %struct.knote* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NOTE_ABSOLUTE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %29
  %52 = load i32, i32* @EV_ONESHOT, align 4
  %53 = load %struct.knote*, %struct.knote** %4, align 8
  %54 = getelementptr inbounds %struct.knote, %struct.knote* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %29
  %58 = load %struct.knote*, %struct.knote** %4, align 8
  %59 = call i64 @filt_timer_is_ready(%struct.knote* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load %struct.knote*, %struct.knote** %4, align 8
  %63 = getelementptr inbounds %struct.knote, %struct.knote* %62, i32 0, i32 1
  %64 = load i32, i32* @TIMER_IMMEDIATE, align 4
  %65 = load i32, i32* @relaxed, align 4
  %66 = call i32 @os_atomic_store(i32* %63, i32 %64, i32 %65)
  %67 = load i32, i32* @FILTER_ACTIVE, align 4
  store i32 %67, i32* %3, align 4
  br label %71

68:                                               ; preds = %57
  %69 = load %struct.knote*, %struct.knote** %4, align 8
  %70 = call i32 @filt_timerarm(%struct.knote* %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %61, %25, %12
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @filt_timervalidate(%struct.kevent_internal_s*, %struct.filt_timer_params*) #1

declare dso_local i32 @knote_set_error(%struct.knote*, i32) #1

declare dso_local i32* @thread_call_allocate_with_options(i32, i32, i32, i32) #1

declare dso_local i32 @filt_timer_set_params(%struct.knote*, %struct.filt_timer_params*) #1

declare dso_local i32 @os_atomic_store(i32*, i32, i32) #1

declare dso_local i64 @filt_timer_is_ready(%struct.knote*) #1

declare dso_local i32 @filt_timerarm(%struct.knote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
