; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_io_map.c_io_map.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_io_map.c_io_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i64 0, align 8
@VM_MAP_NULL = common dso_local global i64 0, align 8
@virtual_space_start = common dso_local global i32 0, align 4
@VM_WIMG_WCOMB = common dso_local global i32 0, align 4
@VM_WIMG_IO = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@PMAP_MAP_BD_WCOMB = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_IOKIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @io_map(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PAGE_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i64, i64* @kernel_map, align 8
  %19 = load i64, i64* @VM_MAP_NULL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %3
  %22 = load i32, i32* @virtual_space_start, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @round_page(i32 %23)
  %25 = load i32, i32* @virtual_space_start, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* @virtual_space_start, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @VM_WIMG_WCOMB, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @VM_WIMG_IO, align 4
  %33 = icmp eq i32 %31, %32
  br label %34

34:                                               ; preds = %30, %21
  %35 = phi i1 [ true, %21 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @VM_WIMG_WCOMB, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @round_page(i32 %45)
  %47 = add nsw i32 %44, %46
  %48 = load i32, i32* @VM_PROT_READ, align 4
  %49 = load i32, i32* @VM_PROT_WRITE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @PMAP_MAP_BD_WCOMB, align 4
  %52 = call i32 @pmap_map_bd_with_options(i32 %42, i32 %43, i32 %47, i32 %50, i32 %51)
  br label %64

53:                                               ; preds = %34
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @round_page(i32 %57)
  %59 = add nsw i32 %56, %58
  %60 = load i32, i32* @VM_PROT_READ, align 4
  %61 = load i32, i32* @VM_PROT_WRITE, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @pmap_map_bd(i32 %54, i32 %55, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %53, %41
  br label %82

65:                                               ; preds = %3
  %66 = load i64, i64* @kernel_map, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @round_page(i32 %67)
  %69 = load i32, i32* @VM_KERN_MEMORY_IOKIT, align 4
  %70 = call i32 @kmem_alloc_pageable(i64 %66, i32* %7, i32 %68, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @round_page(i32 %74)
  %76 = add nsw i32 %73, %75
  %77 = load i32, i32* @VM_PROT_READ, align 4
  %78 = load i32, i32* @VM_PROT_WRITE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @pmap_map(i32 %71, i32 %72, i32 %76, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %65, %64
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %83, %84
  ret i32 %85
}

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pmap_map_bd_with_options(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pmap_map_bd(i32, i32, i32, i32) #1

declare dso_local i32 @kmem_alloc_pageable(i64, i32*, i32, i32) #1

declare dso_local i32 @pmap_map(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
