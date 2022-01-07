; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c_SYS_SetPeriodicAlarm.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c_SYS_SetPeriodicAlarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_4__, i64, i8*, i32, i8* }
%struct.TYPE_4__ = type { i32 }

@__sys_alarmhandler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SYS_SetPeriodicAlarm(i64 %0, %struct.timespec* %1, %struct.timespec* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca %struct.timespec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %7, align 8
  store %struct.timespec* %1, %struct.timespec** %8, align 8
  store %struct.timespec* %2, %struct.timespec** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call %struct.TYPE_5__* @__lwp_syswd_open(i64 %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %12, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %52

18:                                               ; preds = %5
  %19 = load %struct.timespec*, %struct.timespec** %8, align 8
  %20 = call i8* @__lwp_wd_calc_ticks(%struct.timespec* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.timespec*, %struct.timespec** %9, align 8
  %24 = call i8* @__lwp_wd_calc_ticks(%struct.timespec* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* @__sys_alarmhandler, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %7, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @__lwp_wd_initialize(i32* %36, i32 %37, i32 %41, i8* %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @__lwp_wd_insert_ticks(i32* %46, i8* %49)
  %51 = call i32 (...) @__lwp_thread_dispatchenable()
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %18, %17
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_5__* @__lwp_syswd_open(i64) #1

declare dso_local i8* @__lwp_wd_calc_ticks(%struct.timespec*) #1

declare dso_local i32 @__lwp_wd_initialize(i32*, i32, i32, i8*) #1

declare dso_local i32 @__lwp_wd_insert_ticks(i32*, i8*) #1

declare dso_local i32 @__lwp_thread_dispatchenable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
