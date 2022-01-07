; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_handlespinupcb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_handlespinupcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__dvd_handlespinupcb.step = internal global i32 0, align 4
@_diReg = common dso_local global i32* null, align 8
@__dvd_extensionsenabled = common dso_local global i32 0, align 4
@DVD_SPINMOTOR_ACCEPT = common dso_local global i32 0, align 4
@DVD_SPINMOTOR_UP = common dso_local global i32 0, align 4
@__dvd_lasterror = common dso_local global i32 0, align 4
@DVD_STATUS_DISK_ID_NOT_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__dvd_handlespinupcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dvd_handlespinupcb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (...) @__dvd_statetimeout()
  br label %61

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %59

10:                                               ; preds = %7
  %11 = load i32, i32* @__dvd_handlespinupcb.step, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i32, i32* @__dvd_handlespinupcb.step, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @__dvd_handlespinupcb.step, align 4
  %16 = load i32*, i32** @_diReg, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** @_diReg, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @__dvd_extensionsenabled, align 4
  %22 = call i32 @DVD_LowEnableExtensions(i32 %21, void (i32)* @__dvd_handlespinupcb)
  br label %61

23:                                               ; preds = %10
  %24 = load i32, i32* @__dvd_handlespinupcb.step, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i32, i32* @__dvd_handlespinupcb.step, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @__dvd_handlespinupcb.step, align 4
  %29 = load i32*, i32** @_diReg, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** @_diReg, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @DVD_SPINMOTOR_ACCEPT, align 4
  %35 = load i32, i32* @DVD_SPINMOTOR_UP, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @DVD_LowSpinMotor(i32 %36, void (i32)* @__dvd_handlespinupcb)
  br label %61

38:                                               ; preds = %23
  %39 = load i32, i32* @__dvd_handlespinupcb.step, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  store i32 0, i32* @__dvd_handlespinupcb.step, align 4
  %42 = load i32, i32* @__dvd_lasterror, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41
  %45 = load i32*, i32** @_diReg, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** @_diReg, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %47, i32* %49, align 4
  %50 = load i64, i64* @DVD_STATUS_DISK_ID_NOT_READ, align 8
  %51 = add nsw i64 %50, 1
  %52 = call i32 @_SHIFTL(i64 %51, i32 16, i32 8)
  %53 = or i32 %52, 768
  %54 = call i32 @DVD_LowSetStatus(i32 %53, i32 (i32)* @__dvd_finalsudcb)
  br label %61

55:                                               ; preds = %41
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @__dvd_finalsudcb(i32 %56)
  br label %61

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58, %7
  store i32 0, i32* @__dvd_handlespinupcb.step, align 4
  %60 = call i32 (...) @__dvd_stategettingerror()
  br label %61

61:                                               ; preds = %59, %55, %44, %26, %13, %5
  ret void
}

declare dso_local i32 @__dvd_statetimeout(...) #1

declare dso_local i32 @DVD_LowEnableExtensions(i32, void (i32)*) #1

declare dso_local i32 @DVD_LowSpinMotor(i32, void (i32)*) #1

declare dso_local i32 @DVD_LowSetStatus(i32, i32 (i32)*) #1

declare dso_local i32 @_SHIFTL(i64, i32, i32) #1

declare dso_local i32 @__dvd_finalsudcb(i32) #1

declare dso_local i32 @__dvd_stategettingerror(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
