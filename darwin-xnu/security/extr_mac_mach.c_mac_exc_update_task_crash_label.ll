; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_mach.c_mac_exc_update_task_crash_label.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_mach.c_mac_exc_update_task_crash_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { i32 }
%struct.label = type { i32 }

@kernel_task = common dso_local global %struct.task* null, align 8
@exc_action_label_update = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_exc_update_task_crash_label(%struct.task* %0, %struct.label* %1) #0 {
  %3 = alloca %struct.task*, align 8
  %4 = alloca %struct.label*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.label*, align 8
  store %struct.task* %0, %struct.task** %3, align 8
  store %struct.label* %1, %struct.label** %4, align 8
  %7 = load %struct.task*, %struct.task** %3, align 8
  %8 = load %struct.task*, %struct.task** @kernel_task, align 8
  %9 = icmp ne %struct.task* %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.task*, %struct.task** %3, align 8
  %13 = call %struct.label* @get_task_crash_label(%struct.task* %12)
  store %struct.label* %13, %struct.label** %6, align 8
  %14 = load i32, i32* @exc_action_label_update, align 4
  %15 = load %struct.label*, %struct.label** %6, align 8
  %16 = load %struct.label*, %struct.label** %4, align 8
  %17 = call i32 @MAC_CHECK(i32 %14, i32* null, %struct.label* %15, %struct.label* %16)
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.label* @get_task_crash_label(%struct.task*) #1

declare dso_local i32 @MAC_CHECK(i32, i32*, %struct.label*, %struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
