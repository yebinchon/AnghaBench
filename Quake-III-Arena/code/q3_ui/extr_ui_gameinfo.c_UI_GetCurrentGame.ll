; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_gameinfo.c_UI_GetCurrentGame.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_gameinfo.c_UI_GetCurrentGame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"training\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@ui_numSinglePlayerArenas = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"final\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_GetCurrentGame() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = call i8* @UI_GetSpecialArenaInfo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %0
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @Info_ValueForKey(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @atoi(i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @UI_GetBestScore(i32 %13, i32* %3, i32* %4)
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %9
  %21 = load i32, i32* %2, align 4
  store i32 %21, i32* %1, align 4
  br label %51

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %0
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @ui_numSinglePlayerArenas, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @UI_GetBestScore(i32 %29, i32* %3, i32* %4)
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %2, align 4
  store i32 %37, i32* %1, align 4
  br label %51

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %24

42:                                               ; preds = %24
  %43 = call i8* @UI_GetSpecialArenaInfo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 -1, i32* %1, align 4
  br label %51

47:                                               ; preds = %42
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @Info_ValueForKey(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 @atoi(i32 %49)
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %47, %46, %36, %20
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i8* @UI_GetSpecialArenaInfo(i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @UI_GetBestScore(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
