; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_gameinfo.c_UI_TierCompleted.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_gameinfo.c_UI_TierCompleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARENAS_PER_TIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"training\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"final\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_TierCompleted(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ARENAS_PER_TIER, align 4
  %12 = sdiv i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ARENAS_PER_TIER, align 4
  %15 = mul nsw i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (...) @UI_GetNumSPTiers()
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = call i8* @UI_GetSpecialArenaInfo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %9, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @Info_ValueForKey(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @atoi(i32 %23)
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %61

27:                                               ; preds = %19
  %28 = call i8* @UI_GetSpecialArenaInfo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @Info_ValueForKey(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 @atoi(i32 %34)
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %27
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %61

40:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %61

41:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %53, %41
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @ARENAS_PER_TIER, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @UI_GetBestScore(i32 %47, i32* %7, i32* %8)
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 -1, i32* %2, align 4
  br label %61

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %42

58:                                               ; preds = %42
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %51, %40, %37, %26
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @UI_GetNumSPTiers(...) #1

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
