; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_update_thread_promotion_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_update_thread_promotion_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@KDEBUG_TRACE = common dso_local global i32 0, align 4
@TURNSTILE_HEAP_OPERATIONS = common dso_local global i32 0, align 4
@THREAD_MOVED_IN_TURNSTILE_WAITQ = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.turnstile*, %struct.TYPE_6__*)* @turnstile_update_thread_promotion_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @turnstile_update_thread_promotion_locked(%struct.turnstile* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.turnstile*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store %struct.turnstile* %0, %struct.turnstile** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %7 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %8 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = call i32 @priority_queue_entry_key(i32* %9, i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load i32, i32* @KDEBUG_TRACE, align 4
  %20 = load i32, i32* @TURNSTILE_HEAP_OPERATIONS, align 4
  %21 = load i32, i32* @THREAD_MOVED_IN_TURNSTILE_WAITQ, align 4
  %22 = call i32 @TURNSTILE_CODE(i32 %20, i32 %21)
  %23 = load i32, i32* @DBG_FUNC_NONE, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %26 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.turnstile* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = call i32 @thread_tid(%struct.TYPE_6__* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %19, i32 %24, i32 %26, i32 %28, i32 %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %18, %2
  %35 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %36 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @turnstile_priority_queue_update_entry_key(i32* %37, i32* %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %3, align 4
  br label %50

47:                                               ; preds = %34
  %48 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %49 = call i32 @turnstile_recompute_priority_locked(%struct.turnstile* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %45
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @priority_queue_entry_key(i32*, i32*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TURNSTILE_CODE(i32, i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.turnstile*) #1

declare dso_local i32 @thread_tid(%struct.TYPE_6__*) #1

declare dso_local i32 @turnstile_priority_queue_update_entry_key(i32*, i32*, i32) #1

declare dso_local i32 @turnstile_recompute_priority_locked(%struct.turnstile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
