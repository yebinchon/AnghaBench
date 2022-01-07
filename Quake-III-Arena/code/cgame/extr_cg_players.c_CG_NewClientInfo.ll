; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_players.c_CG_NewClientInfo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_players.c_CG_NewClientInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@cgs = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@CS_PLAYERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"c1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"c2\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"skill\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"hc\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"tl\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"g_redteam\00", align 1
@MAX_TEAMNAME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"g_blueteam\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@cg_forceModel = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@MAX_QPATH = common dso_local global i32 0, align 4
@GT_TEAM = common dso_local global i64 0, align 8
@DEFAULT_TEAM_MODEL = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"hmodel\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"headmodel\00", align 1
@cg_deferPlayers = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@cg_buildScript = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@cg = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str.16 = private unnamed_addr constant [39 x i8] c"Memory is low.  Using deferred model.\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_NewClientInfo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgs, i32 0, i32 1), align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i64 %17
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %3, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @CS_PLAYERS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i8* @CG_ConfigString(i64 %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = call i32 @memset(%struct.TYPE_11__* %29, i32 0, i32 128)
  br label %291

31:                                               ; preds = %1
  %32 = call i32 @memset(%struct.TYPE_11__* %4, i32 0, i32 128)
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @Info_ValueForKey(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @Q_strncpyz(i8* %36, i8* %37, i32 8)
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @Info_ValueForKey(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 17
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @CG_ColorFromString(i8* %41, i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = call i8* @Info_ValueForKey(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 16
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @CG_ColorFromString(i8* %47, i32 %49)
  %51 = load i8*, i8** %5, align 8
  %52 = call i8* @Info_ValueForKey(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %52, i8** %6, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i8* @atoi(i8* %53)
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 15
  store i8* %54, i8** %55, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i8* @Info_ValueForKey(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i8* @atoi(i8* %58)
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 14
  store i8* %59, i8** %60, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i8* @Info_ValueForKey(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %62, i8** %6, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i8* @atoi(i8* %63)
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 13
  store i8* %64, i8** %65, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i8* @Info_ValueForKey(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %67, i8** %6, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i8* @atoi(i8* %68)
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 12
  store i8* %69, i8** %70, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call i8* @Info_ValueForKey(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i8* %72, i8** %6, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i8* @atoi(i8* %73)
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 11
  store i8* %74, i8** %75, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = call i8* @Info_ValueForKey(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i8* %77, i8** %6, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i8* @atoi(i8* %78)
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 10
  store i8* %79, i8** %80, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = call i8* @Info_ValueForKey(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i8* %82, i8** %6, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = call i8* @atoi(i8* %83)
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 9
  store i8* %84, i8** %85, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = call i8* @Info_ValueForKey(i8* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  store i8* %87, i8** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* @MAX_TEAMNAME, align 4
  %92 = call i32 @Q_strncpyz(i8* %89, i8* %90, i32 %91)
  %93 = load i8*, i8** %5, align 8
  %94 = call i8* @Info_ValueForKey(i8* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  store i8* %94, i8** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* @MAX_TEAMNAME, align 4
  %99 = call i32 @Q_strncpyz(i8* %96, i8* %97, i32 %98)
  %100 = load i8*, i8** %5, align 8
  %101 = call i8* @Info_ValueForKey(i8* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  store i8* %101, i8** %6, align 8
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_forceModel, i32 0, i32 0), align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %155

104:                                              ; preds = %31
  %105 = load i32, i32* @MAX_QPATH, align 4
  %106 = zext i32 %105 to i64
  %107 = call i8* @llvm.stacksave()
  store i8* %107, i8** %8, align 8
  %108 = alloca i8, i64 %106, align 16
  store i64 %106, i64* %9, align 8
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgs, i32 0, i32 0), align 8
  %110 = load i64, i64* @GT_TEAM, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = load i8*, i8** @DEFAULT_TEAM_MODEL, align 8
  %116 = call i32 @Q_strncpyz(i8* %114, i8* %115, i32 8)
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @Q_strncpyz(i8* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 8)
  br label %137

120:                                              ; preds = %104
  %121 = trunc i64 %106 to i32
  %122 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %108, i32 %121)
  %123 = call i8* @strchr(i8* %108, i8 signext 47)
  store i8* %123, i8** %10, align 8
  %124 = icmp eq i8* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %10, align 8
  br label %129

126:                                              ; preds = %120
  %127 = load i8*, i8** %10, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %10, align 8
  store i8 0, i8* %127, align 1
  br label %129

129:                                              ; preds = %126, %125
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  %131 = load i8*, i8** %130, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 @Q_strncpyz(i8* %131, i8* %132, i32 8)
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @Q_strncpyz(i8* %135, i8* %108, i32 8)
  br label %137

137:                                              ; preds = %129, %112
  %138 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgs, i32 0, i32 0), align 8
  %139 = load i64, i64* @GT_TEAM, align 8
  %140 = icmp sge i64 %138, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %137
  %142 = load i8*, i8** %6, align 8
  %143 = call i8* @strchr(i8* %142, i8 signext 47)
  store i8* %143, i8** %7, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  %148 = load i8*, i8** %147, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = call i32 @Q_strncpyz(i8* %148, i8* %150, i32 8)
  br label %152

152:                                              ; preds = %146, %141
  br label %153

153:                                              ; preds = %152, %137
  %154 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %154)
  br label %177

155:                                              ; preds = %31
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  %157 = load i8*, i8** %156, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = call i32 @Q_strncpyz(i8* %157, i8* %158, i32 8)
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = call i8* @strchr(i8* %161, i8 signext 47)
  store i8* %162, i8** %7, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %155
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @Q_strncpyz(i8* %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 8)
  br label %176

169:                                              ; preds = %155
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  %171 = load i8*, i8** %170, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = call i32 @Q_strncpyz(i8* %171, i8* %173, i32 8)
  %175 = load i8*, i8** %7, align 8
  store i8 0, i8* %175, align 1
  br label %176

176:                                              ; preds = %169, %165
  br label %177

177:                                              ; preds = %176, %153
  %178 = load i8*, i8** %5, align 8
  %179 = call i8* @Info_ValueForKey(i8* %178, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  store i8* %179, i8** %6, align 8
  %180 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_forceModel, i32 0, i32 0), align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %233

182:                                              ; preds = %177
  %183 = load i32, i32* @MAX_QPATH, align 4
  %184 = zext i32 %183 to i64
  %185 = call i8* @llvm.stacksave()
  store i8* %185, i8** %11, align 8
  %186 = alloca i8, i64 %184, align 16
  store i64 %184, i64* %12, align 8
  %187 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgs, i32 0, i32 0), align 8
  %188 = load i64, i64* @GT_TEAM, align 8
  %189 = icmp sge i64 %187, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %182
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 5
  %192 = load i8*, i8** %191, align 8
  %193 = load i8*, i8** @DEFAULT_TEAM_MODEL, align 8
  %194 = call i32 @Q_strncpyz(i8* %192, i8* %193, i32 8)
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 6
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @Q_strncpyz(i8* %196, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 8)
  br label %215

198:                                              ; preds = %182
  %199 = trunc i64 %184 to i32
  %200 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %186, i32 %199)
  %201 = call i8* @strchr(i8* %186, i8 signext 47)
  store i8* %201, i8** %13, align 8
  %202 = icmp eq i8* %201, null
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %13, align 8
  br label %207

204:                                              ; preds = %198
  %205 = load i8*, i8** %13, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %13, align 8
  store i8 0, i8* %205, align 1
  br label %207

207:                                              ; preds = %204, %203
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 6
  %209 = load i8*, i8** %208, align 8
  %210 = load i8*, i8** %13, align 8
  %211 = call i32 @Q_strncpyz(i8* %209, i8* %210, i32 8)
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 5
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @Q_strncpyz(i8* %213, i8* %186, i32 8)
  br label %215

215:                                              ; preds = %207, %190
  %216 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgs, i32 0, i32 0), align 8
  %217 = load i64, i64* @GT_TEAM, align 8
  %218 = icmp sge i64 %216, %217
  br i1 %218, label %219, label %231

219:                                              ; preds = %215
  %220 = load i8*, i8** %6, align 8
  %221 = call i8* @strchr(i8* %220, i8 signext 47)
  store i8* %221, i8** %7, align 8
  %222 = load i8*, i8** %7, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 6
  %226 = load i8*, i8** %225, align 8
  %227 = load i8*, i8** %7, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 1
  %229 = call i32 @Q_strncpyz(i8* %226, i8* %228, i32 8)
  br label %230

230:                                              ; preds = %224, %219
  br label %231

231:                                              ; preds = %230, %215
  %232 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %232)
  br label %255

233:                                              ; preds = %177
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 5
  %235 = load i8*, i8** %234, align 8
  %236 = load i8*, i8** %6, align 8
  %237 = call i32 @Q_strncpyz(i8* %235, i8* %236, i32 8)
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 5
  %239 = load i8*, i8** %238, align 8
  %240 = call i8* @strchr(i8* %239, i8 signext 47)
  store i8* %240, i8** %7, align 8
  %241 = load i8*, i8** %7, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %247, label %243

243:                                              ; preds = %233
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 6
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @Q_strncpyz(i8* %245, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 8)
  br label %254

247:                                              ; preds = %233
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 6
  %249 = load i8*, i8** %248, align 8
  %250 = load i8*, i8** %7, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 1
  %252 = call i32 @Q_strncpyz(i8* %249, i8* %251, i32 8)
  %253 = load i8*, i8** %7, align 8
  store i8 0, i8* %253, align 1
  br label %254

254:                                              ; preds = %247, %243
  br label %255

255:                                              ; preds = %254, %231
  %256 = call i32 @CG_ScanForExistingClientInfo(%struct.TYPE_11__* %4)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %285, label %258

258:                                              ; preds = %255
  %259 = call i32 (...) @trap_MemoryRemaining()
  %260 = icmp slt i32 %259, 4000000
  %261 = zext i1 %260 to i32
  store i32 %261, i32* %14, align 4
  %262 = load i32, i32* %14, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %273, label %264

264:                                              ; preds = %258
  %265 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg_deferPlayers, i32 0, i32 0), align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %282

267:                                              ; preds = %264
  %268 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg_buildScript, i32 0, i32 0), align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %282, label %270

270:                                              ; preds = %267
  %271 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 0), align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %282, label %273

273:                                              ; preds = %270, %258
  %274 = call i32 @CG_SetDeferredClientInfo(%struct.TYPE_11__* %4)
  %275 = load i32, i32* %14, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %273
  %278 = call i32 @CG_Printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  %279 = load i32, i32* @qfalse, align 4
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 8
  store i32 %279, i32* %280, align 4
  br label %281

281:                                              ; preds = %277, %273
  br label %284

282:                                              ; preds = %270, %267, %264
  %283 = call i32 @CG_LoadClientInfo(%struct.TYPE_11__* %4)
  br label %284

284:                                              ; preds = %282, %281
  br label %285

285:                                              ; preds = %284, %255
  %286 = load i32, i32* @qtrue, align 4
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 7
  store i32 %286, i32* %287, align 8
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %289 = bitcast %struct.TYPE_11__* %288 to i8*
  %290 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %289, i8* align 8 %290, i64 128, i1 false)
  br label %291

291:                                              ; preds = %285, %28
  ret void
}

declare dso_local i8* @CG_ConfigString(i64) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i32 @CG_ColorFromString(i8*, i32) #1

declare dso_local i8* @atoi(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CG_ScanForExistingClientInfo(%struct.TYPE_11__*) #1

declare dso_local i32 @trap_MemoryRemaining(...) #1

declare dso_local i32 @CG_SetDeferredClientInfo(%struct.TYPE_11__*) #1

declare dso_local i32 @CG_Printf(i8*) #1

declare dso_local i32 @CG_LoadClientInfo(%struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
