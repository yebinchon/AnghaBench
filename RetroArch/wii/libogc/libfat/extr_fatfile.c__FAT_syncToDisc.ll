; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_fatfile.c__FAT_syncToDisc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_fatfile.c__FAT_syncToDisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__, i32, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }

@DIR_ENTRY_DATA_SIZE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@DIR_ENTRY_fileSize = common dso_local global i32 0, align 4
@DIR_ENTRY_cluster = common dso_local global i32 0, align 4
@DIR_ENTRY_clusterHigh = common dso_local global i32 0, align 4
@DIR_ENTRY_mTime = common dso_local global i32 0, align 4
@DIR_ENTRY_mDate = common dso_local global i32 0, align 4
@DIR_ENTRY_aDate = common dso_local global i32 0, align 4
@ATTRIB_ARCH = common dso_local global i32 0, align 4
@DIR_ENTRY_attributes = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_syncToDisc(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13, %1
  %19 = load i32, i32* @EBADF, align 4
  store i32 %19, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %126

20:                                               ; preds = %13
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %123

25:                                               ; preds = %20
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %123

30:                                               ; preds = %25
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @_FAT_fat_clusterToSector(%struct.TYPE_7__* %38, i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %43, %47
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %56 = call i32 @_FAT_cache_readPartialSector(i32 %35, i32* %10, i64 %48, i32 %54, i32 %55)
  %57 = load i32, i32* @DIR_ENTRY_fileSize, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @u32_to_u8array(i32* %10, i32 %57, i32 %60)
  %62 = load i32, i32* @DIR_ENTRY_cluster, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @u16_to_u8array(i32* %10, i32 %62, i32 %65)
  %67 = load i32, i32* @DIR_ENTRY_clusterHigh, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 16
  %72 = call i32 @u16_to_u8array(i32* %10, i32 %67, i32 %71)
  %73 = load i32, i32* @DIR_ENTRY_mTime, align 4
  %74 = call i32 (...) @_FAT_filetime_getTimeFromRTC()
  %75 = call i32 @u16_to_u8array(i32* %10, i32 %73, i32 %74)
  %76 = load i32, i32* @DIR_ENTRY_mDate, align 4
  %77 = call i32 (...) @_FAT_filetime_getDateFromRTC()
  %78 = call i32 @u16_to_u8array(i32* %10, i32 %76, i32 %77)
  %79 = load i32, i32* @DIR_ENTRY_aDate, align 4
  %80 = call i32 (...) @_FAT_filetime_getDateFromRTC()
  %81 = call i32 @u16_to_u8array(i32* %10, i32 %79, i32 %80)
  %82 = load i32, i32* @ATTRIB_ARCH, align 4
  %83 = load i64, i64* @DIR_ENTRY_attributes, align 8
  %84 = getelementptr inbounds i32, i32* %10, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @_FAT_fat_clusterToSector(%struct.TYPE_7__* %94, i32 %98)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %99, %103
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32, i32* @DIR_ENTRY_DATA_SIZE, align 4
  %112 = call i32 @_FAT_cache_writePartialSector(i32 %91, i32* %10, i64 %104, i32 %110, i32 %111)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @_FAT_cache_flush(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %30
  %121 = load i32, i32* @EIO, align 4
  store i32 %121, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %126

122:                                              ; preds = %30
  br label %123

123:                                              ; preds = %122, %25, %20
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i32 0, i32* %125, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %126

126:                                              ; preds = %123, %120, %18
  %127 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_FAT_cache_readPartialSector(i32, i32*, i64, i32, i32) #2

declare dso_local i64 @_FAT_fat_clusterToSector(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @u32_to_u8array(i32*, i32, i32) #2

declare dso_local i32 @u16_to_u8array(i32*, i32, i32) #2

declare dso_local i32 @_FAT_filetime_getTimeFromRTC(...) #2

declare dso_local i32 @_FAT_filetime_getDateFromRTC(...) #2

declare dso_local i32 @_FAT_cache_writePartialSector(i32, i32*, i64, i32, i32) #2

declare dso_local i32 @_FAT_cache_flush(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
