; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_mach_vm_allocate_kernel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_mach_vm_allocate_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_FLAGS_USER_ALLOCATE = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@VM_MAP_NULL = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VM_PROT_DEFAULT = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@VM_INHERIT_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mach_vm_allocate_kernel(i64 %0, i64* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @VM_FLAGS_USER_ALLOCATE, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %22, i32* %6, align 4
  br label %84

23:                                               ; preds = %5
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @VM_MAP_NULL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %28, i32* %6, align 4
  br label %84

29:                                               ; preds = %23
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64*, i64** %8, align 8
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %34, i32* %6, align 4
  br label %84

35:                                               ; preds = %29
  %36 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %35
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @vm_map_min(i64 %44)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @VM_MAP_PAGE_SIZE(i64 %49)
  %51 = load i64, i64* %12, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %12, align 8
  br label %53

53:                                               ; preds = %48, %43
  br label %60

54:                                               ; preds = %35
  %55 = load i64*, i64** %8, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @VM_MAP_PAGE_MASK(i64 %57)
  %59 = call i64 @vm_map_trunc_page(i64 %56, i32 %58)
  store i64 %59, i64* %12, align 8
  br label %60

60:                                               ; preds = %54, %53
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @VM_MAP_PAGE_MASK(i64 %62)
  %64 = call i64 @vm_map_round_page(i64 %61, i32 %63)
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %68, i32* %6, align 4
  br label %84

69:                                               ; preds = %60
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @VM_OBJECT_NULL, align 4
  %76 = load i32, i32* @FALSE, align 4
  %77 = load i32, i32* @VM_PROT_DEFAULT, align 4
  %78 = load i32, i32* @VM_PROT_ALL, align 4
  %79 = load i32, i32* @VM_INHERIT_DEFAULT, align 4
  %80 = call i32 @vm_map_enter(i64 %70, i64* %12, i64 %71, i64 0, i32 %72, i32 %73, i32 %74, i32 %75, i32 0, i32 %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i64, i64* %12, align 8
  %82 = load i64*, i64** %8, align 8
  store i64 %81, i64* %82, align 8
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %69, %67, %32, %27, %21
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i64 @vm_map_min(i64) #1

declare dso_local i64 @VM_MAP_PAGE_SIZE(i64) #1

declare dso_local i64 @vm_map_trunc_page(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i64) #1

declare dso_local i64 @vm_map_round_page(i64, i32) #1

declare dso_local i32 @vm_map_enter(i64, i64*, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
