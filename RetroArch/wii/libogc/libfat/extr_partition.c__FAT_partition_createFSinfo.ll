; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_partition.c__FAT_partition_createFSinfo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_partition.c__FAT_partition_createFSinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64 }

@FS_FAT32 = common dso_local global i64 0, align 8
@FS_INFO_SIG1 = common dso_local global i32* null, align 8
@FSIB_SIG1 = common dso_local global i32 0, align 4
@FS_INFO_SIG2 = common dso_local global i32* null, align 8
@FSIB_SIG2 = common dso_local global i32 0, align 4
@FSIB_bootSig_55 = common dso_local global i64 0, align 8
@FSIB_bootSig_AA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_FAT_partition_createFSinfo(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FS_FAT32, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  br label %72

16:                                               ; preds = %9
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @_FAT_mem_align(i32 %19)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %72

25:                                               ; preds = %16
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @memset(i32* %26, i32 0, i32 %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %57, %25
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %60

34:                                               ; preds = %31
  %35 = load i32*, i32** @FS_INFO_SIG1, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @FSIB_SIG1, align 4
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load i32*, i32** @FS_INFO_SIG2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @FSIB_SIG2, align 4
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  store i32 %50, i32* %56, align 4
  br label %57

57:                                               ; preds = %34
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %31

60:                                               ; preds = %31
  %61 = load i32*, i32** %3, align 8
  %62 = load i64, i64* @FSIB_bootSig_55, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 85, i32* %63, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = load i64, i64* @FSIB_bootSig_AA, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 170, i32* %66, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @_FAT_updateFS_INFO(%struct.TYPE_4__* %67, i32* %68)
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @_FAT_mem_free(i32* %70)
  br label %72

72:                                               ; preds = %60, %24, %15
  ret void
}

declare dso_local i64 @_FAT_mem_align(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @_FAT_updateFS_INFO(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @_FAT_mem_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
