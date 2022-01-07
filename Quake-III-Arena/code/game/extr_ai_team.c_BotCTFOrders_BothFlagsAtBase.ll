; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_team.c_BotCTFOrders_BothFlagsAtBase.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_team.c_BotCTFOrders_BothFlagsAtBase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@MAX_NETNAME = common dso_local global i32 0, align 4
@CTFS_AGRESSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cmd_defendbase\00", align 1
@VOICECHAT_DEFEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"cmd_getflag\00", align 1
@VOICECHAT_GETFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotCTFOrders_BothFlagsAtBase(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %10 = load i32, i32* @MAX_CLIENTS, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @MAX_NETNAME, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = mul nuw i64 4, %11
  %19 = trunc i64 %18 to i32
  %20 = call i32 @BotSortTeamMatesByBaseTravelTime(%struct.TYPE_8__* %17, i32* %13, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @BotSortTeamMatesByTaskPreference(%struct.TYPE_8__* %21, i32* %13, i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CTFS_AGRESSIVE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %203, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  switch i32 %31, label %110 [
    i32 1, label %32
    i32 2, label %33
    i32 3, label %64
  ]

32:                                               ; preds = %30
  br label %202

33:                                               ; preds = %30
  %34 = getelementptr inbounds i32, i32* %13, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = trunc i64 %15 to i32
  %37 = call i32 @ClientName(i32 %35, i8* %16, i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %16, i32* null)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = getelementptr inbounds i32, i32* %13, i64 0
  %42 = load i32, i32* %41, align 16
  %43 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %40, i32 %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = getelementptr inbounds i32, i32* %13, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = load i32, i32* @VOICECHAT_DEFEND, align 4
  %48 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %44, i32 %46, i32 %47)
  %49 = getelementptr inbounds i32, i32* %13, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = trunc i64 %15 to i32
  %52 = call i32 @ClientName(i32 %50, i8* %16, i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32* null)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = getelementptr inbounds i32, i32* %13, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %55, i32 %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %60 = getelementptr inbounds i32, i32* %13, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %63 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %59, i32 %61, i32 %62)
  br label %202

64:                                               ; preds = %30
  %65 = getelementptr inbounds i32, i32* %13, i64 0
  %66 = load i32, i32* %65, align 16
  %67 = trunc i64 %15 to i32
  %68 = call i32 @ClientName(i32 %66, i8* %16, i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %16, i32* null)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds i32, i32* %13, i64 0
  %73 = load i32, i32* %72, align 16
  %74 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %71, i32 %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %76 = getelementptr inbounds i32, i32* %13, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = load i32, i32* @VOICECHAT_DEFEND, align 4
  %79 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %75, i32 %77, i32 %78)
  %80 = getelementptr inbounds i32, i32* %13, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = trunc i64 %15 to i32
  %83 = call i32 @ClientName(i32 %81, i8* %16, i32 %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %85 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %16, i32* null)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = getelementptr inbounds i32, i32* %13, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %86, i32 %88)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %91 = getelementptr inbounds i32, i32* %13, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @VOICECHAT_DEFEND, align 4
  %94 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %90, i32 %92, i32 %93)
  %95 = getelementptr inbounds i32, i32* %13, i64 2
  %96 = load i32, i32* %95, align 8
  %97 = trunc i64 %15 to i32
  %98 = call i32 @ClientName(i32 %96, i8* %16, i32 %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %100 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32* null)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %102 = getelementptr inbounds i32, i32* %13, i64 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %101, i32 %103)
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %106 = getelementptr inbounds i32, i32* %13, i64 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %109 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %105, i32 %107, i32 %108)
  br label %202

110:                                              ; preds = %30
  %111 = load i32, i32* %3, align 4
  %112 = sitofp i32 %111 to float
  %113 = fptosi float %112 to i32
  %114 = sitofp i32 %113 to double
  %115 = fmul double %114, 5.000000e-01
  %116 = fadd double %115, 5.000000e-01
  %117 = fptosi double %116 to i32
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp sgt i32 %118, 5
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  store i32 5, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %110
  %122 = load i32, i32* %3, align 4
  %123 = sitofp i32 %122 to float
  %124 = fptosi float %123 to i32
  %125 = sitofp i32 %124 to double
  %126 = fmul double %125, 4.000000e-01
  %127 = fadd double %126, 5.000000e-01
  %128 = fptosi double %127 to i32
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp sgt i32 %129, 4
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  store i32 4, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %121
  store i32 0, i32* %6, align 4
  br label %133

133:                                              ; preds = %159, %132
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %162

137:                                              ; preds = %133
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %13, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = trunc i64 %15 to i32
  %143 = call i32 @ClientName(i32 %141, i8* %16, i32 %142)
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %145 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %16, i32* null)
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %13, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %146, i32 %150)
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %13, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @VOICECHAT_DEFEND, align 4
  %158 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %152, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %137
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  br label %133

162:                                              ; preds = %133
  store i32 0, i32* %6, align 4
  br label %163

163:                                              ; preds = %198, %162
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %201

167:                                              ; preds = %163
  %168 = load i32, i32* %3, align 4
  %169 = load i32, i32* %6, align 4
  %170 = sub nsw i32 %168, %169
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %13, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = trunc i64 %15 to i32
  %176 = call i32 @ClientName(i32 %174, i8* %16, i32 %175)
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %178 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32* null)
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* %6, align 4
  %182 = sub nsw i32 %180, %181
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %13, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %179, i32 %186)
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* %6, align 4
  %191 = sub nsw i32 %189, %190
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %13, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %197 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %188, i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %167
  %199 = load i32, i32* %6, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %6, align 4
  br label %163

201:                                              ; preds = %163
  br label %202

202:                                              ; preds = %201, %64, %33, %32
  br label %376

203:                                              ; preds = %1
  %204 = load i32, i32* %3, align 4
  switch i32 %204, label %283 [
    i32 1, label %205
    i32 2, label %206
    i32 3, label %237
  ]

205:                                              ; preds = %203
  br label %375

206:                                              ; preds = %203
  %207 = getelementptr inbounds i32, i32* %13, i64 0
  %208 = load i32, i32* %207, align 16
  %209 = trunc i64 %15 to i32
  %210 = call i32 @ClientName(i32 %208, i8* %16, i32 %209)
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %212 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %211, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %16, i32* null)
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %214 = getelementptr inbounds i32, i32* %13, i64 0
  %215 = load i32, i32* %214, align 16
  %216 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %213, i32 %215)
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %218 = getelementptr inbounds i32, i32* %13, i64 0
  %219 = load i32, i32* %218, align 16
  %220 = load i32, i32* @VOICECHAT_DEFEND, align 4
  %221 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %217, i32 %219, i32 %220)
  %222 = getelementptr inbounds i32, i32* %13, i64 1
  %223 = load i32, i32* %222, align 4
  %224 = trunc i64 %15 to i32
  %225 = call i32 @ClientName(i32 %223, i8* %16, i32 %224)
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %227 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %226, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32* null)
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %229 = getelementptr inbounds i32, i32* %13, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %228, i32 %230)
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %233 = getelementptr inbounds i32, i32* %13, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %236 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %232, i32 %234, i32 %235)
  br label %375

237:                                              ; preds = %203
  %238 = getelementptr inbounds i32, i32* %13, i64 0
  %239 = load i32, i32* %238, align 16
  %240 = trunc i64 %15 to i32
  %241 = call i32 @ClientName(i32 %239, i8* %16, i32 %240)
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %243 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %242, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %16, i32* null)
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %245 = getelementptr inbounds i32, i32* %13, i64 0
  %246 = load i32, i32* %245, align 16
  %247 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %244, i32 %246)
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %249 = getelementptr inbounds i32, i32* %13, i64 0
  %250 = load i32, i32* %249, align 16
  %251 = load i32, i32* @VOICECHAT_DEFEND, align 4
  %252 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %248, i32 %250, i32 %251)
  %253 = getelementptr inbounds i32, i32* %13, i64 1
  %254 = load i32, i32* %253, align 4
  %255 = trunc i64 %15 to i32
  %256 = call i32 @ClientName(i32 %254, i8* %16, i32 %255)
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %258 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %257, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32* null)
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %260 = getelementptr inbounds i32, i32* %13, i64 1
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %259, i32 %261)
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %264 = getelementptr inbounds i32, i32* %13, i64 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %267 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %263, i32 %265, i32 %266)
  %268 = getelementptr inbounds i32, i32* %13, i64 2
  %269 = load i32, i32* %268, align 8
  %270 = trunc i64 %15 to i32
  %271 = call i32 @ClientName(i32 %269, i8* %16, i32 %270)
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %273 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %272, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32* null)
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %275 = getelementptr inbounds i32, i32* %13, i64 2
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %274, i32 %276)
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %279 = getelementptr inbounds i32, i32* %13, i64 2
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %282 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %278, i32 %280, i32 %281)
  br label %375

283:                                              ; preds = %203
  %284 = load i32, i32* %3, align 4
  %285 = sitofp i32 %284 to float
  %286 = fptosi float %285 to i32
  %287 = sitofp i32 %286 to double
  %288 = fmul double %287, 4.000000e-01
  %289 = fadd double %288, 5.000000e-01
  %290 = fptosi double %289 to i32
  store i32 %290, i32* %4, align 4
  %291 = load i32, i32* %4, align 4
  %292 = icmp sgt i32 %291, 4
  br i1 %292, label %293, label %294

293:                                              ; preds = %283
  store i32 4, i32* %4, align 4
  br label %294

294:                                              ; preds = %293, %283
  %295 = load i32, i32* %3, align 4
  %296 = sitofp i32 %295 to float
  %297 = fptosi float %296 to i32
  %298 = sitofp i32 %297 to double
  %299 = fmul double %298, 5.000000e-01
  %300 = fadd double %299, 5.000000e-01
  %301 = fptosi double %300 to i32
  store i32 %301, i32* %5, align 4
  %302 = load i32, i32* %5, align 4
  %303 = icmp sgt i32 %302, 5
  br i1 %303, label %304, label %305

304:                                              ; preds = %294
  store i32 5, i32* %5, align 4
  br label %305

305:                                              ; preds = %304, %294
  store i32 0, i32* %6, align 4
  br label %306

306:                                              ; preds = %332, %305
  %307 = load i32, i32* %6, align 4
  %308 = load i32, i32* %4, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %335

310:                                              ; preds = %306
  %311 = load i32, i32* %6, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %13, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = trunc i64 %15 to i32
  %316 = call i32 @ClientName(i32 %314, i8* %16, i32 %315)
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %318 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %317, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %16, i32* null)
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %320 = load i32, i32* %6, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %13, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %319, i32 %323)
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %326 = load i32, i32* %6, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %13, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @VOICECHAT_DEFEND, align 4
  %331 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %325, i32 %329, i32 %330)
  br label %332

332:                                              ; preds = %310
  %333 = load i32, i32* %6, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %6, align 4
  br label %306

335:                                              ; preds = %306
  store i32 0, i32* %6, align 4
  br label %336

336:                                              ; preds = %371, %335
  %337 = load i32, i32* %6, align 4
  %338 = load i32, i32* %5, align 4
  %339 = icmp slt i32 %337, %338
  br i1 %339, label %340, label %374

340:                                              ; preds = %336
  %341 = load i32, i32* %3, align 4
  %342 = load i32, i32* %6, align 4
  %343 = sub nsw i32 %341, %342
  %344 = sub nsw i32 %343, 1
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %13, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = trunc i64 %15 to i32
  %349 = call i32 @ClientName(i32 %347, i8* %16, i32 %348)
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %351 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %350, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32* null)
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %353 = load i32, i32* %3, align 4
  %354 = load i32, i32* %6, align 4
  %355 = sub nsw i32 %353, %354
  %356 = sub nsw i32 %355, 1
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %13, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @BotSayTeamOrder(%struct.TYPE_8__* %352, i32 %359)
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %362 = load i32, i32* %3, align 4
  %363 = load i32, i32* %6, align 4
  %364 = sub nsw i32 %362, %363
  %365 = sub nsw i32 %364, 1
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %13, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* @VOICECHAT_GETFLAG, align 4
  %370 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_8__* %361, i32 %368, i32 %369)
  br label %371

371:                                              ; preds = %340
  %372 = load i32, i32* %6, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %6, align 4
  br label %336

374:                                              ; preds = %336
  br label %375

375:                                              ; preds = %374, %237, %206, %205
  br label %376

376:                                              ; preds = %375, %202
  %377 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %377)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BotSortTeamMatesByBaseTravelTime(%struct.TYPE_8__*, i32*, i32) #2

declare dso_local i32 @BotSortTeamMatesByTaskPreference(%struct.TYPE_8__*, i32*, i32) #2

declare dso_local i32 @ClientName(i32, i8*, i32) #2

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_8__*, i8*, i8*, i32*) #2

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
