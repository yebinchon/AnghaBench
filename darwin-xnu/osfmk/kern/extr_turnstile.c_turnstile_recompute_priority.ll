; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_recompute_priority.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_recompute_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @turnstile_recompute_priority(%struct.turnstile* %0) #0 {
  %2 = alloca %struct.turnstile*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.turnstile* %0, %struct.turnstile** %2, align 8
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @splsched()
  store i32 %6, i32* %4, align 4
  %7 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %8 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %7, i32 0, i32 0
  %9 = call i32 @waitq_lock(i32* %8)
  %10 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %11 = call i32 @turnstile_recompute_priority_locked(%struct.turnstile* %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %13 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %12, i32 0, i32 0
  %14 = call i32 @waitq_unlock(i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @splx(i32 %15)
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @waitq_lock(i32*) #1

declare dso_local i32 @turnstile_recompute_priority_locked(%struct.turnstile*) #1

declare dso_local i32 @waitq_unlock(i32*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
