; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_zero_range.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_zero_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@IO_NOZEROVALID = common dso_local global i32 0, align 4
@IO_NOZERODIRTY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK_64 = common dso_local global i32 0, align 4
@PAGE_SIZE_64 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32, i32, i32, i32)* @cluster_zero_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_zero_range(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i64, i64* @TRUE, align 8
  store i64 %17, i64* %16, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @IO_NOZEROVALID, align 4
  %20 = load i32, i32* @IO_NOZERODIRTY, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %7
  %25 = load i32, i32* %14, align 4
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @PAGE_MASK_64, align 4
  %29 = and i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %26, %30
  %32 = call i32 @min(i32 %25, i64 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32, i32* @PAGE_SIZE_64, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %15, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call i64 @upl_valid_page(i32* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %24
  %43 = load i64, i64* @FALSE, align 8
  store i64 %43, i64* %16, align 8
  br label %44

44:                                               ; preds = %42, %24
  br label %45

45:                                               ; preds = %44, %7
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* @TRUE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @cluster_zero(i32 %50, i32 %51, i32 %52, i32* null)
  br label %54

54:                                               ; preds = %49, %45
  %55 = load i32, i32* %14, align 4
  ret i32 %55
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @upl_valid_page(i32*, i32) #1

declare dso_local i32 @cluster_zero(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
