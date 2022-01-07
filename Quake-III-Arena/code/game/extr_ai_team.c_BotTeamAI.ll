; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_team.c_BotTeamAI.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_team.c_BotTeamAI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i8*, i32, i64, i64, i8*, i32, i8*, i32, i32 }

@MAX_NETNAME = common dso_local global i32 0, align 4
@gametype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"whoisteamleader\00", align 1
@CHAT_TEAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"iamteamleader\00", align 1
@VOICECHAT_STARTLEADER = common dso_local global i32 0, align 4
@qfalse = common dso_local global i8* null, align 8
@CTFS_AGRESSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotTeamAI(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %7 = load i32, i32* @MAX_NETNAME, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i32, i32* @gametype, align 4
  %12 = icmp slt i32 %11, 128
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %261

14:                                               ; preds = %1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = call i32 @BotValidTeamLeader(%struct.TYPE_13__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %129, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = call i32 @FindHumanTeamLeader(%struct.TYPE_13__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %128, label %22

22:                                               ; preds = %18
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %60, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %60, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 10
  %37 = call i64 (...) @FloatTime()
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = call i64 (...) @FloatTime()
  %41 = add nsw i64 %40, 5
  %42 = sitofp i64 %41 to double
  %43 = call double (...) @random()
  %44 = fmul double %43, 1.000000e+01
  %45 = fadd double %42, %44
  %46 = fptosi double %45 to i64
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %59

49:                                               ; preds = %32
  %50 = call i64 (...) @FloatTime()
  %51 = add nsw i64 %50, 5
  %52 = sitofp i64 %51 to double
  %53 = call double (...) @random()
  %54 = fmul double %53, 1.000000e+01
  %55 = fadd double %52, %54
  %56 = fptosi double %55 to i64
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %49, %39
  br label %60

60:                                               ; preds = %59, %27, %22
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %60
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 (...) @FloatTime()
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %65
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %73 = call i32 @BotAI_BotInitialChat(%struct.TYPE_13__* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CHAT_TEAM, align 4
  %78 = call i32 @trap_BotEnterChat(i32 %76, i32 0, i32 %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = call i64 (...) @FloatTime()
  %82 = add nsw i64 %81, 8
  %83 = sitofp i64 %82 to double
  %84 = call double (...) @random()
  %85 = fmul double %84, 1.000000e+01
  %86 = fadd double %83, %85
  %87 = fptosi double %86 to i64
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %71, %65, %60
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %127

95:                                               ; preds = %90
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i64 (...) @FloatTime()
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %95
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %103 = call i32 @BotAI_BotInitialChat(%struct.TYPE_13__* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 11
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CHAT_TEAM, align 4
  %108 = call i32 @trap_BotEnterChat(i32 %106, i32 0, i32 %107)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %110 = load i32, i32* @VOICECHAT_STARTLEADER, align 4
  %111 = call i32 @BotSayVoiceTeamOrder(%struct.TYPE_13__* %109, i32 -1, i32 %110)
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 8
  %115 = trunc i64 %8 to i32
  %116 = call i32 @ClientName(i32 %114, i8* %10, i32 %115)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 3
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @strncpy(i8* %119, i8* %10, i32 8)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 8
  store i8 0, i8* %124, align 1
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %101, %95, %90
  store i32 1, i32* %6, align 4
  br label %261

128:                                              ; preds = %18
  br label %129

129:                                              ; preds = %128, %14
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 8
  %137 = trunc i64 %8 to i32
  %138 = call i32 @ClientName(i32 %136, i8* %10, i32 %137)
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = call i64 @Q_stricmp(i8* %10, i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %129
  store i32 1, i32* %6, align 4
  br label %261

145:                                              ; preds = %129
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %147 = call i32 @BotNumTeamMates(%struct.TYPE_13__* %146)
  store i32 %147, i32* %3, align 4
  %148 = load i32, i32* @gametype, align 4
  switch i32 %148, label %260 [
    i32 128, label %149
    i32 131, label %190
  ]

149:                                              ; preds = %145
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %3, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %160, label %155

155:                                              ; preds = %149
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 7
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %170

160:                                              ; preds = %155, %149
  %161 = call i64 (...) @FloatTime()
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 5
  store i64 %161, i64* %163, align 8
  %164 = load i32, i32* %3, align 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 8
  %167 = load i8*, i8** @qfalse, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 7
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %160, %155
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %170
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = call i64 (...) @FloatTime()
  %180 = sub nsw i64 %179, 5
  %181 = icmp slt i64 %178, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %175
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %184 = call i32 @BotTeamOrders(%struct.TYPE_13__* %183)
  %185 = call i64 (...) @FloatTime()
  %186 = add nsw i64 %185, 120
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 5
  store i64 %186, i64* %188, align 8
  br label %189

189:                                              ; preds = %182, %175, %170
  br label %260

190:                                              ; preds = %145
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %3, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %206, label %196

196:                                              ; preds = %190
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 9
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %206, label %201

201:                                              ; preds = %196
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 7
  %204 = load i8*, i8** %203, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %219

206:                                              ; preds = %201, %196, %190
  %207 = call i64 (...) @FloatTime()
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 5
  store i64 %207, i64* %209, align 8
  %210 = load i32, i32* %3, align 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 4
  store i32 %210, i32* %212, align 8
  %213 = load i8*, i8** @qfalse, align 8
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 9
  store i8* %213, i8** %215, align 8
  %216 = load i8*, i8** @qfalse, align 8
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 7
  store i8* %216, i8** %218, align 8
  br label %219

219:                                              ; preds = %206, %201
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 6
  %222 = load i64, i64* %221, align 8
  %223 = call i64 (...) @FloatTime()
  %224 = sub nsw i64 %223, 240
  %225 = icmp slt i64 %222, %224
  br i1 %225, label %226, label %242

226:                                              ; preds = %219
  %227 = call i64 (...) @FloatTime()
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 6
  store i64 %227, i64* %229, align 8
  %230 = call double (...) @random()
  %231 = fcmp olt double %230, 4.000000e-01
  br i1 %231, label %232, label %241

232:                                              ; preds = %226
  %233 = load i32, i32* @CTFS_AGRESSIVE, align 4
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 8
  %237 = xor i32 %236, %233
  store i32 %237, i32* %235, align 8
  %238 = call i64 (...) @FloatTime()
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 5
  store i64 %238, i64* %240, align 8
  br label %241

241:                                              ; preds = %232, %226
  br label %242

242:                                              ; preds = %241, %219
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 5
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %259

247:                                              ; preds = %242
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 5
  %250 = load i64, i64* %249, align 8
  %251 = call i64 (...) @FloatTime()
  %252 = sub nsw i64 %251, 3
  %253 = icmp slt i64 %250, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %247
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %256 = call i32 @BotCTFOrders(%struct.TYPE_13__* %255)
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 5
  store i64 0, i64* %258, align 8
  br label %259

259:                                              ; preds = %254, %247, %242
  br label %260

260:                                              ; preds = %145, %259, %189
  store i32 0, i32* %6, align 4
  br label %261

261:                                              ; preds = %260, %144, %127, %13
  %262 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %262)
  %263 = load i32, i32* %6, align 4
  switch i32 %263, label %265 [
    i32 0, label %264
    i32 1, label %264
  ]

264:                                              ; preds = %261, %261
  ret void

265:                                              ; preds = %261
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BotValidTeamLeader(%struct.TYPE_13__*) #2

declare dso_local i32 @FindHumanTeamLeader(%struct.TYPE_13__*) #2

declare dso_local i64 @FloatTime(...) #2

declare dso_local double @random(...) #2

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_13__*, i8*, i32*) #2

declare dso_local i32 @trap_BotEnterChat(i32, i32, i32) #2

declare dso_local i32 @BotSayVoiceTeamOrder(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @ClientName(i32, i8*, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @BotNumTeamMates(%struct.TYPE_13__*) #2

declare dso_local i32 @BotTeamOrders(%struct.TYPE_13__*) #2

declare dso_local i32 @BotCTFOrders(%struct.TYPE_13__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
