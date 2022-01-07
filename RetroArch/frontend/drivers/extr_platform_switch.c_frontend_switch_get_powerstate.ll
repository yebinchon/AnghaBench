; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_switch.c_frontend_switch_get_powerstate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_switch.c_frontend_switch_get_powerstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@psmInitialized = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_NONE = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_CHARGED = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_CHARGING = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_NO_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @frontend_switch_get_powerstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frontend_switch_get_powerstate(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @psmInitialized, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @FRONTEND_POWERSTATE_NONE, align 4
  store i32 %12, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = call i32 @psmGetBatteryChargePercentage(i64* %6)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @R_SUCCEEDED(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @FRONTEND_POWERSTATE_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %43

20:                                               ; preds = %13
  %21 = call i32 @psmGetChargerType(i32* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @R_SUCCEEDED(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @FRONTEND_POWERSTATE_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %43

27:                                               ; preds = %20
  %28 = load i64, i64* %6, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 100
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @FRONTEND_POWERSTATE_CHARGED, align 4
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  switch i32 %37, label %40 [
    i32 129, label %38
    i32 128, label %38
  ]

38:                                               ; preds = %36, %36
  %39 = load i32, i32* @FRONTEND_POWERSTATE_CHARGING, align 4
  store i32 %39, i32* %3, align 4
  br label %43

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* @FRONTEND_POWERSTATE_NO_SOURCE, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %38, %34, %25, %18, %11
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @psmGetBatteryChargePercentage(i64*) #1

declare dso_local i32 @R_SUCCEEDED(i32) #1

declare dso_local i32 @psmGetChargerType(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
