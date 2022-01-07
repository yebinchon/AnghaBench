; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_directory.c__FAT_directory_getVolumeLabel.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_directory.c__FAT_directory_getVolumeLabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, i64 }

@DIR_ENTRY_DATA_SIZE = common dso_local global i32 0, align 4
@FAT16_ROOT_DIR_CLUSTER = common dso_local global i64 0, align 8
@DIR_ENTRY_attributes = common dso_local global i64 0, align 8
@ATTRIB_VOL = common dso_local global i8 0, align 1
@DIR_ENTRY_FREE = common dso_local global i8 0, align 1
@DIR_ENTRY_name = common dso_local global i32 0, align 4
@DIR_ENTRY_LAST = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_directory_getVolumeLabel(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = call i32 @_FAT_directory_getRootEntry(%struct.TYPE_10__* %17, %struct.TYPE_12__* %6)
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %20 = bitcast %struct.TYPE_11__* %7 to i8*
  %21 = bitcast %struct.TYPE_11__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 24, i1 false)
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FAT16_ROOT_DIR_CLUSTER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %26, %2
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 11
  store i8 0, i8* %35, align 1
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %107, %31
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %108

40:                                               ; preds = %36
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @_FAT_fat_clusterToSector(%struct.TYPE_10__* %44, i64 %46)
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %47, %49
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %56 = call i32 @_FAT_cache_readPartialSector(i32 %43, i8* %16, i64 %50, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

59:                                               ; preds = %40
  %60 = load i64, i64* @DIR_ENTRY_attributes, align 8
  %61 = getelementptr inbounds i8, i8* %16, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @ATTRIB_VOL, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %59
  %68 = getelementptr inbounds i8, i8* %16, i64 0
  %69 = load i8, i8* %68, align 16
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* @DIR_ENTRY_FREE, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %89, %74
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 11
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load i32, i32* @DIR_ENTRY_name, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %16, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 %84, i8* %88, align 1
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %75

92:                                               ; preds = %75
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

93:                                               ; preds = %67, %59
  %94 = getelementptr inbounds i8, i8* %16, i64 0
  %95 = load i8, i8* %94, align 16
  %96 = sext i8 %95 to i32
  %97 = load i8, i8* @DIR_ENTRY_LAST, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  store i32 1, i32* %11, align 4
  br label %101

101:                                              ; preds = %100, %93
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = call i32 @_FAT_directory_incrementDirEntryPosition(%struct.TYPE_10__* %103, %struct.TYPE_11__* %7, i32 0)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 1, i32* %11, align 4
  br label %107

107:                                              ; preds = %106, %102
  br label %36

108:                                              ; preds = %36
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

109:                                              ; preds = %108, %92, %58
  %110 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_FAT_directory_getRootEntry(%struct.TYPE_10__*, %struct.TYPE_12__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @_FAT_cache_readPartialSector(i32, i8*, i64, i32, i32) #2

declare dso_local i64 @_FAT_fat_clusterToSector(%struct.TYPE_10__*, i64) #2

declare dso_local i32 @_FAT_directory_incrementDirEntryPosition(%struct.TYPE_10__*, %struct.TYPE_11__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
