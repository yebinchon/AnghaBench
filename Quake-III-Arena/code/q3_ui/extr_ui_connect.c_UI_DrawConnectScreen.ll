; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_connect.c_UI_DrawConnectScreen.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_connect.c_UI_DrawConnectScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_10__ = type { i8*, i32, i32, i64, i32 }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { i8*, i8*, i32, i8*, i32 }

@MAX_INFO_VALUE = common dso_local global i32 0, align 4
@color_white = common dso_local global i32 0, align 4
@SCREEN_WIDTH = common dso_local global i32 0, align 4
@SCREEN_HEIGHT = common dso_local global i32 0, align 4
@uis = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@CS_SERVERINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Loading %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@UI_BIGFONT = common dso_local global i32 0, align 4
@UI_CENTER = common dso_local global i32 0, align 4
@UI_DROPSHADOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Connecting to %s\00", align 1
@UI_SMALLFONT = common dso_local global i32 0, align 4
@menu_text_color = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"motd\00", align 1
@lastConnState = common dso_local global i32 0, align 4
@lastLoadingText = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"Awaiting challenge...%i\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Awaiting connection...%i\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"cl_downloadName\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Awaiting gamestate...\00", align 1
@MTYPE_FIELD = common dso_local global i32 0, align 4
@passwordField = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@passwordNeeded = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@s_customize_player_action = common dso_local global i32 0, align 4
@s_ingame_menu = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_DrawConnectScreen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @MAX_INFO_VALUE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = call i32 (...) @Menu_Cache()
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @color_white, align 4
  %19 = call i32 @UI_SetColor(i32 %18)
  %20 = load i32, i32* @SCREEN_WIDTH, align 4
  %21 = load i32, i32* @SCREEN_HEIGHT, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @uis, i32 0, i32 0), align 4
  %23 = call i32 @UI_DrawHandlePic(i32 0, i32 0, i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %1
  %25 = call i32 @trap_GetClientState(%struct.TYPE_11__* %4)
  %26 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %26, align 16
  %27 = load i32, i32* @CS_SERVERINFO, align 4
  %28 = trunc i64 %11 to i32
  %29 = call i64 @trap_GetConfigString(i32 %27, i8* %13, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = call i8* @Info_ValueForKey(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i8* @va(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @UI_BIGFONT, align 4
  %35 = load i32, i32* @UI_CENTER, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @UI_DROPSHADOW, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @color_white, align 4
  %40 = call i32 @UI_DrawProportionalString(i32 320, i32 16, i8* %33, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %31, %24
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @va(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @UI_CENTER, align 4
  %46 = load i32, i32* @UI_SMALLFONT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @UI_DROPSHADOW, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @menu_text_color, align 4
  %51 = call i32 @UI_DrawProportionalString(i32 320, i32 64, i8* %44, i32 %49, i32 %50)
  %52 = load i32, i32* @SCREEN_WIDTH, align 4
  %53 = sdiv i32 %52, 2
  %54 = load i32, i32* @SCREEN_HEIGHT, align 4
  %55 = sub nsw i32 %54, 32
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* @Info_ValueForKey(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @UI_CENTER, align 4
  %60 = load i32, i32* @UI_SMALLFONT, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @UI_DROPSHADOW, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @menu_text_color, align 4
  %65 = call i32 @UI_DrawProportionalString(i32 %53, i32 %55, i8* %58, i32 %63, i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %67, 131
  br i1 %68, label %69, label %79

69:                                               ; preds = %41
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @UI_CENTER, align 4
  %73 = load i32, i32* @UI_SMALLFONT, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @UI_DROPSHADOW, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @menu_text_color, align 4
  %78 = call i32 @UI_DrawProportionalString_AutoWrapped(i32 320, i32 192, i32 630, i32 20, i32 %71, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %69, %41
  %80 = load i32, i32* @lastConnState, align 4
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i8*, i8** @lastLoadingText, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  store i8 0, i8* %86, align 1
  br label %87

87:                                               ; preds = %84, %79
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* @lastConnState, align 4
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %118 [
    i32 130, label %92
    i32 132, label %96
    i32 131, label %100
    i32 129, label %116
    i32 128, label %117
  ]

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @va(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %94)
  store i8* %95, i8** %3, align 8
  br label %119

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @va(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %98)
  store i8* %99, i8** %3, align 8
  br label %119

100:                                              ; preds = %87
  %101 = load i32, i32* @MAX_INFO_VALUE, align 4
  %102 = zext i32 %101 to i64
  %103 = call i8* @llvm.stacksave()
  store i8* %103, i8** %7, align 8
  %104 = alloca i8, i64 %102, align 16
  store i64 %102, i64* %8, align 8
  %105 = trunc i64 %102 to i32
  %106 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %104, i32 %105)
  %107 = load i8, i8* %104, align 16
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = call i32 @UI_DisplayDownloadInfo(i8* %104)
  store i32 1, i32* %9, align 4
  br label %112

111:                                              ; preds = %100
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %111, %109
  %113 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %9, align 4
  switch i32 %114, label %128 [
    i32 0, label %115
  ]

115:                                              ; preds = %112
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %119

116:                                              ; preds = %87
  store i32 1, i32* %9, align 4
  br label %128

117:                                              ; preds = %87
  store i32 1, i32* %9, align 4
  br label %128

118:                                              ; preds = %87
  store i32 1, i32* %9, align 4
  br label %128

119:                                              ; preds = %115, %96, %92
  %120 = load i8*, i8** %3, align 8
  %121 = load i32, i32* @UI_CENTER, align 4
  %122 = load i32, i32* @UI_SMALLFONT, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @UI_DROPSHADOW, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @color_white, align 4
  %127 = call i32 @UI_DrawProportionalString(i32 320, i32 128, i8* %120, i32 %125, i32 %126)
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %119, %118, %117, %116, %112
  %129 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %9, align 4
  switch i32 %130, label %132 [
    i32 0, label %131
    i32 1, label %131
  ]

131:                                              ; preds = %128, %128
  ret void

132:                                              ; preds = %128
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Menu_Cache(...) #2

declare dso_local i32 @UI_SetColor(i32) #2

declare dso_local i32 @UI_DrawHandlePic(i32, i32, i32, i32, i32) #2

declare dso_local i32 @trap_GetClientState(%struct.TYPE_11__*) #2

declare dso_local i64 @trap_GetConfigString(i32, i8*, i32) #2

declare dso_local i32 @UI_DrawProportionalString(i32, i32, i8*, i32, i32) #2

declare dso_local i8* @va(i8*, i8*) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i32 @UI_DrawProportionalString_AutoWrapped(i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #2

declare dso_local i32 @UI_DisplayDownloadInfo(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
