; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_players.c_CG_LoadClientInfo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_players.c_CG_LoadClientInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i8*, i8*, i8*, i8*, i8*, i8**, i8*, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@MAX_QPATH = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@cg_buildScript = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str = private unnamed_addr constant [55 x i8] c"CG_RegisterClientModelname( %s, %s, %s, %s %s ) failed\00", align 1
@cgs = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8
@DEFAULT_BLUETEAM_NAME = common dso_local global i32 0, align 4
@DEFAULT_REDTEAM_NAME = common dso_local global i32 0, align 4
@DEFAULT_TEAM_MODEL = common dso_local global i8* null, align 8
@DEFAULT_TEAM_HEAD = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"DEFAULT_TEAM_MODEL / skin (%s/%s) failed to register\00", align 1
@DEFAULT_MODEL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"DEFAULT_MODEL (%s) failed to register\00", align 1
@qfalse = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"tag_flag\00", align 1
@MAX_CUSTOM_SOUNDS = common dso_local global i32 0, align 4
@cg_customSoundNames = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"sound/player/%s/%s\00", align 1
@MAX_GENTITIES = common dso_local global i32 0, align 4
@cg_entities = common dso_local global %struct.TYPE_15__* null, align 8
@ET_PLAYER = common dso_local global i64 0, align 8
@cg_blueTeamName = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@cg_redTeamName = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @CG_LoadClientInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_LoadClientInfo(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %12 = load i32, i32* @MAX_QPATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %16, align 16
  %17 = load i8*, i8** @qtrue, align 8
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 4
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @CG_RegisterClientModelname(%struct.TYPE_12__* %19, i8* %22, i8* %25, i8* %28, i8* %31, i8* %15)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %101, label %34

34:                                               ; preds = %1
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg_buildScript, i32 0, i32 0), align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i8*, i8*, ...) @CG_Error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %43, i8* %46, i8* %49, i8* %15)
  br label %51

51:                                               ; preds = %37, %34
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cgs, i32 0, i32 0), align 8
  %53 = load i64, i64* @GT_TEAM, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %88

55:                                               ; preds = %51
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TEAM_BLUE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @DEFAULT_BLUETEAM_NAME, align 4
  %63 = trunc i64 %13 to i32
  %64 = call i32 @Q_strncpyz(i8* %15, i32 %62, i32 %63)
  br label %69

65:                                               ; preds = %55
  %66 = load i32, i32* @DEFAULT_REDTEAM_NAME, align 4
  %67 = trunc i64 %13 to i32
  %68 = call i32 @Q_strncpyz(i8* %15, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = load i8*, i8** @DEFAULT_TEAM_MODEL, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** @DEFAULT_TEAM_HEAD, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @CG_RegisterClientModelname(%struct.TYPE_12__* %70, i8* %71, i8* %74, i8* %75, i8* %78, i8* %15)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %69
  %82 = load i8*, i8** @DEFAULT_TEAM_MODEL, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i8*, i8*, ...) @CG_Error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %82, i8* %85)
  br label %87

87:                                               ; preds = %81, %69
  br label %98

88:                                               ; preds = %51
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %90 = load i8*, i8** @DEFAULT_MODEL, align 8
  %91 = load i8*, i8** @DEFAULT_MODEL, align 8
  %92 = call i32 @CG_RegisterClientModelname(%struct.TYPE_12__* %89, i8* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = load i8*, i8** @DEFAULT_MODEL, align 8
  %96 = call i32 (i8*, i8*, ...) @CG_Error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %94, %88
  br label %98

98:                                               ; preds = %97, %87
  %99 = load i8*, i8** @qfalse, align 8
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %98, %1
  %102 = load i8*, i8** @qfalse, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 7
  store i8* %102, i8** %104, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 8
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %101
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 8
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @trap_R_LerpTag(i32* %11, i64 %112, i32 0, i32 0, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i8*, i8** @qtrue, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 7
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %115, %109
  br label %120

120:                                              ; preds = %119, %101
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %3, align 8
  %124 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cgs, i32 0, i32 0), align 8
  %125 = load i64, i64* @GT_TEAM, align 8
  %126 = icmp sge i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i8*, i8** @DEFAULT_TEAM_MODEL, align 8
  br label %131

129:                                              ; preds = %120
  %130 = load i8*, i8** @DEFAULT_MODEL, align 8
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i8* [ %128, %127 ], [ %130, %129 ]
  store i8* %132, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %191, %131
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @MAX_CUSTOM_SOUNDS, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %194

137:                                              ; preds = %133
  %138 = load i8**, i8*** @cg_customSoundNames, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  store i8* %142, i8** %7, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %137
  br label %194

146:                                              ; preds = %137
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 6
  %149 = load i8**, i8*** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  store i8* null, i8** %152, align 8
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %146
  %156 = load i8*, i8** %3, align 8
  %157 = load i8*, i8** %7, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  %159 = call i32 @va(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %156, i8* %158)
  %160 = load i8*, i8** @qfalse, align 8
  %161 = call i8* @trap_S_RegisterSound(i32 %159, i8* %160)
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 6
  %164 = load i8**, i8*** %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  store i8* %161, i8** %167, align 8
  br label %168

168:                                              ; preds = %155, %146
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 6
  %171 = load i8**, i8*** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %190, label %177

177:                                              ; preds = %168
  %178 = load i8*, i8** %4, align 8
  %179 = load i8*, i8** %7, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = call i32 @va(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %178, i8* %180)
  %182 = load i8*, i8** @qfalse, align 8
  %183 = call i8* @trap_S_RegisterSound(i32 %181, i8* %182)
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 6
  %186 = load i8**, i8*** %185, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  store i8* %183, i8** %189, align 8
  br label %190

190:                                              ; preds = %177, %168
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %5, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %5, align 4
  br label %133

194:                                              ; preds = %145, %133
  %195 = load i8*, i8** @qfalse, align 8
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 5
  store i8* %195, i8** %197, align 8
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cgs, i32 0, i32 1), align 8
  %200 = ptrtoint %struct.TYPE_12__* %198 to i64
  %201 = ptrtoint %struct.TYPE_12__* %199 to i64
  %202 = sub i64 %200, %201
  %203 = sdiv exact i64 %202, 72
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %205

205:                                              ; preds = %236, %194
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* @MAX_GENTITIES, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %239

209:                                              ; preds = %205
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cg_entities, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %8, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %235

219:                                              ; preds = %209
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cg_entities, align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @ET_PLAYER, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %219
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cg_entities, align 8
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i64 %232
  %234 = call i32 @CG_ResetPlayerEntity(%struct.TYPE_15__* %233)
  br label %235

235:                                              ; preds = %229, %219, %209
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %5, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %5, align 4
  br label %205

239:                                              ; preds = %205
  %240 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %240)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CG_RegisterClientModelname(%struct.TYPE_12__*, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @CG_Error(i8*, i8*, ...) #2

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #2

declare dso_local i64 @trap_R_LerpTag(i32*, i64, i32, i32, i32, i8*) #2

declare dso_local i8* @trap_S_RegisterSound(i32, i8*) #2

declare dso_local i32 @va(i8*, i8*, i8*) #2

declare dso_local i32 @CG_ResetPlayerEntity(%struct.TYPE_15__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
