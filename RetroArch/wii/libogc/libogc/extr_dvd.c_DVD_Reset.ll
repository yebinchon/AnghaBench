; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c_DVD_Reset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c_DVD_Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DVD_INTEROPER = common dso_local global i32 0, align 4
@DVD_CHIPPRESENT = common dso_local global i32 0, align 4
@DVD_DRIVERESET = common dso_local global i32 0, align 4
@__dvd_drivestate = common dso_local global i32 0, align 4
@DVD_RESETNONE = common dso_local global i64 0, align 8
@DVD_DE_MSK = common dso_local global i32 0, align 4
@DVD_TC_MSK = common dso_local global i32 0, align 4
@DVD_BRK_MSK = common dso_local global i32 0, align 4
@_diReg = common dso_local global i32* null, align 8
@__dvd_resetrequired = common dso_local global i64 0, align 8
@__dvd_internalretries = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DVD_Reset(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @DVD_INTEROPER, align 4
  %4 = load i32, i32* @DVD_CHIPPRESENT, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @DVD_DRIVERESET, align 4
  %7 = or i32 %5, %6
  %8 = xor i32 %7, -1
  %9 = load i32, i32* @__dvd_drivestate, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* @__dvd_drivestate, align 4
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @DVD_RESETNONE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @DVD_LowReset(i64 %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i32, i32* @DVD_DE_MSK, align 4
  %19 = load i32, i32* @DVD_TC_MSK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @DVD_BRK_MSK, align 4
  %22 = or i32 %20, %21
  %23 = load i32*, i32** @_diReg, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** @_diReg, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @_diReg, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %27, i32* %29, align 4
  store i64 0, i64* @__dvd_resetrequired, align 8
  store i64 0, i64* @__dvd_internalretries, align 8
  ret void
}

declare dso_local i32 @DVD_LowReset(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
