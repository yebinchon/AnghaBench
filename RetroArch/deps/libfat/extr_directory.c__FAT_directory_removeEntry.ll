; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_directory.c__FAT_directory_removeEntry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_directory.c__FAT_directory_removeEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32 }

@DIR_ENTRY_DATA_SIZE = common dso_local global i32 0, align 4
@DIR_ENTRY_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_directory_removeEntry(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = bitcast %struct.TYPE_10__* %6 to i8*
  %16 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 24, i1 false)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = bitcast %struct.TYPE_10__* %7 to i8*
  %20 = bitcast %struct.TYPE_10__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 24, i1 false)
  %21 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %88, %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i1 [ false, %25 ], [ %31, %28 ]
  br i1 %33, label %34, label %91

34:                                               ; preds = %32
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @_FAT_fat_clusterToSector(%struct.TYPE_9__* %38, i64 %40)
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %41, %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %50 = call i32 @_FAT_cache_readPartialSector(i32 %37, i32* %24, i64 %44, i32 %48, i32 %49)
  %51 = load i32, i32* @DIR_ENTRY_FREE, align 4
  %52 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %51, i32* %52, align 16
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @_FAT_fat_clusterToSector(%struct.TYPE_9__* %56, i64 %58)
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %59, %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %68 = call i32 @_FAT_cache_writePartialSector(i32 %55, i32* %24, i64 %62, i32 %66, i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %70, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %34
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 1, i32* %9, align 4
  br label %87

87:                                               ; preds = %86, %80, %74, %34
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = call i32 @_FAT_directory_incrementDirEntryPosition(%struct.TYPE_9__* %89, %struct.TYPE_10__* %6, i32 0)
  store i32 %90, i32* %8, align 4
  br label %25

91:                                               ; preds = %32
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %96

95:                                               ; preds = %91
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %96

96:                                               ; preds = %95, %94
  %97 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @_FAT_cache_readPartialSector(i32, i32*, i64, i32, i32) #3

declare dso_local i64 @_FAT_fat_clusterToSector(%struct.TYPE_9__*, i64) #3

declare dso_local i32 @_FAT_cache_writePartialSector(i32, i32*, i64, i32, i32) #3

declare dso_local i32 @_FAT_directory_incrementDirEntryPosition(%struct.TYPE_9__*, %struct.TYPE_10__*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
