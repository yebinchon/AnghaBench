; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_gameinfo.c_UI_GetBestScore.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_gameinfo.c_UI_GetBestScore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INFO_VALUE = common dso_local global i32 0, align 4
@ui_numArenas = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"g_spScores%i\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"l%i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_GetBestScore(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i32, i32* @MAX_INFO_VALUE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %3
  store i32 1, i32* %14, align 4
  br label %73

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @ui_numArenas, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %25
  store i32 1, i32* %14, align 4
  br label %73

33:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %65, %33
  %35 = load i32, i32* %7, align 4
  %36 = icmp sle i32 %35, 5
  br i1 %36, label %37, label %68

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @va(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @MAX_INFO_VALUE, align 4
  %41 = call i32 @trap_Cvar_VariableStringBuffer(i32 %39, i8* %18, i32 %40)
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @Com_sprintf(i8* %42, i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %46 = call i32 @Info_ValueForKey(i8* %18, i8* %45)
  %47 = call i32 @atoi(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %8, align 4
  %52 = icmp sgt i32 %51, 8
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %37
  br label %65

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %61, %57
  br label %65

65:                                               ; preds = %64, %53
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %34

68:                                               ; preds = %34
  %69 = load i32, i32* %9, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %6, align 8
  store i32 %71, i32* %72, align 4
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %68, %32, %24
  %74 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %14, align 4
  switch i32 %75, label %77 [
    i32 0, label %76
    i32 1, label %76
  ]

76:                                               ; preds = %73, %73
  ret void

77:                                               ; preds = %73
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i32, i8*, i32) #2

declare dso_local i32 @va(i8*, i32) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @atoi(i32) #2

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
