; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_sppostgame.c_UI_SPPostgameMenu_MenuDraw.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_sppostgame.c_UI_SPPostgameMenu_MenuDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__, i64, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64 }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@CS_SYSTEMINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sv_serverid\00", align 1
@postgameMenuInfo = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@PROP_HEIGHT = common dso_local global i32 0, align 4
@UI_CENTER = common dso_local global i32 0, align 4
@color_white = common dso_local global i32 0, align 4
@uis = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@CHAN_ANNOUNCER = common dso_local global i32 0, align 4
@AWARD_PRESENTATION_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"nextmap\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"disconnect; cinematic demoEnd.RoQ\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"disconnect; cinematic end.RoQ\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ui_spSelection\00", align 1
@ARENAS_PER_TIER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"levelselect\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"disconnect; cinematic tier%i.RoQ\0A\00", align 1
@QMF_INACTIVE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"ui_spScoreboard\00", align 1
@SMALLCHAR_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_SPPostgameMenu_MenuDraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_SPPostgameMenu_MenuDraw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_INFO_STRING, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i32, i32* @CS_SYSTEMINFO, align 4
  %12 = trunc i64 %8 to i32
  %13 = call i32 @trap_GetConfigString(i32 %11, i8* %10, i32 %12)
  %14 = call i32 @Info_ValueForKey(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @atoi(i32 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 0), align 8
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = call i32 (...) @UI_PopMenu()
  store i32 1, i32* %6, align 4
  br label %188

21:                                               ; preds = %0
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* @PROP_HEIGHT, align 4
  %26 = sub nsw i32 416, %25
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 13), align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UI_CENTER, align 4
  %31 = load i32, i32* @color_white, align 4
  %32 = call i32 @UI_DrawProportionalString(i32 510, i32 %26, i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %21
  %34 = load i32, i32* @PROP_HEIGHT, align 4
  %35 = sub nsw i32 416, %34
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 13), align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @UI_CENTER, align 4
  %40 = load i32, i32* @color_white, align 4
  %41 = call i32 @UI_DrawProportionalString(i32 130, i32 %35, i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @PROP_HEIGHT, align 4
  %43 = mul nsw i32 2, %42
  %44 = sub nsw i32 416, %43
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 13), align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @UI_CENTER, align 4
  %49 = load i32, i32* @color_white, align 4
  %50 = call i32 @UI_DrawProportionalString(i32 320, i32 %44, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 2), align 8
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %72

53:                                               ; preds = %33
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @uis, i32 0, i32 0), align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 3), align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* %1, align 4
  %58 = icmp sge i32 %57, 1000
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 12), align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 12), align 8
  %64 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %65 = call i32 @trap_S_StartLocalSound(i64 %63, i32 %64)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 12), align 8
  br label %66

66:                                               ; preds = %62, %59, %53
  %67 = load i32, i32* %1, align 4
  %68 = icmp slt i32 %67, 5000
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 1, i32* %6, align 4
  br label %188

70:                                               ; preds = %66
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 2), align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @uis, i32 0, i32 0), align 8
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 3), align 4
  br label %72

72:                                               ; preds = %70, %33
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 2), align 8
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @uis, i32 0, i32 0), align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 3), align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %1, align 4
  %79 = load i32, i32* %1, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 4), align 8
  %81 = load i32, i32* @AWARD_PRESENTATION_TIME, align 4
  %82 = mul nsw i32 %80, %81
  %83 = icmp sge i32 %79, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %75
  %85 = load i32, i32* %1, align 4
  %86 = icmp slt i32 %85, 5000
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 1, i32* %6, align 4
  br label %188

88:                                               ; preds = %84
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 2), align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @uis, i32 0, i32 0), align 8
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 3), align 4
  br label %93

90:                                               ; preds = %75
  %91 = load i32, i32* %1, align 4
  %92 = call i32 @UI_SPPostgameMenu_DrawAwardsPresentation(i32 %91)
  br label %93

93:                                               ; preds = %90, %88
  br label %94

94:                                               ; preds = %93, %72
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 2), align 8
  %96 = icmp eq i32 %95, 3
  br i1 %96, label %97, label %155

97:                                               ; preds = %94
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @uis, i32 0, i32 1), align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 5), align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = call i64 @UI_ShowTierVideo(i32 8)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32, i32* @EXEC_APPEND, align 4
  %109 = call i32 @trap_Cmd_ExecuteText(i32 %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %188

110:                                              ; preds = %103, %100
  br label %139

111:                                              ; preds = %97
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 5), align 4
  %113 = icmp sgt i32 %112, -1
  br i1 %113, label %114, label %138

114:                                              ; preds = %111
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 5), align 4
  %116 = add nsw i32 %115, 1
  %117 = call i64 @UI_ShowTierVideo(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %114
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 5), align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 6), align 8
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* @EXEC_APPEND, align 4
  %126 = call i32 @trap_Cmd_ExecuteText(i32 %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %188

127:                                              ; preds = %119
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 5), align 4
  %129 = load i32, i32* @ARENAS_PER_TIER, align 4
  %130 = mul nsw i32 %128, %129
  %131 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  %132 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %133 = load i32, i32* @EXEC_APPEND, align 4
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 5), align 4
  %135 = add nsw i32 %134, 1
  %136 = call i8* @va(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %135)
  %137 = call i32 @trap_Cmd_ExecuteText(i32 %133, i8* %136)
  store i32 1, i32* %6, align 4
  br label %188

138:                                              ; preds = %114, %111
  br label %139

139:                                              ; preds = %138, %110
  %140 = load i32, i32* @QMF_INACTIVE, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 11, i32 0, i32 0), align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 11, i32 0, i32 0), align 4
  %144 = load i32, i32* @QMF_INACTIVE, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 10, i32 0, i32 0), align 8
  %147 = and i32 %146, %145
  store i32 %147, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 10, i32 0, i32 0), align 8
  %148 = load i32, i32* @QMF_INACTIVE, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 9, i32 0, i32 0), align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 9, i32 0, i32 0), align 4
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 4), align 8
  %153 = call i32 @UI_SPPostgameMenu_DrawAwardsMedals(i32 %152)
  %154 = call i32 @Menu_Draw(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 8))
  br label %155

155:                                              ; preds = %139, %94
  %156 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  store i32 1, i32* %6, align 4
  br label %188

159:                                              ; preds = %155
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @uis, i32 0, i32 0), align 8
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 7), align 4
  %162 = sub nsw i32 %160, %161
  store i32 %162, i32* %1, align 4
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 1), align 4
  %164 = icmp sle i32 %163, 3
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  store i32 0, i32* %3, align 4
  br label %172

166:                                              ; preds = %159
  %167 = load i32, i32* %1, align 4
  %168 = sdiv i32 %167, 1500
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @postgameMenuInfo, i32 0, i32 1), align 4
  %170 = add nsw i32 %169, 2
  %171 = srem i32 %168, %170
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %166, %165
  %173 = load i32, i32* %3, align 4
  %174 = call i32 @UI_SPPostgameMenu_MenuDrawScoreLine(i32 %173, i64 0)
  %175 = load i32, i32* %3, align 4
  %176 = add nsw i32 %175, 1
  %177 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %178 = add nsw i32 0, %177
  %179 = sext i32 %178 to i64
  %180 = call i32 @UI_SPPostgameMenu_MenuDrawScoreLine(i32 %176, i64 %179)
  %181 = load i32, i32* %3, align 4
  %182 = add nsw i32 %181, 2
  %183 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %184 = mul nsw i32 2, %183
  %185 = add nsw i32 0, %184
  %186 = sext i32 %185 to i64
  %187 = call i32 @UI_SPPostgameMenu_MenuDrawScoreLine(i32 %182, i64 %186)
  store i32 0, i32* %6, align 4
  br label %188

188:                                              ; preds = %172, %158, %127, %123, %106, %87, %69, %19
  %189 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %189)
  %190 = load i32, i32* %6, align 4
  switch i32 %190, label %192 [
    i32 0, label %191
    i32 1, label %191
  ]

191:                                              ; preds = %188, %188
  ret void

192:                                              ; preds = %188
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_GetConfigString(i32, i8*, i32) #2

declare dso_local i32 @atoi(i32) #2

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #2

declare dso_local i32 @UI_PopMenu(...) #2

declare dso_local i32 @UI_DrawProportionalString(i32, i32, i32, i32, i32) #2

declare dso_local i32 @trap_S_StartLocalSound(i64, i32) #2

declare dso_local i32 @UI_SPPostgameMenu_DrawAwardsPresentation(i32) #2

declare dso_local i64 @UI_ShowTierVideo(i32) #2

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #2

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i8*) #2

declare dso_local i32 @trap_Cvar_SetValue(i8*, i32) #2

declare dso_local i8* @va(i8*, i32) #2

declare dso_local i32 @UI_SPPostgameMenu_DrawAwardsMedals(i32) #2

declare dso_local i32 @Menu_Draw(i32*) #2

declare dso_local i32 @trap_Cvar_VariableValue(i8*) #2

declare dso_local i32 @UI_SPPostgameMenu_MenuDrawScoreLine(i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
