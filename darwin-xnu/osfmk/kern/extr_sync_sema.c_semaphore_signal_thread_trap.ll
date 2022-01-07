; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_signal_thread_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_signal_thread_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.semaphore_signal_thread_trap_args = type { i64, i64 }

@MACH_PORT_NULL = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@SEMAPHORE_OPTION_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @semaphore_signal_thread_trap(%struct.semaphore_signal_thread_trap_args* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.semaphore_signal_thread_trap_args*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.semaphore_signal_thread_trap_args* %0, %struct.semaphore_signal_thread_trap_args** %3, align 8
  %9 = load %struct.semaphore_signal_thread_trap_args*, %struct.semaphore_signal_thread_trap_args** %3, align 8
  %10 = getelementptr inbounds %struct.semaphore_signal_thread_trap_args, %struct.semaphore_signal_thread_trap_args* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.semaphore_signal_thread_trap_args*, %struct.semaphore_signal_thread_trap_args** %3, align 8
  %13 = getelementptr inbounds %struct.semaphore_signal_thread_trap_args, %struct.semaphore_signal_thread_trap_args* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @MACH_PORT_NULL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @port_name_to_thread(i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @THREAD_NULL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %25, i64* %2, align 8
  br label %51

26:                                               ; preds = %18
  br label %29

27:                                               ; preds = %1
  %28 = load i64, i64* @THREAD_NULL, align 8
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %27, %26
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @port_name_to_semaphore(i64 %30, i32* %6)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @KERN_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* @SEMAPHORE_OPTION_NONE, align 4
  %39 = call i64 @semaphore_signal_internal(i32 %36, i64 %37, i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @semaphore_dereference(i32 %40)
  br label %42

42:                                               ; preds = %35, %29
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @THREAD_NULL, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @thread_deallocate(i64 %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %2, align 8
  br label %51

51:                                               ; preds = %49, %24
  %52 = load i64, i64* %2, align 8
  ret i64 %52
}

declare dso_local i64 @port_name_to_thread(i64) #1

declare dso_local i64 @port_name_to_semaphore(i64, i32*) #1

declare dso_local i64 @semaphore_signal_internal(i32, i64, i32) #1

declare dso_local i32 @semaphore_dereference(i32) #1

declare dso_local i32 @thread_deallocate(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
