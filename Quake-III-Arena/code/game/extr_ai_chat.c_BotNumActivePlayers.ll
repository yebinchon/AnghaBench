; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_chat.c_BotNumActivePlayers.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_chat.c_BotNumActivePlayers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@BotNumActivePlayers.maxclients = internal global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@MAX_CLIENTS = common dso_local global i32 0, align 4
@CS_PLAYERS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@TEAM_SPECTATOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotNumActivePlayers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @MAX_INFO_STRING, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = load i32, i32* @BotNumActivePlayers.maxclients, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  %12 = call i32 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* @BotNumActivePlayers.maxclients, align 4
  br label %13

13:                                               ; preds = %11, %0
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %47, %13
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @BotNumActivePlayers.maxclients, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @MAX_CLIENTS, align 4
  %21 = icmp slt i32 %19, %20
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %50

24:                                               ; preds = %22
  %25 = load i64, i64* @CS_PLAYERS, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = trunc i64 %6 to i32
  %30 = call i32 @trap_GetConfigstring(i64 %28, i8* %8, i32 %29)
  %31 = call i32 @strlen(i8* %8)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = call i8* @Info_ValueForKey(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 @strlen(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %24
  br label %47

38:                                               ; preds = %33
  %39 = call i8* @Info_ValueForKey(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i64 @atoi(i8* %39)
  %41 = load i64, i64* @TEAM_SPECTATOR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %43, %37
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %14

50:                                               ; preds = %22
  %51 = load i32, i32* %2, align 4
  %52 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %52)
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Cvar_VariableIntegerValue(i8*) #2

declare dso_local i32 @trap_GetConfigstring(i64, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i64 @atoi(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
