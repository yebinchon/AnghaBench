; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_clear_prepost.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_clear_prepost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @waitq_clear_prepost(%struct.waitq* %0) #0 {
  %2 = alloca %struct.waitq*, align 8
  store %struct.waitq* %0, %struct.waitq** %2, align 8
  %3 = load %struct.waitq*, %struct.waitq** %2, align 8
  %4 = call i32 @waitq_valid(%struct.waitq* %3)
  %5 = call i32 @assert(i32 %4)
  %6 = load %struct.waitq*, %struct.waitq** %2, align 8
  %7 = call i32 @waitq_irq_safe(%struct.waitq* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.waitq*, %struct.waitq** %2, align 8
  %13 = call i32 @waitq_lock(%struct.waitq* %12)
  %14 = load %struct.waitq*, %struct.waitq** %2, align 8
  %15 = call i32 @waitq_clear_prepost_locked(%struct.waitq* %14)
  %16 = load %struct.waitq*, %struct.waitq** %2, align 8
  %17 = call i32 @waitq_unlock(%struct.waitq* %16)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_valid(%struct.waitq*) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i32 @waitq_lock(%struct.waitq*) #1

declare dso_local i32 @waitq_clear_prepost_locked(%struct.waitq*) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
