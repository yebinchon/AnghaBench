; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_timerarm.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_timerarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i64, i32, i32* }

@relaxed = common dso_local global i32 0, align 4
@TIMER_IDLE = common dso_local global i64 0, align 8
@NOTE_CRITICAL = common dso_local global i32 0, align 4
@THREAD_CALL_DELAY_USER_CRITICAL = common dso_local global i32 0, align 4
@NOTE_BACKGROUND = common dso_local global i32 0, align 4
@THREAD_CALL_DELAY_USER_BACKGROUND = common dso_local global i32 0, align 4
@THREAD_CALL_DELAY_USER_NORMAL = common dso_local global i32 0, align 4
@NOTE_LEEWAY = common dso_local global i32 0, align 4
@THREAD_CALL_DELAY_LEEWAY = common dso_local global i32 0, align 4
@NOTE_MACH_CONTINUOUS_TIME = common dso_local global i32 0, align 4
@THREAD_CALL_CONTINUOUS = common dso_local global i32 0, align 4
@TIMER_ARMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @filt_timerarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filt_timerarm(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %2, align 8
  %7 = load %struct.knote*, %struct.knote** %2, align 8
  %8 = getelementptr inbounds %struct.knote, %struct.knote* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.knote*, %struct.knote** %2, align 8
  %13 = getelementptr inbounds %struct.knote, %struct.knote* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.knote*, %struct.knote** %2, align 8
  %18 = getelementptr inbounds %struct.knote, %struct.knote* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %20 = load %struct.knote*, %struct.knote** %2, align 8
  %21 = getelementptr inbounds %struct.knote, %struct.knote* %20, i32 0, i32 2
  %22 = load i32, i32* @relaxed, align 4
  %23 = call i64 @os_atomic_load(i32* %21, i32 %22)
  %24 = load i64, i64* @TIMER_IDLE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @NOTE_CRITICAL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load i32, i32* @THREAD_CALL_DELAY_USER_CRITICAL, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %50

36:                                               ; preds = %1
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @NOTE_BACKGROUND, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @THREAD_CALL_DELAY_USER_BACKGROUND, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %49

45:                                               ; preds = %36
  %46 = load i32, i32* @THREAD_CALL_DELAY_USER_NORMAL, align 4
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @NOTE_LEEWAY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @THREAD_CALL_DELAY_LEEWAY, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @NOTE_MACH_CONTINUOUS_TIME, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @THREAD_CALL_CONTINUOUS, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = load %struct.knote*, %struct.knote** %2, align 8
  %70 = getelementptr inbounds %struct.knote, %struct.knote* %69, i32 0, i32 2
  %71 = load i32, i32* @TIMER_ARMED, align 4
  %72 = load i32, i32* @relaxed, align 4
  %73 = call i32 @os_atomic_store(i32* %70, i32 %71, i32 %72)
  %74 = load %struct.knote*, %struct.knote** %2, align 8
  %75 = getelementptr inbounds %struct.knote, %struct.knote* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @thread_call_enter_delayed_with_leeway(i32 %77, i32* null, i32 %78, i32 %79, i32 %80)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @os_atomic_load(i32*, i32) #1

declare dso_local i32 @os_atomic_store(i32*, i32, i32) #1

declare dso_local i32 @thread_call_enter_delayed_with_leeway(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
