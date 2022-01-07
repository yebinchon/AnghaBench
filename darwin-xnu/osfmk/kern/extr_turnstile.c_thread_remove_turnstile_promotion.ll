; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_thread_remove_turnstile_promotion.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_thread_remove_turnstile_promotion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.turnstile = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@TURNSTILE_HEAP_OPERATIONS = common dso_local global i32 0, align 4
@TURNSTILE_REMOVED_FROM_THREAD_HEAP = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE = common dso_local global i32 0, align 4
@TSU_TURNSTILE_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.turnstile*)* @thread_remove_turnstile_promotion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_remove_turnstile_promotion(%struct.TYPE_8__* %0, %struct.turnstile* %1) #0 {
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
  %11 = load i32, i32* @TURNSTILE_REMOVED_FROM_THREAD_HEAP, align 4
  %12 = call i32 @TURNSTILE_CODE(i32 %10, i32 %11)
  %13 = load i32, i32* @DBG_FUNC_NONE, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = call i32 @thread_tid(%struct.TYPE_8__* %15)
  %17 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %18 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.turnstile* %17)
  %19 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %9, i32 %14, i32 %16, i32 %18, i32 0, i32 0, i32 0)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %23 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %22, i32 0, i32 0
  %24 = load i32, i32* @PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE, align 4
  %25 = call i64 @priority_queue_remove(i32* %21, i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = call i32 @thread_recompute_user_promotion_locked(%struct.TYPE_8__* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %2
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = call i32 @thread_get_update_flags_for_turnstile_propagation_stoppage(%struct.TYPE_8__* %34)
  %36 = load i32, i32* @TSU_TURNSTILE_ARG, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %39 = call i32 @turnstile_stats_update(i32 1, i32 %37, %struct.turnstile* %38)
  br label %40

40:                                               ; preds = %33, %30
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = call i32 @thread_unlock(%struct.TYPE_8__* %41)
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @thread_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TURNSTILE_CODE(i32, i32) #1

declare dso_local i32 @thread_tid(%struct.TYPE_8__*) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.turnstile*) #1

declare dso_local i64 @priority_queue_remove(i32*, i32*, i32) #1

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
