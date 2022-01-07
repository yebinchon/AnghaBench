; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_mtx_interlock_lock_set_and_clear_flags.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_mtx_interlock_lock_set_and_clear_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@LCK_MTX_ILOCKED_MSK = common dso_local global i32 0, align 4
@memory_order_acquire_smp = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32, i32*)* @lck_mtx_interlock_lock_set_and_clear_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lck_mtx_interlock_lock_set_and_clear_flags(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %47, %4
  br label %14

14:                                               ; preds = %22, %13
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = call i64 @__improbable(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = call i32 (...) @cpu_pause()
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = call i32 @ordered_load_mtx_state(%struct.TYPE_4__* %24)
  store i32 %25, i32* %9, align 4
  br label %14

26:                                               ; preds = %14
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = call i32 (...) @disable_preemption()
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @memory_order_acquire_smp, align 4
  %43 = load i32, i32* @FALSE, align 4
  %44 = call i64 @atomic_compare_exchange32(i32* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  br label %52

47:                                               ; preds = %26
  %48 = call i32 (...) @enable_preemption()
  %49 = call i32 (...) @cpu_pause()
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = call i32 @ordered_load_mtx_state(%struct.TYPE_4__* %50)
  store i32 %51, i32* %9, align 4
  br label %13

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  ret void
}

declare dso_local i64 @__improbable(i32) #1

declare dso_local i32 @cpu_pause(...) #1

declare dso_local i32 @ordered_load_mtx_state(%struct.TYPE_4__*) #1

declare dso_local i32 @disable_preemption(...) #1

declare dso_local i64 @atomic_compare_exchange32(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @enable_preemption(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
