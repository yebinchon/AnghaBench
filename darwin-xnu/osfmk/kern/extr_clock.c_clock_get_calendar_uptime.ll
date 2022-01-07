; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_clock_get_calendar_uptime.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_clock_get_calendar_uptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bintime = type { i32 }

@clock_calend = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clock_get_calendar_uptime(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bintime, align 4
  %6 = alloca %struct.bintime, align 4
  store i32* %0, i32** %2, align 8
  %7 = call i32 (...) @splclock()
  store i32 %7, i32* %4, align 4
  %8 = call i32 (...) @clock_lock()
  %9 = call i32 (...) @mach_absolute_time()
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @get_scaled_time(i32 %10)
  %12 = getelementptr inbounds %struct.bintime, %struct.bintime* %6, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = bitcast %struct.bintime* %5 to i8*
  %14 = bitcast %struct.bintime* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = call i32 @bintime_add(%struct.bintime* %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clock_calend, i32 0, i32 0))
  %16 = getelementptr inbounds %struct.bintime, %struct.bintime* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %2, align 8
  store i32 %17, i32* %18, align 4
  %19 = call i32 (...) @clock_unlock()
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @splx(i32 %20)
  ret void
}

declare dso_local i32 @splclock(...) #1

declare dso_local i32 @clock_lock(...) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @get_scaled_time(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bintime_add(%struct.bintime*, i32*) #1

declare dso_local i32 @clock_unlock(...) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
