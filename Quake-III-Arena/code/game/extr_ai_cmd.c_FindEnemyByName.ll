; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_cmd.c_FindEnemyByName.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_cmd.c_FindEnemyByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@FindEnemyByName.maxclients = internal global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@MAX_CLIENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindEnemyByName(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @MAX_INFO_STRING, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @FindEnemyByName.maxclients, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* @FindEnemyByName.maxclients, align 4
  br label %18

18:                                               ; preds = %16, %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %45, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @FindEnemyByName.maxclients, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MAX_CLIENTS, align 4
  %26 = icmp slt i32 %24, %25
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ false, %19 ], [ %26, %23 ]
  br i1 %28, label %29, label %48

29:                                               ; preds = %27
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @BotSameTeam(i32* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %45

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = trunc i64 %11 to i32
  %38 = call i32 @ClientName(i32 %36, i8* %13, i32 %37)
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @Q_stricmp(i8* %13, i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %79

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %19

48:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %75, %48
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @FindEnemyByName.maxclients, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @MAX_CLIENTS, align 4
  %56 = icmp slt i32 %54, %55
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ false, %49 ], [ %56, %53 ]
  br i1 %58, label %59, label %78

59:                                               ; preds = %57
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @BotSameTeam(i32* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %75

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  %67 = trunc i64 %11 to i32
  %68 = call i32 @ClientName(i32 %66, i8* %13, i32 %67)
  %69 = load i8*, i8** %5, align 8
  %70 = call i64 @stristr(i8* %13, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %79

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %64
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %49

78:                                               ; preds = %57
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %79

79:                                               ; preds = %78, %72, %42
  %80 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Cvar_VariableIntegerValue(i8*) #2

declare dso_local i64 @BotSameTeam(i32*, i32) #2

declare dso_local i32 @ClientName(i32, i8*, i32) #2

declare dso_local i32 @Q_stricmp(i8*, i8*) #2

declare dso_local i64 @stristr(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
