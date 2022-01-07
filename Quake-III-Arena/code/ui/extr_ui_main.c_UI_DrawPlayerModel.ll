; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DrawPlayerModel.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DrawPlayerModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@UI_DrawPlayerModel.info = internal global i32 0, align 4
@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ui_Q3Model\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"headmodel\00", align 1
@q3Model = common dso_local global i8* null, align 8
@qtrue = common dso_local global i8* null, align 8
@updateModel = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"ui_teamName\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"team_model\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"team_headmodel\00", align 1
@qfalse = common dso_local global i8* null, align 8
@YAW = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@LEGS_IDLE = common dso_local global i32 0, align 4
@TORSO_STAND = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@WP_MACHINEGUN = common dso_local global i32 0, align 4
@uiInfo = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @UI_DrawPlayerModel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DrawPlayerModel(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %9 = load i32, i32* @MAX_QPATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @strcpy(i8* %12, i32 %16)
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %19 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @strcpy(i8* %18, i32 %19)
  %21 = load i8*, i8** @q3Model, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i8*, i8** @qtrue, align 8
  store i8* %24, i8** @q3Model, align 8
  %25 = load i8*, i8** @qtrue, align 8
  store i8* %25, i8** @updateModel, align 8
  br label %26

26:                                               ; preds = %23, %15
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %27, align 16
  br label %43

28:                                               ; preds = %1
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %30 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 @strcpy(i8* %29, i32 %30)
  %32 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %33 = call i32 @strcpy(i8* %12, i32 %32)
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %35 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %36 = call i32 @strcpy(i8* %34, i32 %35)
  %37 = load i8*, i8** @q3Model, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i8*, i8** @qfalse, align 8
  store i8* %40, i8** @q3Model, align 8
  %41 = load i8*, i8** @qtrue, align 8
  store i8* %41, i8** @updateModel, align 8
  br label %42

42:                                               ; preds = %39, %28
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i8*, i8** @updateModel, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %70

46:                                               ; preds = %43
  %47 = call i32 @memset(i32* @UI_DrawPlayerModel.info, i32 0, i32 4)
  %48 = load i32*, i32** %7, align 8
  %49 = load i64, i64* @YAW, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 170, i32* %50, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i64, i64* @PITCH, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 0, i32* %53, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i64, i64* @ROLL, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 0, i32* %56, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @VectorClear(i32* %57)
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %61 = call i32 @UI_PlayerInfo_SetModel(i32* @UI_DrawPlayerModel.info, i8* %12, i8* %59, i8* %60)
  %62 = load i32, i32* @LEGS_IDLE, align 4
  %63 = load i32, i32* @TORSO_STAND, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @vec3_origin, align 4
  %66 = load i32, i32* @WP_MACHINEGUN, align 4
  %67 = load i8*, i8** @qfalse, align 8
  %68 = call i32 @UI_PlayerInfo_SetInfo(i32* @UI_DrawPlayerModel.info, i32 %62, i32 %63, i32* %64, i32 %65, i32 %66, i8* %67)
  %69 = load i8*, i8** @qfalse, align 8
  store i8* %69, i8** @updateModel, align 8
  br label %70

70:                                               ; preds = %46, %43
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @uiInfo, i32 0, i32 0, i32 0), align 4
  %84 = sdiv i32 %83, 2
  %85 = call i32 @UI_DrawPlayer(i32 %73, i32 %76, i32 %79, i32 %82, i32* @UI_DrawPlayerModel.info, i32 %84)
  %86 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %86)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @trap_Cvar_VariableValue(i8*) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @UI_Cvar_VariableString(i8*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @VectorClear(i32*) #2

declare dso_local i32 @UI_PlayerInfo_SetModel(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @UI_PlayerInfo_SetInfo(i32*, i32, i32, i32*, i32, i32, i8*) #2

declare dso_local i32 @UI_DrawPlayer(i32, i32, i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
