; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_thread_add_turnstile_promotion.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_thread_add_turnstile_promotion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.turnstile = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@TURNSTILE_HEAP_OPERATIONS = common dso_local global i32 0, align 4
@TURNSTILE_ADDED_TO_THREAD_HEAP = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE = common dso_local global i32 0, align 4
@TSU_TURNSTILE_ARG = common dso_local global i32 0, align 4
@TSU_BOOST_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.turnstile*)* @thread_add_turnstile_promotion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_add_turnstile_promotion(%struct.TYPE_8__* %0, %struct.turnstile* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.turnstile*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.turnstile* %1, %struct.turnstile** %4, align 8
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = call i32 @thread_lock(%struct.TYPE_8__* %7)
  %9 = load i32, i32* @KDEBUG_TRACE, align 4
  %10 = load i32, i32* @TURNSTILE_HEAP_OPERATIONS, align 4
  %11 = load i32, i32* @TURNSTILE_ADDED_TO_THREAD_HEAP, align 4
  %12 = call i32 @TURNSTILE_CODE(i32 %10, i32 %11)
  %13 = load i32, i32* @DBG_FUNC_NONE, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = call i32 @thread_tid(%struct.TYPE_8__* %15)
  %17 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %18 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.turnstile* %17)
  %19 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %20 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %9, i32 %14, i32 %16, i32 %18, i32 %21, i32 0, i32 0)
  %23 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %24 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %23, i32 0, i32 1
  %25 = call i32 @priority_queue_entry_init(i32* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %29 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %28, i32 0, i32 1
  %30 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %31 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE, align 4
  %34 = call i64 @priority_queue_insert(i32* %27, i32* %29, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = call i32 @thread_recompute_user_promotion_locked(%struct.TYPE_8__* %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %2
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = call i32 @thread_get_update_flags_for_turnstile_propagation_stoppage(%struct.TYPE_8__* %43)
  %45 = load i32, i32* @TSU_TURNSTILE_ARG, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @TSU_BOOST_ARG, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %50 = call i32 @turnstile_stats_update(i32 1, i32 %48, %struct.turnstile* %49)
  br label %51

51:                                               ; preds = %42, %39
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = call i32 @thread_unlock(%struct.TYPE_8__* %52)
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @thread_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TURNSTILE_CODE(i32, i32) #1

declare dso_local i32 @thread_tid(%struct.TYPE_8__*) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.turnstile*) #1

declare dso_local i32 @priority_queue_entry_init(i32*) #1

declare dso_local i64 @priority_queue_insert(i32*, i32*, i32, i32) #1

declare dso_local i32 @thread_recompute_user_promotion_locked(%struct.TYPE_8__*) #1

declare dso_local i32 @turnstile_stats_update(i32, i32, %struct.turnstile*) #1

declare dso_local i32 @thread_get_update_flags_for_turnstile_propagation_stoppage(%struct.TYPE_8__*) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
