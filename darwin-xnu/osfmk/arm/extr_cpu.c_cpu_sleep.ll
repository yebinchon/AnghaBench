; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu.c_cpu_sleep.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu.c_cpu_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i64, i32 }

@kernel_pmap = common dso_local global i32 0, align 4
@start_cpu_paddr = common dso_local global i64 0, align 8
@SleepState = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_sleep() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = call %struct.TYPE_3__* (...) @getCpuDatap()
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %1, align 8
  %3 = load i32, i32* @kernel_pmap, align 4
  %4 = call i32 @pmap_switch_user_ttb(i32 %3)
  %5 = call i32 (...) @current_thread()
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 8
  %8 = load i64, i64* @start_cpu_paddr, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i64 %8, i64* %10, align 8
  %11 = load i32, i32* @SleepState, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = call i32 (...) @CleanPoC_Dcache()
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @PE_cpu_machine_quiesce(i32 %21)
  ret void
}

declare dso_local %struct.TYPE_3__* @getCpuDatap(...) #1

declare dso_local i32 @pmap_switch_user_ttb(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @CleanPoC_Dcache(...) #1

declare dso_local i32 @PE_cpu_machine_quiesce(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
