; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_task_set_port_space.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_task_set_port_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @task_set_port_space(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @IS_NULL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %11, i64* %3, align 8
  br label %34

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @is_write_lock(i64 %13)
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @is_active(i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @is_write_unlock(i64 %19)
  %21 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %21, i64* %3, align 8
  br label %34

22:                                               ; preds = %12
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @ipc_entry_grow_table(i64 %23, i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @KERN_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @is_write_unlock(i64 %30)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i64, i64* %6, align 8
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %32, %18, %10
  %35 = load i64, i64* %3, align 8
  ret i64 %35
}

declare dso_local i32 @is_write_lock(i64) #1

declare dso_local i32 @is_active(i64) #1

declare dso_local i32 @is_write_unlock(i64) #1

declare dso_local i64 @ipc_entry_grow_table(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
