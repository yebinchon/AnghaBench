; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_BotCheckValidReplyChatKeySet.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_BotCheckValidReplyChatKeySet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_6__* }

@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@RCKFL_AND = common dso_local global i32 0, align 4
@RCKFL_NOT = common dso_local global i32 0, align 4
@RCKFL_VARIABLES = common dso_local global i32 0, align 4
@MT_VARIABLE = common dso_local global i64 0, align 8
@RCKFL_STRING = common dso_local global i32 0, align 4
@MT_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [81 x i8] c"one of the match templates does not leave space for the key %s with the & prefix\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"the key %s with prefix ! is inside the key %s\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"the key %s with prefix ! is inside the match template string %s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"all keys have a & or ! prefix\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"variables from the match template(s) could be invalid when outputting one of the chat messages\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotCheckValidReplyChatKeySet(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %12 = load i32, i32* @qtrue, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @qfalse, align 4
  store i32 %13, i32* %7, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %10, align 8
  br label %15

15:                                               ; preds = %302, %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %306

18:                                               ; preds = %15
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RCKFL_AND, align 4
  %23 = load i32, i32* @RCKFL_NOT, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %67, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @qfalse, align 4
  store i32 %28, i32* %5, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RCKFL_VARIABLES, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %27
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %8, align 8
  br label %39

39:                                               ; preds = %51, %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = icmp ne %struct.TYPE_7__* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MT_VARIABLE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @qtrue, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %42
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %8, align 8
  br label %39

55:                                               ; preds = %39
  br label %66

56:                                               ; preds = %27
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @RCKFL_STRING, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @qtrue, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %63, %56
  br label %66

66:                                               ; preds = %65, %55
  br label %177

67:                                               ; preds = %18
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @RCKFL_AND, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %176

74:                                               ; preds = %67
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @RCKFL_STRING, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %176

81:                                               ; preds = %74
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %82, %struct.TYPE_5__** %11, align 8
  br label %83

83:                                               ; preds = %171, %81
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %85 = icmp ne %struct.TYPE_5__* %84, null
  br i1 %85, label %86, label %175

86:                                               ; preds = %83
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %89 = icmp eq %struct.TYPE_5__* %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %171

91:                                               ; preds = %86
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @RCKFL_NOT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %171

99:                                               ; preds = %91
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @RCKFL_VARIABLES, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %170

106:                                              ; preds = %99
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  store %struct.TYPE_7__* %109, %struct.TYPE_7__** %8, align 8
  br label %110

110:                                              ; preds = %156, %106
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %112 = icmp ne %struct.TYPE_7__* %111, null
  br i1 %112, label %113, label %160

113:                                              ; preds = %110
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @MT_STRING, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %147

119:                                              ; preds = %113
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  store %struct.TYPE_6__* %122, %struct.TYPE_6__** %9, align 8
  br label %123

123:                                              ; preds = %138, %119
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %125 = icmp ne %struct.TYPE_6__* %124, null
  br i1 %125, label %126, label %142

126:                                              ; preds = %123
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @qfalse, align 4
  %134 = call i32 @StringContains(i32 %129, i32 %132, i32 %133)
  %135 = icmp ne i32 %134, -1
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  br label %142

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  store %struct.TYPE_6__* %141, %struct.TYPE_6__** %9, align 8
  br label %123

142:                                              ; preds = %136, %123
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %144 = icmp ne %struct.TYPE_6__* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %160

146:                                              ; preds = %142
  br label %155

147:                                              ; preds = %113
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @MT_VARIABLE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %160

154:                                              ; preds = %147
  br label %155

155:                                              ; preds = %154, %146
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  store %struct.TYPE_7__* %159, %struct.TYPE_7__** %8, align 8
  br label %110

160:                                              ; preds = %153, %145, %110
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %162 = icmp ne %struct.TYPE_7__* %161, null
  br i1 %162, label %169, label %163

163:                                              ; preds = %160
  %164 = load i32*, i32** %3, align 8
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i32*, i8*, ...) @SourceWarning(i32* %164, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %163, %160
  br label %170

170:                                              ; preds = %169, %99
  br label %171

171:                                              ; preds = %170, %98, %90
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  store %struct.TYPE_5__* %174, %struct.TYPE_5__** %11, align 8
  br label %83

175:                                              ; preds = %83
  br label %176

176:                                              ; preds = %175, %74, %67
  br label %177

177:                                              ; preds = %176, %66
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @RCKFL_NOT, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %301

184:                                              ; preds = %177
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @RCKFL_STRING, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %301

191:                                              ; preds = %184
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %192, %struct.TYPE_5__** %11, align 8
  br label %193

193:                                              ; preds = %296, %191
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %195 = icmp ne %struct.TYPE_5__* %194, null
  br i1 %195, label %196, label %300

196:                                              ; preds = %193
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %199 = icmp eq %struct.TYPE_5__* %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  br label %296

201:                                              ; preds = %196
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @RCKFL_NOT, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  br label %296

209:                                              ; preds = %201
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @RCKFL_STRING, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %236

216:                                              ; preds = %209
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @qfalse, align 4
  %224 = call i32 @StringContains(i32 %219, i32 %222, i32 %223)
  %225 = icmp ne i32 %224, -1
  br i1 %225, label %226, label %235

226:                                              ; preds = %216
  %227 = load i32*, i32** %3, align 8
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i32*, i8*, ...) @SourceWarning(i32* %227, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %230, i32 %233)
  br label %235

235:                                              ; preds = %226, %216
  br label %295

236:                                              ; preds = %209
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @RCKFL_VARIABLES, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %294

243:                                              ; preds = %236
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  store %struct.TYPE_7__* %246, %struct.TYPE_7__** %8, align 8
  br label %247

247:                                              ; preds = %289, %243
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %249 = icmp ne %struct.TYPE_7__* %248, null
  br i1 %249, label %250, label %293

250:                                              ; preds = %247
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @MT_STRING, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %288

256:                                              ; preds = %250
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %258, align 8
  store %struct.TYPE_6__* %259, %struct.TYPE_6__** %9, align 8
  br label %260

260:                                              ; preds = %283, %256
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %262 = icmp ne %struct.TYPE_6__* %261, null
  br i1 %262, label %263, label %287

263:                                              ; preds = %260
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @qfalse, align 4
  %271 = call i32 @StringContains(i32 %266, i32 %269, i32 %270)
  %272 = icmp ne i32 %271, -1
  br i1 %272, label %273, label %282

273:                                              ; preds = %263
  %274 = load i32*, i32** %3, align 8
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i32 (i32*, i8*, ...) @SourceWarning(i32* %274, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %277, i32 %280)
  br label %282

282:                                              ; preds = %273, %263
  br label %283

283:                                              ; preds = %282
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  store %struct.TYPE_6__* %286, %struct.TYPE_6__** %9, align 8
  br label %260

287:                                              ; preds = %260
  br label %288

288:                                              ; preds = %287, %250
  br label %289

289:                                              ; preds = %288
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %291, align 8
  store %struct.TYPE_7__* %292, %struct.TYPE_7__** %8, align 8
  br label %247

293:                                              ; preds = %247
  br label %294

294:                                              ; preds = %293, %236
  br label %295

295:                                              ; preds = %294, %235
  br label %296

296:                                              ; preds = %295, %208, %200
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 3
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** %298, align 8
  store %struct.TYPE_5__* %299, %struct.TYPE_5__** %11, align 8
  br label %193

300:                                              ; preds = %193
  br label %301

301:                                              ; preds = %300, %184, %177
  br label %302

302:                                              ; preds = %301
  %303 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 3
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %304, align 8
  store %struct.TYPE_5__* %305, %struct.TYPE_5__** %10, align 8
  br label %15

306:                                              ; preds = %15
  %307 = load i32, i32* %5, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %306
  %310 = load i32*, i32** %3, align 8
  %311 = call i32 (i32*, i8*, ...) @SourceWarning(i32* %310, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %312

312:                                              ; preds = %309, %306
  %313 = load i32, i32* %6, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %312
  %316 = load i32, i32* %7, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %315
  %319 = load i32*, i32** %3, align 8
  %320 = call i32 (i32*, i8*, ...) @SourceWarning(i32* %319, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i64 0, i64 0))
  br label %321

321:                                              ; preds = %318, %315, %312
  ret void
}

declare dso_local i32 @StringContains(i32, i32, i32) #1

declare dso_local i32 @SourceWarning(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
