; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_libproc.c_proc_disable_cpumon.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_libproc.c_proc_disable_cpumon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@PROC_POLICY_RSRCACT_NOTIFY_EXC = common dso_local global i32 0, align 4
@PROC_POLICY_CPUMON_DISABLE = common dso_local global i32 0, align 4
@PROC_POLICY_SCOPE_PROCESS = common dso_local global i32 0, align 4
@PROC_POLICY_ACTION_SET = common dso_local global i32 0, align 4
@PROC_POLICY_RESOURCE_USAGE = common dso_local global i32 0, align 4
@PROC_POLICY_RUSAGE_CPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_disable_cpumon(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_2__, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @PROC_POLICY_RSRCACT_NOTIFY_EXC, align 4
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 3
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @PROC_POLICY_CPUMON_DISABLE, align 4
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 2
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @PROC_POLICY_SCOPE_PROCESS, align 4
  %11 = load i32, i32* @PROC_POLICY_ACTION_SET, align 4
  %12 = load i32, i32* @PROC_POLICY_RESOURCE_USAGE, align 4
  %13 = load i32, i32* @PROC_POLICY_RUSAGE_CPU, align 4
  %14 = bitcast %struct.TYPE_2__* %3 to i32*
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @__process_policy(i32 %10, i32 %11, i32 %12, i32 %13, i32* %14, i32 %15, i32 0)
  ret i32 %16
}

declare dso_local i32 @__process_policy(i32, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
