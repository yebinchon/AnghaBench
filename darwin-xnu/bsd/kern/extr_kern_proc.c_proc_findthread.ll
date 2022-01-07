; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_findthread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_findthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uthread = type { i32, i64 }

@PROC_NULL = common dso_local global i64 0, align 8
@UT_VFORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @proc_findthread(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.uthread*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @PROC_NULL, align 8
  store i64 %5, i64* %3, align 8
  %6 = call i32 (...) @proc_list_lock()
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.uthread* @get_bsdthread_info(i32 %7)
  store %struct.uthread* %8, %struct.uthread** %4, align 8
  %9 = load %struct.uthread*, %struct.uthread** %4, align 8
  %10 = icmp ne %struct.uthread* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.uthread*, %struct.uthread** %4, align 8
  %13 = getelementptr inbounds %struct.uthread, %struct.uthread* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @UT_VFORK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load %struct.uthread*, %struct.uthread** %4, align 8
  %20 = getelementptr inbounds %struct.uthread, %struct.uthread* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %3, align 8
  br label %25

22:                                               ; preds = %11, %1
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @get_bsdthreadtask_info(i32 %23)
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @proc_ref_locked(i64 %26)
  store i64 %27, i64* %3, align 8
  %28 = call i32 (...) @proc_list_unlock()
  %29 = load i64, i64* %3, align 8
  ret i64 %29
}

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local i64 @get_bsdthreadtask_info(i32) #1

declare dso_local i64 @proc_ref_locked(i64) #1

declare dso_local i32 @proc_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
