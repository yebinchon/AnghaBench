; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_unix.c_pid_for_task.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_unix.c_pid_for_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_for_task_args = type { i32, i32 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@AUE_PIDFORTASK = common dso_local global i32 0, align 4
@mach_port1 = common dso_local global i32 0, align 4
@TASK_NULL = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pid_for_task(%struct.pid_for_task_args* %0) #0 {
  %2 = alloca %struct.pid_for_task_args*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pid_for_task_args* %0, %struct.pid_for_task_args** %2, align 8
  %9 = load %struct.pid_for_task_args*, %struct.pid_for_task_args** %2, align 8
  %10 = getelementptr inbounds %struct.pid_for_task_args, %struct.pid_for_task_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.pid_for_task_args*, %struct.pid_for_task_args** %2, align 8
  %13 = getelementptr inbounds %struct.pid_for_task_args, %struct.pid_for_task_args* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  store i32 -1, i32* %7, align 4
  %15 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @AUE_PIDFORTASK, align 4
  %17 = call i32 @AUDIT_MACH_SYSCALL_ENTER(i32 %16)
  %18 = load i32, i32* @mach_port1, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @AUDIT_ARG(i32 %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @port_name_to_task_inspect(i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @TASK_NULL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %27, i32* %8, align 4
  br label %52

28:                                               ; preds = %1
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @get_bsdtask_info(i64 %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @proc_pid(i64 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %36, i32* %8, align 4
  br label %48

37:                                               ; preds = %28
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @is_corpsetask(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @task_pid(i64 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %44, i32* %8, align 4
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %41
  br label %48

48:                                               ; preds = %47, %33
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @task_deallocate(i64 %50)
  br label %52

52:                                               ; preds = %49, %26
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @AUDIT_ARG(i32 %53, i32 %54)
  %56 = bitcast i32* %7 to i8*
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @copyout(i8* %56, i32 %57, i32 4)
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @AUDIT_MACH_SYSCALL_EXIT(i32 %59)
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @AUDIT_MACH_SYSCALL_ENTER(i32) #1

declare dso_local i32 @AUDIT_ARG(i32, i32) #1

declare dso_local i64 @port_name_to_task_inspect(i32) #1

declare dso_local i64 @get_bsdtask_info(i64) #1

declare dso_local i32 @proc_pid(i64) #1

declare dso_local i64 @is_corpsetask(i64) #1

declare dso_local i32 @task_pid(i64) #1

declare dso_local i32 @task_deallocate(i64) #1

declare dso_local i32 @copyout(i8*, i32, i32) #1

declare dso_local i32 @AUDIT_MACH_SYSCALL_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
