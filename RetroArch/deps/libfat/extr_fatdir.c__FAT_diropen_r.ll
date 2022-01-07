; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_fatdir.c__FAT_diropen_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_fatdir.c__FAT_diropen_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__*, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @_FAT_diropen_r(%struct._reent* %0, %struct.TYPE_13__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct._reent*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call %struct.TYPE_15__* @_FAT_partition_getPartitionFromPath(i8* %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %18, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = icmp eq %struct.TYPE_15__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @ENODEV, align 4
  %25 = load %struct._reent*, %struct._reent** %5, align 8
  %26 = getelementptr inbounds %struct._reent, %struct._reent* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %106

27:                                               ; preds = %3
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 58)
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 58)
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %7, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i8*, i8** %7, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 58)
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = load %struct._reent*, %struct._reent** %5, align 8
  %42 = getelementptr inbounds %struct._reent, %struct._reent* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %106

43:                                               ; preds = %35
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = call i32 @_FAT_lock(i32* %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @_FAT_directory_entryFromPath(%struct.TYPE_15__* %51, %struct.TYPE_14__* %8, i8* %52, i32* null)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %43
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = call i32 @_FAT_unlock(i32* %60)
  %62 = load i32, i32* @ENOENT, align 4
  %63 = load %struct._reent*, %struct._reent** %5, align 8
  %64 = getelementptr inbounds %struct._reent, %struct._reent* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %106

65:                                               ; preds = %43
  %66 = call i32 @_FAT_directory_isDirectory(%struct.TYPE_14__* %8)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = call i32 @_FAT_unlock(i32* %72)
  %74 = load i32, i32* @ENOTDIR, align 4
  %75 = load %struct._reent*, %struct._reent** %5, align 8
  %76 = getelementptr inbounds %struct._reent, %struct._reent* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %106

77:                                               ; preds = %65
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @_FAT_directory_entryGetCluster(%struct.TYPE_15__* %80, i32 %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @_FAT_directory_getFirstEntry(%struct.TYPE_15__* %88, i32* %90, i32 %93)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = call i32 @_FAT_unlock(i32* %102)
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %105 = bitcast %struct.TYPE_12__* %104 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %4, align 8
  br label %106

106:                                              ; preds = %77, %68, %56, %39, %23
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %107
}

declare dso_local %struct.TYPE_15__* @_FAT_partition_getPartitionFromPath(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @_FAT_lock(i32*) #1

declare dso_local i32 @_FAT_directory_entryFromPath(%struct.TYPE_15__*, %struct.TYPE_14__*, i8*, i32*) #1

declare dso_local i32 @_FAT_unlock(i32*) #1

declare dso_local i32 @_FAT_directory_isDirectory(%struct.TYPE_14__*) #1

declare dso_local i32 @_FAT_directory_entryGetCluster(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @_FAT_directory_getFirstEntry(%struct.TYPE_15__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
