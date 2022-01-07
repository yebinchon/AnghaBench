; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_mkdir_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_mkdir_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._reent*, i8*, i32)* @sd_fat_mkdir_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_fat_mkdir_r(%struct._reent* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._reent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.TYPE_4__* @sd_fat_get_device_data(i8* %11)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %8, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = load %struct._reent*, %struct._reent** %5, align 8
  %18 = getelementptr inbounds %struct._reent, %struct._reent* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  store i32 -1, i32* %4, align 4
  br label %59

19:                                               ; preds = %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @OSLockMutex(i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = call i8* @sd_fat_real_path(i8* %24, %struct.TYPE_4__* %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = load %struct._reent*, %struct._reent** %5, align 8
  %32 = getelementptr inbounds %struct._reent, %struct._reent* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @OSUnlockMutex(i32 %35)
  store i32 -1, i32* %4, align 4
  br label %59

37:                                               ; preds = %19
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @FSMakeDir(i32 %40, i32 %43, i8* %44, i32 -1)
  store i32 %45, i32* %10, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @OSUnlockMutex(i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %37
  %55 = load i32, i32* %10, align 4
  %56 = load %struct._reent*, %struct._reent** %5, align 8
  %57 = getelementptr inbounds %struct._reent, %struct._reent* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 -1, i32* %4, align 4
  br label %59

58:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %54, %29, %15
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_4__* @sd_fat_get_device_data(i8*) #1

declare dso_local i32 @OSLockMutex(i32) #1

declare dso_local i8* @sd_fat_real_path(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @OSUnlockMutex(i32) #1

declare dso_local i32 @FSMakeDir(i32, i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
