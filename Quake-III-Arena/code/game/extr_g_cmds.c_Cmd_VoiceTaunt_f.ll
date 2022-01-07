; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_Cmd_VoiceTaunt_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_Cmd_VoiceTaunt_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }

@SVF_BOT = common dso_local global i32 0, align 4
@SAY_TELL = common dso_local global i32 0, align 4
@VOICECHAT_DEATHINSULT = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_16__* null, align 8
@MOD_GAUNTLET = common dso_local global i64 0, align 8
@VOICECHAT_KILLGAUNTLET = common dso_local global i32 0, align 4
@VOICECHAT_KILLINSULT = common dso_local global i32 0, align 4
@g_gametype = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@MAX_CLIENTS = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@VOICECHAT_PRAISE = common dso_local global i32 0, align 4
@SAY_ALL = common dso_local global i32 0, align 4
@VOICECHAT_TAUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @Cmd_VoiceTaunt_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Cmd_VoiceTaunt_f(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %8 = icmp ne %struct.TYPE_14__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %265

10:                                               ; preds = %1
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %14 = icmp ne %struct.TYPE_16__* %13, null
  br i1 %14, label %15, label %72

15:                                               ; preds = %10
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = icmp ne %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %72

22:                                               ; preds = %15
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %29, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %22
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SVF_BOT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %35
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = load i32, i32* @SAY_TELL, align 4
  %51 = load i32, i32* @VOICECHAT_DEATHINSULT, align 4
  %52 = load i32, i32* @qfalse, align 4
  %53 = call i32 @G_Voice(%struct.TYPE_16__* %46, %struct.TYPE_16__* %49, i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %45, %35
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SVF_BOT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %54
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %65 = load i32, i32* @SAY_TELL, align 4
  %66 = load i32, i32* @VOICECHAT_DEATHINSULT, align 4
  %67 = load i32, i32* @qfalse, align 4
  %68 = call i32 @G_Voice(%struct.TYPE_16__* %63, %struct.TYPE_16__* %64, i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %54
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %71, align 8
  br label %265

72:                                               ; preds = %22, %15, %10
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %77, 0
  br i1 %78, label %79, label %178

79:                                               ; preds = %72
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %84, %88
  br i1 %89, label %90, label %178

90:                                               ; preds = %79
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g_entities, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i64 %96
  store %struct.TYPE_16__* %97, %struct.TYPE_16__** %3, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = icmp ne %struct.TYPE_14__* %100, null
  br i1 %101, label %102, label %177

102:                                              ; preds = %90
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MOD_GAUNTLET, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %141

110:                                              ; preds = %102
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SVF_BOT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %110
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %121 = load i32, i32* @SAY_TELL, align 4
  %122 = load i32, i32* @VOICECHAT_KILLGAUNTLET, align 4
  %123 = load i32, i32* @qfalse, align 4
  %124 = call i32 @G_Voice(%struct.TYPE_16__* %119, %struct.TYPE_16__* %120, i32 %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %118, %110
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @SVF_BOT, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %125
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %136 = load i32, i32* @SAY_TELL, align 4
  %137 = load i32, i32* @VOICECHAT_KILLGAUNTLET, align 4
  %138 = load i32, i32* @qfalse, align 4
  %139 = call i32 @G_Voice(%struct.TYPE_16__* %134, %struct.TYPE_16__* %135, i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %133, %125
  br label %172

141:                                              ; preds = %102
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @SVF_BOT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %141
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %152 = load i32, i32* @SAY_TELL, align 4
  %153 = load i32, i32* @VOICECHAT_KILLINSULT, align 4
  %154 = load i32, i32* @qfalse, align 4
  %155 = call i32 @G_Voice(%struct.TYPE_16__* %150, %struct.TYPE_16__* %151, i32 %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %149, %141
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @SVF_BOT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %156
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %167 = load i32, i32* @SAY_TELL, align 4
  %168 = load i32, i32* @VOICECHAT_KILLINSULT, align 4
  %169 = load i32, i32* @qfalse, align 4
  %170 = call i32 @G_Voice(%struct.TYPE_16__* %165, %struct.TYPE_16__* %166, i32 %167, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %164, %156
  br label %172

172:                                              ; preds = %171, %140
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  store i64 -1, i64* %176, align 8
  br label %265

177:                                              ; preds = %90
  br label %178

178:                                              ; preds = %177, %79, %72
  %179 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @g_gametype, i32 0, i32 0), align 8
  %180 = load i64, i64* @GT_TEAM, align 8
  %181 = icmp sge i64 %179, %180
  br i1 %181, label %182, label %259

182:                                              ; preds = %178
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %255, %182
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @MAX_CLIENTS, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %258

187:                                              ; preds = %183
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g_entities, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i64 %190
  store %struct.TYPE_16__* %191, %struct.TYPE_16__** %3, align 8
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %193, align 8
  %195 = icmp ne %struct.TYPE_14__* %194, null
  br i1 %195, label %196, label %254

196:                                              ; preds = %187
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %199 = icmp ne %struct.TYPE_16__* %197, %198
  br i1 %199, label %200, label %254

200:                                              ; preds = %196
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %206, %212
  br i1 %213, label %214, label %254

214:                                              ; preds = %200
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 0), align 8
  %221 = icmp sgt i64 %219, %220
  br i1 %221, label %222, label %253

222:                                              ; preds = %214
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @SVF_BOT, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %237, label %230

230:                                              ; preds = %222
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %233 = load i32, i32* @SAY_TELL, align 4
  %234 = load i32, i32* @VOICECHAT_PRAISE, align 4
  %235 = load i32, i32* @qfalse, align 4
  %236 = call i32 @G_Voice(%struct.TYPE_16__* %231, %struct.TYPE_16__* %232, i32 %233, i32 %234, i32 %235)
  br label %237

237:                                              ; preds = %230, %222
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @SVF_BOT, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %252, label %245

245:                                              ; preds = %237
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %248 = load i32, i32* @SAY_TELL, align 4
  %249 = load i32, i32* @VOICECHAT_PRAISE, align 4
  %250 = load i32, i32* @qfalse, align 4
  %251 = call i32 @G_Voice(%struct.TYPE_16__* %246, %struct.TYPE_16__* %247, i32 %248, i32 %249, i32 %250)
  br label %252

252:                                              ; preds = %245, %237
  br label %265

253:                                              ; preds = %214
  br label %254

254:                                              ; preds = %253, %200, %196, %187
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %4, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %4, align 4
  br label %183

258:                                              ; preds = %183
  br label %259

259:                                              ; preds = %258, %178
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %261 = load i32, i32* @SAY_ALL, align 4
  %262 = load i32, i32* @VOICECHAT_TAUNT, align 4
  %263 = load i32, i32* @qfalse, align 4
  %264 = call i32 @G_Voice(%struct.TYPE_16__* %260, %struct.TYPE_16__* null, i32 %261, i32 %262, i32 %263)
  br label %265

265:                                              ; preds = %259, %252, %172, %69, %9
  ret void
}

declare dso_local i32 @G_Voice(%struct.TYPE_16__*, %struct.TYPE_16__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
