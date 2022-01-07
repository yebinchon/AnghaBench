; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_fatdir.c__FAT_statvfs_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_fatdir.c__FAT_statvfs_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.statvfs = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i8* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"SCAN\00", align 1
@FS_FAT32 = common dso_local global i64 0, align 8
@CLUSTER_FIRST = common dso_local global i8* null, align 8
@ST_NOSUID = common dso_local global i32 0, align 4
@ST_RDONLY = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_statvfs_r(%struct._reent* %0, i8* %1, %struct.statvfs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._reent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.statvfs*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.statvfs* %2, %struct.statvfs** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.TYPE_7__* @_FAT_partition_getPartitionFromPath(i8* %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %8, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODEV, align 4
  %16 = load %struct._reent*, %struct._reent** %5, align 8
  %17 = getelementptr inbounds %struct._reent, %struct._reent* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  store i32 -1, i32* %4, align 4
  br label %115

18:                                               ; preds = %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = call i32 @_FAT_lock(i32* %20)
  %22 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %23 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %22, i32 0, i32 0
  %24 = call i64 @memcmp(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = call i32 @_FAT_partition_createFSinfo(%struct.TYPE_7__* %27)
  br label %29

29:                                               ; preds = %26, %18
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FS_FAT32, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %9, align 4
  br label %43

40:                                               ; preds = %29
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = call i32 @_FAT_fat_freeClusterCount(%struct.TYPE_7__* %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %48 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %47, i32 0, i32 10
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %53 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %52, i32 0, i32 9
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** @CLUSTER_FIRST, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = add nsw i64 %61, 1
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %65 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %64, i32 0, i32 8
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %68 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %71 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** @CLUSTER_FIRST, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = add nsw i64 %79, 1
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %83 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %82, i32 0, i32 7
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %86 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %89 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @_FAT_disc_hostType(i32 %92)
  %94 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %95 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @ST_NOSUID, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %43
  %102 = load i32, i32* @ST_RDONLY, align 4
  br label %104

103:                                              ; preds = %43
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi i32 [ %102, %101 ], [ 0, %103 ]
  %106 = or i32 %96, %105
  %107 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %108 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @NAME_MAX, align 4
  %110 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %111 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = call i32 @_FAT_unlock(i32* %113)
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %104, %14
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.TYPE_7__* @_FAT_partition_getPartitionFromPath(i8*) #1

declare dso_local i32 @_FAT_lock(i32*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @_FAT_partition_createFSinfo(%struct.TYPE_7__*) #1

declare dso_local i32 @_FAT_fat_freeClusterCount(%struct.TYPE_7__*) #1

declare dso_local i32 @_FAT_disc_hostType(i32) #1

declare dso_local i32 @_FAT_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
