; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_update_turnstile_promotion_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_update_turnstile_promotion_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32, i32, i32 }

@KDEBUG_TRACE = common dso_local global i32 0, align 4
@TURNSTILE_HEAP_OPERATIONS = common dso_local global i32 0, align 4
@TURNSTILE_MOVED_IN_TURNSTILE_HEAP = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.turnstile*, %struct.turnstile*)* @turnstile_update_turnstile_promotion_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @turnstile_update_turnstile_promotion_locked(%struct.turnstile* %0, %struct.turnstile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.turnstile*, align 8
  %5 = alloca %struct.turnstile*, align 8
  %6 = alloca i32, align 4
  store %struct.turnstile* %0, %struct.turnstile** %4, align 8
  store %struct.turnstile* %1, %struct.turnstile** %5, align 8
  %7 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %8 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %7, i32 0, i32 2
  %9 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %10 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %9, i32 0, i32 1
  %11 = call i32 @priority_queue_entry_key(i32* %8, i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %13 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load i32, i32* @KDEBUG_TRACE, align 4
  %19 = load i32, i32* @TURNSTILE_HEAP_OPERATIONS, align 4
  %20 = load i32, i32* @TURNSTILE_MOVED_IN_TURNSTILE_HEAP, align 4
  %21 = call i32 @TURNSTILE_CODE(i32 %19, i32 %20)
  %22 = load i32, i32* @DBG_FUNC_NONE, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %25 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.turnstile* %24)
  %26 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %27 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.turnstile* %26)
  %28 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %29 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %18, i32 %23, i32 %25, i32 %27, i32 %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %17, %2
  %34 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %35 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %34, i32 0, i32 2
  %36 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %37 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %36, i32 0, i32 1
  %38 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %39 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @turnstile_priority_queue_update_entry_key(i32* %35, i32* %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %48

45:                                               ; preds = %33
  %46 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  %47 = call i32 @turnstile_recompute_priority_locked(%struct.turnstile* %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %43
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @priority_queue_entry_key(i32*, i32*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TURNSTILE_CODE(i32, i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.turnstile*) #1

declare dso_local i32 @turnstile_priority_queue_update_entry_key(i32*, i32*, i32) #1

declare dso_local i32 @turnstile_recompute_priority_locked(%struct.turnstile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
