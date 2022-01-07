; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_BuildServerDisplayList.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_BuildServerDisplayList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@UI_BuildServerDisplayList.numinvisible = internal global i32 0, align 4
@uiInfo = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"cl_motdString\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Welcome to Team Arena!\00", align 1
@FEEDER_SERVERS = common dso_local global i32 0, align 4
@ui_netSource = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@AS_LOCAL = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@AS_FAVORITES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"clients\00", align 1
@ui_browserShowEmpty = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@ui_browserShowFull = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@ui_joinGameType = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"gametype\00", align 1
@ui_serverFilterType = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"game\00", align 1
@serverFilters = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @UI_BuildServerDisplayList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_BuildServerDisplayList(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %14 = load i32, i32* @MAX_STRING_CHARS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 0), align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 1, i32* %13, align 4
  br label %202

25:                                               ; preds = %20, %1
  %26 = load i32, i32* %2, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 6), align 8
  %31 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %30, i32 4)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 6), align 8
  %33 = call i32 @strlen(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 6), align 8
  %38 = call i32 @strcpy(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 6), align 8
  %40 = call i32 @strlen(i32 %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %36, %29
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 1), align 8
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 1), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 2), align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  store i32 0, i32* @UI_BuildServerDisplayList.numinvisible, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 4), align 8
  %51 = load i32, i32* @FEEDER_SERVERS, align 4
  %52 = call i32 @Menu_SetFeederSelection(i32* null, i32 %51, i32 0, i32* null)
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ui_netSource, i32 0, i32 0), align 8
  %54 = load i32, i32* @qtrue, align 4
  %55 = call i32 @trap_LAN_MarkServerVisible(i64 %53, i32 -1, i32 %54)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ui_netSource, i32 0, i32 0), align 8
  %58 = call i32 @trap_LAN_GetServerCount(i64 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ui_netSource, i32 0, i32 0), align 8
  %63 = load i64, i64* @AS_LOCAL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65, %56
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 4), align 8
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %70 = add nsw i64 %69, 500
  store i64 %70, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 0), align 8
  store i32 1, i32* %13, align 4
  br label %202

71:                                               ; preds = %65, %61
  %72 = load i32, i32* @qfalse, align 4
  store i32 %72, i32* %10, align 4
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %193, %71
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %196

77:                                               ; preds = %73
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ui_netSource, i32 0, i32 0), align 8
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @trap_LAN_ServerIsVisible(i64 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %193

83:                                               ; preds = %77
  %84 = load i32, i32* @qtrue, align 4
  store i32 %84, i32* %10, align 4
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ui_netSource, i32 0, i32 0), align 8
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @trap_LAN_GetServerPing(i64 %85, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %83
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ui_netSource, i32 0, i32 0), align 8
  %92 = load i64, i64* @AS_FAVORITES, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %192

94:                                               ; preds = %90, %83
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ui_netSource, i32 0, i32 0), align 8
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @MAX_STRING_CHARS, align 4
  %98 = call i32 @trap_LAN_GetServerInfo(i64 %95, i32 %96, i8* %17, i32 %97)
  %99 = call i32 @Info_ValueForKey(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %100 = call i32 @atoi(i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 4), align 8
  %104 = add nsw i64 %103, %102
  store i64 %104, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 4), align 8
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ui_browserShowEmpty, i32 0, i32 0), align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %94
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ui_netSource, i32 0, i32 0), align 8
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @qfalse, align 4
  %114 = call i32 @trap_LAN_MarkServerVisible(i64 %111, i32 %112, i32 %113)
  br label %193

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115, %94
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ui_browserShowFull, i32 0, i32 0), align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = call i32 @Info_ValueForKey(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %121 = call i32 @atoi(i32 %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ui_netSource, i32 0, i32 0), align 8
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* @qfalse, align 4
  %129 = call i32 @trap_LAN_MarkServerVisible(i64 %126, i32 %127, i32 %128)
  br label %193

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130, %116
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 2), align 8
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui_joinGameType, i32 0, i32 0), align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, -1
  br i1 %137, label %138, label %154

138:                                              ; preds = %131
  %139 = call i32 @Info_ValueForKey(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %140 = call i32 @atoi(i32 %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 2), align 8
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui_joinGameType, i32 0, i32 0), align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %141, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %138
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ui_netSource, i32 0, i32 0), align 8
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* @qfalse, align 4
  %152 = call i32 @trap_LAN_MarkServerVisible(i64 %149, i32 %150, i32 %151)
  br label %193

153:                                              ; preds = %138
  br label %154

154:                                              ; preds = %153, %131
  %155 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ui_serverFilterType, i32 0, i32 0), align 8
  %156 = icmp ugt i64 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %154
  %158 = call i32 @Info_ValueForKey(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** @serverFilters, align 8
  %160 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ui_serverFilterType, i32 0, i32 0), align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @Q_stricmp(i32 %158, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %157
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ui_netSource, i32 0, i32 0), align 8
  %168 = load i32, i32* %3, align 4
  %169 = load i32, i32* @qfalse, align 4
  %170 = call i32 @trap_LAN_MarkServerVisible(i64 %167, i32 %168, i32 %169)
  br label %193

171:                                              ; preds = %157
  br label %172

172:                                              ; preds = %171, %154
  %173 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ui_netSource, i32 0, i32 0), align 8
  %174 = load i64, i64* @AS_FAVORITES, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i32, i32* %3, align 4
  %178 = call i32 @UI_RemoveServerFromDisplayList(i32 %177)
  br label %179

179:                                              ; preds = %176, %172
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @UI_BinaryServerInsertion(i32 %180)
  %182 = load i32, i32* %7, align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %179
  %185 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ui_netSource, i32 0, i32 0), align 8
  %186 = load i32, i32* %3, align 4
  %187 = load i32, i32* @qfalse, align 4
  %188 = call i32 @trap_LAN_MarkServerVisible(i64 %185, i32 %186, i32 %187)
  %189 = load i32, i32* @UI_BuildServerDisplayList.numinvisible, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* @UI_BuildServerDisplayList.numinvisible, align 4
  br label %191

191:                                              ; preds = %184, %179
  br label %192

192:                                              ; preds = %191, %90
  br label %193

193:                                              ; preds = %192, %166, %148, %125, %110, %82
  %194 = load i32, i32* %3, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %3, align 4
  br label %73

196:                                              ; preds = %73
  %197 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 0, i32 0), align 8
  store i64 %197, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @uiInfo, i32 0, i32 1, i32 3), align 8
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %196
  br label %201

201:                                              ; preds = %200, %196
  store i32 0, i32* %13, align 4
  br label %202

202:                                              ; preds = %201, %68, %24
  %203 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i32, i32* %13, align 4
  switch i32 %204, label %206 [
    i32 0, label %205
    i32 1, label %205
  ]

205:                                              ; preds = %202, %202
  ret void

206:                                              ; preds = %202
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @Menu_SetFeederSelection(i32*, i32, i32, i32*) #2

declare dso_local i32 @trap_LAN_MarkServerVisible(i64, i32, i32) #2

declare dso_local i32 @trap_LAN_GetServerCount(i64) #2

declare dso_local i32 @trap_LAN_ServerIsVisible(i64, i32) #2

declare dso_local i32 @trap_LAN_GetServerPing(i64, i32) #2

declare dso_local i32 @trap_LAN_GetServerInfo(i64, i32, i8*, i32) #2

declare dso_local i32 @atoi(i32) #2

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #2

declare dso_local i64 @Q_stricmp(i32, i32) #2

declare dso_local i32 @UI_RemoveServerFromDisplayList(i32) #2

declare dso_local i32 @UI_BinaryServerInsertion(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
