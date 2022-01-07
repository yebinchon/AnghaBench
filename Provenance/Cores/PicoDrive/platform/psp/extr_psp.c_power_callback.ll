; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_psp.c_power_callback.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_psp.c_power_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"power_callback: flags: 0x%08X\0A\00", align 1
@PSP_POWER_CB_POWER_SWITCH = common dso_local global i32 0, align 4
@PSP_POWER_CB_SUSPENDING = common dso_local global i32 0, align 4
@PSP_POWER_CB_STANDBY = common dso_local global i32 0, align 4
@psp_unhandled_suspend = common dso_local global i32 0, align 4
@engineState = common dso_local global i64 0, align 8
@PGS_Suspending = common dso_local global i64 0, align 8
@engineStateSuspend = common dso_local global i64 0, align 8
@PSP_POWER_CB_RESUME_COMPLETE = common dso_local global i32 0, align 4
@PGS_SuspendWake = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @power_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_callback(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @lprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @PSP_POWER_CB_POWER_SWITCH, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PSP_POWER_CB_SUSPENDING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PSP_POWER_CB_STANDBY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18, %13, %3
  store i32 1, i32* @psp_unhandled_suspend, align 4
  %24 = load i64, i64* @engineState, align 8
  %25 = load i64, i64* @PGS_Suspending, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* @engineState, align 8
  store i64 %28, i64* @engineStateSuspend, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = call i32 @sceKernelDelayThread(i32 100000)
  br label %39

31:                                               ; preds = %18
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @PSP_POWER_CB_RESUME_COMPLETE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @PGS_SuspendWake, align 8
  store i64 %37, i64* @engineState, align 8
  br label %38

38:                                               ; preds = %36, %31
  br label %39

39:                                               ; preds = %38, %29
  ret i32 0
}

declare dso_local i32 @lprintf(i8*, i32) #1

declare dso_local i32 @sceKernelDelayThread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
