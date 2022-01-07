; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_file_allocation_table.c__FAT_fat_linkFreeCluster.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_file_allocation_table.c__FAT_fat_linkFreeCluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }

@CLUSTER_ERROR = common dso_local global i64 0, align 8
@CLUSTER_FIRST = common dso_local global i64 0, align 8
@CLUSTER_FREE = common dso_local global i64 0, align 8
@CLUSTER_EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_FAT_fat_linkFreeCluster(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @CLUSTER_ERROR, align 8
  store i64 %18, i64* %3, align 8
  br label %107

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @_FAT_fat_nextCluster(%struct.TYPE_7__* %20, i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @CLUSTER_FIRST, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  store i64 %31, i64* %3, align 8
  br label %107

32:                                               ; preds = %26, %19
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @CLUSTER_FIRST, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i64, i64* @CLUSTER_FIRST, align 8
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %40, %32
  br label %43

43:                                               ; preds = %67, %42
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @_FAT_fat_nextCluster(%struct.TYPE_7__* %44, i64 %45)
  %47 = load i64, i64* @CLUSTER_FREE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %43
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i64 %59, i64* %62, align 8
  %63 = load i64, i64* @CLUSTER_ERROR, align 8
  store i64 %63, i64* %3, align 8
  br label %107

64:                                               ; preds = %55
  %65 = load i64, i64* @CLUSTER_FIRST, align 8
  store i64 %65, i64* %6, align 8
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %66, %49
  br label %43

68:                                               ; preds = %43
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store i64 %69, i64* %72, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %68
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, -1
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %78, %68
  %85 = load i64, i64* %6, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  store i64 %85, i64* %88, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* @CLUSTER_FIRST, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %84
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp sle i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @_FAT_fat_writeFatEntry(%struct.TYPE_7__* %97, i64 %98, i64 %99)
  br label %101

101:                                              ; preds = %96, %92, %84
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* @CLUSTER_EOF, align 8
  %105 = call i32 @_FAT_fat_writeFatEntry(%struct.TYPE_7__* %102, i64 %103, i64 %104)
  %106 = load i64, i64* %6, align 8
  store i64 %106, i64* %3, align 8
  br label %107

107:                                              ; preds = %101, %58, %30, %17
  %108 = load i64, i64* %3, align 8
  ret i64 %108
}

declare dso_local i64 @_FAT_fat_nextCluster(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @_FAT_fat_writeFatEntry(%struct.TYPE_7__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
