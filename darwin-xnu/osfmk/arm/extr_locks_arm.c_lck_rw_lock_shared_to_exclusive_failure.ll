; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_rw_lock_shared_to_exclusive_failure.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_rw_lock_shared_to_exclusive_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@LCK_RW_W_WAITING = common dso_local global i32 0, align 4
@LCK_RW_SHARED_MASK = common dso_local global i32 0, align 4
@LCK_RW_SHARED_READER = common dso_local global i32 0, align 4
@TH_SFLAG_RW_PROMOTED = common dso_local global i32 0, align 4
@DBG_MACH_LOCKS = common dso_local global i32 0, align 4
@LCK_RW_LCK_SH_TO_EX_CODE = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @lck_rw_lock_shared_to_exclusive_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lck_rw_lock_shared_to_exclusive_failure(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.TYPE_10__* (...) @current_thread()
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @LCK_RW_W_WAITING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @LCK_RW_SHARED_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @LCK_RW_SHARED_READER, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = call i32 @LCK_RW_WRITER_EVENT(%struct.TYPE_11__* %23)
  %25 = call i32 @thread_wakeup(i32 %24)
  br label %26

26:                                               ; preds = %22, %16, %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TH_SFLAG_RW_PROMOTED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = call i32 @unslide_for_kdebug(%struct.TYPE_11__* %38)
  %40 = call i32 @lck_rw_clear_promotion(%struct.TYPE_10__* %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %29, %26
  %42 = load i32, i32* @DBG_MACH_LOCKS, align 4
  %43 = load i32, i32* @LCK_RW_LCK_SH_TO_EX_CODE, align 4
  %44 = call i32 @MACHDBG_CODE(i32 %42, i32 %43)
  %45 = load i32, i32* @DBG_FUNC_NONE, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_11__* %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @KERNEL_DEBUG(i32 %46, i32 %48, i32 %51, i32 %54, i32 0, i32 0)
  %56 = load i32, i32* @FALSE, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_10__* @current_thread(...) #1

declare dso_local i32 @thread_wakeup(i32) #1

declare dso_local i32 @LCK_RW_WRITER_EVENT(%struct.TYPE_11__*) #1

declare dso_local i32 @lck_rw_clear_promotion(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @unslide_for_kdebug(%struct.TYPE_11__*) #1

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
