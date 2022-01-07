; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_statvfs_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_statvfs_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.statvfs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._reent*, i8*, %struct.statvfs*)* @fs_dev_statvfs_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_dev_statvfs_r(%struct._reent* %0, i8* %1, %struct.statvfs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._reent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.statvfs*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.statvfs* %2, %struct.statvfs** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.TYPE_4__* @fs_dev_get_device_data(i8* %12)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %8, align 8
  %14 = load %struct._reent*, %struct._reent** %5, align 8
  %15 = icmp ne %struct._reent* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %100

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @ENODEV, align 4
  %22 = load %struct._reent*, %struct._reent** %5, align 8
  %23 = getelementptr inbounds %struct._reent, %struct._reent* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  store i32 -1, i32* %4, align 4
  br label %100

24:                                               ; preds = %17
  %25 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %26 = icmp ne %struct.statvfs* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = load %struct._reent*, %struct._reent** %5, align 8
  %30 = getelementptr inbounds %struct._reent, %struct._reent* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 -1, i32* %4, align 4
  br label %100

31:                                               ; preds = %24
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @OSLockMutex(i32 %34)
  %36 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %37 = call i32 @memset(%struct.statvfs* %36, i32 0, i32 48)
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = call i8* @fs_dev_real_path(i8* %38, %struct.TYPE_4__* %39)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = load %struct._reent*, %struct._reent** %5, align 8
  %46 = getelementptr inbounds %struct._reent, %struct._reent* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @OSUnlockMutex(i32 %49)
  store i32 -1, i32* %4, align 4
  br label %100

51:                                               ; preds = %31
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @IOSUHAX_FSA_GetDeviceInfo(i32 %54, i8* %55, i32 0, i32* %10)
  store i32 %56, i32* %11, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %51
  %62 = load i32, i32* %11, align 4
  %63 = load %struct._reent*, %struct._reent** %5, align 8
  %64 = getelementptr inbounds %struct._reent, %struct._reent* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @OSUnlockMutex(i32 %67)
  store i32 -1, i32* %4, align 4
  br label %100

69:                                               ; preds = %51
  %70 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %71 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %70, i32 0, i32 0
  store i32 512, i32* %71, align 8
  %72 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %73 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %72, i32 0, i32 1
  store i32 512, i32* %73, align 4
  %74 = load i32, i32* %10, align 4
  %75 = ashr i32 %74, 9
  %76 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %77 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %10, align 4
  %79 = ashr i32 %78, 9
  %80 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %81 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %83 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %82, i32 0, i32 3
  store i32 %79, i32* %83, align 4
  %84 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %85 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %84, i32 0, i32 5
  store i32 -1, i32* %85, align 4
  %86 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %87 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %86, i32 0, i32 6
  store i32 -1, i32* %87, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %89 = ptrtoint %struct.TYPE_4__* %88 to i32
  %90 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %91 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 4
  %92 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %93 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %92, i32 0, i32 9
  store i64 0, i64* %93, align 8
  %94 = load %struct.statvfs*, %struct.statvfs** %7, align 8
  %95 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %94, i32 0, i32 8
  store i32 255, i32* %95, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @OSUnlockMutex(i32 %98)
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %69, %61, %43, %27, %20, %16
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.TYPE_4__* @fs_dev_get_device_data(i8*) #1

declare dso_local i32 @OSLockMutex(i32) #1

declare dso_local i32 @memset(%struct.statvfs*, i32, i32) #1

declare dso_local i8* @fs_dev_real_path(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @OSUnlockMutex(i32) #1

declare dso_local i32 @IOSUHAX_FSA_GetDeviceInfo(i32, i8*, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
