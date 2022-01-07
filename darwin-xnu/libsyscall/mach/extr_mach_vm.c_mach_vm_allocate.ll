; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_vm.c_mach_vm_allocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_vm.c_mach_vm_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MACH_SEND_INVALID_DEST = common dso_local global i64 0, align 8
@VM_FLAGS_ALIAS_MASK = common dso_local global i32 0, align 4
@stack_logging_type_vm_allocate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_vm_allocate(i64 %0, i64* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @_kernelrpc_mach_vm_allocate_trap(i64 %11, i64* %12, i64 %13, i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @MACH_SEND_INVALID_DEST, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i64, i64* %5, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @_kernelrpc_mach_vm_allocate(i64 %20, i64* %21, i64 %22, i32 %23)
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %19, %4
  br i1 true, label %26, label %38

26:                                               ; preds = %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @VM_FLAGS_ALIAS_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @stack_logging_type_vm_allocate, align 4
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %30, %31
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @__syscall_logger(i32 %32, i64 %33, i64 %34, i32 0, i64 %36, i32 0)
  br label %38

38:                                               ; preds = %26, %25
  %39 = load i64, i64* %9, align 8
  ret i64 %39
}

declare dso_local i64 @_kernelrpc_mach_vm_allocate_trap(i64, i64*, i64, i32) #1

declare dso_local i64 @_kernelrpc_mach_vm_allocate(i64, i64*, i64, i32) #1

declare dso_local i32 @__syscall_logger(i32, i64, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
