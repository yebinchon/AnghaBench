; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_vm.c_mach_vm_map.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_vm.c_mach_vm_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MACH_SEND_INVALID_DEST = common dso_local global i64 0, align 8
@MEMORY_OBJECT_NULL = common dso_local global i64 0, align 8
@VM_PROT_ALL = common dso_local global i64 0, align 8
@VM_INHERIT_DEFAULT = common dso_local global i64 0, align 8
@stack_logging_type_vm_allocate = common dso_local global i32 0, align 4
@stack_logging_type_mapped_file_or_shared_mem = common dso_local global i32 0, align 4
@VM_FLAGS_ALIAS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_vm_map(i64 %0, i64* %1, i64 %2, i32 %3, i32 %4, i64 %5, i32 %6, i32 %7, i64 %8, i64 %9, i64 %10) #0 {
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i64 %0, i64* %12, align 8
  store i64* %1, i64** %13, align 8
  store i64 %2, i64* %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i64 %8, i64* %20, align 8
  store i64 %9, i64* %21, align 8
  store i64 %10, i64* %22, align 8
  %26 = load i64, i64* @MACH_SEND_INVALID_DEST, align 8
  store i64 %26, i64* %23, align 8
  %27 = load i64, i64* %17, align 8
  %28 = load i64, i64* @MEMORY_OBJECT_NULL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %11
  %31 = load i64, i64* %21, align 8
  %32 = load i64, i64* @VM_PROT_ALL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i64, i64* %22, align 8
  %36 = load i64, i64* @VM_INHERIT_DEFAULT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i64, i64* %12, align 8
  %40 = load i64*, i64** %13, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i64, i64* %20, align 8
  %45 = call i64 @_kernelrpc_mach_vm_map_trap(i64 %39, i64* %40, i64 %41, i32 %42, i32 %43, i64 %44)
  store i64 %45, i64* %23, align 8
  br label %46

46:                                               ; preds = %38, %34, %30, %11
  %47 = load i64, i64* %23, align 8
  %48 = load i64, i64* @MACH_SEND_INVALID_DEST, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i64, i64* %12, align 8
  %52 = load i64*, i64** %13, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i64, i64* %17, align 8
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load i64, i64* %20, align 8
  %60 = load i64, i64* %21, align 8
  %61 = load i64, i64* %22, align 8
  %62 = call i64 @_kernelrpc_mach_vm_map(i64 %51, i64* %52, i64 %53, i32 %54, i32 %55, i64 %56, i32 %57, i32 %58, i64 %59, i64 %60, i64 %61)
  store i64 %62, i64* %23, align 8
  br label %63

63:                                               ; preds = %50, %46
  br i1 true, label %64, label %79

64:                                               ; preds = %63
  %65 = load i32, i32* @stack_logging_type_vm_allocate, align 4
  %66 = load i32, i32* @stack_logging_type_mapped_file_or_shared_mem, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %24, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* @VM_FLAGS_ALIAS_MASK, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %25, align 4
  %71 = load i32, i32* %24, align 4
  %72 = load i32, i32* %25, align 4
  %73 = or i32 %71, %72
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i64*, i64** %13, align 8
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @__syscall_logger(i32 %73, i64 %74, i64 %75, i32 0, i64 %77, i32 0)
  br label %79

79:                                               ; preds = %64, %63
  %80 = load i64, i64* %23, align 8
  ret i64 %80
}

declare dso_local i64 @_kernelrpc_mach_vm_map_trap(i64, i64*, i64, i32, i32, i64) #1

declare dso_local i64 @_kernelrpc_mach_vm_map(i64, i64*, i64, i32, i32, i64, i32, i32, i64, i64, i64) #1

declare dso_local i32 @__syscall_logger(i32, i64, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
