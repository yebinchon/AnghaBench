; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_file_allocation_table.c__FAT_fat_trimChain.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_file_allocation_table.c__FAT_fat_trimChain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLUSTER_FREE = common dso_local global i64 0, align 8
@CLUSTER_EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_FAT_fat_trimChain(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @_FAT_fat_clearLinks(i32* %12, i64 %13)
  %15 = load i64, i64* @CLUSTER_FREE, align 8
  store i64 %15, i64* %4, align 8
  br label %60

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = add i32 %17, -1
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @_FAT_fat_nextCluster(i32* %19, i64 %20)
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %35, %16
  %23 = load i32, i32* %7, align 4
  %24 = icmp ugt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @CLUSTER_FREE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @CLUSTER_EOF, align 8
  %32 = icmp ne i64 %30, %31
  br label %33

33:                                               ; preds = %29, %25, %22
  %34 = phi i1 [ false, %25 ], [ false, %22 ], [ %32, %29 ]
  br i1 %34, label %35, label %42

35:                                               ; preds = %33
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, -1
  store i32 %37, i32* %7, align 4
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %6, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @_FAT_fat_nextCluster(i32* %39, i64 %40)
  store i64 %41, i64* %8, align 8
  br label %22

42:                                               ; preds = %33
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @CLUSTER_FREE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @CLUSTER_EOF, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32*, i32** %5, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @_FAT_fat_clearLinks(i32* %51, i64 %52)
  br label %54

54:                                               ; preds = %50, %46, %42
  %55 = load i32*, i32** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @CLUSTER_EOF, align 8
  %58 = call i32 @_FAT_fat_writeFatEntry(i32* %55, i64 %56, i64 %57)
  %59 = load i64, i64* %6, align 8
  store i64 %59, i64* %4, align 8
  br label %60

60:                                               ; preds = %54, %11
  %61 = load i64, i64* %4, align 8
  ret i64 %61
}

declare dso_local i32 @_FAT_fat_clearLinks(i32*, i64) #1

declare dso_local i64 @_FAT_fat_nextCluster(i32*, i64) #1

declare dso_local i32 @_FAT_fat_writeFatEntry(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
