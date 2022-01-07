; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_wndproc.c_WIN_DisableAltTab.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_wndproc.c_WIN_DisableAltTab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_alttab_disabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"arch\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"winnt\00", align 1
@MOD_ALT = common dso_local global i32 0, align 4
@VK_TAB = common dso_local global i32 0, align 4
@SPI_SCREENSAVERRUNNING = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @WIN_DisableAltTab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WIN_DisableAltTab() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @s_alttab_disabled, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %18

5:                                                ; preds = %0
  %6 = call i32 @Cvar_VariableString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @Q_stricmp(i32 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load i32, i32* @MOD_ALT, align 4
  %11 = load i32, i32* @VK_TAB, align 4
  %12 = call i32 @RegisterHotKey(i32 0, i32 0, i32 %10, i32 %11)
  br label %16

13:                                               ; preds = %5
  %14 = load i32, i32* @SPI_SCREENSAVERRUNNING, align 4
  %15 = call i32 @SystemParametersInfo(i32 %14, i32 1, i32* %1, i32 0)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i64, i64* @qtrue, align 8
  store i64 %17, i64* @s_alttab_disabled, align 8
  br label %18

18:                                               ; preds = %16, %4
  ret void
}

declare dso_local i32 @Q_stricmp(i32, i8*) #1

declare dso_local i32 @Cvar_VariableString(i8*) #1

declare dso_local i32 @RegisterHotKey(i32, i32, i32, i32) #1

declare dso_local i32 @SystemParametersInfo(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
