; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___sys_alarmhandler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___sys_alarmhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32 (i64, i32)* }

@SYS_WD_NULL = common dso_local global i64 0, align 8
@LWP_OBJTYPE_SYSWD = common dso_local global i64 0, align 8
@sys_alarm_objects = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @__sys_alarmhandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sys_alarmhandler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i64
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @SYS_WD_NULL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @LWP_OBJTYPE(i64 %11)
  %13 = load i64, i64* @LWP_OBJTYPE_SYSWD, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  br label %53

16:                                               ; preds = %10
  %17 = call i32 (...) @__lwp_thread_dispatchdisable()
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @LWP_OBJMASKID(i64 %18)
  %20 = call i64 @__lwp_objmgr_getnoprotection(i32* @sys_alarm_objects, i32 %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %3, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %51

24:                                               ; preds = %16
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32 (i64, i32)*, i32 (i64, i32)** %26, align 8
  %28 = icmp ne i32 (i64, i32)* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32 (i64, i32)*, i32 (i64, i32)** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 %32(i64 %33, i32 %36)
  br label %38

38:                                               ; preds = %29, %24
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @__lwp_wd_insert_ticks(i32* %45, i64 %48)
  br label %50

50:                                               ; preds = %43, %38
  br label %51

51:                                               ; preds = %50, %16
  %52 = call i32 (...) @__lwp_thread_dispatchunnest()
  br label %53

53:                                               ; preds = %51, %15
  ret void
}

declare dso_local i64 @LWP_OBJTYPE(i64) #1

declare dso_local i32 @__lwp_thread_dispatchdisable(...) #1

declare dso_local i64 @__lwp_objmgr_getnoprotection(i32*, i32) #1

declare dso_local i32 @LWP_OBJMASKID(i64) #1

declare dso_local i32 @__lwp_wd_insert_ticks(i32*, i64) #1

declare dso_local i32 @__lwp_thread_dispatchunnest(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
