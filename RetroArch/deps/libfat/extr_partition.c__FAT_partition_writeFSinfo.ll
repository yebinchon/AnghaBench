; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_partition.c__FAT_partition_writeFSinfo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_partition.c__FAT_partition_writeFSinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@FS_FAT32 = common dso_local global i64 0, align 8
@FSIB_SIG1 = common dso_local global i32 0, align 4
@FS_INFO_SIG1 = common dso_local global i32 0, align 4
@FSIB_SIG2 = common dso_local global i32 0, align 4
@FS_INFO_SIG2 = common dso_local global i32 0, align 4
@FSIB_numberOfFreeCluster = common dso_local global i32 0, align 4
@FSIB_numberLastAllocCluster = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_FAT_partition_writeFSinfo(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32* null, i32** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @FS_FAT32, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %81

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @_FAT_mem_align(i32 %13)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  br label %81

19:                                               ; preds = %10
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @memset(i32* %20, i32 0, i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @_FAT_disc_readSectors(i32 %27, i32 %30, i32 1, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %19
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @_FAT_mem_free(i32* %35)
  br label %81

37:                                               ; preds = %19
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @FSIB_SIG1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* @FS_INFO_SIG1, align 4
  %43 = call i64 @memcmp(i32* %41, i32 %42, i32 4)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @FSIB_SIG2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* @FS_INFO_SIG2, align 4
  %51 = call i64 @memcmp(i32* %49, i32 %50, i32 4)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45, %37
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @_FAT_mem_free(i32* %54)
  br label %81

56:                                               ; preds = %45
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @FSIB_numberOfFreeCluster, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @u32_to_u8array(i32* %57, i32 %58, i32 %62)
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* @FSIB_numberLastAllocCluster, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @u32_to_u8array(i32* %64, i32 %65, i32 %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @_FAT_disc_writeSectors(i32 %73, i32 %76, i32 1, i32* %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @_FAT_mem_free(i32* %79)
  br label %81

81:                                               ; preds = %56, %53, %34, %18, %9
  ret void
}

declare dso_local i64 @_FAT_mem_align(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @_FAT_disc_readSectors(i32, i32, i32, i32*) #1

declare dso_local i32 @_FAT_mem_free(i32*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @u32_to_u8array(i32*, i32, i32) #1

declare dso_local i32 @_FAT_disc_writeSectors(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
