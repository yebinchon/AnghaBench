; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_uwp.c_frontend_uwp_get_powerstate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_uwp.c_frontend_uwp_get_powerstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@FRONTEND_POWERSTATE_NONE = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_NO_SOURCE = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_CHARGING = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_CHARGED = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_ON_POWER_SOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @frontend_uwp_get_powerstate(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @FRONTEND_POWERSTATE_NONE, align 4
  store i32 %8, i32* %7, align 4
  %9 = call i32 @GetSystemPowerStatus(%struct.TYPE_3__* %6)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %3, align 4
  br label %54

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 255
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @FRONTEND_POWERSTATE_NONE, align 4
  store i32 %18, i32* %7, align 4
  br label %44

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 128
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @FRONTEND_POWERSTATE_NO_SOURCE, align 4
  store i32 %25, i32* %7, align 4
  br label %43

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @FRONTEND_POWERSTATE_CHARGING, align 4
  store i32 %32, i32* %7, align 4
  br label %42

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @FRONTEND_POWERSTATE_CHARGED, align 4
  store i32 %38, i32* %7, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @FRONTEND_POWERSTATE_ON_POWER_SOURCE, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %31
  br label %43

43:                                               ; preds = %42, %24
  br label %44

44:                                               ; preds = %43, %17
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32*, i32** %4, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %44, %11
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @GetSystemPowerStatus(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
