; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_bsd_stubs.c_kmem_mb_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_bsd_stubs.c_kmem_mb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_SUCCESS = common dso_local global i64 0, align 8
@KMA_KOBJECT = common dso_local global i32 0, align 4
@KMA_LOMEM = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_MBUF = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kmem_mb_alloc(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %11, i64* %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @KMA_KOBJECT, align 4
  %18 = load i32, i32* @KMA_LOMEM, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @VM_KERN_MEMORY_MBUF, align 4
  %21 = call i64 @kernel_memory_allocate(i32 %15, i64* %9, i32 %16, i32 0, i32 %19, i32 %20)
  store i64 %21, i64* %10, align 8
  br label %31

22:                                               ; preds = %4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PAGE_MASK, align 4
  %26 = load i32, i32* @KMA_KOBJECT, align 4
  %27 = load i32, i32* @KMA_LOMEM, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @VM_KERN_MEMORY_MBUF, align 4
  %30 = call i64 @kmem_alloc_contig(i32 %23, i64* %9, i32 %24, i32 %25, i32 1048575, i32 0, i32 %28, i32 %29)
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %22, %14
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @KERN_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i64*, i64** %8, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* %10, align 8
  %41 = load i64*, i64** %8, align 8
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i64, i64* %9, align 8
  ret i64 %43
}

declare dso_local i64 @kernel_memory_allocate(i32, i64*, i32, i32, i32, i32) #1

declare dso_local i64 @kmem_alloc_contig(i32, i64*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
