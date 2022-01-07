; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_stack.c_stack_alloc_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_stack.c_stack_alloc_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_SUCCESS = common dso_local global i64 0, align 8
@stack_allocs = common dso_local global i32 0, align 4
@stack_free_list = common dso_local global i64 0, align 8
@stack_free_count = common dso_local global i32 0, align 4
@stack_total = common dso_local global i64 0, align 8
@stack_hiwat = common dso_local global i64 0, align 8
@stack_new_count = common dso_local global i32 0, align 4
@stack_free_delta = common dso_local global i32 0, align 4
@KMA_GUARD_FIRST = common dso_local global i32 0, align 4
@KMA_GUARD_LAST = common dso_local global i32 0, align 4
@KMA_KSTACK = common dso_local global i32 0, align 4
@KMA_KOBJECT = common dso_local global i32 0, align 4
@KMA_ZERO = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@kernel_stack_size = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@stack_addr_mask = common dso_local global i64 0, align 8
@VM_KERN_MEMORY_STACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"stack_alloc: kernel_memory_allocate(size:0x%llx, mask: 0x%llx, flags: 0x%x) failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @stack_alloc_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stack_alloc_internal() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  store i32 0, i32* %3, align 4
  %5 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %5, i64* %4, align 8
  %6 = call i32 (...) @splsched()
  store i32 %6, i32* %2, align 4
  %7 = call i32 (...) @stack_lock()
  %8 = load i32, i32* @stack_allocs, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @stack_allocs, align 4
  %10 = load i64, i64* @stack_free_list, align 8
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %0
  %14 = load i64, i64* %1, align 8
  %15 = call i64 @stack_next(i64 %14)
  store i64 %15, i64* @stack_free_list, align 8
  %16 = load i32, i32* @stack_free_count, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* @stack_free_count, align 4
  br label %28

18:                                               ; preds = %0
  %19 = load i64, i64* @stack_total, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @stack_total, align 8
  %21 = load i64, i64* @stack_hiwat, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i64, i64* @stack_total, align 8
  store i64 %24, i64* @stack_hiwat, align 8
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i32, i32* @stack_new_count, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @stack_new_count, align 4
  br label %28

28:                                               ; preds = %25, %13
  %29 = load i32, i32* @stack_free_delta, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* @stack_free_delta, align 4
  %31 = call i32 (...) @stack_unlock()
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @splx(i32 %32)
  %34 = load i64, i64* %1, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %76

36:                                               ; preds = %28
  %37 = load i32, i32* @KMA_GUARD_FIRST, align 4
  %38 = load i32, i32* @KMA_GUARD_LAST, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @KMA_KSTACK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @KMA_KOBJECT, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @KMA_ZERO, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* @kernel_map, align 4
  %47 = load i64, i64* @kernel_stack_size, align 8
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = mul nsw i32 2, %48
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %47, %50
  %52 = load i64, i64* @stack_addr_mask, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @VM_KERN_MEMORY_STACK, align 4
  %55 = call i64 @kernel_memory_allocate(i32 %46, i64* %1, i64 %51, i64 %52, i32 %53, i32 %54)
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @KERN_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %36
  %60 = load i64, i64* @kernel_stack_size, align 8
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = mul nsw i32 2, %61
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = trunc i64 %64 to i32
  %66 = load i64, i64* @stack_addr_mask, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* %3, align 4
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @panic(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %67, i32 %68, i64 %69)
  br label %71

71:                                               ; preds = %59, %36
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %1, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %1, align 8
  br label %76

76:                                               ; preds = %71, %28
  %77 = load i64, i64* %1, align 8
  ret i64 %77
}

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @stack_lock(...) #1

declare dso_local i64 @stack_next(i64) #1

declare dso_local i32 @stack_unlock(...) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i64 @kernel_memory_allocate(i32, i64*, i64, i64, i32, i32) #1

declare dso_local i32 @panic(i8*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
