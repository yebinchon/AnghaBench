; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_remove_turnstile_promotion.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_remove_turnstile_promotion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32, i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@TURNSTILE_HEAP_OPERATIONS = common dso_local global i32 0, align 4
@TURNSTILE_REMOVED_FROM_TURNSTILE_HEAP = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE = common dso_local global i32 0, align 4
@TSU_NO_PRI_CHANGE_NEEDED = common dso_local global i32 0, align 4
@TSU_NO_INHERITOR = common dso_local global i32 0, align 4
@TSU_TURNSTILE_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.turnstile*, %struct.turnstile*)* @turnstile_remove_turnstile_promotion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @turnstile_remove_turnstile_promotion(%struct.turnstile* %0, %struct.turnstile* %1) #0 {
  %3 = alloca %struct.turnstile*, align 8
  %4 = alloca %struct.turnstile*, align 8
  %5 = alloca i32, align 4
  store %struct.turnstile* %0, %struct.turnstile** %3, align 8
  store %struct.turnstile* %1, %struct.turnstile** %4, align 8
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %8 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %7, i32 0, i32 0
  %9 = call i32 @waitq_lock(i32* %8)
  %10 = load i32, i32* @KDEBUG_TRACE, align 4
  %11 = load i32, i32* @TURNSTILE_HEAP_OPERATIONS, align 4
  %12 = load i32, i32* @TURNSTILE_REMOVED_FROM_TURNSTILE_HEAP, align 4
  %13 = call i32 @TURNSTILE_CODE(i32 %11, i32 %12)
  %14 = load i32, i32* @DBG_FUNC_NONE, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %17 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.turnstile* %16)
  %18 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %19 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.turnstile* %18)
  %20 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %10, i32 %15, i32 %17, i32 %19, i32 0, i32 0, i32 0)
  %21 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %22 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %21, i32 0, i32 3
  %23 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %24 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %23, i32 0, i32 2
  %25 = load i32, i32* @PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE, align 4
  %26 = call i64 @priority_queue_remove(i32* %22, i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %30 = call i32 @turnstile_recompute_priority_locked(%struct.turnstile* %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %31
  %35 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %36 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @TSU_NO_PRI_CHANGE_NEEDED, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @TSU_NO_INHERITOR, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load i32, i32* @TSU_TURNSTILE_ARG, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %48 = call i32 @turnstile_stats_update(i32 1, i32 %46, %struct.turnstile* %47)
  br label %49

49:                                               ; preds = %43, %31
  %50 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %51 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %50, i32 0, i32 0
  %52 = call i32 @waitq_unlock(i32* %51)
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @waitq_lock(i32*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TURNSTILE_CODE(i32, i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.turnstile*) #1

declare dso_local i64 @priority_queue_remove(i32*, i32*, i32) #1

declare dso_local i32 @turnstile_recompute_priority_locked(%struct.turnstile*) #1

declare dso_local i32 @turnstile_stats_update(i32, i32, %struct.turnstile*) #1

declare dso_local i32 @waitq_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
