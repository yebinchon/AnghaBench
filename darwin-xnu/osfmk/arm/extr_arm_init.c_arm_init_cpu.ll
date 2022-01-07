; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_arm_init.c_arm_init_cpu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_arm_init.c_arm_init_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@SleepState = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BootCpuData = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@EndOfAllTime = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"arm_cpu_init(): cpu %d online\0A\00", align 1
@DAIFSC_ASYNCF = common dso_local global i32 0, align 4
@SCTLR_PREDIC = common dso_local global i32 0, align 4
@arm64_stall_sleep = common dso_local global i32 0, align 4
@arm_diag = common dso_local global i32 0, align 4
@cpus_defeatures = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arm_init_cpu(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load i32, i32* @SleepState, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, %4
  store i32 %8, i32* %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @machine_set_current_thread(i32 %11)
  %13 = load i32, i32* @FALSE, align 4
  %14 = call i32 @cpu_machine_idle_init(i32 %13)
  %15 = call i32 (...) @cpu_init()
  %16 = load i32, i32* @FALSE, align 4
  %17 = call i32 @cpu_timebase_init(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = icmp eq %struct.TYPE_6__* %18, @BootCpuData
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = call i32 (...) @serial_init()
  %22 = load i32, i32* @TRUE, align 4
  %23 = call i32 @PE_init_platform(i32 %22, i32* null)
  %24 = call i32 (...) @commpage_update_timebase()
  br label %25

25:                                               ; preds = %20, %1
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @fiq_context_init(i32 %26)
  %28 = load i32, i32* @EndOfAllTime, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = call i32 (...) @timer_resync_deadlines()
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @kprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = icmp eq %struct.TYPE_6__* %38, @BootCpuData
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40, %25
  %42 = call i32 @slave_main(i32* null)
  ret void
}

declare dso_local i32 @machine_set_current_thread(i32) #1

declare dso_local i32 @cpu_machine_idle_init(i32) #1

declare dso_local i32 @cpu_init(...) #1

declare dso_local i32 @cpu_timebase_init(i32) #1

declare dso_local i32 @serial_init(...) #1

declare dso_local i32 @PE_init_platform(i32, i32*) #1

declare dso_local i32 @commpage_update_timebase(...) #1

declare dso_local i32 @fiq_context_init(i32) #1

declare dso_local i32 @timer_resync_deadlines(...) #1

declare dso_local i32 @kprintf(i8*, i32) #1

declare dso_local i32 @slave_main(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
