; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_task.c_machine_thread_inherit_taskwide.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_task.c_machine_thread_inherit_taskwide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@x86_DEBUG_STATE64 = common dso_local global i32 0, align 4
@x86_DEBUG_STATE64_COUNT = common dso_local global i32 0, align 4
@x86_DEBUG_STATE32 = common dso_local global i32 0, align 4
@x86_DEBUG_STATE32_COUNT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_thread_inherit_taskwide(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = call i64 @task_has_64Bit_addr(%struct.TYPE_4__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @x86_DEBUG_STATE64, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @x86_DEBUG_STATE64_COUNT, align 4
  store i32 %18, i32* %7, align 4
  br label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @x86_DEBUG_STATE32, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @x86_DEBUG_STATE32_COUNT, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @machine_thread_set_state(i32 %23, i32 %24, i64 %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %22
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @task_has_64Bit_addr(%struct.TYPE_4__*) #1

declare dso_local i32 @machine_thread_set_state(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
