; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_virtual_region.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_virtual_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TEST_PAGE_SIZE_4K = common dso_local global i32 0, align 4
@gVirtBase = common dso_local global i32 0, align 4
@virtual_space_start = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VREGION1_START = common dso_local global i32 0, align 4
@VREGION1_SIZE = common dso_local global i32 0, align 4
@ARM_TT_L2_OFFMASK = common dso_local global i32 0, align 4
@LOW_GLOBAL_BASE_ADDRESS = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@VM_MAX_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@VM_MIN_KERNEL_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_virtual_region(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %3
  %12 = load i32, i32* @TEST_PAGE_SIZE_4K, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @gVirtBase, align 4
  %16 = sext i32 %15 to i64
  %17 = and i64 %16, -33554432
  %18 = trunc i64 %17 to i32
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @virtual_space_start, align 4
  %21 = sext i32 %20 to i64
  %22 = load i32, i32* @gVirtBase, align 4
  %23 = sext i32 %22 to i64
  %24 = and i64 %23, -33554432
  %25 = sub i64 %21, %24
  %26 = add i64 %25, 33554431
  %27 = and i64 %26, -33554432
  %28 = trunc i64 %27 to i32
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  br label %46

30:                                               ; preds = %11
  %31 = load i32, i32* @gVirtBase, align 4
  %32 = sext i32 %31 to i64
  %33 = and i64 %32, -8388608
  %34 = trunc i64 %33 to i32
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @virtual_space_start, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32, i32* @gVirtBase, align 4
  %39 = sext i32 %38 to i64
  %40 = and i64 %39, -8388608
  %41 = sub i64 %37, %40
  %42 = add i64 %41, 8388607
  %43 = and i64 %42, -8388608
  %44 = trunc i64 %43 to i32
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %30, %14
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %3
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* @VREGION1_START, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @VREGION1_SIZE, align 4
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %51, %48
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
