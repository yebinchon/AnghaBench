; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kext_alloc.c_kext_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kext_alloc.c_kext_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kext_alloc_base = common dso_local global i64 0, align 8
@VM_FLAGS_FIXED = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@g_kext_map = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_KEXT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"vm_allocate failed - %d\0A\00", align 1
@kext_alloc_max = common dso_local global i64 0, align 8
@KERN_INVALID_ADDRESS = common dso_local global i64 0, align 8
@MACH_PORT_NULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VM_INHERIT_DEFAULT = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@VM_PROT_DEFAULT = common dso_local global i32 0, align 4
@kext_post_boot_base = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kext_alloc(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64*, i64** %4, align 8
  %14 = load i64, i64* %13, align 8
  br label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @kext_alloc_base, align 8
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i64 [ %14, %12 ], [ %16, %15 ]
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @VM_FLAGS_FIXED, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @g_kext_map, align 4
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @VM_KERN_MEMORY_KEXT, align 4
  %31 = call i64 @mach_vm_allocate_kernel(i32 %27, i64* %8, i64 %28, i32 %29, i32 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @KERN_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %36)
  br label %53

38:                                               ; preds = %25
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %5, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i64, i64* @kext_alloc_max, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @kext_free(i64 %45, i64 %46)
  %48 = load i64, i64* @KERN_INVALID_ADDRESS, align 8
  store i64 %48, i64* %7, align 8
  br label %53

49:                                               ; preds = %38
  %50 = load i64, i64* %8, align 8
  %51 = load i64*, i64** %4, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %49, %44, %35
  %54 = load i64, i64* %7, align 8
  ret i64 %54
}

declare dso_local i64 @mach_vm_allocate_kernel(i32, i64*, i64, i32, i32) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @kext_free(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
