; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/slang/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/slang/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"--slang\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"--vsource\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"--psource\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"--vsh\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"--psh\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Usage :\0A\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"%s --slang <slang input> --vsh <vsh output> --psh <psh output>\0A\00", align 1
@.str.7 = private unnamed_addr constant [116 x i8] c"%s --slang <slang input> --vsource <vsh asm input> --psource <psh asm input> --vsh <vsh output> --psh <psh output>\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"#version 150\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"#version\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"#pragma\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"#pragma stage vertex\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"#pragma stage fragment\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"layout(\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"uniform\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 1, i32* %11, align 4
  br label %23

23:                                               ; preds = %108, %2
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %111

28:                                               ; preds = %23
  %29 = load i8**, i8*** %5, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %28
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %37, i64 %40
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %6, align 8
  br label %107

43:                                               ; preds = %28
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %43
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %52, i64 %55
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %7, align 8
  br label %106

58:                                               ; preds = %43
  %59 = load i8**, i8*** %5, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %58
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %8, align 8
  br label %105

73:                                               ; preds = %58
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %73
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %82, i64 %85
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %9, align 8
  br label %104

88:                                               ; preds = %73
  %89 = load i8**, i8*** %5, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %88
  %97 = load i8**, i8*** %5, align 8
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %97, i64 %100
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %10, align 8
  br label %103

103:                                              ; preds = %96, %88
  br label %104

104:                                              ; preds = %103, %81
  br label %105

105:                                              ; preds = %104, %66
  br label %106

106:                                              ; preds = %105, %51
  br label %107

107:                                              ; preds = %106, %36
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 2
  store i32 %110, i32* %11, align 4
  br label %23

111:                                              ; preds = %23
  %112 = load i8*, i8** %6, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %132

114:                                              ; preds = %111
  %115 = load i8*, i8** %9, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %132

117:                                              ; preds = %114
  %118 = load i8*, i8** %10, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load i8*, i8** %7, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load i8*, i8** %8, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %132, label %126

126:                                              ; preds = %123, %120
  %127 = load i8*, i8** %7, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = load i8*, i8** %8, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %142, label %132

132:                                              ; preds = %129, %123, %117, %114, %111
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i8**, i8*** %5, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i8* %136)
  %138 = load i8**, i8*** %5, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.7, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %132, %129, %126
  %143 = load i8*, i8** %6, align 8
  %144 = call i32* @fopen(i8* %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %144, i32** %14, align 8
  %145 = load i32*, i32** %14, align 8
  %146 = load i32, i32* @SEEK_END, align 4
  %147 = call i32 @fseek(i32* %145, i32 0, i32 %146)
  %148 = load i32*, i32** %14, align 8
  %149 = call i64 @ftell(i32* %148)
  store i64 %149, i64* %13, align 8
  %150 = load i32*, i32** %14, align 8
  %151 = load i32, i32* @SEEK_SET, align 4
  %152 = call i32 @fseek(i32* %150, i32 0, i32 %151)
  %153 = load i64, i64* %13, align 8
  %154 = add i64 %153, 1
  %155 = call i8* @malloc(i64 %154)
  store i8* %155, i8** %12, align 8
  %156 = load i8*, i8** %12, align 8
  %157 = load i64, i64* %13, align 8
  %158 = load i32*, i32** %14, align 8
  %159 = call i32 @fread(i8* %156, i32 1, i64 %157, i32* %158)
  %160 = load i32*, i32** %14, align 8
  %161 = call i32 @fclose(i32* %160)
  %162 = load i8*, i8** %12, align 8
  %163 = load i64, i64* %13, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8 0, i8* %164, align 1
  %165 = load i8*, i8** %9, align 8
  %166 = call i32* @fopen(i8* %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32* %166, i32** %15, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = call i32* @fopen(i8* %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32* %168, i32** %16, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8** %17, align 8
  %169 = load i8*, i8** %17, align 8
  %170 = load i8*, i8** %17, align 8
  %171 = call i32 @strlen(i8* %170)
  %172 = load i32*, i32** %15, align 8
  %173 = call i32 @fwrite(i8* %169, i32 1, i32 %171, i32* %172)
  %174 = load i8*, i8** %17, align 8
  %175 = load i8*, i8** %17, align 8
  %176 = call i32 @strlen(i8* %175)
  %177 = load i32*, i32** %16, align 8
  %178 = call i32 @fwrite(i8* %174, i32 1, i32 %176, i32* %177)
  %179 = load i8*, i8** %12, align 8
  store i8* %179, i8** %18, align 8
  store i32 1, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %180

180:                                              ; preds = %298, %236, %220, %142
  %181 = load i8*, i8** %18, align 8
  %182 = load i8, i8* %181, align 1
  %183 = icmp ne i8 %182, 0
  br i1 %183, label %184, label %299

184:                                              ; preds = %180
  %185 = load i8*, i8** %18, align 8
  store i8* %185, i8** %21, align 8
  br label %186

186:                                              ; preds = %203, %184
  %187 = load i8*, i8** %18, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %186
  %192 = load i8*, i8** %18, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp ne i32 %194, 10
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load i8*, i8** %18, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp ne i32 %199, 13
  br label %201

201:                                              ; preds = %196, %191, %186
  %202 = phi i1 [ false, %191 ], [ false, %186 ], [ %200, %196 ]
  br i1 %202, label %203, label %206

203:                                              ; preds = %201
  %204 = load i8*, i8** %18, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %18, align 8
  br label %186

206:                                              ; preds = %201
  %207 = load i8*, i8** %18, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 13
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load i8*, i8** %18, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %18, align 8
  store i8 0, i8* %212, align 1
  br label %214

214:                                              ; preds = %211, %206
  %215 = load i8*, i8** %18, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %18, align 8
  store i8 0, i8* %215, align 1
  %217 = load i8*, i8** %21, align 8
  %218 = call i8* @strstr(i8* %217, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  br label %180

221:                                              ; preds = %214
  %222 = load i8*, i8** %21, align 8
  %223 = call i8* @strstr(i8* %222, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %237

225:                                              ; preds = %221
  %226 = load i8*, i8** %21, align 8
  %227 = call i8* @strstr(i8* %226, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %236

230:                                              ; preds = %225
  %231 = load i8*, i8** %21, align 8
  %232 = call i8* @strstr(i8* %231, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  store i32 0, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %235

235:                                              ; preds = %234, %230
  br label %236

236:                                              ; preds = %235, %229
  br label %180

237:                                              ; preds = %221
  %238 = load i8*, i8** %21, align 8
  %239 = call i8* @strstr(i8* %238, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  store i8* %239, i8** %22, align 8
  %240 = load i8*, i8** %22, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %242, label %276

242:                                              ; preds = %237
  br label %243

243:                                              ; preds = %248, %242
  %244 = load i8*, i8** %22, align 8
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp ne i32 %246, 41
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load i8*, i8** %22, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %22, align 8
  br label %243

251:                                              ; preds = %243
  %252 = load i8*, i8** %22, align 8
  %253 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %253, i8** %22, align 8
  br label %254

254:                                              ; preds = %266, %251
  %255 = load i8*, i8** %22, align 8
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %254
  %260 = load i8*, i8** %22, align 8
  %261 = load i8, i8* %260, align 1
  %262 = call i64 @isspace(i8 signext %261)
  %263 = icmp ne i64 %262, 0
  br label %264

264:                                              ; preds = %259, %254
  %265 = phi i1 [ false, %254 ], [ %263, %259 ]
  br i1 %265, label %266, label %269

266:                                              ; preds = %264
  %267 = load i8*, i8** %22, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %22, align 8
  br label %254

269:                                              ; preds = %264
  %270 = load i8*, i8** %22, align 8
  %271 = call i32 @strncmp(i8* %270, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 7)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %269
  %274 = load i8*, i8** %22, align 8
  store i8* %274, i8** %21, align 8
  br label %275

275:                                              ; preds = %273, %269
  br label %276

276:                                              ; preds = %275, %237
  %277 = load i32, i32* %19, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %287

279:                                              ; preds = %276
  %280 = load i8*, i8** %21, align 8
  %281 = load i8*, i8** %21, align 8
  %282 = call i32 @strlen(i8* %281)
  %283 = load i32*, i32** %15, align 8
  %284 = call i32 @fwrite(i8* %280, i32 1, i32 %282, i32* %283)
  %285 = load i32*, i32** %15, align 8
  %286 = call i32 @fputc(i8 signext 10, i32* %285)
  br label %287

287:                                              ; preds = %279, %276
  %288 = load i32, i32* %20, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %298

290:                                              ; preds = %287
  %291 = load i8*, i8** %21, align 8
  %292 = load i8*, i8** %21, align 8
  %293 = call i32 @strlen(i8* %292)
  %294 = load i32*, i32** %16, align 8
  %295 = call i32 @fwrite(i8* %291, i32 1, i32 %293, i32* %294)
  %296 = load i32*, i32** %16, align 8
  %297 = call i32 @fputc(i8 signext 10, i32* %296)
  br label %298

298:                                              ; preds = %290, %287
  br label %180

299:                                              ; preds = %180
  %300 = load i32*, i32** %15, align 8
  %301 = call i32 @fclose(i32* %300)
  %302 = load i32*, i32** %16, align 8
  %303 = call i32 @fclose(i32* %302)
  %304 = load i8*, i8** %12, align 8
  %305 = call i32 @free(i8* %304)
  ret i32 0
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
