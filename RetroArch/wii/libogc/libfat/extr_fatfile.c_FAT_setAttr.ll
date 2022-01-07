; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_fatfile.c_FAT_setAttr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_fatfile.c_FAT_setAttr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }

@DIR_ENTRY_DATA_SIZE = common dso_local global i32 0, align 4
@DIR_ENTRY_attributes = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FAT_setAttr(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.TYPE_8__* @_FAT_partition_getPartitionFromPath(i8* %9)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %71

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 58)
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 58)
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8* %21, i8** %4, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 58)
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %71

27:                                               ; preds = %22
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @_FAT_directory_entryFromPath(%struct.TYPE_8__* %28, %struct.TYPE_10__* %8, i8* %29, i32* null)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %71

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %35 = bitcast %struct.TYPE_9__* %6 to i8*
  %36 = bitcast %struct.TYPE_9__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 24, i1 false)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = call i32 @_FAT_lock(i32* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @_FAT_fat_clusterToSector(%struct.TYPE_8__* %43, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %46, %48
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @DIR_ENTRY_attributes, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @_FAT_cache_writePartialSector(i32 %42, i32* %5, i64 %49, i64 %56, i32 1)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @_FAT_cache_flush(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %33
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = call i32 @_FAT_unlock(i32* %65)
  store i32 -1, i32* %3, align 4
  br label %71

67:                                               ; preds = %33
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = call i32 @_FAT_unlock(i32* %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %63, %32, %26, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_8__* @_FAT_partition_getPartitionFromPath(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @_FAT_directory_entryFromPath(%struct.TYPE_8__*, %struct.TYPE_10__*, i8*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_FAT_lock(i32*) #1

declare dso_local i32 @_FAT_cache_writePartialSector(i32, i32*, i64, i64, i32) #1

declare dso_local i64 @_FAT_fat_clusterToSector(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @_FAT_cache_flush(i32) #1

declare dso_local i32 @_FAT_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
