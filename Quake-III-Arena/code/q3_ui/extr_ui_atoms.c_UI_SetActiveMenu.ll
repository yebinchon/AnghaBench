; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_atoms.c_UI_SetActiveMenu.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_atoms.c_UI_SetActiveMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Insert the CD\00", align 1
@NeedCDAction = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Bad CD Key\00", align 1
@NeedCDKeyAction = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"cl_paused\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"UI_SetActiveMenu: bad enum %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_SetActiveMenu(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @Menu_Cache()
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %19 [
    i32 130, label %5
    i32 132, label %7
    i32 131, label %9
    i32 134, label %12
    i32 133, label %15
    i32 128, label %18
    i32 129, label %18
  ]

5:                                                ; preds = %1
  %6 = call i32 (...) @UI_ForceMenuOff()
  br label %22

7:                                                ; preds = %1
  %8 = call i32 (...) @UI_MainMenu()
  br label %22

9:                                                ; preds = %1
  %10 = load i32, i32* @NeedCDAction, align 4
  %11 = call i32 @UI_ConfirmMenu(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0, i32 %10)
  br label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @NeedCDKeyAction, align 4
  %14 = call i32 @UI_ConfirmMenu(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %13)
  br label %22

15:                                               ; preds = %1
  %16 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 (...) @UI_InGameMenu()
  br label %22

18:                                               ; preds = %1, %1
  br label %19

19:                                               ; preds = %1, %18
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @Com_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %5, %7, %9, %12, %15, %19
  ret void
}

declare dso_local i32 @Menu_Cache(...) #1

declare dso_local i32 @UI_ForceMenuOff(...) #1

declare dso_local i32 @UI_MainMenu(...) #1

declare dso_local i32 @UI_ConfirmMenu(i8*, i32, i32) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

declare dso_local i32 @UI_InGameMenu(...) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
