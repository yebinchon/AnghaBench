; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_atoms.c_UI_ConsoleCommand.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_atoms.c_UI_ConsoleCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"levelselect\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"postgame\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ui_cache\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ui_cinematics\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ui_teamOrders\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"iamacheater\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"iamamonkey\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ui_cdkey\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_ConsoleCommand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i8* @UI_Argv(i32 0)
  store i8* %5, i8** %4, align 8
  %6 = call i32 (...) @Menu_Cache()
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @Q_stricmp(i8* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 (...) @UI_SPLevelMenu_f()
  %12 = load i32, i32* @qtrue, align 4
  store i32 %12, i32* %2, align 4
  br label %64

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @Q_stricmp(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = call i32 (...) @UI_SPPostgameMenu_f()
  %19 = load i32, i32* @qtrue, align 4
  store i32 %19, i32* %2, align 4
  br label %64

20:                                               ; preds = %13
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @Q_stricmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = call i32 (...) @UI_Cache_f()
  %26 = load i32, i32* @qtrue, align 4
  store i32 %26, i32* %2, align 4
  br label %64

27:                                               ; preds = %20
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @Q_stricmp(i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = call i32 (...) @UI_CinematicsMenu_f()
  %33 = load i32, i32* @qtrue, align 4
  store i32 %33, i32* %2, align 4
  br label %64

34:                                               ; preds = %27
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @Q_stricmp(i8* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call i32 (...) @UI_TeamOrdersMenu_f()
  %40 = load i32, i32* @qtrue, align 4
  store i32 %40, i32* %2, align 4
  br label %64

41:                                               ; preds = %34
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @Q_stricmp(i8* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = call i32 (...) @UI_SPUnlock_f()
  %47 = load i32, i32* @qtrue, align 4
  store i32 %47, i32* %2, align 4
  br label %64

48:                                               ; preds = %41
  %49 = load i8*, i8** %4, align 8
  %50 = call i64 @Q_stricmp(i8* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = call i32 (...) @UI_SPUnlockMedals_f()
  %54 = load i32, i32* @qtrue, align 4
  store i32 %54, i32* %2, align 4
  br label %64

55:                                               ; preds = %48
  %56 = load i8*, i8** %4, align 8
  %57 = call i64 @Q_stricmp(i8* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = call i32 (...) @UI_CDKeyMenu_f()
  %61 = load i32, i32* @qtrue, align 4
  store i32 %61, i32* %2, align 4
  br label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @qfalse, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %59, %52, %45, %38, %31, %24, %17, %10
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i8* @UI_Argv(i32) #1

declare dso_local i32 @Menu_Cache(...) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @UI_SPLevelMenu_f(...) #1

declare dso_local i32 @UI_SPPostgameMenu_f(...) #1

declare dso_local i32 @UI_Cache_f(...) #1

declare dso_local i32 @UI_CinematicsMenu_f(...) #1

declare dso_local i32 @UI_TeamOrdersMenu_f(...) #1

declare dso_local i32 @UI_SPUnlock_f(...) #1

declare dso_local i32 @UI_SPUnlockMedals_f(...) #1

declare dso_local i32 @UI_CDKeyMenu_f(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
