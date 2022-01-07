; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_parsecfg.c_parseconfig.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_parsecfg.c_parseconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalConfig = type { %struct.OperationConfig*, %struct.OperationConfig* }
%struct.OperationConfig = type { %struct.GlobalConfig*, %struct.OperationConfig*, %struct.OperationConfig*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s%s.curlrc\00", align 1
@DIR_CHAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@FOPEN_READTEXT = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [89 x i8] c"%s:%d: warning: '%s' uses unquoted white space in the line that may cause side-effects!\0A\00", align 1
@PARAM_GOT_EXTRA_PARAMETER = common dso_local global i32 0, align 4
@PARAM_NEXT_OPERATION = common dso_local global i32 0, align 4
@PARAM_NO_MEM = common dso_local global i32 0, align 4
@PARAM_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@PARAM_HELP_REQUESTED = common dso_local global i32 0, align 4
@PARAM_MANUAL_REQUESTED = common dso_local global i32 0, align 4
@PARAM_VERSION_INFO_REQUESTED = common dso_local global i32 0, align 4
@PARAM_ENGINES_REQUESTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"%s:%d: warning: '%s' %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parseconfig(i8* %0, %struct.GlobalConfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.GlobalConfig*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.OperationConfig*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.GlobalConfig* %1, %struct.GlobalConfig** %5, align 8
  store i32* null, i32** %6, align 8
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %22 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %23 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %22, i32 0, i32 1
  %24 = load %struct.OperationConfig*, %struct.OperationConfig** %23, align 8
  store %struct.OperationConfig* %24, %struct.OperationConfig** %9, align 8
  store i8* null, i8** %10, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %27, %2
  %32 = call i8* (...) @homedir()
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* @DIR_CHAR, align 4
  %38 = call i8* (i8*, i8*, i32, ...) @curl_maprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %37)
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @free(i8* %42)
  store i32 1, i32* %3, align 4
  br label %386

44:                                               ; preds = %35
  %45 = load i8*, i8** %10, align 8
  store i8* %45, i8** %4, align 8
  br label %46

46:                                               ; preds = %44, %31
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @Curl_safefree(i8* %47)
  br label %49

49:                                               ; preds = %46, %27
  %50 = load i32*, i32** %6, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %66, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %4, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i8*, i8** %4, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* @FOPEN_READTEXT, align 4
  %62 = call i32* @fopen(i8* %60, i32 %61)
  store i32* %62, i32** %6, align 8
  br label %65

63:                                               ; preds = %55
  %64 = load i32*, i32** @stdin, align 8
  store i32* %64, i32** %6, align 8
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65, %52, %49
  %67 = load i32*, i32** %6, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %381

69:                                               ; preds = %66
  store i32 0, i32* %16, align 4
  br label %70

70:                                               ; preds = %370, %98, %69
  %71 = load i32*, i32** %6, align 8
  %72 = call i8* @my_get_line(i32* %71)
  store i8* %72, i8** %13, align 8
  %73 = icmp ne i8* null, %72
  br i1 %73, label %74, label %373

74:                                               ; preds = %70
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %16, align 4
  %78 = load i8*, i8** %13, align 8
  store i8* %78, i8** %12, align 8
  br label %79

79:                                               ; preds = %91, %74
  %80 = load i8*, i8** %12, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i8*, i8** %12, align 8
  %86 = load i8, i8* %85, align 1
  %87 = call i64 @ISSPACE(i8 signext %86)
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %84, %79
  %90 = phi i1 [ false, %79 ], [ %88, %84 ]
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = load i8*, i8** %12, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %12, align 8
  br label %79

94:                                               ; preds = %89
  %95 = load i8*, i8** %12, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  switch i32 %97, label %101 [
    i32 35, label %98
    i32 47, label %98
    i32 13, label %98
    i32 10, label %98
    i32 42, label %98
    i32 0, label %98
  ]

98:                                               ; preds = %94, %94, %94, %94, %94, %94
  %99 = load i8*, i8** %13, align 8
  %100 = call i32 @Curl_safefree(i8* %99)
  br label %70

101:                                              ; preds = %94
  %102 = load i8*, i8** %12, align 8
  store i8* %102, i8** %14, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 45
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @TRUE, align 4
  br label %112

110:                                              ; preds = %101
  %111 = load i32, i32* @FALSE, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  store i32 %113, i32* %17, align 4
  br label %114

114:                                              ; preds = %133, %112
  %115 = load i8*, i8** %12, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %114
  %120 = load i8*, i8** %12, align 8
  %121 = load i8, i8* %120, align 1
  %122 = call i64 @ISSPACE(i8 signext %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %119
  %125 = load i8*, i8** %12, align 8
  %126 = load i8, i8* %125, align 1
  %127 = load i32, i32* %17, align 4
  %128 = call i64 @ISSEP(i8 signext %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  %130 = xor i1 %129, true
  br label %131

131:                                              ; preds = %124, %119, %114
  %132 = phi i1 [ false, %119 ], [ false, %114 ], [ %130, %124 ]
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  %134 = load i8*, i8** %12, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %12, align 8
  br label %114

136:                                              ; preds = %131
  %137 = load i8*, i8** %12, align 8
  %138 = load i8, i8* %137, align 1
  %139 = icmp ne i8 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i8*, i8** %12, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %12, align 8
  store i8 0, i8* %141, align 1
  br label %143

143:                                              ; preds = %140, %136
  br label %144

144:                                              ; preds = %164, %143
  %145 = load i8*, i8** %12, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %144
  %150 = load i8*, i8** %12, align 8
  %151 = load i8, i8* %150, align 1
  %152 = call i64 @ISSPACE(i8 signext %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %149
  %155 = load i8*, i8** %12, align 8
  %156 = load i8, i8* %155, align 1
  %157 = load i32, i32* %17, align 4
  %158 = call i64 @ISSEP(i8 signext %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br label %160

160:                                              ; preds = %154, %149
  %161 = phi i1 [ true, %149 ], [ %159, %154 ]
  br label %162

162:                                              ; preds = %160, %144
  %163 = phi i1 [ false, %144 ], [ %161, %160 ]
  br i1 %163, label %164, label %167

164:                                              ; preds = %162
  %165 = load i8*, i8** %12, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %12, align 8
  br label %144

167:                                              ; preds = %162
  %168 = load i8*, i8** %12, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 34
  br i1 %171, label %172, label %189

172:                                              ; preds = %167
  %173 = load i8*, i8** %12, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %12, align 8
  %175 = load i8*, i8** %12, align 8
  %176 = call i32 @strlen(i8* %175)
  %177 = add nsw i32 %176, 1
  %178 = call i8* @malloc(i32 %177)
  store i8* %178, i8** %15, align 8
  %179 = load i8*, i8** %15, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %172
  %182 = load i8*, i8** %13, align 8
  %183 = call i32 @Curl_safefree(i8* %182)
  store i32 1, i32* %8, align 4
  br label %373

184:                                              ; preds = %172
  %185 = load i32, i32* @TRUE, align 4
  store i32 %185, i32* %19, align 4
  %186 = load i8*, i8** %12, align 8
  %187 = load i8*, i8** %15, align 8
  %188 = call i32 @unslashquote(i8* %186, i8* %187)
  br label %250

189:                                              ; preds = %167
  %190 = load i8*, i8** %12, align 8
  store i8* %190, i8** %15, align 8
  br label %191

191:                                              ; preds = %204, %189
  %192 = load i8*, i8** %12, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load i8*, i8** %12, align 8
  %198 = load i8, i8* %197, align 1
  %199 = call i64 @ISSPACE(i8 signext %198)
  %200 = icmp ne i64 %199, 0
  %201 = xor i1 %200, true
  br label %202

202:                                              ; preds = %196, %191
  %203 = phi i1 [ false, %191 ], [ %201, %196 ]
  br i1 %203, label %204, label %207

204:                                              ; preds = %202
  %205 = load i8*, i8** %12, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %12, align 8
  br label %191

207:                                              ; preds = %202
  %208 = load i8*, i8** %12, align 8
  %209 = load i8, i8* %208, align 1
  %210 = icmp ne i8 %209, 0
  br i1 %210, label %211, label %244

211:                                              ; preds = %207
  %212 = load i8*, i8** %12, align 8
  store i8 0, i8* %212, align 1
  %213 = load i8*, i8** %12, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %12, align 8
  br label %215

215:                                              ; preds = %227, %211
  %216 = load i8*, i8** %12, align 8
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load i8*, i8** %12, align 8
  %222 = load i8, i8* %221, align 1
  %223 = call i64 @ISSPACE(i8 signext %222)
  %224 = icmp ne i64 %223, 0
  br label %225

225:                                              ; preds = %220, %215
  %226 = phi i1 [ false, %215 ], [ %224, %220 ]
  br i1 %226, label %227, label %230

227:                                              ; preds = %225
  %228 = load i8*, i8** %12, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %12, align 8
  br label %215

230:                                              ; preds = %225
  %231 = load i8*, i8** %12, align 8
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  switch i32 %233, label %235 [
    i32 0, label %234
    i32 13, label %234
    i32 10, label %234
    i32 35, label %234
  ]

234:                                              ; preds = %230, %230, %230, %230
  br label %243

235:                                              ; preds = %230
  %236 = load %struct.OperationConfig*, %struct.OperationConfig** %9, align 8
  %237 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %236, i32 0, i32 0
  %238 = load %struct.GlobalConfig*, %struct.GlobalConfig** %237, align 8
  %239 = load i8*, i8** %4, align 8
  %240 = load i32, i32* %16, align 4
  %241 = load i8*, i8** %14, align 8
  %242 = call i32 (%struct.GlobalConfig*, i8*, i8*, i32, i8*, ...) @warnf(%struct.GlobalConfig* %238, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i8* %239, i32 %240, i8* %241)
  br label %243

243:                                              ; preds = %235, %234
  br label %244

244:                                              ; preds = %243, %207
  %245 = load i8*, i8** %15, align 8
  %246 = load i8, i8* %245, align 1
  %247 = icmp ne i8 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %244
  store i8* null, i8** %15, align 8
  br label %249

249:                                              ; preds = %248, %244
  br label %250

250:                                              ; preds = %249, %184
  %251 = load i8*, i8** %14, align 8
  %252 = load i8*, i8** %15, align 8
  %253 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %254 = load %struct.OperationConfig*, %struct.OperationConfig** %9, align 8
  %255 = call i32 @getparameter(i8* %251, i8* %252, i32* %7, %struct.GlobalConfig* %253, %struct.OperationConfig* %254)
  store i32 %255, i32* %18, align 4
  %256 = load i32, i32* %18, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %271, label %258

258:                                              ; preds = %250
  %259 = load i8*, i8** %15, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %271

261:                                              ; preds = %258
  %262 = load i8*, i8** %15, align 8
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %261
  %267 = load i32, i32* %7, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %271, label %269

269:                                              ; preds = %266
  %270 = load i32, i32* @PARAM_GOT_EXTRA_PARAMETER, align 4
  store i32 %270, i32* %18, align 4
  br label %271

271:                                              ; preds = %269, %266, %261, %258, %250
  %272 = load i32, i32* %18, align 4
  %273 = load i32, i32* @PARAM_NEXT_OPERATION, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %323

275:                                              ; preds = %271
  %276 = load %struct.OperationConfig*, %struct.OperationConfig** %9, align 8
  %277 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %276, i32 0, i32 3
  %278 = load %struct.TYPE_2__*, %struct.TYPE_2__** %277, align 8
  %279 = icmp ne %struct.TYPE_2__* %278, null
  br i1 %279, label %280, label %322

280:                                              ; preds = %275
  %281 = load %struct.OperationConfig*, %struct.OperationConfig** %9, align 8
  %282 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %281, i32 0, i32 3
  %283 = load %struct.TYPE_2__*, %struct.TYPE_2__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %322

287:                                              ; preds = %280
  %288 = call i8* @malloc(i32 32)
  %289 = bitcast i8* %288 to %struct.OperationConfig*
  %290 = load %struct.OperationConfig*, %struct.OperationConfig** %9, align 8
  %291 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %290, i32 0, i32 1
  store %struct.OperationConfig* %289, %struct.OperationConfig** %291, align 8
  %292 = load %struct.OperationConfig*, %struct.OperationConfig** %9, align 8
  %293 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %292, i32 0, i32 1
  %294 = load %struct.OperationConfig*, %struct.OperationConfig** %293, align 8
  %295 = icmp ne %struct.OperationConfig* %294, null
  br i1 %295, label %296, label %319

296:                                              ; preds = %287
  %297 = load %struct.OperationConfig*, %struct.OperationConfig** %9, align 8
  %298 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %297, i32 0, i32 1
  %299 = load %struct.OperationConfig*, %struct.OperationConfig** %298, align 8
  %300 = call i32 @config_init(%struct.OperationConfig* %299)
  %301 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %302 = load %struct.OperationConfig*, %struct.OperationConfig** %9, align 8
  %303 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %302, i32 0, i32 1
  %304 = load %struct.OperationConfig*, %struct.OperationConfig** %303, align 8
  %305 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %304, i32 0, i32 0
  store %struct.GlobalConfig* %301, %struct.GlobalConfig** %305, align 8
  %306 = load %struct.OperationConfig*, %struct.OperationConfig** %9, align 8
  %307 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %306, i32 0, i32 1
  %308 = load %struct.OperationConfig*, %struct.OperationConfig** %307, align 8
  %309 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %310 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %309, i32 0, i32 0
  store %struct.OperationConfig* %308, %struct.OperationConfig** %310, align 8
  %311 = load %struct.OperationConfig*, %struct.OperationConfig** %9, align 8
  %312 = load %struct.OperationConfig*, %struct.OperationConfig** %9, align 8
  %313 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %312, i32 0, i32 1
  %314 = load %struct.OperationConfig*, %struct.OperationConfig** %313, align 8
  %315 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %314, i32 0, i32 2
  store %struct.OperationConfig* %311, %struct.OperationConfig** %315, align 8
  %316 = load %struct.OperationConfig*, %struct.OperationConfig** %9, align 8
  %317 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %316, i32 0, i32 1
  %318 = load %struct.OperationConfig*, %struct.OperationConfig** %317, align 8
  store %struct.OperationConfig* %318, %struct.OperationConfig** %9, align 8
  br label %321

319:                                              ; preds = %287
  %320 = load i32, i32* @PARAM_NO_MEM, align 4
  store i32 %320, i32* %18, align 4
  br label %321

321:                                              ; preds = %319, %296
  br label %322

322:                                              ; preds = %321, %280, %275
  br label %323

323:                                              ; preds = %322, %271
  %324 = load i32, i32* %18, align 4
  %325 = load i32, i32* @PARAM_OK, align 4
  %326 = icmp ne i32 %324, %325
  br i1 %326, label %327, label %364

327:                                              ; preds = %323
  %328 = load i32, i32* %18, align 4
  %329 = load i32, i32* @PARAM_NEXT_OPERATION, align 4
  %330 = icmp ne i32 %328, %329
  br i1 %330, label %331, label %364

331:                                              ; preds = %327
  %332 = load i8*, i8** %4, align 8
  %333 = call i64 @strcmp(i8* %332, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %331
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %336

336:                                              ; preds = %335, %331
  %337 = load i32, i32* %18, align 4
  %338 = load i32, i32* @PARAM_HELP_REQUESTED, align 4
  %339 = icmp ne i32 %337, %338
  br i1 %339, label %340, label %363

340:                                              ; preds = %336
  %341 = load i32, i32* %18, align 4
  %342 = load i32, i32* @PARAM_MANUAL_REQUESTED, align 4
  %343 = icmp ne i32 %341, %342
  br i1 %343, label %344, label %363

344:                                              ; preds = %340
  %345 = load i32, i32* %18, align 4
  %346 = load i32, i32* @PARAM_VERSION_INFO_REQUESTED, align 4
  %347 = icmp ne i32 %345, %346
  br i1 %347, label %348, label %363

348:                                              ; preds = %344
  %349 = load i32, i32* %18, align 4
  %350 = load i32, i32* @PARAM_ENGINES_REQUESTED, align 4
  %351 = icmp ne i32 %349, %350
  br i1 %351, label %352, label %363

352:                                              ; preds = %348
  %353 = load i32, i32* %18, align 4
  %354 = call i8* @param2text(i32 %353)
  store i8* %354, i8** %20, align 8
  %355 = load %struct.OperationConfig*, %struct.OperationConfig** %9, align 8
  %356 = getelementptr inbounds %struct.OperationConfig, %struct.OperationConfig* %355, i32 0, i32 0
  %357 = load %struct.GlobalConfig*, %struct.GlobalConfig** %356, align 8
  %358 = load i8*, i8** %4, align 8
  %359 = load i32, i32* %16, align 4
  %360 = load i8*, i8** %14, align 8
  %361 = load i8*, i8** %20, align 8
  %362 = call i32 (%struct.GlobalConfig*, i8*, i8*, i32, i8*, ...) @warnf(%struct.GlobalConfig* %357, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %358, i32 %359, i8* %360, i8* %361)
  br label %363

363:                                              ; preds = %352, %348, %344, %340, %336
  br label %364

364:                                              ; preds = %363, %327, %323
  %365 = load i32, i32* %19, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %364
  %368 = load i8*, i8** %15, align 8
  %369 = call i32 @Curl_safefree(i8* %368)
  br label %370

370:                                              ; preds = %367, %364
  %371 = load i8*, i8** %13, align 8
  %372 = call i32 @Curl_safefree(i8* %371)
  br label %70

373:                                              ; preds = %181, %70
  %374 = load i32*, i32** %6, align 8
  %375 = load i32*, i32** @stdin, align 8
  %376 = icmp ne i32* %374, %375
  br i1 %376, label %377, label %380

377:                                              ; preds = %373
  %378 = load i32*, i32** %6, align 8
  %379 = call i32 @fclose(i32* %378)
  br label %380

380:                                              ; preds = %377, %373
  br label %382

381:                                              ; preds = %66
  store i32 1, i32* %8, align 4
  br label %382

382:                                              ; preds = %381, %380
  %383 = load i8*, i8** %10, align 8
  %384 = call i32 @free(i8* %383)
  %385 = load i32, i32* %8, align 4
  store i32 %385, i32* %3, align 4
  br label %386

386:                                              ; preds = %382, %41
  %387 = load i32, i32* %3, align 4
  ret i32 %387
}

declare dso_local i8* @homedir(...) #1

declare dso_local i8* @curl_maprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i8* @my_get_line(i32*) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i64 @ISSEP(i8 signext, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @unslashquote(i8*, i8*) #1

declare dso_local i32 @warnf(%struct.GlobalConfig*, i8*, i8*, i32, i8*, ...) #1

declare dso_local i32 @getparameter(i8*, i8*, i32*, %struct.GlobalConfig*, %struct.OperationConfig*) #1

declare dso_local i32 @config_init(%struct.OperationConfig*) #1

declare dso_local i8* @param2text(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
