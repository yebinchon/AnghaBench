; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_add_turnstile_promotion.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_add_turnstile_promotion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32, i64, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@TURNSTILE_HEAP_OPERATIONS = common dso_local global i32 0, align 4
@TURNSTILE_ADDED_TO_TURNSTILE_HEAP = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE = common dso_local global i32 0, align 4
@TSU_NO_PRI_CHANGE_NEEDED = common dso_local global i32 0, align 4
@TSU_NO_INHERITOR = common dso_local global i32 0, align 4
@TSU_TURNSTILE_ARG = common dso_local global i32 0, align 4
@TSU_BOOST_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.turnstile*, %struct.turnstile*)* @turnstile_add_turnstile_promotion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @turnstile_add_turnstile_promotion(%struct.turnstile* %0, %struct.turnstile* %1) #0 {
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
  %12 = load i32, i32* @TURNSTILE_ADDED_TO_TURNSTILE_HEAP, align 4
  %13 = call i32 @TURNSTILE_CODE(i32 %11, i32 %12)
  %14 = load i32, i32* @DBG_FUNC_NONE, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %17 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.turnstile* %16)
  %18 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %19 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.turnstile* %18)
  %20 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %21 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %10, i32 %15, i32 %17, i32 %19, i32 %22, i32 0, i32 0)
  %24 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %25 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %24, i32 0, i32 3
  %26 = call i32 @priority_queue_entry_init(i32* %25)
  %27 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %28 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %27, i32 0, i32 4
  %29 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %30 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %29, i32 0, i32 3
  %31 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %32 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE, align 4
  %35 = call i64 @priority_queue_insert(i32* %28, i32* %30, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %39 = call i32 @turnstile_recompute_priority_locked(%struct.turnstile* %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %2
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %40
  %44 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %45 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @TSU_NO_PRI_CHANGE_NEEDED, align 4
  br label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @TSU_NO_INHERITOR, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load i32, i32* @TSU_TURNSTILE_ARG, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @TSU_BOOST_ARG, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %59 = call i32 @turnstile_stats_update(i32 1, i32 %57, %struct.turnstile* %58)
  br label %60

60:                                               ; preds = %52, %40
  %61 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %62 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %61, i32 0, i32 0
  %63 = call i32 @waitq_unlock(i32* %62)
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @waitq_lock(i32*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TURNSTILE_CODE(i32, i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.turnstile*) #1

declare dso_local i32 @priority_queue_entry_init(i32*) #1

declare dso_local i64 @priority_queue_insert(i32*, i32*, i32, i32) #1

declare dso_local i32 @turnstile_recompute_priority_locked(%struct.turnstile*) #1

declare dso_local i32 @turnstile_stats_update(i32, i32, %struct.turnstile*) #1

declare dso_local i32 @waitq_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
