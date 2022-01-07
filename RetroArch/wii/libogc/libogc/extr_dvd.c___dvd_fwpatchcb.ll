; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_fwpatchcb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_fwpatchcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__dvd_fwpatchcb.step = internal global i32 0, align 4
@_diReg = common dso_local global i32* null, align 8
@__dvd_finalpatchcb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__dvd_fwpatchcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dvd_fwpatchcb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (...) @__dvd_statetimeout()
  br label %31

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %29

10:                                               ; preds = %7
  %11 = load i32, i32* @__dvd_fwpatchcb.step, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load i32, i32* @__dvd_fwpatchcb.step, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @__dvd_fwpatchcb.step, align 4
  %16 = load i32*, i32** @_diReg, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** @_diReg, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %18, i32* %20, align 4
  %21 = call i32 @DVD_LowUnlockDrive(void (i32)* @__dvd_fwpatchcb)
  br label %31

22:                                               ; preds = %10
  %23 = load i32, i32* @__dvd_fwpatchcb.step, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  store i32 0, i32* @__dvd_fwpatchcb.step, align 4
  %26 = load i32, i32* @__dvd_finalpatchcb, align 4
  %27 = call i32 @DVD_LowPatchDriveCode(i32 %26)
  br label %31

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %7
  store i32 0, i32* @__dvd_fwpatchcb.step, align 4
  %30 = call i32 (...) @__dvd_stategettingerror()
  br label %31

31:                                               ; preds = %29, %25, %13, %5
  ret void
}

declare dso_local i32 @__dvd_statetimeout(...) #1

declare dso_local i32 @DVD_LowUnlockDrive(void (i32)*) #1

declare dso_local i32 @DVD_LowPatchDriveCode(i32) #1

declare dso_local i32 @__dvd_stategettingerror(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
