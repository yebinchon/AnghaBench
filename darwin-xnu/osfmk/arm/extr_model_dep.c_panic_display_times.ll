; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_model_dep.c_panic_display_times.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_model_dep.c_panic_display_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"Warning: clock is locked.  Can't get time\0A\00", align 1
@is_clock_configured = common dso_local global i64 0, align 8
@clock_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Epoch Time:        sec       usec\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"  Boot    : 0x%08x 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"  Sleep   : 0x%08x 0x%08x\0A\00", align 1
@gIOLastSleepTime = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"  Wake    : 0x%08x 0x%08x\0A\00", align 1
@gIOLastWakeTime = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"  Calendar: 0x%08x 0x%08x\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @panic_display_times() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i64 (...) @kdp_clock_is_locked()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 (i8*, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %40

9:                                                ; preds = %0
  %10 = load i64, i64* @is_clock_configured, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %9
  %13 = call i64 @simple_lock_try(i32* @clock_lock)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = call i32 @simple_unlock(i32* @clock_lock)
  %17 = call i32 @clock_get_calendar_microtime(i64* %1, i64* %3)
  %18 = call i32 @clock_get_boottime_microtime(i64* %2, i64* %4)
  %19 = call i32 (i8*, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i64, i64* %2, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i64, i64* %4, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 (i8*, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 %23)
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gIOLastSleepTime, i32 0, i32 1), align 8
  %26 = trunc i64 %25 to i32
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gIOLastSleepTime, i32 0, i32 0), align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 (i8*, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %26, i32 %28)
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gIOLastWakeTime, i32 0, i32 1), align 8
  %31 = trunc i64 %30 to i32
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gIOLastWakeTime, i32 0, i32 0), align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 (i8*, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %31, i32 %33)
  %35 = load i64, i64* %1, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64, i64* %3, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 (i8*, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %7, %15, %12, %9
  ret void
}

declare dso_local i64 @kdp_clock_is_locked(...) #1

declare dso_local i32 @paniclog_append_noflush(i8*, ...) #1

declare dso_local i64 @simple_lock_try(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @clock_get_calendar_microtime(i64*, i64*) #1

declare dso_local i32 @clock_get_boottime_microtime(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
