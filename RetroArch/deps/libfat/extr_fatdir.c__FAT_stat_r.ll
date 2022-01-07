; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_fatdir.c__FAT_stat_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_fatdir.c__FAT_stat_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.stat = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_stat_r(%struct._reent* %0, i8* %1, %struct.stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._reent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.TYPE_5__* @_FAT_partition_getPartitionFromPath(i8* %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODEV, align 4
  %16 = load %struct._reent*, %struct._reent** %5, align 8
  %17 = getelementptr inbounds %struct._reent, %struct._reent* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  store i32 -1, i32* %4, align 4
  br label %56

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 58)
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 58)
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 58)
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = load %struct._reent*, %struct._reent** %5, align 8
  %33 = getelementptr inbounds %struct._reent, %struct._reent* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 -1, i32* %4, align 4
  br label %56

34:                                               ; preds = %26
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = call i32 @_FAT_lock(i32* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @_FAT_directory_entryFromPath(%struct.TYPE_5__* %38, i32* %9, i8* %39, i32* null)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %34
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i32 @_FAT_unlock(i32* %44)
  %46 = load i32, i32* @ENOENT, align 4
  %47 = load %struct._reent*, %struct._reent** %5, align 8
  %48 = getelementptr inbounds %struct._reent, %struct._reent* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  store i32 -1, i32* %4, align 4
  br label %56

49:                                               ; preds = %34
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = load %struct.stat*, %struct.stat** %7, align 8
  %52 = call i32 @_FAT_directory_entryStat(%struct.TYPE_5__* %50, i32* %9, %struct.stat* %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = call i32 @_FAT_unlock(i32* %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %49, %42, %30, %14
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_5__* @_FAT_partition_getPartitionFromPath(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @_FAT_lock(i32*) #1

declare dso_local i32 @_FAT_directory_entryFromPath(%struct.TYPE_5__*, i32*, i8*, i32*) #1

declare dso_local i32 @_FAT_unlock(i32*) #1

declare dso_local i32 @_FAT_directory_entryStat(%struct.TYPE_5__*, i32*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
