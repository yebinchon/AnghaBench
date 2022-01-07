; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_team.c_BotCTFOrders_BothFlagsNotAtBase.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_team.c_BotCTFOrders_BothFlagsNotAtBase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@MAX_NETNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"cmd_getflag\00", align 1
@VOICECHAT_GETFLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"cmd_accompanyme\00", align 1
@VOICECHAT_FOLLOWME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"cmd_accompany\00", align 1
@VOICECHAT_FOLLOWFLAGCARRIER = common dso_local global i32 0, align 4
@VOICECHAT_RETURNFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotCTFOrders_BothFlagsNotAtBase(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %12 = load i32, i32* @MAX_CLIENTS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @MAX_NETNAME, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %19 = load i32, i32* @MAX_NETNAME, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = mul nuw i64 4, %13
  %24 = trunc i64 %23 to i32
  %25 = call i32 @BotSortTeamMatesByBaseTravelTime(%struct.TYPE_8__* %22, i32* %15, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @BotSortTeamMatesByTaskPreference(%struct.TYPE_8__* %26, i32* %15, i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %144 [
    i32 1, label %32
    i32 2, label %33
    i32 3, label %59
  ]

32:                                               ; preds = %1
  br label %330

33:                                               ; preds = %1
  %34 = getelementptr inbounds i32, i32* %15, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = getelementptr inbounds i32, i32* %15, i64 0
  %42 = load i32, i32* %41, align 16
  store i32 %42, i32* %7, align 4
  br label %46

43:                                               ; preds = %33
  %44 = getelementptr inbounds i32, i32* %15, i64 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %7, align 4
  %48 = trunc i64 %17 to i32
  %49 = call i32 @ClientName(i32 %47, i8* %18, i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %18, i8* null)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %52, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %58 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %55, i32 %56, i32 %57)
  br label %330

59:                                               ; preds = %1
  %60 = getelementptr inbounds i32, i32* %15, i64 0
  %61 = load i32, i32* %60, align 16
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = getelementptr inbounds i32, i32* %15, i64 0
  %68 = load i32, i32* %67, align 16
  store i32 %68, i32* %7, align 4
  br label %72

69:                                               ; preds = %59
  %70 = getelementptr inbounds i32, i32* %15, i64 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %7, align 4
  %74 = trunc i64 %17 to i32
  %75 = call i32 @ClientName(i32 %73, i8* %18, i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %108

80:                                               ; preds = %72
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = trunc i64 %20 to i32
  %85 = call i32 @ClientName(i32 %83, i8* %21, i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %80
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %95 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %18, i8* null)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @VOICECHAT_FOLLOWME, align 4
  %99 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %96, i32 %97, i32 %98)
  br label %107

100:                                              ; preds = %80
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %102 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %18, i8* %21, i8* null)
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @VOICECHAT_FOLLOWFLAGCARRIER, align 4
  %106 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %100, %93
  br label %115

108:                                              ; preds = %72
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %110 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %18, i8* null)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %114 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %108, %107
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %116, i32 %117)
  %119 = getelementptr inbounds i32, i32* %15, i64 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %120, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = getelementptr inbounds i32, i32* %15, i64 2
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %7, align 4
  br label %131

128:                                              ; preds = %115
  %129 = getelementptr inbounds i32, i32* %15, i64 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* %7, align 4
  %133 = trunc i64 %17 to i32
  %134 = call i32 @ClientName(i32 %132, i8* %18, i32 %133)
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %136 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %18, i8* null)
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %137, i32 %138)
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @VOICECHAT_RETURNFLAG, align 4
  %143 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %140, i32 %141, i32 %142)
  br label %330

144:                                              ; preds = %1
  %145 = load i32, i32* %3, align 4
  %146 = sitofp i32 %145 to float
  %147 = fptosi float %146 to i32
  %148 = sitofp i32 %147 to double
  %149 = fmul double %148, 4.000000e-01
  %150 = fadd double %149, 5.000000e-01
  %151 = fptosi double %150 to i32
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp sgt i32 %152, 4
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  store i32 4, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %144
  %156 = load i32, i32* %3, align 4
  %157 = sitofp i32 %156 to float
  %158 = fptosi float %157 to i32
  %159 = sitofp i32 %158 to double
  %160 = fmul double %159, 5.000000e-01
  %161 = fadd double %160, 5.000000e-01
  %162 = fptosi double %161 to i32
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = icmp sgt i32 %163, 5
  br i1 %164, label %165, label %166

165:                                              ; preds = %155
  store i32 5, i32* %5, align 4
  br label %166

166:                                              ; preds = %165, %155
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, -1
  br i1 %170, label %171, label %236

171:                                              ; preds = %166
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = trunc i64 %20 to i32
  %176 = call i32 @ClientName(i32 %174, i8* %21, i32 %175)
  store i32 0, i32* %6, align 4
  br label %177

177:                                              ; preds = %232, %171
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %4, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %235

181:                                              ; preds = %177
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %15, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %185, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  br label %232

191:                                              ; preds = %181
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %15, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = trunc i64 %17 to i32
  %197 = call i32 @ClientName(i32 %195, i8* %18, i32 %196)
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %200, %203
  br i1 %204, label %205, label %215

205:                                              ; preds = %191
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %207 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %206, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %18, i8* null)
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %15, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @VOICECHAT_FOLLOWME, align 4
  %214 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %208, i32 %212, i32 %213)
  br label %225

215:                                              ; preds = %191
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %217 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %216, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %18, i8* %21, i8* null)
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %15, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @VOICECHAT_FOLLOWFLAGCARRIER, align 4
  %224 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %218, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %215, %205
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %15, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %226, i32 %230)
  br label %232

232:                                              ; preds = %225, %190
  %233 = load i32, i32* %6, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %6, align 4
  br label %177

235:                                              ; preds = %177
  br label %277

236:                                              ; preds = %166
  store i32 0, i32* %6, align 4
  br label %237

237:                                              ; preds = %273, %236
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* %4, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %276

241:                                              ; preds = %237
  %242 = load i32, i32* %6, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %15, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %245, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %241
  br label %273

251:                                              ; preds = %241
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %15, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = trunc i64 %17 to i32
  %257 = call i32 @ClientName(i32 %255, i8* %18, i32 %256)
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %259 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %258, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %18, i8* null)
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %15, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %266 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %260, i32 %264, i32 %265)
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %268 = load i32, i32* %6, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %15, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %267, i32 %271)
  br label %273

273:                                              ; preds = %251, %250
  %274 = load i32, i32* %6, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %6, align 4
  br label %237

276:                                              ; preds = %237
  br label %277

277:                                              ; preds = %276, %235
  store i32 0, i32* %6, align 4
  br label %278

278:                                              ; preds = %326, %277
  %279 = load i32, i32* %6, align 4
  %280 = load i32, i32* %5, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %329

282:                                              ; preds = %278
  %283 = load i32, i32* %3, align 4
  %284 = load i32, i32* %6, align 4
  %285 = sub nsw i32 %283, %284
  %286 = sub nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %15, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %289, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %282
  br label %326

295:                                              ; preds = %282
  %296 = load i32, i32* %3, align 4
  %297 = load i32, i32* %6, align 4
  %298 = sub nsw i32 %296, %297
  %299 = sub nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %15, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = trunc i64 %17 to i32
  %304 = call i32 @ClientName(i32 %302, i8* %18, i32 %303)
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %306 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %305, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %18, i8* null)
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %308 = load i32, i32* %3, align 4
  %309 = load i32, i32* %6, align 4
  %310 = sub nsw i32 %308, %309
  %311 = sub nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %15, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %307, i32 %314)
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %317 = load i32, i32* %3, align 4
  %318 = load i32, i32* %6, align 4
  %319 = sub nsw i32 %317, %318
  %320 = sub nsw i32 %319, 1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %15, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @VOICECHAT_RETURNFLAG, align 4
  %325 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %316, i32 %323, i32 %324)
  br label %326

326:                                              ; preds = %295, %294
  %327 = load i32, i32* %6, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %6, align 4
  br label %278

329:                                              ; preds = %278
  br label %330

330:                                              ; preds = %329, %131, %46, %32
  %331 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %331)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BotSortTeamMatesByBaseTravelTime(%struct.TYPE_8__*, i32*, i32) #2

declare dso_local i32 @BotSortTeamMatesByTaskPreference(%struct.TYPE_8__*, i32*, i32) #2

declare dso_local i32 @ClientName(i32, i8*, i32) #2

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_8__*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @BotSayTeamOrder(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
