; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_arm_init.c_arm_init_idle_cpu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_arm_init.c_arm_init_idle_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DAIFSC_ASYNCF = common dso_local global i32 0, align 4
@SCTLR_PREDIC = common dso_local global i32 0, align 4
@arm_diag = common dso_local global i32 0, align 4
@cpus_defeatures = common dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @arm_init_idle_cpu(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @machine_set_current_thread(i32 %5)
  %7 = load i32, i32* @FALSE, align 4
  %8 = call i32 @fiq_context_init(i32 %7)
  %9 = load i32, i32* @TRUE, align 4
  %10 = call i32 @cpu_idle_exit(i32 %9)
  unreachable
}

declare dso_local i32 @machine_set_current_thread(i32) #1

declare dso_local i32 @fiq_context_init(i32) #1

declare dso_local i32 @cpu_idle_exit(i32) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
