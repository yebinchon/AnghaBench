; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c_DVD_LowPatchDriveCode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c_DVD_LowPatchDriveCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@__dvd_finalpatchcb = common dso_local global i32 0, align 4
@__dvd_stopnextint = common dso_local global i64 0, align 8
@__dvd_driveinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DVD_MODEL04 = common dso_local global i32 0, align 4
@__dvd_patchcode04 = common dso_local global i32* null, align 8
@__dvdpatchcode = common dso_local global i32* null, align 8
@__dvd_patchcode04_size = common dso_local global i64 0, align 8
@__dvdpatchcode_size = common dso_local global i64 0, align 8
@DVD_MODEL06 = common dso_local global i32 0, align 4
@__dvd_patchcode06 = common dso_local global i32* null, align 8
@__dvd_patchcode06_size = common dso_local global i64 0, align 8
@DVD_MODEL08 = common dso_local global i32 0, align 4
@__dvd_patchcode08 = common dso_local global i32* null, align 8
@__dvd_patchcode08_size = common dso_local global i64 0, align 8
@DVD_MODEL08Q = common dso_local global i32 0, align 4
@__dvd_patchcodeQ08 = common dso_local global i32* null, align 8
@__dvd_patchcodeQ08_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DVD_LowPatchDriveCode(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @__dvd_finalpatchcb, align 4
  store i64 0, i64* @__dvd_stopnextint, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__dvd_driveinfo, i32 0, i32 0), align 4
  %5 = load i32, i32* @DVD_MODEL04, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32*, i32** @__dvd_patchcode04, align 8
  store i32* %8, i32** @__dvdpatchcode, align 8
  %9 = load i64, i64* @__dvd_patchcode04_size, align 8
  store i64 %9, i64* @__dvdpatchcode_size, align 8
  br label %47

10:                                               ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__dvd_driveinfo, i32 0, i32 0), align 4
  %12 = and i32 %11, 65280
  %13 = icmp eq i32 %12, 1280
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %46

15:                                               ; preds = %10
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__dvd_driveinfo, i32 0, i32 0), align 4
  %17 = load i32, i32* @DVD_MODEL06, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32*, i32** @__dvd_patchcode06, align 8
  store i32* %20, i32** @__dvdpatchcode, align 8
  %21 = load i64, i64* @__dvd_patchcode06_size, align 8
  store i64 %21, i64* @__dvdpatchcode_size, align 8
  br label %45

22:                                               ; preds = %15
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__dvd_driveinfo, i32 0, i32 0), align 4
  %24 = load i32, i32* @DVD_MODEL08, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32*, i32** @__dvd_patchcode08, align 8
  store i32* %27, i32** @__dvdpatchcode, align 8
  %28 = load i64, i64* @__dvd_patchcode08_size, align 8
  store i64 %28, i64* @__dvdpatchcode_size, align 8
  br label %44

29:                                               ; preds = %22
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__dvd_driveinfo, i32 0, i32 0), align 4
  %31 = load i32, i32* @DVD_MODEL08Q, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32*, i32** @__dvd_patchcodeQ08, align 8
  store i32* %34, i32** @__dvdpatchcode, align 8
  %35 = load i64, i64* @__dvd_patchcodeQ08_size, align 8
  store i64 %35, i64* @__dvdpatchcode_size, align 8
  br label %43

36:                                               ; preds = %29
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__dvd_driveinfo, i32 0, i32 0), align 4
  %38 = and i32 %37, 65280
  %39 = icmp eq i32 %38, 2304
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %42

41:                                               ; preds = %36
  store i32* null, i32** @__dvdpatchcode, align 8
  store i64 0, i64* @__dvdpatchcode_size, align 8
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %33
  br label %44

44:                                               ; preds = %43, %26
  br label %45

45:                                               ; preds = %44, %19
  br label %46

46:                                               ; preds = %45, %14
  br label %47

47:                                               ; preds = %46, %7
  %48 = call i32 @__dvd_patchdrivecb(i32 0)
  ret i32 1
}

declare dso_local i32 @__dvd_patchdrivecb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
