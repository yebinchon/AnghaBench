; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_bsd_init.c_bsd_utaskbootstrap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_bsd_init.c_bsd_utaskbootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uthread = type { i64 }

@TASK_NULL = common dso_local global i32 0, align 4
@COALITION_NULL = common dso_local global i32 0, align 4
@kernproc = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@initproc = common dso_local global i64 0, align 8
@PROC_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bsd_utaskbootstrap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.uthread*, align 8
  %3 = load i32, i32* @TASK_NULL, align 4
  %4 = load i32, i32* @COALITION_NULL, align 4
  %5 = load i32, i32* @kernproc, align 4
  %6 = load i32, i32* @FALSE, align 4
  %7 = load i32, i32* @TRUE, align 4
  %8 = call i32 @cloneproc(i32 %3, i32 %4, i32 %5, i32 %6, i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = call i64 @proc_find(i32 1)
  store i64 %9, i64* @initproc, align 8
  %10 = load i64, i64* @initproc, align 8
  %11 = call i32 @proc_signalend(i64 %10, i32 0)
  %12 = load i64, i64* @initproc, align 8
  %13 = call i32 @proc_transend(i64 %12, i32 0)
  %14 = load i32, i32* %1, align 4
  %15 = call i64 @get_bsdthread_info(i32 %14)
  %16 = inttoptr i64 %15 to %struct.uthread*
  store %struct.uthread* %16, %struct.uthread** %2, align 8
  %17 = load %struct.uthread*, %struct.uthread** %2, align 8
  %18 = getelementptr inbounds %struct.uthread, %struct.uthread* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @act_set_astbsd(i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @get_threadtask(i32 %21)
  %23 = call i32 @task_clear_return_wait(i32 %22)
  ret void
}

declare dso_local i32 @cloneproc(i32, i32, i32, i32, i32) #1

declare dso_local i64 @proc_find(i32) #1

declare dso_local i32 @proc_signalend(i64, i32) #1

declare dso_local i32 @proc_transend(i64, i32) #1

declare dso_local i64 @get_bsdthread_info(i32) #1

declare dso_local i32 @act_set_astbsd(i32) #1

declare dso_local i32 @task_clear_return_wait(i32) #1

declare dso_local i32 @get_threadtask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
