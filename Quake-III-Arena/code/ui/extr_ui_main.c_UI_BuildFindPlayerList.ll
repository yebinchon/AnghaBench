; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_BuildFindPlayerList.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_BuildFindPlayerList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i8*, i8**, i8**, i64, %struct.TYPE_11__, %struct.TYPE_17__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i8*, i32, i8* }
%struct.TYPE_12__ = type { i64, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i8*** }

@UI_BuildFindPlayerList.numFound = internal global i32 0, align 4
@UI_BuildFindPlayerList.numTimeOuts = internal global i32 0, align 4
@MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@uiInfo = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"ui_findPlayer\00", align 1
@ui_serverStatusTimeOut = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cl_serverStatusResendTime\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"searching %d...\00", align 1
@MAX_SERVERSTATUSREQUESTS = common dso_local global i32 0, align 4
@MAX_FOUNDPLAYER_SERVERS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"searching %d/%d...\00", align 1
@qfalse = common dso_local global i8* null, align 8
@ui_netSource = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@qtrue = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"no servers found\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"%d server%s found with player %s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@FEEDER_FINDPLAYER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @UI_BuildFindPlayerList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_BuildFindPlayerList(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %12 = add nsw i32 %11, 2
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @MAX_STRING_CHARS, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 0), align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 0), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 6, i32 0), align 8
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %21
  store i32 1, i32* %10, align 4
  br label %347

29:                                               ; preds = %24
  br label %62

30:                                               ; preds = %1
  %31 = call i32 @memset(%struct.TYPE_17__* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7), i32 0, i32 16)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 1), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 5), align 8
  %32 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 2), align 8
  %33 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %32, i32 8)
  %34 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 2), align 8
  %35 = call i32 @Q_CleanStr(i8* %34)
  %36 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 2), align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 0), align 8
  store i32 1, i32* %10, align 4
  br label %347

40:                                               ; preds = %30
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ui_serverStatusTimeOut, i32 0, i32 0), align 4
  %42 = sdiv i32 %41, 2
  %43 = sub nsw i32 %42, 10
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 50
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 50, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %40
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = call i32 @trap_LAN_ServerStatus(i32* null, i32* null, i32 0)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 1), align 4
  %52 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 3), align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 1), align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %52, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 0), align 8
  %59 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %57, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  store i32 0, i32* @UI_BuildFindPlayerList.numFound, align 4
  %60 = load i32, i32* @UI_BuildFindPlayerList.numTimeOuts, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @UI_BuildFindPlayerList.numTimeOuts, align 4
  br label %62

62:                                               ; preds = %47, %29
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %288, %62
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @MAX_SERVERSTATUSREQUESTS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %291

67:                                               ; preds = %63
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %188

75:                                               ; preds = %67
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @UI_GetServerStatusInfo(i8* %81, %struct.TYPE_13__* %6)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %187

84:                                               ; preds = %75
  %85 = load i32, i32* @UI_BuildFindPlayerList.numFound, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @UI_BuildFindPlayerList.numFound, align 4
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %168, %84
  %88 = load i32, i32* %4, align 4
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %171

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %94 = load i8***, i8**** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8**, i8*** %94, i64 %96
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 2
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %114

102:                                              ; preds = %92
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %104 = load i8***, i8**** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8**, i8*** %104, i64 %106
  %108 = load i8**, i8*** %107, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 2
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %102, %92
  br label %168

115:                                              ; preds = %102
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %117 = load i8***, i8**** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8**, i8*** %117, i64 %119
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 3
  %123 = load i8*, i8** %122, align 8
  %124 = trunc i64 %13 to i32
  %125 = call i32 @Q_strncpyz(i8* %15, i8* %123, i32 %124)
  %126 = call i32 @Q_CleanStr(i8* %15)
  %127 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 2), align 8
  %128 = call i64 @stristr(i8* %15, i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %167

130:                                              ; preds = %115
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 1), align 4
  %132 = load i32, i32* @MAX_FOUNDPLAYER_SERVERS, align 4
  %133 = sub nsw i32 %132, 1
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %164

135:                                              ; preds = %130
  %136 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 4), align 8
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 1), align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %136, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %143 = load i32, i32* %3, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @Q_strncpyz(i8* %141, i8* %147, i32 8)
  %149 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 3), align 8
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 1), align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %149, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %156 = load i32, i32* %3, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @Q_strncpyz(i8* %154, i8* %160, i32 8)
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 1), align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 1), align 4
  br label %166

164:                                              ; preds = %130
  %165 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 8, i32 0), align 8
  store i64 %165, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 0), align 8
  br label %166

166:                                              ; preds = %164, %135
  br label %167

167:                                              ; preds = %166, %115
  br label %168

168:                                              ; preds = %167, %114
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %4, align 4
  br label %87

171:                                              ; preds = %87
  %172 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 3), align 8
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 1), align 4
  %174 = sub nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %172, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 0), align 8
  %179 = load i32, i32* @UI_BuildFindPlayerList.numFound, align 4
  %180 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %177, i32 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %178, i32 %179)
  %181 = load i8*, i8** @qfalse, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %183 = load i32, i32* %3, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 3
  store i8* %181, i8** %186, align 8
  br label %187

187:                                              ; preds = %171, %75
  br label %188

188:                                              ; preds = %187, %67
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %190 = load i32, i32* %3, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 3
  %194 = load i8*, i8** %193, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %207

196:                                              ; preds = %188
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %198 = load i32, i32* %3, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 6, i32 0), align 8
  %204 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ui_serverStatusTimeOut, i32 0, i32 0), align 4
  %205 = sub nsw i32 %203, %204
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %287

207:                                              ; preds = %196, %188
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %209 = load i32, i32* %3, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 3
  %213 = load i8*, i8** %212, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %207
  %216 = load i32, i32* @UI_BuildFindPlayerList.numTimeOuts, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* @UI_BuildFindPlayerList.numTimeOuts, align 4
  br label %218

218:                                              ; preds = %215, %207
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %220 = load i32, i32* %3, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = call i64 @UI_GetServerStatusInfo(i8* %224, %struct.TYPE_13__* null)
  %226 = load i8*, i8** @qfalse, align 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %228 = load i32, i32* %3, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 3
  store i8* %226, i8** %231, align 8
  %232 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 0), align 8
  %233 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 8, i32 0), align 8
  %234 = icmp ult i64 %232, %233
  br i1 %234, label %235, label %286

235:                                              ; preds = %218
  %236 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 6, i32 0), align 8
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %238 = load i32, i32* %3, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 2
  store i32 %236, i32* %241, align 8
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ui_netSource, i32 0, i32 0), align 4
  %243 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 8, i32 1), align 8
  %244 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 0), align 8
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %248 = load i32, i32* %3, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 @trap_LAN_GetServerAddressString(i32 %242, i32 %246, i8* %252, i32 8)
  %254 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ui_netSource, i32 0, i32 0), align 4
  %255 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 8, i32 1), align 8
  %256 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 0), align 8
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = trunc i64 %17 to i32
  %260 = call i32 @trap_LAN_GetServerInfo(i32 %254, i32 %258, i8* %18, i32 %259)
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %262 = load i32, i32* %3, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  %267 = call i8* @Info_ValueForKey(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %268 = call i32 @Q_strncpyz(i8* %266, i8* %267, i32 8)
  %269 = load i8*, i8** @qtrue, align 8
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %271 = load i32, i32* %3, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 3
  store i8* %269, i8** %274, align 8
  %275 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 0), align 8
  %276 = add i64 %275, 1
  store i64 %276, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 0), align 8
  %277 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 3), align 8
  %278 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 1), align 4
  %279 = sub nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8*, i8** %277, i64 %280
  %282 = load i8*, i8** %281, align 8
  %283 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 0), align 8
  %284 = load i32, i32* @UI_BuildFindPlayerList.numFound, align 4
  %285 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %282, i32 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %283, i32 %284)
  br label %286

286:                                              ; preds = %235, %218
  br label %287

287:                                              ; preds = %286, %196
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %3, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %3, align 4
  br label %63

291:                                              ; preds = %63
  store i32 0, i32* %3, align 4
  br label %292

292:                                              ; preds = %306, %291
  %293 = load i32, i32* %3, align 4
  %294 = load i32, i32* @MAX_SERVERSTATUSREQUESTS, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %309

296:                                              ; preds = %292
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7, i32 1), align 8
  %298 = load i32, i32* %3, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 3
  %302 = load i8*, i8** %301, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %304, label %305

304:                                              ; preds = %296
  br label %309

305:                                              ; preds = %296
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %3, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %3, align 4
  br label %292

309:                                              ; preds = %304, %292
  %310 = load i32, i32* %3, align 4
  %311 = load i32, i32* @MAX_SERVERSTATUSREQUESTS, align 4
  %312 = icmp slt i32 %310, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %309
  %314 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 6, i32 0), align 8
  %315 = add nsw i32 %314, 25
  store i32 %315, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 0), align 8
  br label %346

316:                                              ; preds = %309
  %317 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 1), align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %327, label %319

319:                                              ; preds = %316
  %320 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 3), align 8
  %321 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 1), align 4
  %322 = sub nsw i32 %321, 1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8*, i8** %320, i64 %323
  %325 = load i8*, i8** %324, align 8
  %326 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %325, i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %342

327:                                              ; preds = %316
  %328 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 3), align 8
  %329 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 1), align 4
  %330 = sub nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8*, i8** %328, i64 %331
  %333 = load i8*, i8** %332, align 8
  %334 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 1), align 4
  %335 = sub nsw i32 %334, 1
  %336 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 1), align 4
  %337 = icmp eq i32 %336, 2
  %338 = zext i1 %337 to i64
  %339 = select i1 %337, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)
  %340 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 2), align 8
  %341 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %333, i32 8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %335, i8* %339, i8* %340)
  br label %342

342:                                              ; preds = %327, %319
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 0), align 8
  %343 = load i32, i32* @FEEDER_FINDPLAYER, align 4
  %344 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 5), align 8
  %345 = call i32 @UI_FeederSelection(i32 %343, i64 %344)
  br label %346

346:                                              ; preds = %342, %313
  store i32 0, i32* %10, align 4
  br label %347

347:                                              ; preds = %346, %39, %28
  %348 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %348)
  %349 = load i32, i32* %10, align 4
  switch i32 %349, label %351 [
    i32 0, label %350
    i32 1, label %350
  ]

350:                                              ; preds = %347, %347
  ret void

351:                                              ; preds = %347
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #2

declare dso_local i32 @Q_CleanStr(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @trap_Cvar_Set(i8*, i32) #2

declare dso_local i32 @va(i8*, i32) #2

declare dso_local i32 @trap_LAN_ServerStatus(i32*, i32*, i32) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @UI_GetServerStatusInfo(i8*, %struct.TYPE_13__*) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i64 @stristr(i8*, i8*) #2

declare dso_local i32 @trap_LAN_GetServerAddressString(i32, i32, i8*, i32) #2

declare dso_local i32 @trap_LAN_GetServerInfo(i32, i32, i8*, i32) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i32 @UI_FeederSelection(i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
