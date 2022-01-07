; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_rtclock.c_rtclock_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_rtclock.c_rtclock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EndOfAllTime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtclock_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = call i32 (...) @clock_timebase_init()
  %4 = call i32 (...) @ml_init_lock_timeout()
  %5 = call %struct.TYPE_3__* (...) @getCpuDatap()
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %2, align 8
  %6 = call i32 (...) @mach_absolute_time()
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @EndOfAllTime, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = call i32 (...) @timer_resync_deadlines()
  ret i32 1
}

declare dso_local i32 @clock_timebase_init(...) #1

declare dso_local i32 @ml_init_lock_timeout(...) #1

declare dso_local %struct.TYPE_3__* @getCpuDatap(...) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @timer_resync_deadlines(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
