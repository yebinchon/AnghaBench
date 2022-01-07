; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_bot.c_G_SpawnBots.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_bot.c_G_SpawnBots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INFO_VALUE = common dso_local global i32 0, align 4
@podium1 = common dso_local global i32* null, align 8
@podium2 = common dso_local global i32* null, align 8
@podium3 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"g_spSkill\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@EXEC_INSERT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"addbot %s %f free %i\0A\00", align 1
@BOT_BEGIN_DELAY_INCREMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @G_SpawnBots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @G_SpawnBots(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @MAX_INFO_VALUE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  store i32* null, i32** @podium1, align 8
  store i32* null, i32** @podium2, align 8
  store i32* null, i32** @podium3, align 8
  %15 = call float @trap_Cvar_VariableValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store float %15, float* %7, align 4
  %16 = load float, float* %7, align 4
  %17 = fcmp olt float %16, 1.000000e+00
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store float 1.000000e+00, float* %7, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load float, float* %7, align 4
  %22 = fcmp ogt float %21, 5.000000e+00
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store float 5.000000e+00, float* %7, align 4
  br label %25

25:                                               ; preds = %23, %20
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i8*, i8** %3, align 8
  %28 = trunc i64 %12 to i32
  %29 = call i32 @Q_strncpyz(i8* %14, i8* %27, i32 %28)
  %30 = getelementptr inbounds i8, i8* %14, i64 0
  store i8* %30, i8** %6, align 8
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %80, %26
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %92

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %49, %36
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 32
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  br label %37

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  br label %92

56:                                               ; preds = %52
  %57 = load i8*, i8** %6, align 8
  store i8* %57, i8** %5, align 8
  br label %58

58:                                               ; preds = %70, %56
  %59 = load i8*, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i8*, i8** %6, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 32
  br label %68

68:                                               ; preds = %63, %58
  %69 = phi i1 [ false, %58 ], [ %67, %63 ]
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %6, align 8
  br label %58

73:                                               ; preds = %68
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %6, align 8
  store i8 0, i8* %78, align 1
  br label %80

80:                                               ; preds = %77, %73
  %81 = load i32, i32* @EXEC_INSERT, align 4
  %82 = load i8*, i8** %5, align 8
  %83 = load float, float* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @va(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %82, float %83, i32 %84)
  %86 = call i32 @trap_SendConsoleCommand(i32 %81, i32 %85)
  %87 = load i64, i64* @BOT_BEGIN_DELAY_INCREMENT, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %8, align 4
  br label %32

92:                                               ; preds = %55, %32
  %93 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %93)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local float @trap_Cvar_VariableValue(i8*) #2

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @trap_SendConsoleCommand(i32, i32) #2

declare dso_local i32 @va(i8*, i8*, float, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
