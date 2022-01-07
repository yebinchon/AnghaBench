; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_get_safeq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_get_safeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.waitq* @waitq_get_safeq(%struct.waitq* %0) #0 {
  %2 = alloca %struct.waitq*, align 8
  %3 = alloca %struct.waitq*, align 8
  store %struct.waitq* %0, %struct.waitq** %2, align 8
  %4 = load %struct.waitq*, %struct.waitq** %2, align 8
  %5 = call i64 @waitq_is_port_queue(%struct.waitq* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.waitq*, %struct.waitq** %2, align 8
  %9 = call i32 @waitq_irq_safe(%struct.waitq* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.waitq*, %struct.waitq** %2, align 8
  %15 = call %struct.waitq* @ipc_port_rcv_turnstile_waitq(%struct.waitq* %14)
  store %struct.waitq* %15, %struct.waitq** %3, align 8
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.waitq*, %struct.waitq** %2, align 8
  %18 = call %struct.waitq* @global_eventq(%struct.waitq* %17)
  store %struct.waitq* %18, %struct.waitq** %3, align 8
  br label %19

19:                                               ; preds = %16, %7
  %20 = load %struct.waitq*, %struct.waitq** %3, align 8
  ret %struct.waitq* %20
}

declare dso_local i64 @waitq_is_port_queue(%struct.waitq*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local %struct.waitq* @ipc_port_rcv_turnstile_waitq(%struct.waitq*) #1

declare dso_local %struct.waitq* @global_eventq(%struct.waitq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
