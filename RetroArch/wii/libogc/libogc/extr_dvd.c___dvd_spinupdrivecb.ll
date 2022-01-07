; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_spinupdrivecb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_spinupdrivecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__dvd_drivechecked = common dso_local global i32 0, align 4
@__dvd_drivestate = common dso_local global i32 0, align 4
@DVD_CHIPPRESENT = common dso_local global i32 0, align 4
@DVD_INTEROPER = common dso_local global i32 0, align 4
@DVD_DRIVERESET = common dso_local global i32 0, align 4
@DVD_RESETHARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__dvd_spinupdrivecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dvd_spinupdrivecb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (...) @__dvd_statetimeout()
  br label %43

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %41

10:                                               ; preds = %7
  %11 = load i32, i32* @__dvd_drivechecked, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call i32 @__dvd_checkaddons(void (i32)* @__dvd_spinupdrivecb)
  br label %43

15:                                               ; preds = %10
  %16 = load i32, i32* @__dvd_drivestate, align 4
  %17 = load i32, i32* @DVD_CHIPPRESENT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @__dvd_drivestate, align 4
  %22 = load i32, i32* @DVD_INTEROPER, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @__dvd_drivestate, align 4
  %27 = load i32, i32* @DVD_DRIVERESET, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @DVD_RESETHARD, align 4
  %32 = call i32 @DVD_Reset(i32 %31)
  %33 = call i32 @udelay(i32 1150000)
  br label %34

34:                                               ; preds = %30, %25
  %35 = call i32 @__dvd_fwpatchmem(void (i32)* @__dvd_spinupdrivecb)
  br label %43

36:                                               ; preds = %20
  %37 = call i32 (...) @__dvd_handlespinup()
  br label %43

38:                                               ; preds = %15
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @__dvd_finalsudcb(i32 %39)
  br label %43

41:                                               ; preds = %7
  %42 = call i32 (...) @__dvd_stategettingerror()
  br label %43

43:                                               ; preds = %41, %38, %36, %34, %13, %5
  ret void
}

declare dso_local i32 @__dvd_statetimeout(...) #1

declare dso_local i32 @__dvd_checkaddons(void (i32)*) #1

declare dso_local i32 @DVD_Reset(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @__dvd_fwpatchmem(void (i32)*) #1

declare dso_local i32 @__dvd_handlespinup(...) #1

declare dso_local i32 @__dvd_finalsudcb(i32) #1

declare dso_local i32 @__dvd_stategettingerror(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
