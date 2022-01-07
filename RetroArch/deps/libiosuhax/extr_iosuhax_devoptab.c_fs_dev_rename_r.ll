; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_rename_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_rename_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i8* null, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._reent*, i8*, i8*)* @fs_dev_rename_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_dev_rename_r(%struct._reent* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._reent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.TYPE_4__* @fs_dev_get_device_data(i8* %12)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %8, align 8
  %14 = load %struct._reent*, %struct._reent** %5, align 8
  %15 = icmp ne %struct._reent* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %85

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
  br label %85

24:                                               ; preds = %17
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = load %struct._reent*, %struct._reent** %5, align 8
  %30 = getelementptr inbounds %struct._reent, %struct._reent* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 -1, i32* %4, align 4
  br label %85

31:                                               ; preds = %24
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @OSLockMutex(i32 %34)
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = call i8* @fs_dev_real_path(i8* %36, %struct.TYPE_4__* %37)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %31
  %42 = load i8*, i8** @ENOMEM, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct._reent*, %struct._reent** %5, align 8
  %45 = getelementptr inbounds %struct._reent, %struct._reent* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @OSUnlockMutex(i32 %48)
  store i32 -1, i32* %4, align 4
  br label %85

50:                                               ; preds = %31
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = call i8* @fs_dev_real_path(i8* %51, %struct.TYPE_4__* %52)
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %67, label %56

56:                                               ; preds = %50
  %57 = load i8*, i8** @ENOMEM, align 8
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct._reent*, %struct._reent** %5, align 8
  %60 = getelementptr inbounds %struct._reent, %struct._reent* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @OSUnlockMutex(i32 %65)
  store i32 -1, i32* %4, align 4
  br label %85

67:                                               ; preds = %50
  %68 = load i32, i32* @ENOTSUP, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %11, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @OSUnlockMutex(i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %67
  %81 = load i32, i32* %11, align 4
  %82 = load %struct._reent*, %struct._reent** %5, align 8
  %83 = getelementptr inbounds %struct._reent, %struct._reent* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  store i32 -1, i32* %4, align 4
  br label %85

84:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %80, %56, %41, %27, %20, %16
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_4__* @fs_dev_get_device_data(i8*) #1

declare dso_local i32 @OSLockMutex(i32) #1

declare dso_local i8* @fs_dev_real_path(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @OSUnlockMutex(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
