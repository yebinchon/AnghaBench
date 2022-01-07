; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c__UI_KeyEvent.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c__UI_KeyEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@K_ESCAPE = common dso_local global i32 0, align 4
@KEYCATCH_UI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cl_paused\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_UI_KeyEvent(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call i64 (...) @Menu_Count()
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %2
  %9 = call i32* (...) @Menu_GetFocused()
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @K_ESCAPE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = call i32 (...) @Menus_AnyFullScreenVisible()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call i32 (...) @Menus_CloseAll()
  br label %29

24:                                               ; preds = %19, %16, %12
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @Menu_HandleKey(i32* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %22
  br label %38

30:                                               ; preds = %8
  %31 = call i32 (...) @trap_Key_GetCatcher()
  %32 = load i32, i32* @KEYCATCH_UI, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = call i32 @trap_Key_SetCatcher(i32 %34)
  %36 = call i32 (...) @trap_Key_ClearStates()
  %37 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %30, %29
  br label %39

39:                                               ; preds = %38, %2
  ret void
}

declare dso_local i64 @Menu_Count(...) #1

declare dso_local i32* @Menu_GetFocused(...) #1

declare dso_local i32 @Menus_AnyFullScreenVisible(...) #1

declare dso_local i32 @Menus_CloseAll(...) #1

declare dso_local i32 @Menu_HandleKey(i32*, i32, i32) #1

declare dso_local i32 @trap_Key_SetCatcher(i32) #1

declare dso_local i32 @trap_Key_GetCatcher(...) #1

declare dso_local i32 @trap_Key_ClearStates(...) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
