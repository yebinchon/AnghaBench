; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_Load.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_Load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"ui_menuFiles\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ui/menus.txt\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"gameinfo.txt\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_Load() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = call %struct.TYPE_5__* (...) @Menu_GetFocused()
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %2, align 8
  %5 = call i8* @UI_Cvar_VariableString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @strcpy(i8* %15, i64 %19)
  br label %21

21:                                               ; preds = %14, %8, %0
  %22 = load i8*, i8** %3, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %21
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %31

31:                                               ; preds = %30, %24
  %32 = call i32 (...) @String_Init()
  %33 = call i32 @UI_ParseGameInfo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 (...) @UI_LoadArenas()
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* @qtrue, align 4
  %37 = call i32 @UI_LoadMenus(i8* %35, i32 %36)
  %38 = call i32 (...) @Menus_CloseAll()
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %40 = call i32 @Menus_ActivateByName(i8* %39)
  ret void
}

declare dso_local %struct.TYPE_5__* @Menu_GetFocused(...) #1

declare dso_local i8* @UI_Cvar_VariableString(i8*) #1

declare dso_local i32 @strcpy(i8*, i64) #1

declare dso_local i32 @String_Init(...) #1

declare dso_local i32 @UI_ParseGameInfo(i8*) #1

declare dso_local i32 @UI_LoadArenas(...) #1

declare dso_local i32 @UI_LoadMenus(i8*, i32) #1

declare dso_local i32 @Menus_CloseAll(...) #1

declare dso_local i32 @Menus_ActivateByName(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
