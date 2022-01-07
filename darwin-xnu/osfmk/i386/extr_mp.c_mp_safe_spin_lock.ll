; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_mp_safe_spin_lock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_mp_safe_spin_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@spinlock_timed_out = common dso_local global %struct.TYPE_9__* null, align 8
@SPINLOCK_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [112 x i8] c"mp_safe_spin_lock() timed out, lock: %p, owner thread: 0x%lx, current_thread: %p, owner on CPU 0x%x, time: %llu\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_safe_spin_lock(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = call i64 (...) @ml_get_interrupts_enabled()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = call i32 @simple_lock(%struct.TYPE_9__* %10)
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %2, align 4
  br label %47

13:                                               ; preds = %1
  %14 = call i32 (...) @rdtsc64()
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %44, %13
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = call i32 @simple_lock_try(%struct.TYPE_9__* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %45

20:                                               ; preds = %15
  %21 = call i32 @cpu_signal_handler(i32* null)
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @mp_spin_timeout(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %20
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %6, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** @spinlock_timed_out, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spinlock_timeout_NMI(i64 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @cpu_to_cpumask(i32 %34)
  %36 = load i32, i32* @SPINLOCK_TIMEOUT, align 4
  %37 = call i32 @NMIPI_panic(i32 %35, i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 (...) @current_thread()
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (...) @mach_absolute_time()
  %43 = call i32 @panic(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %38, i64 %39, i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %25, %20
  br label %15

45:                                               ; preds = %15
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %9
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @simple_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @rdtsc64(...) #1

declare dso_local i32 @simple_lock_try(%struct.TYPE_9__*) #1

declare dso_local i32 @cpu_signal_handler(i32*) #1

declare dso_local i64 @mp_spin_timeout(i32) #1

declare dso_local i32 @spinlock_timeout_NMI(i64) #1

declare dso_local i32 @NMIPI_panic(i32, i32) #1

declare dso_local i32 @cpu_to_cpumask(i32) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_9__*, i64, i32, i32, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @mach_absolute_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
