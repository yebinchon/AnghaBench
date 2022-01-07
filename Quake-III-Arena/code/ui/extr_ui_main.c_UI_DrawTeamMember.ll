; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DrawTeamMember.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DrawTeamMember.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"ui_blueteam%i\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ui_redteam%i\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Closed\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Human\00", align 1
@ui_actualNetGameType = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@uiInfo = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float, i32, i64, i32, i32)* @UI_DrawTeamMember to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DrawTeamMember(%struct.TYPE_7__* %0, float %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store float %1, float* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i64, i64* %10, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @va(i8* %18, i32 %19)
  %21 = call i32 @trap_Cvar_VariableValue(i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  br label %57

25:                                               ; preds = %6
  %26 = load i32, i32* %13, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %56

29:                                               ; preds = %25
  %30 = load i32, i32* %13, align 4
  %31 = sub nsw i32 %30, 2
  store i32 %31, i32* %13, align 4
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_actualNetGameType, i32 0, i32 0), align 8
  %33 = load i64, i64* @GT_TEAM, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0), align 8
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 1), align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %14, align 8
  br label %55

47:                                               ; preds = %29
  %48 = load i32, i32* %13, align 4
  %49 = call i32 (...) @UI_GetNumBots()
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i32, i32* %13, align 4
  %54 = call i8* @UI_GetBotNameByNumber(i32 %53)
  store i8* %54, i8** %14, align 8
  br label %55

55:                                               ; preds = %52, %40
  br label %56

56:                                               ; preds = %55, %28
  br label %57

57:                                               ; preds = %56, %24
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load float, float* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i8*, i8** %14, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @Text_Paint(i32 %60, i32 %63, float %64, i32 %65, i8* %66, i32 0, i32 0, i32 %67)
  ret void
}

declare dso_local i32 @trap_Cvar_VariableValue(i32) #1

declare dso_local i32 @va(i8*, i32) #1

declare dso_local i32 @UI_GetNumBots(...) #1

declare dso_local i8* @UI_GetBotNameByNumber(i32) #1

declare dso_local i32 @Text_Paint(i32, i32, float, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
