; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_vm.c_vm_read.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_vm.c_vm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stack_logging_type_vm_allocate = common dso_local global i32 0, align 4
@stack_logging_type_mapped_file_or_shared_mem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_read(i32 %0, i32 %1, i32 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64* %4, i64** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = load i64*, i64** %10, align 8
  %18 = call i32 @_kernelrpc_vm_read(i32 %13, i32 %14, i32 %15, i32* %16, i64* %17)
  store i32 %18, i32* %11, align 4
  br i1 true, label %19, label %30

19:                                               ; preds = %5
  %20 = load i32, i32* @stack_logging_type_vm_allocate, align 4
  %21 = load i32, i32* @stack_logging_type_mapped_file_or_shared_mem, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i64 (...) @mach_task_self()
  %25 = load i64*, i64** %10, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__syscall_logger(i32 %23, i64 %24, i64 %26, i32 0, i32 %28, i32 0)
  br label %30

30:                                               ; preds = %19, %5
  %31 = load i32, i32* %11, align 4
  ret i32 %31
}

declare dso_local i32 @_kernelrpc_vm_read(i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @__syscall_logger(i32, i64, i64, i32, i32, i32) #1

declare dso_local i64 @mach_task_self(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
