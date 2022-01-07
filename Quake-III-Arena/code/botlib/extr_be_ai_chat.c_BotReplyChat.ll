; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_BotReplyChat.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_BotReplyChat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_17__*, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { i32, i8*, i32, %struct.TYPE_17__* }
%struct.TYPE_22__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_19__ = type { i8*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@replychats = common dso_local global %struct.TYPE_18__* null, align 8
@RCKFL_NAME = common dso_local global i32 0, align 4
@RCKFL_BOTNAMES = common dso_local global i32 0, align 4
@RCKFL_GENDERFEMALE = common dso_local global i32 0, align 4
@CHAT_GENDERFEMALE = common dso_local global i64 0, align 8
@RCKFL_GENDERMALE = common dso_local global i32 0, align 4
@CHAT_GENDERMALE = common dso_local global i64 0, align 8
@RCKFL_GENDERLESS = common dso_local global i32 0, align 4
@CHAT_GENDERLESS = common dso_local global i64 0, align 8
@RCKFL_VARIABLES = common dso_local global i32 0, align 4
@RCKFL_STRING = common dso_local global i32 0, align 4
@RCKFL_AND = common dso_local global i32 0, align 4
@RCKFL_NOT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"bot_testrchat\00", align 1
@botimport = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@CHATMESSAGE_RECENTTIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotReplyChat(i32 %0, i8* %1, i32 %2, i32 %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_18__*, align 8
  %27 = alloca %struct.TYPE_18__*, align 8
  %28 = alloca %struct.TYPE_17__*, align 8
  %29 = alloca %struct.TYPE_21__*, align 8
  %30 = alloca %struct.TYPE_21__*, align 8
  %31 = alloca %struct.TYPE_19__, align 8
  %32 = alloca %struct.TYPE_19__, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.TYPE_20__*, align 8
  store i32 %0, i32* %14, align 4
  store i8* %1, i8** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i8* %4, i8** %18, align 8
  store i8* %5, i8** %19, align 8
  store i8* %6, i8** %20, align 8
  store i8* %7, i8** %21, align 8
  store i8* %8, i8** %22, align 8
  store i8* %9, i8** %23, align 8
  store i8* %10, i8** %24, align 8
  store i8* %11, i8** %25, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call %struct.TYPE_20__* @BotChatStateFromHandle(i32 %40)
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %39, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %43 = icmp ne %struct.TYPE_20__* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %12
  %45 = load i32, i32* @qfalse, align 4
  store i32 %45, i32* %13, align 4
  br label %529

46:                                               ; preds = %12
  %47 = call i32 @Com_Memset(%struct.TYPE_19__* %31, i32 0, i32 16)
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = call i32 @strcpy(i8* %49, i8* %50)
  store i32 -1, i32* %33, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %30, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %27, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** @replychats, align 8
  store %struct.TYPE_18__* %52, %struct.TYPE_18__** %26, align 8
  br label %53

53:                                               ; preds = %283, %46
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %55 = icmp ne %struct.TYPE_18__* %54, null
  br i1 %55, label %56, label %287

56:                                               ; preds = %53
  %57 = load i32, i32* @qfalse, align 4
  store i32 %57, i32* %35, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %28, align 8
  br label %61

61:                                               ; preds = %209, %56
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %63 = icmp ne %struct.TYPE_17__* %62, null
  br i1 %63, label %64, label %213

64:                                               ; preds = %61
  %65 = load i32, i32* @qfalse, align 4
  store i32 %65, i32* %36, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @RCKFL_NAME, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %64
  %73 = load i8*, i8** %15, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @qfalse, align 4
  %78 = call i32 @StringContains(i8* %73, i32 %76, i32 %77)
  %79 = icmp ne i32 %78, -1
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %36, align 4
  br label %175

81:                                               ; preds = %64
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @RCKFL_BOTNAMES, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %81
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @qfalse, align 4
  %96 = call i32 @StringContains(i8* %91, i32 %94, i32 %95)
  %97 = icmp ne i32 %96, -1
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %36, align 4
  br label %174

99:                                               ; preds = %81
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @RCKFL_GENDERFEMALE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @CHAT_GENDERFEMALE, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %36, align 4
  br label %173

113:                                              ; preds = %99
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @RCKFL_GENDERMALE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @CHAT_GENDERMALE, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %36, align 4
  br label %172

127:                                              ; preds = %113
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @RCKFL_GENDERLESS, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @CHAT_GENDERLESS, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %36, align 4
  br label %171

141:                                              ; preds = %127
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @RCKFL_VARIABLES, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %141
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @StringsMatch(i32 %151, %struct.TYPE_19__* %31)
  store i32 %152, i32* %36, align 4
  br label %170

153:                                              ; preds = %141
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @RCKFL_STRING, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %153
  %161 = load i8*, i8** %15, align 8
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = load i32, i32* @qfalse, align 4
  %166 = call i32* @StringContainsWord(i8* %161, i8* %164, i32 %165)
  %167 = icmp ne i32* %166, null
  %168 = zext i1 %167 to i32
  store i32 %168, i32* %36, align 4
  br label %169

169:                                              ; preds = %160, %153
  br label %170

170:                                              ; preds = %169, %148
  br label %171

171:                                              ; preds = %170, %134
  br label %172

172:                                              ; preds = %171, %120
  br label %173

173:                                              ; preds = %172, %106
  br label %174

174:                                              ; preds = %173, %88
  br label %175

175:                                              ; preds = %174, %72
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @RCKFL_AND, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %175
  %183 = load i32, i32* %36, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* @qfalse, align 4
  store i32 %186, i32* %35, align 4
  br label %213

187:                                              ; preds = %182
  br label %208

188:                                              ; preds = %175
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @RCKFL_NOT, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %188
  %196 = load i32, i32* %36, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = load i32, i32* @qfalse, align 4
  store i32 %199, i32* %35, align 4
  br label %213

200:                                              ; preds = %195
  br label %207

201:                                              ; preds = %188
  %202 = load i32, i32* %36, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = load i32, i32* @qtrue, align 4
  store i32 %205, i32* %35, align 4
  br label %206

206:                                              ; preds = %204, %201
  br label %207

207:                                              ; preds = %206, %200
  br label %208

208:                                              ; preds = %207, %187
  br label %209

209:                                              ; preds = %208
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %211, align 8
  store %struct.TYPE_17__* %212, %struct.TYPE_17__** %28, align 8
  br label %61

213:                                              ; preds = %198, %185, %61
  %214 = load i32, i32* %35, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %282

216:                                              ; preds = %213
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %33, align 4
  %221 = icmp sgt i32 %219, %220
  br i1 %221, label %222, label %281

222:                                              ; preds = %216
  store i32 0, i32* %37, align 4
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %224, align 8
  store %struct.TYPE_21__* %225, %struct.TYPE_21__** %29, align 8
  br label %226

226:                                              ; preds = %239, %222
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %228 = icmp ne %struct.TYPE_21__* %227, null
  br i1 %228, label %229, label %243

229:                                              ; preds = %226
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = call i64 (...) @AAS_Time()
  %234 = icmp sgt i64 %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %229
  br label %239

236:                                              ; preds = %229
  %237 = load i32, i32* %37, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %37, align 4
  br label %239

239:                                              ; preds = %236, %235
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %241, align 8
  store %struct.TYPE_21__* %242, %struct.TYPE_21__** %29, align 8
  br label %226

243:                                              ; preds = %226
  %244 = call i32 (...) @random()
  %245 = load i32, i32* %37, align 4
  %246 = mul nsw i32 %244, %245
  store i32 %246, i32* %34, align 4
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %248, align 8
  store %struct.TYPE_21__* %249, %struct.TYPE_21__** %29, align 8
  br label %250

250:                                              ; preds = %266, %243
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %252 = icmp ne %struct.TYPE_21__* %251, null
  br i1 %252, label %253, label %270

253:                                              ; preds = %250
  %254 = load i32, i32* %34, align 4
  %255 = add nsw i32 %254, -1
  store i32 %255, i32* %34, align 4
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %253
  br label %270

258:                                              ; preds = %253
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = call i64 (...) @AAS_Time()
  %263 = icmp sgt i64 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  br label %266

265:                                              ; preds = %258
  br label %266

266:                                              ; preds = %265, %264
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %268, align 8
  store %struct.TYPE_21__* %269, %struct.TYPE_21__** %29, align 8
  br label %250

270:                                              ; preds = %257, %250
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %272 = icmp ne %struct.TYPE_21__* %271, null
  br i1 %272, label %273, label %280

273:                                              ; preds = %270
  %274 = call i32 @Com_Memcpy(%struct.TYPE_19__* %32, %struct.TYPE_19__* %31, i32 16)
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  store %struct.TYPE_21__* %275, %struct.TYPE_21__** %30, align 8
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  store %struct.TYPE_18__* %276, %struct.TYPE_18__** %27, align 8
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  store i32 %279, i32* %33, align 4
  br label %280

280:                                              ; preds = %273, %270
  br label %281

281:                                              ; preds = %280, %216
  br label %282

282:                                              ; preds = %281, %213
  br label %283

283:                                              ; preds = %282
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 3
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %285, align 8
  store %struct.TYPE_18__* %286, %struct.TYPE_18__** %26, align 8
  br label %53

287:                                              ; preds = %53
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %289 = icmp ne %struct.TYPE_21__* %288, null
  br i1 %289, label %290, label %527

290:                                              ; preds = %287
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8
  %293 = call i32 @strlen(i8* %292)
  store i32 %293, i32* %38, align 4
  %294 = load i8*, i8** %18, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %316

296:                                              ; preds = %290
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %298 = load i8*, i8** %297, align 8
  %299 = load i8*, i8** %18, align 8
  %300 = call i32 @strcat(i8* %298, i8* %299)
  %301 = load i32, i32* %38, align 4
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i64 0
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 0
  store i32 %301, i32* %305, align 4
  %306 = load i8*, i8** %18, align 8
  %307 = call i32 @strlen(i8* %306)
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i64 0
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 1
  store i32 %307, i32* %311, align 4
  %312 = load i8*, i8** %18, align 8
  %313 = call i32 @strlen(i8* %312)
  %314 = load i32, i32* %38, align 4
  %315 = add nsw i32 %314, %313
  store i32 %315, i32* %38, align 4
  br label %316

316:                                              ; preds = %296, %290
  %317 = load i8*, i8** %19, align 8
  %318 = icmp ne i8* %317, null
  br i1 %318, label %319, label %339

319:                                              ; preds = %316
  %320 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %321 = load i8*, i8** %320, align 8
  %322 = load i8*, i8** %19, align 8
  %323 = call i32 @strcat(i8* %321, i8* %322)
  %324 = load i32, i32* %38, align 4
  %325 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i64 1
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 0
  store i32 %324, i32* %328, align 4
  %329 = load i8*, i8** %19, align 8
  %330 = call i32 @strlen(i8* %329)
  %331 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %332 = load %struct.TYPE_16__*, %struct.TYPE_16__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i64 1
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 1
  store i32 %330, i32* %334, align 4
  %335 = load i8*, i8** %19, align 8
  %336 = call i32 @strlen(i8* %335)
  %337 = load i32, i32* %38, align 4
  %338 = add nsw i32 %337, %336
  store i32 %338, i32* %38, align 4
  br label %339

339:                                              ; preds = %319, %316
  %340 = load i8*, i8** %20, align 8
  %341 = icmp ne i8* %340, null
  br i1 %341, label %342, label %362

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %344 = load i8*, i8** %343, align 8
  %345 = load i8*, i8** %20, align 8
  %346 = call i32 @strcat(i8* %344, i8* %345)
  %347 = load i32, i32* %38, align 4
  %348 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %349 = load %struct.TYPE_16__*, %struct.TYPE_16__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i64 2
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 0
  store i32 %347, i32* %351, align 4
  %352 = load i8*, i8** %20, align 8
  %353 = call i32 @strlen(i8* %352)
  %354 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i64 2
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 1
  store i32 %353, i32* %357, align 4
  %358 = load i8*, i8** %20, align 8
  %359 = call i32 @strlen(i8* %358)
  %360 = load i32, i32* %38, align 4
  %361 = add nsw i32 %360, %359
  store i32 %361, i32* %38, align 4
  br label %362

362:                                              ; preds = %342, %339
  %363 = load i8*, i8** %21, align 8
  %364 = icmp ne i8* %363, null
  br i1 %364, label %365, label %385

365:                                              ; preds = %362
  %366 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %367 = load i8*, i8** %366, align 8
  %368 = load i8*, i8** %21, align 8
  %369 = call i32 @strcat(i8* %367, i8* %368)
  %370 = load i32, i32* %38, align 4
  %371 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %372 = load %struct.TYPE_16__*, %struct.TYPE_16__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %372, i64 3
  %374 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %373, i32 0, i32 0
  store i32 %370, i32* %374, align 4
  %375 = load i8*, i8** %21, align 8
  %376 = call i32 @strlen(i8* %375)
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %378 = load %struct.TYPE_16__*, %struct.TYPE_16__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %378, i64 3
  %380 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %379, i32 0, i32 1
  store i32 %376, i32* %380, align 4
  %381 = load i8*, i8** %21, align 8
  %382 = call i32 @strlen(i8* %381)
  %383 = load i32, i32* %38, align 4
  %384 = add nsw i32 %383, %382
  store i32 %384, i32* %38, align 4
  br label %385

385:                                              ; preds = %365, %362
  %386 = load i8*, i8** %22, align 8
  %387 = icmp ne i8* %386, null
  br i1 %387, label %388, label %408

388:                                              ; preds = %385
  %389 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %390 = load i8*, i8** %389, align 8
  %391 = load i8*, i8** %22, align 8
  %392 = call i32 @strcat(i8* %390, i8* %391)
  %393 = load i32, i32* %38, align 4
  %394 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i64 4
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %396, i32 0, i32 0
  store i32 %393, i32* %397, align 4
  %398 = load i8*, i8** %22, align 8
  %399 = call i32 @strlen(i8* %398)
  %400 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %401 = load %struct.TYPE_16__*, %struct.TYPE_16__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %401, i64 4
  %403 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %402, i32 0, i32 1
  store i32 %399, i32* %403, align 4
  %404 = load i8*, i8** %22, align 8
  %405 = call i32 @strlen(i8* %404)
  %406 = load i32, i32* %38, align 4
  %407 = add nsw i32 %406, %405
  store i32 %407, i32* %38, align 4
  br label %408

408:                                              ; preds = %388, %385
  %409 = load i8*, i8** %23, align 8
  %410 = icmp ne i8* %409, null
  br i1 %410, label %411, label %431

411:                                              ; preds = %408
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %413 = load i8*, i8** %412, align 8
  %414 = load i8*, i8** %23, align 8
  %415 = call i32 @strcat(i8* %413, i8* %414)
  %416 = load i32, i32* %38, align 4
  %417 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %418 = load %struct.TYPE_16__*, %struct.TYPE_16__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %418, i64 5
  %420 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %419, i32 0, i32 0
  store i32 %416, i32* %420, align 4
  %421 = load i8*, i8** %23, align 8
  %422 = call i32 @strlen(i8* %421)
  %423 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %424 = load %struct.TYPE_16__*, %struct.TYPE_16__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %424, i64 5
  %426 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %425, i32 0, i32 1
  store i32 %422, i32* %426, align 4
  %427 = load i8*, i8** %23, align 8
  %428 = call i32 @strlen(i8* %427)
  %429 = load i32, i32* %38, align 4
  %430 = add nsw i32 %429, %428
  store i32 %430, i32* %38, align 4
  br label %431

431:                                              ; preds = %411, %408
  %432 = load i8*, i8** %24, align 8
  %433 = icmp ne i8* %432, null
  br i1 %433, label %434, label %454

434:                                              ; preds = %431
  %435 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %436 = load i8*, i8** %435, align 8
  %437 = load i8*, i8** %24, align 8
  %438 = call i32 @strcat(i8* %436, i8* %437)
  %439 = load i32, i32* %38, align 4
  %440 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %441 = load %struct.TYPE_16__*, %struct.TYPE_16__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %441, i64 6
  %443 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %442, i32 0, i32 0
  store i32 %439, i32* %443, align 4
  %444 = load i8*, i8** %24, align 8
  %445 = call i32 @strlen(i8* %444)
  %446 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %447 = load %struct.TYPE_16__*, %struct.TYPE_16__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %447, i64 6
  %449 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %448, i32 0, i32 1
  store i32 %445, i32* %449, align 4
  %450 = load i8*, i8** %24, align 8
  %451 = call i32 @strlen(i8* %450)
  %452 = load i32, i32* %38, align 4
  %453 = add nsw i32 %452, %451
  store i32 %453, i32* %38, align 4
  br label %454

454:                                              ; preds = %434, %431
  %455 = load i8*, i8** %25, align 8
  %456 = icmp ne i8* %455, null
  br i1 %456, label %457, label %477

457:                                              ; preds = %454
  %458 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %459 = load i8*, i8** %458, align 8
  %460 = load i8*, i8** %25, align 8
  %461 = call i32 @strcat(i8* %459, i8* %460)
  %462 = load i32, i32* %38, align 4
  %463 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %464 = load %struct.TYPE_16__*, %struct.TYPE_16__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %464, i64 7
  %466 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %465, i32 0, i32 0
  store i32 %462, i32* %466, align 4
  %467 = load i8*, i8** %25, align 8
  %468 = call i32 @strlen(i8* %467)
  %469 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %470 = load %struct.TYPE_16__*, %struct.TYPE_16__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %470, i64 7
  %472 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %471, i32 0, i32 1
  store i32 %468, i32* %472, align 4
  %473 = load i8*, i8** %25, align 8
  %474 = call i32 @strlen(i8* %473)
  %475 = load i32, i32* %38, align 4
  %476 = add nsw i32 %475, %474
  store i32 %476, i32* %38, align 4
  br label %477

477:                                              ; preds = %457, %454
  %478 = call i64 @LibVarGetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %511

480:                                              ; preds = %477
  %481 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %482 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %481, i32 0, i32 1
  %483 = load %struct.TYPE_21__*, %struct.TYPE_21__** %482, align 8
  store %struct.TYPE_21__* %483, %struct.TYPE_21__** %29, align 8
  br label %484

484:                                              ; preds = %506, %480
  %485 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %486 = icmp ne %struct.TYPE_21__* %485, null
  br i1 %486, label %487, label %510

487:                                              ; preds = %484
  %488 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %489 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %490 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 8
  %492 = load i32, i32* %16, align 4
  %493 = load i32, i32* %17, align 4
  %494 = load i32, i32* @qtrue, align 4
  %495 = call i32 @BotConstructChatMessage(%struct.TYPE_20__* %488, i32 %491, i32 %492, %struct.TYPE_19__* %32, i32 %493, i32 %494)
  %496 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %497 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %496, i32 0, i32 1
  %498 = load i32, i32* %497, align 8
  %499 = call i32 @BotRemoveTildes(i32 %498)
  %500 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @botimport, i32 0, i32 0), align 8
  %501 = load i32, i32* @PRT_MESSAGE, align 4
  %502 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %503 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 8
  %505 = call i32 %500(i32 %501, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %504)
  br label %506

506:                                              ; preds = %487
  %507 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %508 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %507, i32 0, i32 2
  %509 = load %struct.TYPE_21__*, %struct.TYPE_21__** %508, align 8
  store %struct.TYPE_21__* %509, %struct.TYPE_21__** %29, align 8
  br label %484

510:                                              ; preds = %484
  br label %525

511:                                              ; preds = %477
  %512 = call i64 (...) @AAS_Time()
  %513 = load i64, i64* @CHATMESSAGE_RECENTTIME, align 8
  %514 = add nsw i64 %512, %513
  %515 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %516 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %515, i32 0, i32 0
  store i64 %514, i64* %516, align 8
  %517 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %518 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %519 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 8
  %521 = load i32, i32* %16, align 4
  %522 = load i32, i32* %17, align 4
  %523 = load i32, i32* @qtrue, align 4
  %524 = call i32 @BotConstructChatMessage(%struct.TYPE_20__* %517, i32 %520, i32 %521, %struct.TYPE_19__* %32, i32 %522, i32 %523)
  br label %525

525:                                              ; preds = %511, %510
  %526 = load i32, i32* @qtrue, align 4
  store i32 %526, i32* %13, align 4
  br label %529

527:                                              ; preds = %287
  %528 = load i32, i32* @qfalse, align 4
  store i32 %528, i32* %13, align 4
  br label %529

529:                                              ; preds = %527, %525, %44
  %530 = load i32, i32* %13, align 4
  ret i32 %530
}

declare dso_local %struct.TYPE_20__* @BotChatStateFromHandle(i32) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @StringContains(i8*, i32, i32) #1

declare dso_local i32 @StringsMatch(i32, %struct.TYPE_19__*) #1

declare dso_local i32* @StringContainsWord(i8*, i8*, i32) #1

declare dso_local i64 @AAS_Time(...) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @Com_Memcpy(%struct.TYPE_19__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @LibVarGetValue(i8*) #1

declare dso_local i32 @BotConstructChatMessage(%struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @BotRemoveTildes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
