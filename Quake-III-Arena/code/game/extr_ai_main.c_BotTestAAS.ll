; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_main.c_BotTestAAS.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_main.c_BotTestAAS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@bot_testsolid = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@bot_testclusters = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"\0Demtpy area\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\0D^1SOLID area\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"\0D^1Solid!                              \00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"\0Darea %d, cluster %d       \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotTestAAS(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 @trap_Cvar_Update(%struct.TYPE_7__* @bot_testsolid)
  %6 = call i32 @trap_Cvar_Update(%struct.TYPE_7__* @bot_testclusters)
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bot_testsolid, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = call i32 (...) @trap_AAS_Initialized()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  br label %50

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @BotPointAreaNum(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @PRT_MESSAGE, align 4
  %20 = call i32 (i32, i8*, ...) @BotAI_Print(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @PRT_MESSAGE, align 4
  %23 = call i32 (i32, i8*, ...) @BotAI_Print(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18
  br label %50

25:                                               ; preds = %1
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bot_testclusters, i32 0, i32 0), align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = call i32 (...) @trap_AAS_Initialized()
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %50

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @BotPointAreaNum(i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @PRT_MESSAGE, align 4
  %39 = call i32 (i32, i8*, ...) @BotAI_Print(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %48

40:                                               ; preds = %32
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @trap_AAS_AreaInfo(i32 %41, %struct.TYPE_6__* %4)
  %43 = load i32, i32* @PRT_MESSAGE, align 4
  %44 = load i32, i32* %3, align 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @BotAI_Print(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %40, %37
  br label %49

49:                                               ; preds = %48, %25
  br label %50

50:                                               ; preds = %12, %31, %49, %24
  ret void
}

declare dso_local i32 @trap_Cvar_Update(%struct.TYPE_7__*) #1

declare dso_local i32 @trap_AAS_Initialized(...) #1

declare dso_local i32 @BotPointAreaNum(i32) #1

declare dso_local i32 @BotAI_Print(i32, i8*, ...) #1

declare dso_local i32 @trap_AAS_AreaInfo(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
