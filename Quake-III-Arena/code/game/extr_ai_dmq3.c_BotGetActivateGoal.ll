; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotGetActivateGoal.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotGetActivateGoal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_22__, i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32*, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32 }

@MAX_ACTIVATEAREAS = common dso_local global i32 0, align 4
@MAX_INFO_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"*%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@PRT_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"BotGetActivateGoal: no entity found with model %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"func_door\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"health\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"spawnflags\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@ET_MOVER = common dso_local global i32 0, align 4
@AREACONTENTS_MOVER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"func_button\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"targetname\00", align 1
@bot_developer = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [62 x i8] c"BotGetActivateGoal: entity with model \22%s\22 has no targetname\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"BotGetActivateGoal: no entity with target \22%s\22\0A\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"BotGetActivateGoal: entity with target \22%s\22 has no classname\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"trigger_multiple\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"func_timer\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"target_relay\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"target_delay\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotGetActivateGoal(%struct.TYPE_25__* %0, i32 %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [10 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca [128 x i8], align 16
  %19 = alloca [128 x i8], align 16
  %20 = alloca [128 x i8], align 16
  %21 = alloca float, align 4
  %22 = alloca [10 x [128 x i8]], align 16
  %23 = alloca %struct.TYPE_27__, align 4
  %24 = alloca %struct.TYPE_28__, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %7, align 8
  %30 = load i32, i32* @MAX_ACTIVATEAREAS, align 4
  %31 = mul nsw i32 %30, 2
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %13, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %14, align 8
  %35 = load i32, i32* @MAX_INFO_STRING, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %17, align 8
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %39 = call i32 @memset(%struct.TYPE_26__* %38, i32 0, i32 40)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @BotEntityInfo(i32 %40, %struct.TYPE_27__* %23)
  %42 = trunc i64 %36 to i32
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @Com_sprintf(i8* %37, i32 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = call i32 @trap_AAS_NextBSPEntity(i32 0)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %62, %3
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %53 = call i64 @trap_AAS_ValueForBSPEpairKey(i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 128)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %62

56:                                               ; preds = %50
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %58 = call i32 @strcmp(i8* %37, i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  br label %65

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %55
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @trap_AAS_NextBSPEntity(i32 %63)
  store i32 %64, i32* %9, align 4
  br label %47

65:                                               ; preds = %60, %47
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @PRT_ERROR, align 4
  %70 = call i32 @BotAI_Print(i32 %69, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %29, align 4
  br label %552

71:                                               ; preds = %65
  %72 = load i32, i32* %9, align 4
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %74 = call i64 @trap_AAS_ValueForBSPEpairKey(i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %73, i32 128)
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %238, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @trap_AAS_FloatForBSPEpairKey(i32 %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), float* %21)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load float, float* %21, align 4
  %84 = fcmp une float %83, 0.000000e+00
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %89 = call i32 @BotFuncDoorActivateGoal(%struct.TYPE_25__* %86, i32 %87, %struct.TYPE_26__* %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %4, align 4
  store i32 1, i32* %29, align 4
  br label %552

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %78
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @trap_AAS_IntForBSPEpairKey(i32 %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %11)
  %95 = load i32, i32* %11, align 4
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32 0, i32* %4, align 4
  store i32 1, i32* %29, align 4
  br label %552

99:                                               ; preds = %92
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %25, align 4
  %102 = call i32 @trap_AAS_VectorForBSPEpairKey(i32 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %25, align 4
  %106 = call i32 @VectorClear(i32 %105)
  br label %107

107:                                              ; preds = %104, %99
  %108 = load i32, i32* %25, align 4
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @VectorCompare(i32 %108, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  store i32 1, i32* %29, align 4
  br label %552

114:                                              ; preds = %107
  %115 = load i32, i32* %9, align 4
  %116 = trunc i64 %36 to i32
  %117 = call i64 @trap_AAS_ValueForBSPEpairKey(i32 %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %116)
  %118 = load i8, i8* %37, align 16
  %119 = icmp ne i8 %118, 0
  br i1 %119, label %120, label %237

120:                                              ; preds = %114
  %121 = getelementptr inbounds i8, i8* %37, i64 1
  %122 = call i32 @atoi(i8* %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %236

125:                                              ; preds = %120
  %126 = load i32, i32* %26, align 4
  %127 = call i32 @VectorClear(i32 %126)
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @ET_MOVER, align 4
  %130 = load i32, i32* %27, align 4
  %131 = load i32, i32* %28, align 4
  %132 = call i32 @BotModelMinsMaxs(i32 %128, i32 %129, i32 0, i32 %130, i32 %131)
  %133 = load i32, i32* %27, align 4
  %134 = load i32, i32* %28, align 4
  %135 = load i32, i32* @MAX_ACTIVATEAREAS, align 4
  %136 = mul nsw i32 %135, 2
  %137 = call i32 @trap_AAS_BBoxAreas(i32 %133, i32 %134, i32* %34, i32 %136)
  store i32 %137, i32* %15, align 4
  store i32 0, i32* %8, align 4
  br label %138

138:                                              ; preds = %183, %125
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %15, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %186

142:                                              ; preds = %138
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @MAX_ACTIVATEAREAS, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %186

149:                                              ; preds = %142
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %34, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @trap_AAS_AreaReachability(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %149
  br label %183

157:                                              ; preds = %149
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %34, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @trap_AAS_AreaInfo(i32 %161, %struct.TYPE_28__* %24)
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @AREACONTENTS_MOVER, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %182

168:                                              ; preds = %157
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %34, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %175, i64 %180
  store i32 %172, i32* %181, align 4
  br label %182

182:                                              ; preds = %168, %157
  br label %183

183:                                              ; preds = %182, %156
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %138

186:                                              ; preds = %148, %138
  store i32 0, i32* %8, align 4
  br label %187

187:                                              ; preds = %232, %186
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* %15, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %235

191:                                              ; preds = %187
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @MAX_ACTIVATEAREAS, align 4
  %196 = icmp sge i32 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  br label %235

198:                                              ; preds = %191
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %34, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @trap_AAS_AreaReachability(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %198
  br label %232

206:                                              ; preds = %198
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %34, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @trap_AAS_AreaInfo(i32 %210, %struct.TYPE_28__* %24)
  %212 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @AREACONTENTS_MOVER, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %231

217:                                              ; preds = %206
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %34, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 8
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i32, i32* %224, i64 %229
  store i32 %221, i32* %230, align 4
  br label %231

231:                                              ; preds = %217, %206
  br label %232

232:                                              ; preds = %231, %205
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %8, align 4
  br label %187

235:                                              ; preds = %197, %187
  br label %236

236:                                              ; preds = %235, %120
  br label %237

237:                                              ; preds = %236, %114
  br label %238

238:                                              ; preds = %237, %71
  %239 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %240 = call i32 @strcmp(i8* %239, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %238
  store i32 0, i32* %4, align 4
  store i32 1, i32* %29, align 4
  br label %552

243:                                              ; preds = %238
  %244 = load i32, i32* %9, align 4
  %245 = getelementptr inbounds [10 x [128 x i8]], [10 x [128 x i8]]* %22, i64 0, i64 0
  %246 = getelementptr inbounds [128 x i8], [128 x i8]* %245, i64 0, i64 0
  %247 = call i64 @trap_AAS_ValueForBSPEpairKey(i32 %244, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %246, i32 128)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %256, label %249

249:                                              ; preds = %243
  %250 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bot_developer, i32 0, i32 0), align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load i32, i32* @PRT_ERROR, align 4
  %254 = call i32 @BotAI_Print(i32 %253, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), i8* %37)
  br label %255

255:                                              ; preds = %252, %249
  store i32 0, i32* %4, align 4
  store i32 1, i32* %29, align 4
  br label %552

256:                                              ; preds = %243
  %257 = call i32 @trap_AAS_NextBSPEntity(i32 0)
  %258 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  store i32 %257, i32* %258, align 16
  store i32 0, i32* %8, align 4
  br label %259

259:                                              ; preds = %550, %521, %503, %476, %434, %410, %383, %341, %330, %312, %256
  %260 = load i32, i32* %8, align 4
  %261 = icmp sge i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = load i32, i32* %8, align 4
  %264 = icmp slt i32 %263, 10
  br label %265

265:                                              ; preds = %262, %259
  %266 = phi i1 [ false, %259 ], [ %264, %262 ]
  br i1 %266, label %267, label %551

267:                                              ; preds = %265
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %269
  %271 = load i32, i32* %270, align 4
  store i32 %271, i32* %9, align 4
  br label %272

272:                                              ; preds = %296, %267
  %273 = load i32, i32* %9, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %299

275:                                              ; preds = %272
  %276 = load i32, i32* %9, align 4
  %277 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %278 = call i64 @trap_AAS_ValueForBSPEpairKey(i32 %276, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %277, i32 128)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %281, label %280

280:                                              ; preds = %275
  br label %296

281:                                              ; preds = %275
  %282 = load i32, i32* %8, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [10 x [128 x i8]], [10 x [128 x i8]]* %22, i64 0, i64 %283
  %285 = getelementptr inbounds [128 x i8], [128 x i8]* %284, i64 0, i64 0
  %286 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %287 = call i32 @strcmp(i8* %285, i8* %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %295, label %289

289:                                              ; preds = %281
  %290 = load i32, i32* %9, align 4
  %291 = call i32 @trap_AAS_NextBSPEntity(i32 %290)
  %292 = load i32, i32* %8, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %293
  store i32 %291, i32* %294, align 4
  br label %299

295:                                              ; preds = %281
  br label %296

296:                                              ; preds = %295, %280
  %297 = load i32, i32* %9, align 4
  %298 = call i32 @trap_AAS_NextBSPEntity(i32 %297)
  store i32 %298, i32* %9, align 4
  br label %272

299:                                              ; preds = %289, %272
  %300 = load i32, i32* %9, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %315, label %302

302:                                              ; preds = %299
  %303 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bot_developer, i32 0, i32 0), align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %312

305:                                              ; preds = %302
  %306 = load i32, i32* @PRT_ERROR, align 4
  %307 = load i32, i32* %8, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [10 x [128 x i8]], [10 x [128 x i8]]* %22, i64 0, i64 %308
  %310 = getelementptr inbounds [128 x i8], [128 x i8]* %309, i64 0, i64 0
  %311 = call i32 @BotAI_Print(i32 %306, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i8* %310)
  br label %312

312:                                              ; preds = %305, %302
  %313 = load i32, i32* %8, align 4
  %314 = add nsw i32 %313, -1
  store i32 %314, i32* %8, align 4
  br label %259

315:                                              ; preds = %299
  %316 = load i32, i32* %9, align 4
  %317 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %318 = call i64 @trap_AAS_ValueForBSPEpairKey(i32 %316, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %317, i32 128)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %331, label %320

320:                                              ; preds = %315
  %321 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @bot_developer, i32 0, i32 0), align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %330

323:                                              ; preds = %320
  %324 = load i32, i32* @PRT_ERROR, align 4
  %325 = load i32, i32* %8, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [10 x [128 x i8]], [10 x [128 x i8]]* %22, i64 0, i64 %326
  %328 = getelementptr inbounds [128 x i8], [128 x i8]* %327, i64 0, i64 0
  %329 = call i32 @BotAI_Print(i32 %324, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0), i8* %328)
  br label %330

330:                                              ; preds = %323, %320
  br label %259

331:                                              ; preds = %315
  %332 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %333 = call i32 @strcmp(i8* %332, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %424, label %335

335:                                              ; preds = %331
  %336 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %337 = load i32, i32* %9, align 4
  %338 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %339 = call i32 @BotFuncButtonActivateGoal(%struct.TYPE_25__* %336, i32 %337, %struct.TYPE_26__* %338)
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %342, label %341

341:                                              ; preds = %335
  br label %259

342:                                              ; preds = %335
  %343 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %343, i32 0, i32 3
  %345 = load %struct.TYPE_24__*, %struct.TYPE_24__** %344, align 8
  %346 = icmp ne %struct.TYPE_24__* %345, null
  br i1 %346, label %347, label %384

347:                                              ; preds = %342
  %348 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %348, i32 0, i32 3
  %350 = load %struct.TYPE_24__*, %struct.TYPE_24__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %350, i32 0, i32 3
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %384

354:                                              ; preds = %347
  %355 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %355, i32 0, i32 3
  %357 = load %struct.TYPE_24__*, %struct.TYPE_24__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %361, i32 0, i32 3
  %363 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = icmp eq i64 %360, %364
  br i1 %365, label %366, label %384

366:                                              ; preds = %354
  %367 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %367, i32 0, i32 3
  %369 = load %struct.TYPE_24__*, %struct.TYPE_24__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = call i32 (...) @FloatTime()
  %373 = icmp sgt i32 %371, %372
  br i1 %373, label %374, label %384

374:                                              ; preds = %366
  %375 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %375, i32 0, i32 3
  %377 = load %struct.TYPE_24__*, %struct.TYPE_24__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = call i32 (...) @FloatTime()
  %381 = sub nsw i32 %380, 2
  %382 = icmp slt i32 %379, %381
  br i1 %382, label %383, label %384

383:                                              ; preds = %374
  br label %259

384:                                              ; preds = %374, %366, %354, %347, %342
  %385 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = call i64 @trap_AAS_AreaReachability(i32 %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %422

390:                                              ; preds = %384
  %391 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %392 = load i32, i32* @qfalse, align 4
  %393 = call i32 @BotEnableActivateGoalAreas(%struct.TYPE_26__* %391, i32 %392)
  %394 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %401 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %400, i32 0, i32 3
  %402 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 8
  %404 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @trap_AAS_AreaTravelTimeToGoalArea(i32 %396, i32 %399, i32 %403, i32 %406)
  store i32 %407, i32* %16, align 4
  %408 = load i32, i32* %16, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %411, label %410

410:                                              ; preds = %390
  br label %259

411:                                              ; preds = %390
  %412 = call i32 (...) @FloatTime()
  %413 = sitofp i32 %412 to double
  %414 = load i32, i32* %16, align 4
  %415 = sitofp i32 %414 to double
  %416 = fmul double %415, 1.000000e-02
  %417 = fadd double %413, %416
  %418 = fadd double %417, 5.000000e+00
  %419 = fptosi double %418 to i32
  %420 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %421 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %420, i32 0, i32 2
  store i32 %419, i32* %421, align 8
  br label %422

422:                                              ; preds = %411, %384
  %423 = load i32, i32* %9, align 4
  store i32 %423, i32* %4, align 4
  store i32 1, i32* %29, align 4
  br label %552

424:                                              ; preds = %331
  %425 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %426 = call i32 @strcmp(i8* %425, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %517, label %428

428:                                              ; preds = %424
  %429 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %430 = load i32, i32* %9, align 4
  %431 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %432 = call i32 @BotTriggerMultipleActivateGoal(%struct.TYPE_25__* %429, i32 %430, %struct.TYPE_26__* %431)
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %435, label %434

434:                                              ; preds = %428
  br label %259

435:                                              ; preds = %428
  %436 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %436, i32 0, i32 3
  %438 = load %struct.TYPE_24__*, %struct.TYPE_24__** %437, align 8
  %439 = icmp ne %struct.TYPE_24__* %438, null
  br i1 %439, label %440, label %477

440:                                              ; preds = %435
  %441 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %441, i32 0, i32 3
  %443 = load %struct.TYPE_24__*, %struct.TYPE_24__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %443, i32 0, i32 3
  %445 = load i64, i64* %444, align 8
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %477

447:                                              ; preds = %440
  %448 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %448, i32 0, i32 3
  %450 = load %struct.TYPE_24__*, %struct.TYPE_24__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %450, i32 0, i32 2
  %452 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %455 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %454, i32 0, i32 3
  %456 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = icmp eq i64 %453, %457
  br i1 %458, label %459, label %477

459:                                              ; preds = %447
  %460 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %460, i32 0, i32 3
  %462 = load %struct.TYPE_24__*, %struct.TYPE_24__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = call i32 (...) @FloatTime()
  %466 = icmp sgt i32 %464, %465
  br i1 %466, label %467, label %477

467:                                              ; preds = %459
  %468 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %469 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %468, i32 0, i32 3
  %470 = load %struct.TYPE_24__*, %struct.TYPE_24__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %470, i32 0, i32 1
  %472 = load i32, i32* %471, align 4
  %473 = call i32 (...) @FloatTime()
  %474 = sub nsw i32 %473, 2
  %475 = icmp slt i32 %472, %474
  br i1 %475, label %476, label %477

476:                                              ; preds = %467
  br label %259

477:                                              ; preds = %467, %459, %447, %440, %435
  %478 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %479 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = call i64 @trap_AAS_AreaReachability(i32 %480)
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %515

483:                                              ; preds = %477
  %484 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %485 = load i32, i32* @qfalse, align 4
  %486 = call i32 @BotEnableActivateGoalAreas(%struct.TYPE_26__* %484, i32 %485)
  %487 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %488 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %491 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %490, i32 0, i32 2
  %492 = load i32, i32* %491, align 8
  %493 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %494 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %493, i32 0, i32 3
  %495 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 8
  %497 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %498 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 4
  %500 = call i32 @trap_AAS_AreaTravelTimeToGoalArea(i32 %489, i32 %492, i32 %496, i32 %499)
  store i32 %500, i32* %16, align 4
  %501 = load i32, i32* %16, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %504, label %503

503:                                              ; preds = %483
  br label %259

504:                                              ; preds = %483
  %505 = call i32 (...) @FloatTime()
  %506 = sitofp i32 %505 to double
  %507 = load i32, i32* %16, align 4
  %508 = sitofp i32 %507 to double
  %509 = fmul double %508, 1.000000e-02
  %510 = fadd double %506, %509
  %511 = fadd double %510, 5.000000e+00
  %512 = fptosi double %511 to i32
  %513 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %514 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %513, i32 0, i32 2
  store i32 %512, i32* %514, align 8
  br label %515

515:                                              ; preds = %504, %477
  %516 = load i32, i32* %9, align 4
  store i32 %516, i32* %4, align 4
  store i32 1, i32* %29, align 4
  br label %552

517:                                              ; preds = %424
  %518 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %519 = call i32 @strcmp(i8* %518, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %522, label %521

521:                                              ; preds = %517
  br label %259

522:                                              ; preds = %517
  %523 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %524 = call i32 @strcmp(i8* %523, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %530

526:                                              ; preds = %522
  %527 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %528 = call i32 @strcmp(i8* %527, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %547, label %530

530:                                              ; preds = %526, %522
  %531 = load i32, i32* %9, align 4
  %532 = load i32, i32* %8, align 4
  %533 = add nsw i32 %532, 1
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds [10 x [128 x i8]], [10 x [128 x i8]]* %22, i64 0, i64 %534
  %536 = getelementptr inbounds [128 x i8], [128 x i8]* %535, i64 0, i64 0
  %537 = call i64 @trap_AAS_ValueForBSPEpairKey(i32 %531, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %536, i32 128)
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %546

539:                                              ; preds = %530
  %540 = load i32, i32* %8, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %8, align 4
  %542 = call i32 @trap_AAS_NextBSPEntity(i32 0)
  %543 = load i32, i32* %8, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %544
  store i32 %542, i32* %545, align 4
  br label %546

546:                                              ; preds = %539, %530
  br label %547

547:                                              ; preds = %546, %526
  br label %548

548:                                              ; preds = %547
  br label %549

549:                                              ; preds = %548
  br label %550

550:                                              ; preds = %549
  br label %259

551:                                              ; preds = %265
  store i32 0, i32* %4, align 4
  store i32 1, i32* %29, align 4
  br label %552

552:                                              ; preds = %551, %515, %422, %255, %242, %113, %98, %85, %68
  %553 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %553)
  %554 = load i32, i32* %4, align 4
  ret i32 %554
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #2

declare dso_local i32 @BotEntityInfo(i32, %struct.TYPE_27__*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @trap_AAS_NextBSPEntity(i32) #2

declare dso_local i64 @trap_AAS_ValueForBSPEpairKey(i32, i8*, i8*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @BotAI_Print(i32, i8*, i8*) #2

declare dso_local i64 @trap_AAS_FloatForBSPEpairKey(i32, i8*, float*) #2

declare dso_local i32 @BotFuncDoorActivateGoal(%struct.TYPE_25__*, i32, %struct.TYPE_26__*) #2

declare dso_local i32 @trap_AAS_IntForBSPEpairKey(i32, i8*, i32*) #2

declare dso_local i32 @trap_AAS_VectorForBSPEpairKey(i32, i8*, i32) #2

declare dso_local i32 @VectorClear(i32) #2

declare dso_local i32 @VectorCompare(i32, i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @BotModelMinsMaxs(i32, i32, i32, i32, i32) #2

declare dso_local i32 @trap_AAS_BBoxAreas(i32, i32, i32*, i32) #2

declare dso_local i64 @trap_AAS_AreaReachability(i32) #2

declare dso_local i32 @trap_AAS_AreaInfo(i32, %struct.TYPE_28__*) #2

declare dso_local i32 @BotFuncButtonActivateGoal(%struct.TYPE_25__*, i32, %struct.TYPE_26__*) #2

declare dso_local i32 @FloatTime(...) #2

declare dso_local i32 @BotEnableActivateGoalAreas(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @trap_AAS_AreaTravelTimeToGoalArea(i32, i32, i32, i32) #2

declare dso_local i32 @BotTriggerMultipleActivateGoal(%struct.TYPE_25__*, i32, %struct.TYPE_26__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
