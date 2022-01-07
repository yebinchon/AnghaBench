; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-input-sdl/src/extr_autoconfig.c_auto_set_defaults.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-input-sdl/src/extr_autoconfig.c_auto_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INI_FILE_NAME = common dso_local global i8* null, align 8
@M64MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Couldn't find config file '%s'\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Couldn't open config file '%s'\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Couldn't allocate %li bytes for config file '%s'\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"File read failed for %li bytes of config file '%s'\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Unix:\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Linux:\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"AutoConfig%i\00", align 1
@M64ERR_SUCCESS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [55 x i8] c"auto_set_defaults(): Couldn't open config section '%s'\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@M64TYPE_INT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"plugin\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"plugged\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"mouse\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@M64TYPE_BOOL = common dso_local global i32 0, align 4
@M64TYPE_STRING = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"__NextController:\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Unknown keyword '%s' in %s\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Invalid line in %s: '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auto_set_defaults(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [64 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [32 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [32 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %7, align 8
  %25 = load i8*, i8** @INI_FILE_NAME, align 8
  %26 = call i8* @ConfigGetSharedDataFilepath(i8* %25)
  store i8* %26, i8** %8, align 8
  store i32 0, i32* %14, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %376

30:                                               ; preds = %2
  %31 = load i8*, i8** %8, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %33, %30
  %38 = load i32, i32* @M64MSG_ERROR, align 4
  %39 = load i8*, i8** @INI_FILE_NAME, align 8
  %40 = call i32 (i32, i8*, ...) @DebugMessage(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 0, i32* %3, align 4
  br label %376

41:                                               ; preds = %33
  %42 = load i8*, i8** %8, align 8
  %43 = call i32* @fopen(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @M64MSG_ERROR, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 (i32, i8*, ...) @DebugMessage(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  store i32 0, i32* %3, align 4
  br label %376

50:                                               ; preds = %41
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @SEEK_END, align 4
  %53 = call i32 @fseek(i32* %51, i64 0, i32 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = call i64 @ftell(i32* %54)
  store i64 %55, i64* %13, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* @SEEK_SET, align 4
  %58 = call i32 @fseek(i32* %56, i64 0, i32 %57)
  %59 = load i64, i64* %13, align 8
  %60 = add nsw i64 %59, 1
  %61 = call i64 @malloc(i64 %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %50
  %66 = load i32, i32* @M64MSG_ERROR, align 4
  %67 = load i64, i64* %13, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 (i32, i8*, ...) @DebugMessage(i32 %66, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %67, i8* %68)
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @fclose(i32* %70)
  store i32 0, i32* %3, align 4
  br label %376

72:                                               ; preds = %50
  %73 = load i8*, i8** %10, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i64 @fread(i8* %73, i32 1, i64 %74, i32* %75)
  %77 = load i64, i64* %13, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load i32, i32* @M64MSG_ERROR, align 4
  %81 = load i64, i64* %13, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 (i32, i8*, ...) @DebugMessage(i32 %80, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i64 %81, i8* %82)
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @fclose(i32* %86)
  store i32 0, i32* %3, align 4
  br label %376

88:                                               ; preds = %72
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @fclose(i32* %89)
  %91 = load i8*, i8** %10, align 8
  %92 = load i64, i64* %13, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8 0, i8* %93, align 1
  %94 = load i8*, i8** %10, align 8
  store i8* %94, i8** %11, align 8
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %361, %360, %322, %308, %262, %253, %156, %130, %88
  %96 = load i8*, i8** %11, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i8*, i8** %11, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br label %103

103:                                              ; preds = %98, %95
  %104 = phi i1 [ false, %95 ], [ %102, %98 ]
  br i1 %104, label %105, label %366

105:                                              ; preds = %103
  store i8* null, i8** %15, align 8
  %106 = load i8*, i8** %11, align 8
  store i8* %106, i8** %12, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = call i8* @strchr(i8* %107, i8 signext 10)
  store i8* %108, i8** %11, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i8*, i8** %11, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %11, align 8
  store i8 0, i8* %112, align 1
  br label %114

114:                                              ; preds = %111, %105
  %115 = load i8*, i8** %12, align 8
  %116 = call i8* @StripSpace(i8* %115)
  store i8* %116, i8** %12, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = call i32 @strlen(i8* %117)
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %130, label %120

120:                                              ; preds = %114
  %121 = load i8*, i8** %12, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 59
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load i8*, i8** %12, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 35
  br i1 %129, label %130, label %131

130:                                              ; preds = %125, %120, %114
  br label %95

131:                                              ; preds = %125
  %132 = load i8*, i8** %12, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 91
  br i1 %135, label %136, label %254

136:                                              ; preds = %131
  %137 = load i8*, i8** %12, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = call i32 @strlen(i8* %138)
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %137, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 93
  br i1 %145, label %146, label %254

146:                                              ; preds = %136
  store i32 1, i32* %18, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i8*, i8** %10, align 8
  %151 = call i32 @free(i8* %150)
  %152 = load i32, i32* %14, align 4
  store i32 %152, i32* %3, align 4
  br label %376

153:                                              ; preds = %146
  %154 = load i32, i32* %9, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  br label %95

157:                                              ; preds = %153
  br label %158

158:                                              ; preds = %157
  %159 = load i8*, i8** %12, align 8
  %160 = load i8*, i8** %12, align 8
  %161 = call i32 @strlen(i8* %160)
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %159, i64 %163
  store i8 0, i8* %164, align 1
  %165 = load i8*, i8** %12, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 1
  %167 = call i8* @StripSpace(i8* %166)
  store i8* %167, i8** %17, align 8
  %168 = load i8*, i8** %17, align 8
  %169 = call i64 @strncmp(i8* %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %158
  %172 = load i8*, i8** %17, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 5
  %174 = call i8* @StripSpace(i8* %173)
  store i8* %174, i8** %17, align 8
  br label %175

175:                                              ; preds = %171, %158
  %176 = load i8*, i8** %17, align 8
  %177 = call i64 @strncmp(i8* %176, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = load i8*, i8** %17, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 6
  %182 = call i8* @StripSpace(i8* %181)
  store i8* %182, i8** %17, align 8
  br label %183

183:                                              ; preds = %179, %175
  br label %184

184:                                              ; preds = %229, %183
  %185 = load i8*, i8** %17, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load i8*, i8** %17, align 8
  %189 = call i32 @strlen(i8* %188)
  %190 = icmp sgt i32 %189, 0
  br label %191

191:                                              ; preds = %187, %184
  %192 = phi i1 [ false, %184 ], [ %190, %187 ]
  br i1 %192, label %193, label %230

193:                                              ; preds = %191
  %194 = load i8*, i8** %17, align 8
  %195 = call i8* @strchr(i8* %194, i8 signext 32)
  store i8* %195, i8** %19, align 8
  %196 = load i8*, i8** %19, align 8
  %197 = icmp eq i8* %196, null
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %200 = load i8*, i8** %17, align 8
  %201 = call i32 @strncpy(i8* %199, i8* %200, i32 63)
  %202 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 63
  store i8 0, i8* %202, align 1
  store i8* null, i8** %17, align 8
  br label %223

203:                                              ; preds = %193
  %204 = load i8*, i8** %19, align 8
  %205 = load i8*, i8** %17, align 8
  %206 = ptrtoint i8* %204 to i64
  %207 = ptrtoint i8* %205 to i64
  %208 = sub i64 %206, %207
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %20, align 4
  %210 = load i32, i32* %20, align 4
  %211 = icmp sgt i32 %210, 63
  br i1 %211, label %212, label %213

212:                                              ; preds = %203
  store i32 63, i32* %20, align 4
  br label %213

213:                                              ; preds = %212, %203
  %214 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %215 = load i8*, i8** %17, align 8
  %216 = load i32, i32* %20, align 4
  %217 = call i32 @strncpy(i8* %214, i8* %215, i32 %216)
  %218 = load i32, i32* %20, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 %219
  store i8 0, i8* %220, align 1
  %221 = load i8*, i8** %19, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  store i8* %222, i8** %17, align 8
  br label %223

223:                                              ; preds = %213, %198
  %224 = load i8*, i8** %5, align 8
  %225 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %226 = call i32* @strcasestr(i8* %224, i8* %225)
  %227 = icmp eq i32* %226, null
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  store i32 0, i32* %18, align 4
  br label %229

229:                                              ; preds = %228, %223
  br label %184

230:                                              ; preds = %191
  %231 = load i32, i32* %18, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %253

233:                                              ; preds = %230
  %234 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  %235 = load i32, i32* %14, align 4
  %236 = call i32 @sprintf(i8* %234, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %235)
  %237 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  %238 = call i64 @ConfigOpenSection(i8* %237, i32** %7)
  %239 = load i64, i64* @M64ERR_SUCCESS, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %233
  %242 = load i32, i32* @M64MSG_ERROR, align 4
  %243 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  %244 = call i32 (i32, i8*, ...) @DebugMessage(i32 %242, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i8* %243)
  %245 = load i8*, i8** %10, align 8
  %246 = call i32 @free(i8* %245)
  store i32 0, i32* %3, align 4
  br label %376

247:                                              ; preds = %233
  store i32 1, i32* %9, align 4
  %248 = load i32, i32* %14, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %14, align 4
  %250 = load i32*, i32** %7, align 8
  %251 = load i32, i32* @M64TYPE_INT, align 4
  %252 = call i32 (i32*, i8*, i32, ...) @ConfigSetParameter(i32* %250, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %251, i32* %4)
  br label %253

253:                                              ; preds = %247, %230
  br label %95

254:                                              ; preds = %136, %131
  %255 = load i8*, i8** %12, align 8
  %256 = call i8* @strchr(i8* %255, i8 signext 61)
  store i8* %256, i8** %15, align 8
  %257 = load i8*, i8** %15, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %309

259:                                              ; preds = %254
  %260 = load i32, i32* %9, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  br label %95

263:                                              ; preds = %259
  store i32 2, i32* %9, align 4
  %264 = load i8*, i8** %15, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %15, align 8
  store i8 0, i8* %264, align 1
  %266 = load i8*, i8** %12, align 8
  %267 = call i8* @StripSpace(i8* %266)
  store i8* %267, i8** %12, align 8
  %268 = load i8*, i8** %15, align 8
  %269 = call i8* @StripSpace(i8* %268)
  store i8* %269, i8** %15, align 8
  %270 = load i8*, i8** %12, align 8
  %271 = call i64 @strcasecmp(i8* %270, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %277, label %273

273:                                              ; preds = %263
  %274 = load i8*, i8** %12, align 8
  %275 = call i64 @strcasecmp(i8* %274, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %273, %263
  %278 = load i8*, i8** %15, align 8
  %279 = call i32 @atoi(i8* %278)
  store i32 %279, i32* %22, align 4
  %280 = load i32*, i32** %7, align 8
  %281 = load i8*, i8** %12, align 8
  %282 = load i32, i32* @M64TYPE_INT, align 4
  %283 = call i32 (i32*, i8*, i32, ...) @ConfigSetParameter(i32* %280, i8* %281, i32 %282, i32* %22)
  br label %308

284:                                              ; preds = %273
  %285 = load i8*, i8** %12, align 8
  %286 = call i64 @strcasecmp(i8* %285, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %292, label %288

288:                                              ; preds = %284
  %289 = load i8*, i8** %12, align 8
  %290 = call i64 @strcasecmp(i8* %289, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %301

292:                                              ; preds = %288, %284
  %293 = load i8*, i8** %15, align 8
  %294 = call i64 @strcasecmp(i8* %293, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %295 = icmp eq i64 %294, 0
  %296 = zext i1 %295 to i32
  store i32 %296, i32* %23, align 4
  %297 = load i32*, i32** %7, align 8
  %298 = load i8*, i8** %12, align 8
  %299 = load i32, i32* @M64TYPE_BOOL, align 4
  %300 = call i32 (i32*, i8*, i32, ...) @ConfigSetParameter(i32* %297, i8* %298, i32 %299, i32* %23)
  br label %307

301:                                              ; preds = %288
  %302 = load i32*, i32** %7, align 8
  %303 = load i8*, i8** %12, align 8
  %304 = load i32, i32* @M64TYPE_STRING, align 4
  %305 = load i8*, i8** %15, align 8
  %306 = call i32 (i32*, i8*, i32, ...) @ConfigSetParameter(i32* %302, i8* %303, i32 %304, i8* %305)
  br label %307

307:                                              ; preds = %301, %292
  br label %308

308:                                              ; preds = %307, %277
  br label %95

309:                                              ; preds = %254
  %310 = load i8*, i8** %12, align 8
  %311 = load i8*, i8** %12, align 8
  %312 = call i32 @strlen(i8* %311)
  %313 = sub nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8, i8* %310, i64 %314
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = icmp eq i32 %317, 58
  br i1 %318, label %319, label %361

319:                                              ; preds = %309
  %320 = load i32, i32* %9, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %319
  br label %95

323:                                              ; preds = %319
  %324 = load i8*, i8** %12, align 8
  %325 = call i64 @strcmp(i8* %324, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %355

327:                                              ; preds = %323
  %328 = load i32, i32* %14, align 4
  %329 = icmp eq i32 %328, 4
  br i1 %329, label %330, label %334

330:                                              ; preds = %327
  %331 = load i8*, i8** %10, align 8
  %332 = call i32 @free(i8* %331)
  %333 = load i32, i32* %14, align 4
  store i32 %333, i32* %3, align 4
  br label %376

334:                                              ; preds = %327
  %335 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %336 = load i32, i32* %14, align 4
  %337 = call i32 @sprintf(i8* %335, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %336)
  %338 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %339 = call i64 @ConfigOpenSection(i8* %338, i32** %7)
  %340 = load i64, i64* @M64ERR_SUCCESS, align 8
  %341 = icmp ne i64 %339, %340
  br i1 %341, label %342, label %349

342:                                              ; preds = %334
  %343 = load i32, i32* @M64MSG_ERROR, align 4
  %344 = getelementptr inbounds [32 x i8], [32 x i8]* %24, i64 0, i64 0
  %345 = call i32 (i32, i8*, ...) @DebugMessage(i32 %343, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i8* %344)
  %346 = load i8*, i8** %10, align 8
  %347 = call i32 @free(i8* %346)
  %348 = load i32, i32* %14, align 4
  store i32 %348, i32* %3, align 4
  br label %376

349:                                              ; preds = %334
  %350 = load i32, i32* %14, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %14, align 4
  %352 = load i32*, i32** %7, align 8
  %353 = load i32, i32* @M64TYPE_INT, align 4
  %354 = call i32 (i32*, i8*, i32, ...) @ConfigSetParameter(i32* %352, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %353, i32* %4)
  br label %360

355:                                              ; preds = %323
  %356 = load i32, i32* @M64MSG_ERROR, align 4
  %357 = load i8*, i8** %12, align 8
  %358 = load i8*, i8** @INI_FILE_NAME, align 8
  %359 = call i32 (i32, i8*, ...) @DebugMessage(i32 %356, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8* %357, i8* %358)
  br label %360

360:                                              ; preds = %355, %349
  br label %95

361:                                              ; preds = %309
  %362 = load i32, i32* @M64MSG_ERROR, align 4
  %363 = load i8*, i8** @INI_FILE_NAME, align 8
  %364 = load i8*, i8** %12, align 8
  %365 = call i32 (i32, i8*, ...) @DebugMessage(i32 %362, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8* %363, i8* %364)
  br label %95

366:                                              ; preds = %103
  %367 = load i32, i32* %9, align 4
  %368 = icmp eq i32 %367, 2
  br i1 %368, label %369, label %373

369:                                              ; preds = %366
  %370 = load i8*, i8** %10, align 8
  %371 = call i32 @free(i8* %370)
  %372 = load i32, i32* %14, align 4
  store i32 %372, i32* %3, align 4
  br label %376

373:                                              ; preds = %366
  %374 = load i8*, i8** %10, align 8
  %375 = call i32 @free(i8* %374)
  store i32 0, i32* %3, align 4
  br label %376

376:                                              ; preds = %373, %369, %342, %330, %241, %149, %79, %65, %46, %37, %29
  %377 = load i32, i32* %3, align 4
  ret i32 %377
}

declare dso_local i8* @ConfigGetSharedDataFilepath(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @DebugMessage(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @StripSpace(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32* @strcasestr(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @ConfigOpenSection(i8*, i32**) #1

declare dso_local i32 @ConfigSetParameter(i32*, i8*, i32, ...) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
