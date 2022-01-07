; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_file_allocation_table.c__FAT_fat_linkFreeClusterCleared.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_file_allocation_table.c__FAT_fat_linkFreeClusterCleared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }

@CLUSTER_FREE = common dso_local global i64 0, align 8
@CLUSTER_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_FAT_fat_linkFreeClusterCleared(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @_FAT_fat_linkFreeCluster(%struct.TYPE_5__* %9, i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @CLUSTER_FREE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @CLUSTER_ERROR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %2
  %20 = load i64, i64* @CLUSTER_ERROR, align 8
  store i64 %20, i64* %3, align 8
  br label %56

21:                                               ; preds = %15
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @_FAT_mem_allocate(i32 %24)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memset(i32* %27, i32 0, i32 %30)
  store i64 0, i64* %7, align 8
  br label %32

32:                                               ; preds = %49, %21
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @_FAT_fat_clusterToSector(%struct.TYPE_5__* %42, i64 %43)
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @_FAT_cache_writeSectors(i32 %41, i64 %46, i32 1, i32* %47)
  br label %49

49:                                               ; preds = %38
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %32

52:                                               ; preds = %32
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @_FAT_mem_free(i32* %53)
  %55 = load i64, i64* %6, align 8
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %52, %19
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i64 @_FAT_fat_linkFreeCluster(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @_FAT_mem_allocate(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @_FAT_cache_writeSectors(i32, i64, i32, i32*) #1

declare dso_local i64 @_FAT_fat_clusterToSector(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @_FAT_mem_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
