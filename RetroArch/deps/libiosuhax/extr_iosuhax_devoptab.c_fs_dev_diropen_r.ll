; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_diropen_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_diropen_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct._reent*, %struct.TYPE_10__*, i8*)* @fs_dev_diropen_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @fs_dev_diropen_r(%struct._reent* %0, %struct.TYPE_10__* %1, i8* %2) #0 {
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
  %14 = call %struct.TYPE_8__* @fs_dev_get_device_data(i8* %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %8, align 8
  %15 = load %struct._reent*, %struct._reent** %5, align 8
  %16 = icmp ne %struct._reent* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %80

18:                                               ; preds = %3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @ENODEV, align 4
  %23 = load %struct._reent*, %struct._reent** %5, align 8
  %24 = getelementptr inbounds %struct._reent, %struct._reent* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %80

25:                                               ; preds = %18
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = icmp ne %struct.TYPE_10__* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  %30 = load %struct._reent*, %struct._reent** %5, align 8
  %31 = getelementptr inbounds %struct._reent, %struct._reent* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %80

32:                                               ; preds = %25
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %9, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @OSLockMutex(i32 %39)
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = call i8* @fs_dev_real_path(i8* %41, %struct.TYPE_8__* %42)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %32
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = load %struct._reent*, %struct._reent** %5, align 8
  %49 = getelementptr inbounds %struct._reent, %struct._reent* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @OSUnlockMutex(i32 %52)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %80

54:                                               ; preds = %32
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @IOSUHAX_FSA_OpenDir(i32 %57, i8* %58, i32* %11)
  store i32 %59, i32* %12, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @OSUnlockMutex(i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %54
  %69 = load i32, i32* %12, align 4
  %70 = load %struct._reent*, %struct._reent** %5, align 8
  %71 = getelementptr inbounds %struct._reent, %struct._reent* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %80

72:                                               ; preds = %54
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %75, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %4, align 8
  br label %80

80:                                               ; preds = %72, %68, %46, %28, %21, %17
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %81
}

declare dso_local %struct.TYPE_8__* @fs_dev_get_device_data(i8*) #1

declare dso_local i32 @OSLockMutex(i32) #1

declare dso_local i8* @fs_dev_real_path(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @OSUnlockMutex(i32) #1

declare dso_local i32 @IOSUHAX_FSA_OpenDir(i32, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
