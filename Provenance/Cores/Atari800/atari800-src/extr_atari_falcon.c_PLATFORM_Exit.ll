; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_falcon.c_PLATFORM_Exit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_falcon.c_PLATFORM_Exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@new_videoram = common dso_local global i64 0, align 8
@END_UPDATE = common dso_local global i32 0, align 4
@FMD_FINISH = common dso_local global i32 0, align 4
@HOST_WIDTH = common dso_local global i32 0, align 4
@HOST_HEIGHT = common dso_local global i32 0, align 4
@M_ON = common dso_local global i32 0, align 4
@Clocky_SSval = common dso_local global i32 0, align 4
@NOVA_SSval = common dso_local global i32 0, align 4
@NOVA_xcb = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PLATFORM_Exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i32 (...) @ShutdownEmulatedEnvironment()
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = call i64 (...) @MONITOR_Run()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 (...) @SetupEmulatedEnvironment()
  store i32 1, i32* %2, align 4
  br label %29

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i64, i64* @new_videoram, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64, i64* @new_videoram, align 8
  %18 = call i32 @free(i64 %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @END_UPDATE, align 4
  %21 = call i32 @wind_update(i32 %20)
  %22 = load i32, i32* @FMD_FINISH, align 4
  %23 = load i32, i32* @HOST_WIDTH, align 4
  %24 = load i32, i32* @HOST_HEIGHT, align 4
  %25 = call i32 @form_dial(i32 %22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %23, i32 %24)
  %26 = load i32, i32* @M_ON, align 4
  %27 = call i32 @graf_mouse(i32 %26, i32* null)
  %28 = call i32 (...) @appl_exit()
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %19, %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @ShutdownEmulatedEnvironment(...) #1

declare dso_local i64 @MONITOR_Run(...) #1

declare dso_local i32 @SetupEmulatedEnvironment(...) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @wind_update(i32) #1

declare dso_local i32 @form_dial(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @graf_mouse(i32, i32*) #1

declare dso_local i32 @appl_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
