; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_servercmds.c_CG_VoiceChatListForClient.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_servercmds.c_CG_VoiceChatListForClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i32, i32 }
%struct.TYPE_9__ = type { i8*, i64 }
%struct.TYPE_7__ = type { i8*, i32 }

@MAX_QPATH = common dso_local global i32 0, align 4
@MAX_CLIENTS = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MAX_HEADMODELS = common dso_local global i32 0, align 4
@headModelVoiceChat = common dso_local global %struct.TYPE_9__* null, align 8
@voiceChatLists = common dso_local global %struct.TYPE_7__* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"scripts/%s.vc\00", align 1
@MAX_VOICEFILES = common dso_local global i32 0, align 4
@GENDER_MALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @CG_VoiceChatListForClient(i32 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* @MAX_QPATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* @MAX_QPATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @MAX_CLIENTS, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %1
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 0), align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %31
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %4, align 8
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %170, %28
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %173

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %36
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 42
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = trunc i64 %19 to i32
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %20, i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %55)
  br label %66

57:                                               ; preds = %39
  %58 = trunc i64 %19 to i32
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %20, i32 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %61, i32 %64)
  br label %66

66:                                               ; preds = %57, %47
  br label %89

67:                                               ; preds = %36
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 42
  br i1 %74, label %75, label %82

75:                                               ; preds = %67
  %76 = trunc i64 %19 to i32
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %20, i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  br label %88

82:                                               ; preds = %67
  %83 = trunc i64 %19 to i32
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %20, i32 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %82, %75
  br label %89

89:                                               ; preds = %88, %66
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %105, %89
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @MAX_HEADMODELS, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @headModelVoiceChat, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @Q_stricmp(i8* %100, i8* %20)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %94
  br label %108

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %90

108:                                              ; preds = %103, %90
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @MAX_HEADMODELS, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** @voiceChatLists, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** @headModelVoiceChat, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %119
  store %struct.TYPE_7__* %120, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %13, align 4
  br label %290

121:                                              ; preds = %108
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %166, %121
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @MAX_HEADMODELS, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %169

126:                                              ; preds = %122
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** @headModelVoiceChat, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @strlen(i8* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %165, label %135

135:                                              ; preds = %126
  %136 = trunc i64 %15 to i32
  %137 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %17, i32 %136, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %138 = call i32 @CG_HeadModelVoiceChats(i8* %17)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %169

142:                                              ; preds = %135
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** @headModelVoiceChat, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %148, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** @headModelVoiceChat, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  store i64 %151, i64* %156, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** @voiceChatLists, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** @headModelVoiceChat, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i64 %163
  store %struct.TYPE_7__* %164, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %13, align 4
  br label %290

165:                                              ; preds = %126
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %122

169:                                              ; preds = %141, %122
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %33

173:                                              ; preds = %33
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  store i32 %176, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %177

177:                                              ; preds = %253, %173
  %178 = load i32, i32* %8, align 4
  %179 = icmp slt i32 %178, 2
  br i1 %179, label %180, label %256

180:                                              ; preds = %177
  store i32 0, i32* %6, align 4
  br label %181

181:                                              ; preds = %243, %180
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @MAX_VOICEFILES, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %246

185:                                              ; preds = %181
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** @voiceChatLists, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = call i64 @strlen(i8* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %242

194:                                              ; preds = %185
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** @voiceChatLists, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %9, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %241

203:                                              ; preds = %194
  store i32 0, i32* %7, align 4
  br label %204

204:                                              ; preds = %233, %203
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* @MAX_HEADMODELS, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %236

208:                                              ; preds = %204
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** @headModelVoiceChat, align 8
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = call i64 @strlen(i8* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %232, label %217

217:                                              ; preds = %208
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** @headModelVoiceChat, align 8
  %219 = load i32, i32* %7, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %223, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** @headModelVoiceChat, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  store i64 %226, i64* %231, align 8
  br label %236

232:                                              ; preds = %208
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %7, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %7, align 4
  br label %204

236:                                              ; preds = %217, %204
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** @voiceChatLists, align 8
  %238 = load i32, i32* %6, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i64 %239
  store %struct.TYPE_7__* %240, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %13, align 4
  br label %290

241:                                              ; preds = %194
  br label %242

242:                                              ; preds = %241, %185
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %6, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %6, align 4
  br label %181

246:                                              ; preds = %181
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* @GENDER_MALE, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  br label %256

251:                                              ; preds = %246
  %252 = load i32, i32* @GENDER_MALE, align 4
  store i32 %252, i32* %9, align 4
  br label %253

253:                                              ; preds = %251
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %177

256:                                              ; preds = %250, %177
  store i32 0, i32* %7, align 4
  br label %257

257:                                              ; preds = %284, %256
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* @MAX_HEADMODELS, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %287

261:                                              ; preds = %257
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** @headModelVoiceChat, align 8
  %263 = load i32, i32* %7, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = call i64 @strlen(i8* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %283, label %270

270:                                              ; preds = %261
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** @headModelVoiceChat, align 8
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %276, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** @headModelVoiceChat, align 8
  %279 = load i32, i32* %7, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 1
  store i64 0, i64* %282, align 8
  br label %287

283:                                              ; preds = %261
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %7, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %7, align 4
  br label %257

287:                                              ; preds = %270, %257
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** @voiceChatLists, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i64 0
  store %struct.TYPE_7__* %289, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %13, align 4
  br label %290

290:                                              ; preds = %287, %236, %142, %112
  %291 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %291)
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %292
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @Q_stricmp(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @CG_HeadModelVoiceChats(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
