; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_chat.c_BotRandomOpponentName.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_chat.c_BotRandomOpponentName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@MAX_CLIENTS = common dso_local global i32 0, align 4
@BotRandomOpponentName.maxclients = internal global i32 0, align 4
@BotRandomOpponentName.name = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@CS_PLAYERS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@TEAM_SPECTATOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @BotRandomOpponentName(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %11 = load i32, i32* @MAX_INFO_STRING, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @MAX_CLIENTS, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %18 = load i32, i32* @BotRandomOpponentName.maxclients, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = call i32 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* @BotRandomOpponentName.maxclients, align 4
  br label %22

22:                                               ; preds = %20, %1
  store i32 0, i32* %9, align 4
  %23 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 0, i32* %23, align 16
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %74, %22
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @BotRandomOpponentName.maxclients, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @MAX_CLIENTS, align 4
  %31 = icmp slt i32 %29, %30
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %77

34:                                               ; preds = %32
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %74

41:                                               ; preds = %34
  %42 = load i64, i64* @CS_PLAYERS, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = trunc i64 %12 to i32
  %47 = call i32 @trap_GetConfigstring(i64 %45, i8* %14, i32 %46)
  %48 = call i32 @strlen(i8* %14)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = call i8* @Info_ValueForKey(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %52 = call i32 @strlen(i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50, %41
  br label %74

55:                                               ; preds = %50
  %56 = call i8* @Info_ValueForKey(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i64 @atoi(i8* %56)
  %58 = load i64, i64* @TEAM_SPECTATOR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %74

61:                                               ; preds = %55
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @BotSameTeam(%struct.TYPE_4__* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %74

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %17, i64 %70
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %67, %66, %60, %54, %40
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %24

77:                                               ; preds = %32
  %78 = call i32 (...) @random()
  %79 = load i32, i32* %9, align 4
  %80 = mul nsw i32 %78, %79
  store i32 %80, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %97, %77
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %17, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @EasyClientName(i32 %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @BotRandomOpponentName.name, i64 0, i64 0), i32 32)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @BotRandomOpponentName.name, i64 0, i64 0), i8** %2, align 8
  store i32 1, i32* %10, align 4
  br label %104

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %81

100:                                              ; preds = %81
  %101 = getelementptr inbounds i32, i32* %17, i64 0
  %102 = load i32, i32* %101, align 16
  %103 = call i32 @EasyClientName(i32 %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @BotRandomOpponentName.name, i64 0, i64 0), i32 32)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @BotRandomOpponentName.name, i64 0, i64 0), i8** %2, align 8
  store i32 1, i32* %10, align 4
  br label %104

104:                                              ; preds = %100, %90
  %105 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i8*, i8** %2, align 8
  ret i8* %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Cvar_VariableIntegerValue(i8*) #2

declare dso_local i32 @trap_GetConfigstring(i64, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i64 @atoi(i8*) #2

declare dso_local i64 @BotSameTeam(%struct.TYPE_4__*, i32) #2

declare dso_local i32 @random(...) #2

declare dso_local i32 @EasyClientName(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
