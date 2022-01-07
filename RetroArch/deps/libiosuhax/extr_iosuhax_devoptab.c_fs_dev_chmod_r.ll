; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_chmod_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_chmod_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._reent*, i8*, i32)* @fs_dev_chmod_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_dev_chmod_r(%struct._reent* %0, i8* %1, i32 %2) #0 {
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
  %12 = call %struct.TYPE_4__* @fs_dev_get_device_data(i8* %11)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %8, align 8
  %13 = load %struct._reent*, %struct._reent** %5, align 8
  %14 = icmp ne %struct._reent* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %61

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @ENODEV, align 4
  %21 = load %struct._reent*, %struct._reent** %5, align 8
  %22 = getelementptr inbounds %struct._reent, %struct._reent* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store i32 -1, i32* %4, align 4
  br label %61

23:                                               ; preds = %16
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @OSLockMutex(i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = call i8* @fs_dev_real_path(i8* %28, %struct.TYPE_4__* %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = load %struct._reent*, %struct._reent** %5, align 8
  %36 = getelementptr inbounds %struct._reent, %struct._reent* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @OSUnlockMutex(i32 %39)
  store i32 -1, i32* %4, align 4
  br label %61

41:                                               ; preds = %23
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @IOSUHAX_FSA_ChangeMode(i32 %44, i8* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @OSUnlockMutex(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %41
  %57 = load i32, i32* %10, align 4
  %58 = load %struct._reent*, %struct._reent** %5, align 8
  %59 = getelementptr inbounds %struct._reent, %struct._reent* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  store i32 -1, i32* %4, align 4
  br label %61

60:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %56, %33, %19, %15
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_4__* @fs_dev_get_device_data(i8*) #1

declare dso_local i32 @OSLockMutex(i32) #1

declare dso_local i8* @fs_dev_real_path(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @OSUnlockMutex(i32) #1

declare dso_local i32 @IOSUHAX_FSA_ChangeMode(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
