; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_OwnerDrawWidth.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_OwnerDrawWidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i64, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"handicap\00", align 1
@handicapValues = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"ui_teamName\00", align 1
@uiInfo = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@ui_gameType = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"g_spSkill\00", align 1
@numSkillLevels = common dso_local global i32 0, align 4
@skillLevels = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"ui_blueTeam\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"ui_redTeam\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"ui_blueteam%i\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Closed\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Human\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%i. %s\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"ui_redteam%i\00", align 1
@ui_netSource = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"Source: %s\00", align 1
@netSources = common dso_local global i64* null, align 8
@ui_serverFilterType = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@numServerFilters = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [11 x i8] c"Filter: %s\00", align 1
@serverFilters = common dso_local global %struct.TYPE_16__* null, align 8
@.str.15 = private unnamed_addr constant [46 x i8] c"Waiting for new key... Press ESCAPE to cancel\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"Press ENTER or CLICK to change, Press BACKSPACE to clear\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"ui_lastServerRefresh_%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, float)* @UI_OwnerDrawWidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UI_OwnerDrawWidth(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store float %1, float* %5, align 4
  store i8* null, i8** %10, align 8
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %195 [
    i32 143, label %12
    i32 145, label %23
    i32 144, label %25
    i32 131, label %31
    i32 146, label %47
    i32 133, label %65
    i32 151, label %83
    i32 150, label %83
    i32 149, label %83
    i32 148, label %83
    i32 147, label %83
    i32 138, label %117
    i32 137, label %117
    i32 136, label %117
    i32 135, label %117
    i32 134, label %117
    i32 140, label %151
    i32 141, label %165
    i32 130, label %180
    i32 128, label %181
    i32 129, label %182
    i32 152, label %183
    i32 139, label %184
    i32 142, label %185
    i32 132, label %191
  ]

12:                                               ; preds = %2
  %13 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @Com_Clamp(i32 5, i32 100, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sdiv i32 %15, 5
  %17 = sub nsw i32 20, %16
  store i32 %17, i32* %6, align 4
  %18 = load i8**, i8*** @handicapValues, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  br label %196

23:                                               ; preds = %2
  %24 = call i8* @UI_Cvar_VariableString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %10, align 8
  br label %196

25:                                               ; preds = %2
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @uiInfo, i32 0, i32 5), align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ui_gameType, i32 0, i32 0), align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %10, align 8
  br label %196

31:                                               ; preds = %2
  %32 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @numSkillLevels, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31
  store i32 1, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i8**, i8*** @skillLevels, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %41, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %10, align 8
  br label %196

47:                                               ; preds = %2
  %48 = call i8* @UI_Cvar_VariableString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %49 = call i32 @UI_TeamIndexFromName(i8* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @uiInfo, i32 0, i32 0), align 8
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @uiInfo, i32 0, i32 4), align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  store i8* %63, i8** %10, align 8
  br label %64

64:                                               ; preds = %56, %52, %47
  br label %196

65:                                               ; preds = %2
  %66 = call i8* @UI_Cvar_VariableString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %67 = call i32 @UI_TeamIndexFromName(i8* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @uiInfo, i32 0, i32 0), align 8
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @uiInfo, i32 0, i32 4), align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  store i8* %81, i8** %10, align 8
  br label %82

82:                                               ; preds = %74, %70, %65
  br label %196

83:                                               ; preds = %2, %2, %2, %2, %2
  %84 = load i32, i32* %4, align 4
  %85 = sub nsw i32 %84, 151
  %86 = add nsw i32 %85, 1
  %87 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  %88 = call i32 @trap_Cvar_VariableValue(i8* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %111

92:                                               ; preds = %83
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %110

96:                                               ; preds = %92
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %97, 2
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @uiInfo, i32 0, i32 1), align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %102, %96
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @uiInfo, i32 0, i32 3), align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %9, align 8
  br label %110

110:                                              ; preds = %103, %95
  br label %111

111:                                              ; preds = %110, %91
  %112 = load i32, i32* %4, align 4
  %113 = sub nsw i32 %112, 151
  %114 = add nsw i32 %113, 1
  %115 = load i8*, i8** %9, align 8
  %116 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %114, i8* %115)
  store i8* %116, i8** %10, align 8
  br label %196

117:                                              ; preds = %2, %2, %2, %2, %2
  %118 = load i32, i32* %4, align 4
  %119 = sub nsw i32 %118, 138
  %120 = add nsw i32 %119, 1
  %121 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %120)
  %122 = call i32 @trap_Cvar_VariableValue(i8* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp sle i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %145

126:                                              ; preds = %117
  %127 = load i32, i32* %8, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %144

130:                                              ; preds = %126
  %131 = load i32, i32* %8, align 4
  %132 = sub nsw i32 %131, 2
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @uiInfo, i32 0, i32 1), align 4
  %135 = icmp sge i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %136, %130
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @uiInfo, i32 0, i32 3), align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %9, align 8
  br label %144

144:                                              ; preds = %137, %129
  br label %145

145:                                              ; preds = %144, %125
  %146 = load i32, i32* %4, align 4
  %147 = sub nsw i32 %146, 138
  %148 = add nsw i32 %147, 1
  %149 = load i8*, i8** %9, align 8
  %150 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %148, i8* %149)
  store i8* %150, i8** %10, align 8
  br label %196

151:                                              ; preds = %2
  %152 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui_netSource, i32 0, i32 0), align 8
  %153 = icmp ult i64 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui_netSource, i32 0, i32 0), align 8
  %156 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @uiInfo, i32 0, i32 2), align 8
  %157 = icmp ugt i64 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154, %151
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui_netSource, i32 0, i32 0), align 8
  br label %159

159:                                              ; preds = %158, %154
  %160 = load i64*, i64** @netSources, align 8
  %161 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui_netSource, i32 0, i32 0), align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i64 %163)
  store i8* %164, i8** %10, align 8
  br label %196

165:                                              ; preds = %2
  %166 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ui_serverFilterType, i32 0, i32 0), align 8
  %167 = icmp ult i64 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %165
  %169 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ui_serverFilterType, i32 0, i32 0), align 8
  %170 = load i64, i64* @numServerFilters, align 8
  %171 = icmp ugt i64 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %168, %165
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ui_serverFilterType, i32 0, i32 0), align 8
  br label %173

173:                                              ; preds = %172, %168
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** @serverFilters, align 8
  %175 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ui_serverFilterType, i32 0, i32 0), align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 %178)
  store i8* %179, i8** %10, align 8
  br label %196

180:                                              ; preds = %2
  br label %196

181:                                              ; preds = %2
  br label %196

182:                                              ; preds = %2
  br label %196

183:                                              ; preds = %2
  br label %196

184:                                              ; preds = %2
  br label %196

185:                                              ; preds = %2
  %186 = call i32 (...) @Display_KeyBindPending()
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i8** %10, align 8
  br label %190

189:                                              ; preds = %185
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i64 0, i64 0), i8** %10, align 8
  br label %190

190:                                              ; preds = %189, %188
  br label %196

191:                                              ; preds = %2
  %192 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui_netSource, i32 0, i32 0), align 8
  %193 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i64 %192)
  %194 = call i8* @UI_Cvar_VariableString(i8* %193)
  store i8* %194, i8** %10, align 8
  br label %196

195:                                              ; preds = %2
  br label %196

196:                                              ; preds = %195, %191, %190, %184, %183, %182, %181, %180, %173, %159, %145, %111, %82, %64, %40, %25, %23, %12
  %197 = load i8*, i8** %10, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load i8*, i8** %10, align 8
  %201 = load float, float* %5, align 4
  %202 = call i32 @Text_Width(i8* %200, float %201, i32 0)
  store i32 %202, i32* %3, align 4
  br label %204

203:                                              ; preds = %196
  store i32 0, i32* %3, align 4
  br label %204

204:                                              ; preds = %203, %199
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @Com_Clamp(i32, i32, i32) #1

declare dso_local i32 @trap_Cvar_VariableValue(i8*) #1

declare dso_local i8* @UI_Cvar_VariableString(i8*) #1

declare dso_local i32 @UI_TeamIndexFromName(i8*) #1

declare dso_local i8* @va(i8*, ...) #1

declare dso_local i32 @Display_KeyBindPending(...) #1

declare dso_local i32 @Text_Width(i8*, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
