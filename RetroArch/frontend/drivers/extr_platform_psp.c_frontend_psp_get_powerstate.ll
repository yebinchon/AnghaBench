; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_psp.c_frontend_psp_get_powerstate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_psp.c_frontend_psp_get_powerstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FRONTEND_POWERSTATE_NONE = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_NO_SOURCE = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_CHARGING = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_CHARGED = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_ON_POWER_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @frontend_psp_get_powerstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frontend_psp_get_powerstate(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @FRONTEND_POWERSTATE_NONE, align 4
  store i32 %9, i32* %5, align 4
  %10 = call i32 (...) @scePowerIsBatteryExist()
  store i32 %10, i32* %6, align 4
  %11 = call i32 (...) @scePowerIsPowerOnline()
  store i32 %11, i32* %7, align 4
  %12 = call i32 (...) @scePowerIsBatteryCharging()
  store i32 %12, i32* %8, align 4
  %13 = call i32 (...) @scePowerGetBatteryLifePercent()
  %14 = load i32*, i32** %4, align 8
  store i32 %13, i32* %14, align 4
  %15 = call i32 (...) @scePowerGetBatteryLifeTime()
  %16 = mul nsw i32 %15, 60
  %17 = load i32*, i32** %3, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @FRONTEND_POWERSTATE_NO_SOURCE, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32*, i32** %3, align 8
  store i32 -1, i32* %22, align 4
  %23 = load i32*, i32** %4, align 8
  store i32 -1, i32* %23, align 4
  br label %38

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @FRONTEND_POWERSTATE_CHARGING, align 4
  store i32 %28, i32* %5, align 4
  br label %37

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @FRONTEND_POWERSTATE_CHARGED, align 4
  store i32 %33, i32* %5, align 4
  br label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @FRONTEND_POWERSTATE_ON_POWER_SOURCE, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %32
  br label %37

37:                                               ; preds = %36, %27
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @scePowerIsBatteryExist(...) #1

declare dso_local i32 @scePowerIsPowerOnline(...) #1

declare dso_local i32 @scePowerIsBatteryCharging(...) #1

declare dso_local i32 @scePowerGetBatteryLifePercent(...) #1

declare dso_local i32 @scePowerGetBatteryLifeTime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
