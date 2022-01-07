; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_clock_gettimeofday_and_absolute_time.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_clock_gettimeofday_and_absolute_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.bintime = type { i32, i32 }

@clock_calend = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ticks_per_sec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clock_gettimeofday_and_absolute_time(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bintime, align 4
  %10 = alloca %struct.bintime, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = call i32 (...) @splclock()
  store i32 %11, i32* %8, align 4
  %12 = call i32 (...) @clock_lock()
  %13 = call i32 (...) @mach_absolute_time()
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @get_scaled_time(i32 %14)
  %16 = bitcast %struct.bintime* %10 to i64*
  store i64 %15, i64* %16, align 4
  %17 = bitcast %struct.bintime* %9 to i8*
  %18 = bitcast %struct.bintime* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 8, i1 false)
  %19 = call i32 @bintime_add(%struct.bintime* %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clock_calend, i32 0, i32 1))
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @bintime2usclock(%struct.bintime* %9, i32* %20, i32* %21)
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.bintime, %struct.bintime* %9, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.bintime, %struct.bintime* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clock_calend, i32 0, i32 0), align 4
  %29 = load i32, i32* @ticks_per_sec, align 4
  %30 = call i32 @clock_gettimeofday_set_commpage(i32 %23, i32 %25, i32 %27, i32 %28, i32 %29)
  %31 = call i32 (...) @clock_unlock()
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @splx(i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %3
  ret void
}

declare dso_local i32 @splclock(...) #1

declare dso_local i32 @clock_lock(...) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i64 @get_scaled_time(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bintime_add(%struct.bintime*, i32*) #1

declare dso_local i32 @bintime2usclock(%struct.bintime*, i32*, i32*) #1

declare dso_local i32 @clock_gettimeofday_set_commpage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @clock_unlock(...) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
