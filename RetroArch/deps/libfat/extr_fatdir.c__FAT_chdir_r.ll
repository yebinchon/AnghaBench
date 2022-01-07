; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_fatdir.c__FAT_chdir_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_fatdir.c__FAT_chdir_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_chdir_r(%struct._reent* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._reent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct._reent* %0, %struct._reent** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call %struct.TYPE_4__* @_FAT_partition_getPartitionFromPath(i8* %7)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %10 = icmp eq %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = load %struct._reent*, %struct._reent** %4, align 8
  %14 = getelementptr inbounds %struct._reent, %struct._reent* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  store i32 -1, i32* %3, align 4
  br label %50

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 58)
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 58)
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 58)
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @EINVAL, align 4
  %29 = load %struct._reent*, %struct._reent** %4, align 8
  %30 = getelementptr inbounds %struct._reent, %struct._reent* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 -1, i32* %3, align 4
  br label %50

31:                                               ; preds = %23
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @_FAT_lock(i32* %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @_FAT_directory_chdir(%struct.TYPE_4__* %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @_FAT_unlock(i32* %41)
  store i32 0, i32* %3, align 4
  br label %50

43:                                               ; preds = %31
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @_FAT_unlock(i32* %45)
  %47 = load i32, i32* @ENOTDIR, align 4
  %48 = load %struct._reent*, %struct._reent** %4, align 8
  %49 = getelementptr inbounds %struct._reent, %struct._reent* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  store i32 -1, i32* %3, align 4
  br label %50

50:                                               ; preds = %43, %39, %27, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_4__* @_FAT_partition_getPartitionFromPath(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @_FAT_lock(i32*) #1

declare dso_local i64 @_FAT_directory_chdir(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @_FAT_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
