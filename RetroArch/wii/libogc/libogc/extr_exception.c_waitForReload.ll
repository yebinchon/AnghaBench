; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exception.c_waitForReload.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exception.c_waitForReload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reload_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"\0A\09Reloading in %d seconds\0A\00", align 1
@PAD_TRIGGER_Z = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"\0A\09Reload\0A\0A\0A\00", align 1
@PAD_BUTTON_A = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"\0A\09Reset\0A\0A\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SYS_HOTRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @waitForReload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @waitForReload() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @PAD_Init()
  %4 = load i32, i32* @reload_timer, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @reload_timer, align 4
  %8 = sdiv i32 %7, 50
  %9 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %6, %0
  br label %11

11:                                               ; preds = %10, %44
  %12 = call i32 (...) @PAD_ScanPads()
  %13 = call i32 @PAD_ButtonsDown(i32 0)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @PAD_TRIGGER_Z, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %11
  %19 = call i64 (...) @SYS_ResetButtonDown()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @reload_timer, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21, %18, %11
  %25 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @_CPU_ISR_Disable(i32 %26)
  %28 = call i32 (...) @__reload()
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @PAD_BUTTON_A, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 (...) @__reload()
  br label %37

37:                                               ; preds = %34, %29
  %38 = call i32 @udelay(i32 20000)
  %39 = load i32, i32* @reload_timer, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @reload_timer, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* @reload_timer, align 4
  br label %44

44:                                               ; preds = %41, %37
  br label %11
}

declare dso_local i32 @PAD_Init(...) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @PAD_ScanPads(...) #1

declare dso_local i32 @PAD_ButtonsDown(i32) #1

declare dso_local i64 @SYS_ResetButtonDown(...) #1

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__reload(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
