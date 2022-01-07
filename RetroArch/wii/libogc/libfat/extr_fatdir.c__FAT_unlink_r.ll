; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_fatdir.c__FAT_unlink_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_fatdir.c__FAT_unlink_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i8* }
%struct.TYPE_17__ = type { i32, i32, i64 }
%struct.TYPE_18__ = type { i32 }

@ENODEV = common dso_local global i8* null, align 8
@EROFS = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i8* null, align 8
@ENOTEMPTY = common dso_local global i8* null, align 8
@EIO = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_unlink_r(%struct._reent* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._reent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__, align 4
  %8 = alloca %struct.TYPE_18__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.TYPE_17__* @_FAT_partition_getPartitionFromPath(i8* %12)
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %6, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = icmp eq %struct.TYPE_17__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i8*, i8** @ENODEV, align 8
  %18 = load %struct._reent*, %struct._reent** %4, align 8
  %19 = getelementptr inbounds %struct._reent, %struct._reent* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  store i32 -1, i32* %3, align 4
  br label %129

20:                                               ; preds = %2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i8*, i8** @EROFS, align 8
  %27 = load %struct._reent*, %struct._reent** %4, align 8
  %28 = getelementptr inbounds %struct._reent, %struct._reent* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  store i32 -1, i32* %3, align 4
  br label %129

29:                                               ; preds = %20
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 58)
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 58)
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %36, i8** %5, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i8*, i8** %5, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 58)
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i8*, i8** @EINVAL, align 8
  %43 = load %struct._reent*, %struct._reent** %4, align 8
  %44 = getelementptr inbounds %struct._reent, %struct._reent* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  store i32 -1, i32* %3, align 4
  br label %129

45:                                               ; preds = %37
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = call i32 @_FAT_lock(i32* %47)
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @_FAT_directory_entryFromPath(%struct.TYPE_17__* %49, %struct.TYPE_18__* %7, i8* %50, i32* null)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = call i32 @_FAT_unlock(i32* %55)
  %57 = load i8*, i8** @ENOENT, align 8
  %58 = load %struct._reent*, %struct._reent** %4, align 8
  %59 = getelementptr inbounds %struct._reent, %struct._reent* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  store i32 -1, i32* %3, align 4
  br label %129

60:                                               ; preds = %45
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @_FAT_directory_entryGetCluster(%struct.TYPE_17__* %61, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = call i64 @_FAT_directory_isDirectory(%struct.TYPE_18__* %7)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %60
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @_FAT_directory_getFirstEntry(%struct.TYPE_17__* %68, %struct.TYPE_18__* %8, i32 %69)
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %84, %67
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = call i32 @_FAT_directory_isDot(%struct.TYPE_18__* %8)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = call i32 @_FAT_unlock(i32* %79)
  %81 = load i8*, i8** @ENOTEMPTY, align 8
  %82 = load %struct._reent*, %struct._reent** %4, align 8
  %83 = getelementptr inbounds %struct._reent, %struct._reent* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  store i32 -1, i32* %3, align 4
  br label %129

84:                                               ; preds = %74
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %86 = call i32 @_FAT_directory_getNextEntry(%struct.TYPE_17__* %85, %struct.TYPE_18__* %8)
  store i32 %86, i32* %10, align 4
  br label %71

87:                                               ; preds = %71
  br label %88

88:                                               ; preds = %87, %60
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i64 @_FAT_fat_isValidCluster(%struct.TYPE_17__* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @_FAT_fat_clearLinks(%struct.TYPE_17__* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** @EIO, align 8
  %100 = load %struct._reent*, %struct._reent** %4, align 8
  %101 = getelementptr inbounds %struct._reent, %struct._reent* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  store i32 1, i32* %11, align 4
  br label %102

102:                                              ; preds = %98, %93
  br label %103

103:                                              ; preds = %102, %88
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %105 = call i32 @_FAT_directory_removeEntry(%struct.TYPE_17__* %104, %struct.TYPE_18__* %7)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i8*, i8** @EIO, align 8
  %109 = load %struct._reent*, %struct._reent** %4, align 8
  %110 = getelementptr inbounds %struct._reent, %struct._reent* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  store i32 1, i32* %11, align 4
  br label %111

111:                                              ; preds = %107, %103
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @_FAT_cache_flush(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %111
  %118 = load i8*, i8** @EIO, align 8
  %119 = load %struct._reent*, %struct._reent** %4, align 8
  %120 = getelementptr inbounds %struct._reent, %struct._reent* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  store i32 1, i32* %11, align 4
  br label %121

121:                                              ; preds = %117, %111
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = call i32 @_FAT_unlock(i32* %123)
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  store i32 -1, i32* %3, align 4
  br label %129

128:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %127, %77, %53, %41, %25, %16
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.TYPE_17__* @_FAT_partition_getPartitionFromPath(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @_FAT_lock(i32*) #1

declare dso_local i32 @_FAT_directory_entryFromPath(%struct.TYPE_17__*, %struct.TYPE_18__*, i8*, i32*) #1

declare dso_local i32 @_FAT_unlock(i32*) #1

declare dso_local i32 @_FAT_directory_entryGetCluster(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @_FAT_directory_isDirectory(%struct.TYPE_18__*) #1

declare dso_local i32 @_FAT_directory_getFirstEntry(%struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @_FAT_directory_isDot(%struct.TYPE_18__*) #1

declare dso_local i32 @_FAT_directory_getNextEntry(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i64 @_FAT_fat_isValidCluster(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @_FAT_fat_clearLinks(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @_FAT_directory_removeEntry(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @_FAT_cache_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
