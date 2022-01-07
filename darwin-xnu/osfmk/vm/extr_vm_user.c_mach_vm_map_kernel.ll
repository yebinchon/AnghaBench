; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_mach_vm_map_kernel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_mach_vm_map_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@VM_FLAGS_USER_MAP = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_vm_map_kernel(%struct.TYPE_4__* %0, i64* %1, i32 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %15, align 8
  store i64* %1, i64** %16, align 8
  store i32 %2, i32* %17, align 4
  store i64 %3, i64* %18, align 8
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  %30 = load i64*, i64** %16, align 8
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %29, align 8
  %32 = load i32, i32* %19, align 4
  %33 = load i32, i32* @VM_FLAGS_USER_MAP, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %13
  %38 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %38, i64* %14, align 8
  br label %56

39:                                               ; preds = %13
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %41 = load i32, i32* %17, align 4
  %42 = load i64, i64* %18, align 8
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* %21, align 4
  %46 = load i32, i32* %22, align 4
  %47 = load i32, i32* %23, align 4
  %48 = load i32, i32* %24, align 4
  %49 = load i32, i32* %25, align 4
  %50 = load i32, i32* %26, align 4
  %51 = load i32, i32* %27, align 4
  %52 = call i64 @vm_map_enter_mem_object(%struct.TYPE_4__* %40, i64* %29, i32 %41, i64 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  store i64 %52, i64* %28, align 8
  %53 = load i64, i64* %29, align 8
  %54 = load i64*, i64** %16, align 8
  store i64 %53, i64* %54, align 8
  %55 = load i64, i64* %28, align 8
  store i64 %55, i64* %14, align 8
  br label %56

56:                                               ; preds = %39, %37
  %57 = load i64, i64* %14, align 8
  ret i64 %57
}

declare dso_local i64 @vm_map_enter_mem_object(%struct.TYPE_4__*, i64*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
