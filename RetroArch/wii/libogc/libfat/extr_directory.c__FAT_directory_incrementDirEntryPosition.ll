; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_directory.c__FAT_directory_incrementDirEntryPosition.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_directory.c__FAT_directory_incrementDirEntryPosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i64, i64 }

@DIR_ENTRY_DATA_SIZE = common dso_local global i32 0, align 4
@FAT16_ROOT_DIR_CLUSTER = common dso_local global i64 0, align 8
@CLUSTER_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*, i32)* @_FAT_directory_incrementDirEntryPosition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_FAT_directory_incrementDirEntryPosition(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = bitcast %struct.TYPE_9__* %8 to i8*
  %12 = bitcast %struct.TYPE_9__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 24, i1 false)
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %22 = sdiv i32 %20, %21
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %24, label %87

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FAT16_ROOT_DIR_CLUSTER, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @_FAT_fat_nextCluster(%struct.TYPE_8__* %42, i64 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @CLUSTER_EOF, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %40
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @_FAT_fat_linkFreeClusterCleared(%struct.TYPE_8__* %53, i64 %55)
  store i64 %56, i64* %9, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @_FAT_fat_isValidCluster(%struct.TYPE_8__* %57, i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %91

62:                                               ; preds = %52
  br label %64

63:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %91

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64, %40
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  store i64 %66, i64* %67, align 8
  br label %86

68:                                               ; preds = %35, %24
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @FAT16_ROOT_DIR_CLUSTER, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %78, %81
  %83 = icmp eq i64 %75, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %91

85:                                               ; preds = %73, %68
  br label %86

86:                                               ; preds = %85, %65
  br label %87

87:                                               ; preds = %86, %3
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = bitcast %struct.TYPE_9__* %88 to i8*
  %90 = bitcast %struct.TYPE_9__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 24, i1 false)
  store i32 1, i32* %4, align 4
  br label %91

91:                                               ; preds = %87, %84, %63, %61
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @_FAT_fat_nextCluster(%struct.TYPE_8__*, i64) #2

declare dso_local i64 @_FAT_fat_linkFreeClusterCleared(%struct.TYPE_8__*, i64) #2

declare dso_local i32 @_FAT_fat_isValidCluster(%struct.TYPE_8__*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
