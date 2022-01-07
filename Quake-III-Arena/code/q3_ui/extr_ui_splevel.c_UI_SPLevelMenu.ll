; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_splevel.c_UI_SPLevelMenu.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_splevel.c_UI_SPLevelMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@trainingTier = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"training\00", align 1
@minTier = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@finalTier = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@maxTier = common dso_local global i32 0, align 4
@currentSet = common dso_local global i32 0, align 4
@currentGame = common dso_local global i32 0, align 4
@ARENAS_PER_TIER = common dso_local global i32 0, align 4
@levelMenuInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_SPLevelMenu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 -1, i32* @trainingTier, align 4
  %4 = call i8* @UI_GetSpecialArenaInfo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* @trainingTier, align 4
  store i32 %8, i32* @minTier, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @Info_ValueForKey(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @atoi(i32 %10)
  store i32 %11, i32* %2, align 4
  br label %13

12:                                               ; preds = %0
  store i32 0, i32* @minTier, align 4
  store i32 -2, i32* %2, align 4
  br label %13

13:                                               ; preds = %12, %7
  %14 = call i32 (...) @UI_GetNumSPTiers()
  store i32 %14, i32* @finalTier, align 4
  %15 = call i8* @UI_GetSpecialArenaInfo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %15, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @finalTier, align 4
  store i32 %19, i32* @maxTier, align 4
  br label %29

20:                                               ; preds = %13
  %21 = load i32, i32* @finalTier, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* @maxTier, align 4
  %23 = load i32, i32* @maxTier, align 4
  %24 = load i32, i32* @minTier, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @minTier, align 4
  store i32 %27, i32* @maxTier, align 4
  br label %28

28:                                               ; preds = %26, %20
  br label %29

29:                                               ; preds = %28, %18
  %30 = call i32 (...) @UI_GetCurrentGame()
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = call i32 (...) @UI_GetNumSPArenas()
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* @maxTier, align 4
  %37 = load i32, i32* @finalTier, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %39, %33
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 -1, i32* @currentSet, align 4
  store i32 0, i32* @currentGame, align 4
  br label %55

48:                                               ; preds = %43
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @ARENAS_PER_TIER, align 4
  %51 = sdiv i32 %49, %50
  store i32 %51, i32* @currentSet, align 4
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* @ARENAS_PER_TIER, align 4
  %54 = srem i32 %52, %53
  store i32 %54, i32* @currentGame, align 4
  br label %55

55:                                               ; preds = %48, %47
  %56 = call i32 (...) @UI_SPLevelMenu_Init()
  %57 = call i32 @UI_PushMenu(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 1))
  %58 = call i32 @Menu_SetCursorToItem(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 1), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0))
  ret void
}

declare dso_local i8* @UI_GetSpecialArenaInfo(i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @UI_GetNumSPTiers(...) #1

declare dso_local i32 @UI_GetCurrentGame(...) #1

declare dso_local i32 @UI_GetNumSPArenas(...) #1

declare dso_local i32 @UI_SPLevelMenu_Init(...) #1

declare dso_local i32 @UI_PushMenu(i32*) #1

declare dso_local i32 @Menu_SetCursorToItem(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
