; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DrawOpponent.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DrawOpponent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@UI_DrawOpponent.info2 = internal global i32 0, align 4
@MAX_QPATH = common dso_local global i32 0, align 4
@updateOpponentModel = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"ui_opponentModel\00", align 1
@YAW = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LEGS_IDLE = common dso_local global i32 0, align 4
@TORSO_STAND = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@WP_MACHINEGUN = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@uiInfo = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @UI_DrawOpponent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DrawOpponent(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
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
  %13 = load i32, i32* @MAX_QPATH, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %16 = load i64, i64* @updateOpponentModel, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %1
  %19 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @strcpy(i8* %12, i32 %19)
  %21 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @strcpy(i8* %15, i32 %21)
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %23, align 16
  %24 = call i32 @memset(i32* @UI_DrawOpponent.info2, i32 0, i32 4)
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* @YAW, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 170, i32* %27, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i64, i64* @PITCH, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* @ROLL, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 0, i32* %33, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @VectorClear(i32* %34)
  %36 = call i32 @UI_PlayerInfo_SetModel(i32* @UI_DrawOpponent.info2, i8* %12, i8* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @LEGS_IDLE, align 4
  %38 = load i32, i32* @TORSO_STAND, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @vec3_origin, align 4
  %41 = load i32, i32* @WP_MACHINEGUN, align 4
  %42 = load i64, i64* @qfalse, align 8
  %43 = call i32 @UI_PlayerInfo_SetInfo(i32* @UI_DrawOpponent.info2, i32 %37, i32 %38, i32* %39, i32 %40, i32 %41, i64 %42)
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %45 = call i32 @UI_RegisterClientModelname(i32* @UI_DrawOpponent.info2, i8* %12, i8* %15, i8* %44)
  %46 = load i64, i64* @qfalse, align 8
  store i64 %46, i64* @updateOpponentModel, align 8
  br label %47

47:                                               ; preds = %18, %1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @uiInfo, i32 0, i32 0, i32 0), align 4
  %61 = sdiv i32 %60, 2
  %62 = call i32 @UI_DrawPlayer(i32 %50, i32 %53, i32 %56, i32 %59, i32* @UI_DrawOpponent.info2, i32 %61)
  %63 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %63)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @UI_Cvar_VariableString(i8*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @VectorClear(i32*) #2

declare dso_local i32 @UI_PlayerInfo_SetModel(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @UI_PlayerInfo_SetInfo(i32*, i32, i32, i32*, i32, i32, i64) #2

declare dso_local i32 @UI_RegisterClientModelname(i32*, i8*, i8*, i8*) #2

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
