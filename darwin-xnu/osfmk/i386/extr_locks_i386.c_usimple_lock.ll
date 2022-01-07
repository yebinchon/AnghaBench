; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_usimple_lock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_usimple_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@pc = common dso_local global i32 0, align 4
@LockTimeOutTSC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@spinlock_timed_out = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [150 x i8] c"Spinlock acquisition timed out: lock=%p, lock owner thread=0x%lx, current_thread: %p, lock owner active on CPU 0x%x, current owner: 0x%lx, time: %llu\00", align 1
@LS_LCK_SPIN_LOCK_ACQUIRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usimple_lock(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load i32, i32* @pc, align 4
  %7 = call i32 @DECL_PC(i32 %6)
  %8 = load i32, i32* @pc, align 4
  %9 = call i32 @OBTAIN_PC(i32 %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = load i32, i32* @pc, align 4
  %12 = call i32 @usld_lock_pre(%struct.TYPE_9__* %10, i32 %11)
  %13 = call i32 @USLDBG(i32 %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* @LockTimeOutTSC, align 4
  %17 = call i64 @hw_lock_to(%struct.TYPE_10__* %15, i32 %16)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @__improbable(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %1
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %35, %22
  %25 = call i64 (...) @machine_timeout_suspended()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = call i32 (...) @enable_preemption()
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* @LockTimeOutTSC, align 4
  %32 = call i64 @hw_lock_to(%struct.TYPE_10__* %30, i32 %31)
  store i64 %32, i64* %3, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %36

35:                                               ; preds = %27
  br label %24

36:                                               ; preds = %34, %24
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @FALSE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %5, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** @spinlock_timed_out, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spinlock_timeout_NMI(i64 %46)
  store i32 %47, i32* %4, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 (...) @current_thread()
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (...) @mach_absolute_time()
  %57 = call i32 @panic(i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %48, i64 %49, i32 %50, i32 %51, i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %40, %36
  br label %59

59:                                               ; preds = %58, %1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = load i32, i32* @pc, align 4
  %62 = call i32 @usld_lock_post(%struct.TYPE_9__* %60, i32 %61)
  %63 = call i32 @USLDBG(i32 %62)
  ret void
}

declare dso_local i32 @DECL_PC(i32) #1

declare dso_local i32 @OBTAIN_PC(i32) #1

declare dso_local i32 @USLDBG(i32) #1

declare dso_local i32 @usld_lock_pre(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local i64 @hw_lock_to(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @machine_timeout_suspended(...) #1

declare dso_local i32 @enable_preemption(...) #1

declare dso_local i32 @spinlock_timeout_NMI(i64) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_9__*, i64, i32, i32, i64, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @usld_lock_post(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
