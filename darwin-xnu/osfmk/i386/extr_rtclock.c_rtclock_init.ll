; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_rtclock.c_rtclock_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_rtclock.c_rtclock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i32 (...)* }

@master_cpu = common dso_local global i64 0, align 8
@tscFreq = common dso_local global i32 0, align 4
@gPEClockFrequencyInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@rtc_timer = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtclock_init() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 (...) @ml_get_interrupts_enabled()
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = call i64 (...) @cpu_number()
  %8 = load i64, i64* @master_cpu, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %0
  %11 = load i32, i32* @tscFreq, align 4
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* @tscFreq, align 4
  %14 = call i8* @rtc_export_speed(i32 %13)
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gPEClockFrequencyInfo, i32 0, i32 1), align 8
  %16 = load i8*, i8** %1, align 8
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gPEClockFrequencyInfo, i32 0, i32 0), align 8
  %17 = call i32 (...) @rtc_timer_init()
  %18 = call i32 (...) @clock_timebase_init()
  %19 = call i32 (...) @ml_init_lock_timeout()
  %20 = call i32 @ml_init_delay_spin_threshold(i32 10)
  br label %21

21:                                               ; preds = %10, %0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rtc_timer, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (...)*, i32 (...)** %23, align 8
  %25 = call i32 (...) %24()
  %26 = call i32 (...) @rtc_timer_start()
  ret i32 1
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ml_get_interrupts_enabled(...) #1

declare dso_local i64 @cpu_number(...) #1

declare dso_local i8* @rtc_export_speed(i32) #1

declare dso_local i32 @rtc_timer_init(...) #1

declare dso_local i32 @clock_timebase_init(...) #1

declare dso_local i32 @ml_init_lock_timeout(...) #1

declare dso_local i32 @ml_init_delay_spin_threshold(i32) #1

declare dso_local i32 @rtc_timer_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
