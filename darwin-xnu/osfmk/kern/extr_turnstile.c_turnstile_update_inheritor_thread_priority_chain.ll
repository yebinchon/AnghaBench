; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_update_inheritor_thread_priority_chain.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_update_inheritor_thread_priority_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_THREAD = common dso_local global i32 0, align 4
@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8
@TSU_NO_PRI_CHANGE_NEEDED = common dso_local global i32 0, align 4
@TSU_TURNSTILE_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.turnstile**, i32*, i32, i32)* @turnstile_update_inheritor_thread_priority_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @turnstile_update_inheritor_thread_priority_chain(%struct.turnstile** %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.turnstile**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.turnstile*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.turnstile** %0, %struct.turnstile*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.turnstile**, %struct.turnstile*** %5, align 8
  %15 = load %struct.turnstile*, %struct.turnstile** %14, align 8
  store %struct.turnstile* %15, %struct.turnstile** %10, align 8
  %16 = load %struct.turnstile*, %struct.turnstile** %10, align 8
  %17 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load %struct.turnstile*, %struct.turnstile** %10, align 8
  %24 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TURNSTILE_INHERITOR_THREAD, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %30 = load %struct.turnstile**, %struct.turnstile*** %5, align 8
  store %struct.turnstile* %29, %struct.turnstile** %30, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.turnstile*, %struct.turnstile** %10, align 8
  %33 = call i32 @thread_needs_turnstile_promotion_update(i32 %31, %struct.turnstile* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* @TSU_NO_PRI_CHANGE_NEEDED, align 4
  %43 = load i32, i32* @TSU_TURNSTILE_ARG, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.turnstile*, %struct.turnstile** %10, align 8
  %48 = call i32 @turnstile_stats_update(i32 %41, i32 %46, %struct.turnstile* %47)
  %49 = load %struct.turnstile*, %struct.turnstile** %10, align 8
  %50 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %49, i32 0, i32 1
  %51 = call i32 @waitq_unlock(i32* %50)
  br label %85

52:                                               ; preds = %36, %4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @thread_lock(i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.turnstile*, %struct.turnstile** %10, align 8
  %57 = call i32 @thread_update_turnstile_promotion_locked(i32 %55, %struct.turnstile* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @thread_get_update_flags_for_turnstile_propagation_stoppage(i32 %66)
  %68 = load i32, i32* @TSU_TURNSTILE_ARG, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.turnstile*, %struct.turnstile** %10, align 8
  %73 = call i32 @turnstile_stats_update(i32 %65, i32 %71, %struct.turnstile* %72)
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @thread_unlock(i32 %74)
  %76 = load %struct.turnstile*, %struct.turnstile** %10, align 8
  %77 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %76, i32 0, i32 1
  %78 = call i32 @waitq_unlock(i32* %77)
  br label %85

79:                                               ; preds = %60, %52
  %80 = load %struct.turnstile*, %struct.turnstile** %10, align 8
  %81 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %80, i32 0, i32 1
  %82 = call i32 @waitq_unlock(i32* %81)
  %83 = load i32, i32* %11, align 4
  %84 = load i32*, i32** %6, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %79, %63, %39
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @thread_needs_turnstile_promotion_update(i32, %struct.turnstile*) #1

declare dso_local i32 @turnstile_stats_update(i32, i32, %struct.turnstile*) #1

declare dso_local i32 @waitq_unlock(i32*) #1

declare dso_local i32 @thread_lock(i32) #1

declare dso_local i32 @thread_update_turnstile_promotion_locked(i32, %struct.turnstile*) #1

declare dso_local i32 @thread_get_update_flags_for_turnstile_propagation_stoppage(i32) #1

declare dso_local i32 @thread_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
