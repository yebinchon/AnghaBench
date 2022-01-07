; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_fatdir.c__FAT_statvfs_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_fatdir.c__FAT_statvfs_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.statvfs = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i8* }

@ENODEV = common dso_local global i32 0, align 4
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
  br label %109

18:                                               ; preds = %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = call i32 @_FAT_lock(i32* %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FS_FAT32, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = call i32 @_FAT_partition_readFSinfo(%struct.TYPE_7__* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %9, align 4
  br label %37

34:                                               ; preds = %18
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = call i32 @_FAT_fat_freeClusterCount(%struct.TYPE_7__* %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %42 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %47 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** @CLUSTER_FIRST, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = add nsw i64 %55, 1
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %59 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %58, i32 0, i32 8
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %62 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %65 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** @CLUSTER_FIRST, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = add nsw i64 %73, 1
  %75 = inttoptr i64 %74 to i8*
  %76 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %77 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %80 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %83 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @_FAT_disc_hostType(i32 %86)
  %88 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %89 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @ST_NOSUID, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %37
  %96 = load i32, i32* @ST_RDONLY, align 4
  br label %98

97:                                               ; preds = %37
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i32 [ %96, %95 ], [ 0, %97 ]
  %100 = or i32 %90, %99
  %101 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %102 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @NAME_MAX, align 4
  %104 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %105 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = call i32 @_FAT_unlock(i32* %107)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %98, %14
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.TYPE_7__* @_FAT_partition_getPartitionFromPath(i8*) #1

declare dso_local i32 @_FAT_lock(i32*) #1

declare dso_local i32 @_FAT_partition_readFSinfo(%struct.TYPE_7__*) #1

declare dso_local i32 @_FAT_fat_freeClusterCount(%struct.TYPE_7__*) #1

declare dso_local i32 @_FAT_disc_hostType(i32) #1

declare dso_local i32 @_FAT_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
