; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu_common.c_cpu_exit_wait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu_common.c_cpu_exit_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@master_cpu = common dso_local global i32 0, align 4
@CpuDataEntries = common dso_local global %struct.TYPE_4__* null, align 8
@ARM_CPU_ON_SLEEP_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_exit_wait(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @master_cpu, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CpuDataEntries, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %3, align 8
  br label %14

14:                                               ; preds = %21, %7
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load volatile i32, i32* %16, align 4
  %18 = load volatile i32, i32* @ARM_CPU_ON_SLEEP_PATH, align 4
  %19 = icmp eq i32 %17, %18
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %14

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
