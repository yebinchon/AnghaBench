; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_vm.c_vm_map.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_vm.c_vm_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stack_logging_type_vm_allocate = common dso_local global i32 0, align 4
@stack_logging_type_mapped_file_or_shared_mem = common dso_local global i32 0, align 4
@VM_FLAGS_ALIAS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map(i64 %0, i64* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i64 %0, i64* %12, align 8
  store i64* %1, i64** %13, align 8
  store i64 %2, i64* %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %26 = load i64, i64* %12, align 8
  %27 = load i64*, i64** %13, align 8
  %28 = load i64, i64* %14, align 8
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* %19, align 4
  %34 = load i32, i32* %20, align 4
  %35 = load i32, i32* %21, align 4
  %36 = load i32, i32* %22, align 4
  %37 = call i32 @_kernelrpc_vm_map(i64 %26, i64* %27, i64 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %23, align 4
  br i1 true, label %38, label %53

38:                                               ; preds = %11
  %39 = load i32, i32* @stack_logging_type_vm_allocate, align 4
  %40 = load i32, i32* @stack_logging_type_mapped_file_or_shared_mem, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %24, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* @VM_FLAGS_ALIAS_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %25, align 4
  %45 = load i32, i32* %24, align 4
  %46 = load i32, i32* %25, align 4
  %47 = or i32 %45, %46
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64*, i64** %13, align 8
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @__syscall_logger(i32 %47, i64 %48, i64 %49, i32 0, i64 %51, i32 0)
  br label %53

53:                                               ; preds = %38, %11
  %54 = load i32, i32* %23, align 4
  ret i32 %54
}

declare dso_local i32 @_kernelrpc_vm_map(i64, i64*, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__syscall_logger(i32, i64, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
