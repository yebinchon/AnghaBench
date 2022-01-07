; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_fatfile.c__FAT_check_position_for_next_cluster.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_fatfile.c__FAT_check_position_for_next_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CLUSTER_EOF = common dso_local global i64 0, align 8
@CLUSTER_FREE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._reent*, %struct.TYPE_9__*, %struct.TYPE_8__*, i64, i32*)* @_FAT_check_position_for_next_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_FAT_check_position_for_next_cluster(%struct._reent* %0, %struct.TYPE_9__* %1, %struct.TYPE_8__* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._reent*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct._reent* %0, %struct._reent** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %85

16:                                               ; preds = %5
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %85

24:                                               ; preds = %19, %16
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = load %struct._reent*, %struct._reent** %7, align 8
  %35 = getelementptr inbounds %struct._reent, %struct._reent* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %79

36:                                               ; preds = %24
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %36
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @_FAT_fat_nextCluster(%struct.TYPE_8__* %45, i64 %48)
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @CLUSTER_EOF, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %44
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @CLUSTER_FREE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53, %44
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @_FAT_fat_linkFreeCluster(%struct.TYPE_8__* %58, i64 %61)
  store i64 %62, i64* %12, align 8
  br label %63

63:                                               ; preds = %57, %53
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @_FAT_fat_isValidCluster(%struct.TYPE_8__* %64, i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOSPC, align 4
  %70 = load %struct._reent*, %struct._reent** %7, align 8
  %71 = getelementptr inbounds %struct._reent, %struct._reent* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %79

72:                                               ; preds = %63
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %72, %36
  store i32 1, i32* %6, align 4
  br label %85

79:                                               ; preds = %68, %32
  %80 = load i32*, i32** %11, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32*, i32** %11, align 8
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %82, %79
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %84, %78, %23, %15
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i64 @_FAT_fat_nextCluster(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @_FAT_fat_linkFreeCluster(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @_FAT_fat_isValidCluster(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
