; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/compat_files/extr_ps2_devices.c_rootDevicePath.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/compat_files/extr_ps2_devices.c_rootDevicePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEVICE_MC0_PATH = common dso_local global i8* null, align 8
@DEVICE_MC1_PATH = common dso_local global i8* null, align 8
@DEVICE_CDROM_PATH = common dso_local global i8* null, align 8
@DEVICE_CDFS_PATH = common dso_local global i8* null, align 8
@DEVICE_MASS_PATH = common dso_local global i8* null, align 8
@DEVICE_HDD_PATH = common dso_local global i8* null, align 8
@DEVICE_HDD0_PATH = common dso_local global i8* null, align 8
@DEVICE_HOST_PATH = common dso_local global i8* null, align 8
@DEVICE_HOST0_PATH = common dso_local global i8* null, align 8
@DEVICE_HOST1_PATH = common dso_local global i8* null, align 8
@DEVICE_HOST2_PATH = common dso_local global i8* null, align 8
@DEVICE_HOST3_PATH = common dso_local global i8* null, align 8
@DEVICE_HOST4_PATH = common dso_local global i8* null, align 8
@DEVICE_HOST5_PATH = common dso_local global i8* null, align 8
@DEVICE_HOST6_PATH = common dso_local global i8* null, align 8
@DEVICE_HOST7_PATH = common dso_local global i8* null, align 8
@DEVICE_HOST8_PATH = common dso_local global i8* null, align 8
@DEVICE_HOST9_PATH = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rootDevicePath(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %43 [
    i32 129, label %5
    i32 128, label %7
    i32 145, label %9
    i32 146, label %11
    i32 131, label %13
    i32 130, label %15
    i32 144, label %17
    i32 143, label %19
    i32 142, label %21
    i32 141, label %23
    i32 140, label %25
    i32 139, label %27
    i32 138, label %29
    i32 137, label %31
    i32 136, label %33
    i32 135, label %35
    i32 134, label %37
    i32 133, label %39
    i32 132, label %41
  ]

5:                                                ; preds = %1
  %6 = load i8*, i8** @DEVICE_MC0_PATH, align 8
  store i8* %6, i8** %2, align 8
  br label %44

7:                                                ; preds = %1
  %8 = load i8*, i8** @DEVICE_MC1_PATH, align 8
  store i8* %8, i8** %2, align 8
  br label %44

9:                                                ; preds = %1
  %10 = load i8*, i8** @DEVICE_CDROM_PATH, align 8
  store i8* %10, i8** %2, align 8
  br label %44

11:                                               ; preds = %1
  %12 = load i8*, i8** @DEVICE_CDFS_PATH, align 8
  store i8* %12, i8** %2, align 8
  br label %44

13:                                               ; preds = %1
  %14 = load i8*, i8** @DEVICE_MASS_PATH, align 8
  store i8* %14, i8** %2, align 8
  br label %44

15:                                               ; preds = %1
  %16 = load i8*, i8** @DEVICE_MASS_PATH, align 8
  store i8* %16, i8** %2, align 8
  br label %44

17:                                               ; preds = %1
  %18 = load i8*, i8** @DEVICE_HDD_PATH, align 8
  store i8* %18, i8** %2, align 8
  br label %44

19:                                               ; preds = %1
  %20 = load i8*, i8** @DEVICE_HDD0_PATH, align 8
  store i8* %20, i8** %2, align 8
  br label %44

21:                                               ; preds = %1
  %22 = load i8*, i8** @DEVICE_HOST_PATH, align 8
  store i8* %22, i8** %2, align 8
  br label %44

23:                                               ; preds = %1
  %24 = load i8*, i8** @DEVICE_HOST0_PATH, align 8
  store i8* %24, i8** %2, align 8
  br label %44

25:                                               ; preds = %1
  %26 = load i8*, i8** @DEVICE_HOST1_PATH, align 8
  store i8* %26, i8** %2, align 8
  br label %44

27:                                               ; preds = %1
  %28 = load i8*, i8** @DEVICE_HOST2_PATH, align 8
  store i8* %28, i8** %2, align 8
  br label %44

29:                                               ; preds = %1
  %30 = load i8*, i8** @DEVICE_HOST3_PATH, align 8
  store i8* %30, i8** %2, align 8
  br label %44

31:                                               ; preds = %1
  %32 = load i8*, i8** @DEVICE_HOST4_PATH, align 8
  store i8* %32, i8** %2, align 8
  br label %44

33:                                               ; preds = %1
  %34 = load i8*, i8** @DEVICE_HOST5_PATH, align 8
  store i8* %34, i8** %2, align 8
  br label %44

35:                                               ; preds = %1
  %36 = load i8*, i8** @DEVICE_HOST6_PATH, align 8
  store i8* %36, i8** %2, align 8
  br label %44

37:                                               ; preds = %1
  %38 = load i8*, i8** @DEVICE_HOST7_PATH, align 8
  store i8* %38, i8** %2, align 8
  br label %44

39:                                               ; preds = %1
  %40 = load i8*, i8** @DEVICE_HOST8_PATH, align 8
  store i8* %40, i8** %2, align 8
  br label %44

41:                                               ; preds = %1
  %42 = load i8*, i8** @DEVICE_HOST9_PATH, align 8
  store i8* %42, i8** %2, align 8
  br label %44

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %44

44:                                               ; preds = %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %45 = load i8*, i8** %2, align 8
  ret i8* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
