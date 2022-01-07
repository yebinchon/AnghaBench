; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_unlink_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_devoptab.c_fs_dev_unlink_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._reent*, i8*)* @fs_dev_unlink_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_dev_unlink_r(%struct._reent* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._reent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.TYPE_4__* @fs_dev_get_device_data(i8* %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %6, align 8
  %11 = load %struct._reent*, %struct._reent** %4, align 8
  %12 = icmp ne %struct._reent* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %59

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @ENODEV, align 4
  %19 = load %struct._reent*, %struct._reent** %4, align 8
  %20 = getelementptr inbounds %struct._reent, %struct._reent* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  store i32 -1, i32* %3, align 4
  br label %59

21:                                               ; preds = %14
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @OSLockMutex(i32 %24)
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = call i8* @fs_dev_real_path(i8* %26, %struct.TYPE_4__* %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = load %struct._reent*, %struct._reent** %4, align 8
  %34 = getelementptr inbounds %struct._reent, %struct._reent* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @OSUnlockMutex(i32 %37)
  store i32 -1, i32* %3, align 4
  br label %59

39:                                               ; preds = %21
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @IOSUHAX_FSA_Remove(i32 %42, i8* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @OSUnlockMutex(i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %39
  %54 = load i32, i32* %8, align 4
  %55 = load %struct._reent*, %struct._reent** %4, align 8
  %56 = getelementptr inbounds %struct._reent, %struct._reent* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i32 -1, i32* %3, align 4
  br label %59

57:                                               ; preds = %39
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %53, %31, %17, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_4__* @fs_dev_get_device_data(i8*) #1

declare dso_local i32 @OSLockMutex(i32) #1

declare dso_local i8* @fs_dev_real_path(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @OSUnlockMutex(i32) #1

declare dso_local i32 @IOSUHAX_FSA_Remove(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
