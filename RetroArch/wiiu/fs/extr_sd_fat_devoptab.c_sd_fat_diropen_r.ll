; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_diropen_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_diropen_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct._reent*, %struct.TYPE_10__*, i8*)* @sd_fat_diropen_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @sd_fat_diropen_r(%struct._reent* %0, %struct.TYPE_10__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct._reent*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call %struct.TYPE_8__* @sd_fat_get_device_data(i8* %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %8, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = load %struct._reent*, %struct._reent** %5, align 8
  %20 = getelementptr inbounds %struct._reent, %struct._reent* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %72

21:                                               ; preds = %3
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %9, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @OSLockMutex(i32 %28)
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = call i8* @sd_fat_real_path(i8* %30, %struct.TYPE_8__* %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = load %struct._reent*, %struct._reent** %5, align 8
  %38 = getelementptr inbounds %struct._reent, %struct._reent* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @OSUnlockMutex(i32 %41)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %72

43:                                               ; preds = %21
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @FSOpenDir(i32 %46, i32 %49, i8* %50, i32* %11, i32 -1)
  store i32 %51, i32* %12, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @OSUnlockMutex(i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %43
  %61 = load i32, i32* %12, align 4
  %62 = load %struct._reent*, %struct._reent** %5, align 8
  %63 = getelementptr inbounds %struct._reent, %struct._reent* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %72

64:                                               ; preds = %43
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %67, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %4, align 8
  br label %72

72:                                               ; preds = %64, %60, %35, %17
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %73
}

declare dso_local %struct.TYPE_8__* @sd_fat_get_device_data(i8*) #1

declare dso_local i32 @OSLockMutex(i32) #1

declare dso_local i8* @sd_fat_real_path(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @OSUnlockMutex(i32) #1

declare dso_local i32 @FSOpenDir(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
