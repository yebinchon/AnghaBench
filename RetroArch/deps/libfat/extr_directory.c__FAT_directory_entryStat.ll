; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_directory.c__FAT_directory_entryStat.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_directory.c__FAT_directory_entryStat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i64*, i64, i8*, i64, i8*, i64, i8*, i32, i32, i64 }

@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@DIR_ENTRY_fileSize = common dso_local global i32 0, align 4
@DIR_ENTRY_aDate = common dso_local global i32 0, align 4
@DIR_ENTRY_mTime = common dso_local global i32 0, align 4
@DIR_ENTRY_mDate = common dso_local global i32 0, align 4
@DIR_ENTRY_cTime = common dso_local global i32 0, align 4
@DIR_ENTRY_cDate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_FAT_directory_entryStat(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, %struct.stat* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.stat*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store %struct.stat* %2, %struct.stat** %6, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @_FAT_disc_hostType(i32 %9)
  %11 = load %struct.stat*, %struct.stat** %6, align 8
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 14
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @_FAT_directory_entryGetCluster(%struct.TYPE_8__* %13, i32 %16)
  %18 = load %struct.stat*, %struct.stat** %6, align 8
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 16
  store i64 %17, i64* %19, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = call i64 @_FAT_directory_isDirectory(%struct.TYPE_9__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @S_IFDIR, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @S_IFREG, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load i32, i32* @S_IRUSR, align 4
  %30 = load i32, i32* @S_IRGRP, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @S_IROTH, align 4
  %33 = or i32 %31, %32
  %34 = or i32 %28, %33
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = call i64 @_FAT_directory_isWritable(%struct.TYPE_9__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load i32, i32* @S_IWUSR, align 4
  %40 = load i32, i32* @S_IWGRP, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @S_IWOTH, align 4
  %43 = or i32 %41, %42
  br label %45

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %38
  %46 = phi i32 [ %43, %38 ], [ 0, %44 ]
  %47 = or i32 %34, %46
  %48 = load %struct.stat*, %struct.stat** %6, align 8
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.stat*, %struct.stat** %6, align 8
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load %struct.stat*, %struct.stat** %6, align 8
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %52, i32 0, i32 2
  store i32 1, i32* %53, align 8
  %54 = load %struct.stat*, %struct.stat** %6, align 8
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %54, i32 0, i32 3
  store i32 2, i32* %55, align 4
  %56 = load %struct.stat*, %struct.stat** %6, align 8
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %56, i32 0, i32 14
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.stat*, %struct.stat** %6, align 8
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %59, i32 0, i32 15
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DIR_ENTRY_fileSize, align 4
  %65 = call i32 @u8array_to_u32(i32 %63, i32 %64)
  %66 = load %struct.stat*, %struct.stat** %6, align 8
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DIR_ENTRY_aDate, align 4
  %72 = call i32 @u8array_to_u16(i32 %70, i32 %71)
  %73 = call i8* @_FAT_filetime_to_time_t(i32 0, i32 %72)
  %74 = load %struct.stat*, %struct.stat** %6, align 8
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %74, i32 0, i32 13
  store i8* %73, i8** %75, align 8
  %76 = load %struct.stat*, %struct.stat** %6, align 8
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %76, i32 0, i32 12
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DIR_ENTRY_mTime, align 4
  %82 = call i32 @u8array_to_u16(i32 %80, i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @DIR_ENTRY_mDate, align 4
  %87 = call i32 @u8array_to_u16(i32 %85, i32 %86)
  %88 = call i8* @_FAT_filetime_to_time_t(i32 %82, i32 %87)
  %89 = load %struct.stat*, %struct.stat** %6, align 8
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %89, i32 0, i32 11
  store i8* %88, i8** %90, align 8
  %91 = load %struct.stat*, %struct.stat** %6, align 8
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %91, i32 0, i32 10
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @DIR_ENTRY_cTime, align 4
  %97 = call i32 @u8array_to_u16(i32 %95, i32 %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @DIR_ENTRY_cDate, align 4
  %102 = call i32 @u8array_to_u16(i32 %100, i32 %101)
  %103 = call i8* @_FAT_filetime_to_time_t(i32 %97, i32 %102)
  %104 = load %struct.stat*, %struct.stat** %6, align 8
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %104, i32 0, i32 9
  store i8* %103, i8** %105, align 8
  %106 = load %struct.stat*, %struct.stat** %6, align 8
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %106, i32 0, i32 8
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.stat*, %struct.stat** %6, align 8
  %112 = getelementptr inbounds %struct.stat, %struct.stat* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  %113 = load %struct.stat*, %struct.stat** %6, align 8
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %115, %118
  %120 = sub nsw i32 %119, 1
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sdiv i32 %120, %123
  %125 = load %struct.stat*, %struct.stat** %6, align 8
  %126 = getelementptr inbounds %struct.stat, %struct.stat* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 8
  %127 = load %struct.stat*, %struct.stat** %6, align 8
  %128 = getelementptr inbounds %struct.stat, %struct.stat* %127, i32 0, i32 7
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 0
  store i64 0, i64* %130, align 8
  %131 = load %struct.stat*, %struct.stat** %6, align 8
  %132 = getelementptr inbounds %struct.stat, %struct.stat* %131, i32 0, i32 7
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 1
  store i64 0, i64* %134, align 8
  ret void
}

declare dso_local i32 @_FAT_disc_hostType(i32) #1

declare dso_local i64 @_FAT_directory_entryGetCluster(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @_FAT_directory_isDirectory(%struct.TYPE_9__*) #1

declare dso_local i64 @_FAT_directory_isWritable(%struct.TYPE_9__*) #1

declare dso_local i32 @u8array_to_u32(i32, i32) #1

declare dso_local i8* @_FAT_filetime_to_time_t(i32, i32) #1

declare dso_local i32 @u8array_to_u16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
