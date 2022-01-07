; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_mach_vm_remap_kernel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_mach_vm_remap_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MAP_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@VM_FLAGS_USER_REMAP = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mach_vm_remap_kernel(i64 %0, i64* %1, i32 %2, i64 %3, i32 %4, i32 %5, i64 %6, i64 %7, i32 %8, i32* %9, i32* %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store i64 %0, i64* %14, align 8
  store i64* %1, i64** %15, align 8
  store i32 %2, i32* %16, align 4
  store i64 %3, i64* %17, align 8
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i64 %6, i64* %20, align 8
  store i64 %7, i64* %21, align 8
  store i32 %8, i32* %22, align 4
  store i32* %9, i32** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32 %11, i32* %25, align 4
  %28 = load i64, i64* @VM_MAP_NULL, align 8
  %29 = load i64, i64* %14, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %12
  %32 = load i64, i64* @VM_MAP_NULL, align 8
  %33 = load i64, i64* %20, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %12
  %36 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %36, i32* %13, align 4
  br label %64

37:                                               ; preds = %31
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* @VM_FLAGS_USER_REMAP, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %44, i32* %13, align 4
  br label %64

45:                                               ; preds = %37
  %46 = load i64*, i64** %15, align 8
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %26, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i32, i32* %16, align 4
  %50 = load i64, i64* %17, align 8
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %53 = load i32, i32* %19, align 4
  %54 = load i64, i64* %20, align 8
  %55 = load i64, i64* %21, align 8
  %56 = load i32, i32* %22, align 4
  %57 = load i32*, i32** %23, align 8
  %58 = load i32*, i32** %24, align 8
  %59 = load i32, i32* %25, align 4
  %60 = call i32 @vm_map_remap(i64 %48, i64* %26, i32 %49, i64 %50, i32 %51, i32 %52, i32 %53, i64 %54, i64 %55, i32 %56, i32* %57, i32* %58, i32 %59)
  store i32 %60, i32* %27, align 4
  %61 = load i64, i64* %26, align 8
  %62 = load i64*, i64** %15, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i32, i32* %27, align 4
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %45, %43, %35
  %65 = load i32, i32* %13, align 4
  ret i32 %65
}

declare dso_local i32 @vm_map_remap(i64, i64*, i32, i64, i32, i32, i32, i64, i64, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
