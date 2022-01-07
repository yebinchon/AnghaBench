; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_main.c_BotInterbreeding.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_main.c_BotInterbreeding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32 }

@bot_interbreedchar = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@gametype = common dso_local global i64 0, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"g_gametype\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@MAX_CLIENTS = common dso_local global i32 0, align 4
@botstates = common dso_local global %struct.TYPE_6__** null, align 8
@qfalse = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"bot_reloadcharacters\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@bot_interbreedbots = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@EXEC_INSERT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"addbot %s 4 free %i %s%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"bot_interbreedchar\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@qtrue = common dso_local global i32 0, align 4
@bot_interbreed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotInterbreeding() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @trap_Cvar_Update(%struct.TYPE_5__* @bot_interbreedchar)
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bot_interbreedchar, i32 0, i32 0), align 4
  %4 = call i32 @strlen(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %73

7:                                                ; preds = %0
  %8 = load i64, i64* @gametype, align 8
  %9 = load i64, i64* @GT_TOURNAMENT, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i64, i64* @GT_TOURNAMENT, align 8
  %13 = call i8* (i8*, i64, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %12)
  %14 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = call i32 (...) @ExitLevel()
  br label %73

16:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %48, %16
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @MAX_CLIENTS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @botstates, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %22, i64 %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %21
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @botstates, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %28
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @botstates, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 %40
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @qfalse, align 4
  %46 = call i32 @BotAIShutdownClient(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %37, %28, %21
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %17

51:                                               ; preds = %17
  %52 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %53

53:                                               ; preds = %67, %51
  %54 = load i32, i32* %1, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bot_interbreedbots, i32 0, i32 0), align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load i32, i32* @EXEC_INSERT, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bot_interbreedchar, i32 0, i32 0), align 4
  %60 = sext i32 %59 to i64
  %61 = load i32, i32* %1, align 4
  %62 = mul nsw i32 %61, 50
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bot_interbreedchar, i32 0, i32 0), align 4
  %64 = load i32, i32* %1, align 4
  %65 = call i8* (i8*, i64, ...) @va(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %60, i32 %62, i32 %63, i32 %64)
  %66 = call i32 @trap_SendConsoleCommand(i32 %58, i8* %65)
  br label %67

67:                                               ; preds = %57
  %68 = load i32, i32* %1, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %1, align 4
  br label %53

70:                                               ; preds = %53
  %71 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %72 = load i32, i32* @qtrue, align 4
  store i32 %72, i32* @bot_interbreed, align 4
  br label %73

73:                                               ; preds = %70, %11, %6
  ret void
}

declare dso_local i32 @trap_Cvar_Update(%struct.TYPE_5__*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

declare dso_local i8* @va(i8*, i64, ...) #1

declare dso_local i32 @ExitLevel(...) #1

declare dso_local i32 @BotAIShutdownClient(i32, i32) #1

declare dso_local i32 @trap_BotLibVarSet(i8*, i8*) #1

declare dso_local i32 @trap_SendConsoleCommand(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
