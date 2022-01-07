; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_gameinfo.c_UI_SPUnlock_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_gameinfo.c_UI_SPUnlock_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INFO_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"g_spScores1\00", align 1
@ui_numSinglePlayerArenas = common dso_local global i32 0, align 4
@ui_numSpecialSinglePlayerArenas = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"l%i\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"All levels unlocked at skill level 1\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_SPUnlock_f() #0 {
  %1 = alloca [16 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_INFO_VALUE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i32, i32* @MAX_INFO_VALUE, align 4
  %11 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %24, %0
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ui_numSinglePlayerArenas, align 4
  %15 = load i32, i32* @ui_numSpecialSinglePlayerArenas, align 4
  %16 = add nsw i32 %14, %15
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @Com_sprintf(i8* %19, i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %23 = call i32 @Info_SetValueForKey(i8* %9, i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %12

27:                                               ; preds = %12
  %28 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %9)
  store i32 1, i32* %5, align 4
  br label %29

29:                                               ; preds = %35, %27
  %30 = load i32, i32* %5, align 4
  %31 = icmp sle i32 %30, 8
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @UI_ShowTierVideo(i32 %33)
  br label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %29

38:                                               ; preds = %29
  %39 = call i32 @trap_Print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 (...) @UI_SPLevelMenu_ReInit()
  %41 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %41)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @Info_SetValueForKey(i8*, i8*, i8*) #2

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #2

declare dso_local i32 @UI_ShowTierVideo(i32) #2

declare dso_local i32 @trap_Print(i8*) #2

declare dso_local i32 @UI_SPLevelMenu_ReInit(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
