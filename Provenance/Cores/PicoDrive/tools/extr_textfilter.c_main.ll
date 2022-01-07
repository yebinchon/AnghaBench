; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/tools/extr_textfilter.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/tools/extr_textfilter.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"usage:\0A%s <file_in> <file_out> [defines...]\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"failed to open: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"#ifdef \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"#ifndef \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"#else\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"#endif\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"%i: warning: #endif without #ifdef, ignoring\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"#include \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"%i: error: failed to include \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 1, i32* %3, align 4
  br label %303

27:                                               ; preds = %2
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32* @fopen(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  store i32 2, i32* %3, align 4
  br label %303

39:                                               ; preds = %27
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i32* @fopen(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  store i32 3, i32* %3, align 4
  br label %303

51:                                               ; preds = %39
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %52, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %59 = call i32 @strlen(i8* %58)
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = getelementptr inbounds i8, i8* %61, i64 -1
  store i8* %62, i8** %15, align 8
  br label %63

63:                                               ; preds = %81, %51
  %64 = load i8*, i8** %15, align 8
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %66 = icmp ugt i8* %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = load i8*, i8** %15, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 47
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %15, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 92
  br i1 %76, label %77, label %80

77:                                               ; preds = %72, %67
  %78 = load i8*, i8** %15, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  store i8 0, i8* %79, align 1
  br label %84

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80
  %82 = load i8*, i8** %15, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 -1
  store i8* %83, i8** %15, align 8
  br label %63

84:                                               ; preds = %77, %63
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %295, %84
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @feof(i32* %88)
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  br i1 %91, label %92, label %298

92:                                               ; preds = %87
  %93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %94 = load i32*, i32** %9, align 8
  %95 = call i8* @fgets(i8* %93, i32 1024, i32* %94)
  store i8* %95, i8** %16, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %298

99:                                               ; preds = %92
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %101 = load i8, i8* %100, align 16
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 35
  br i1 %103, label %104, label %285

104:                                              ; preds = %99
  %105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %106 = call i64 @strncmp(i8* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 7)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %104
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %108
  %114 = load i8**, i8*** %5, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 3
  %116 = bitcast i8** %115 to i8*
  %117 = load i32, i32* %4, align 4
  %118 = sub nsw i32 %117, 3
  %119 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %120 = getelementptr inbounds i8, i8* %119, i64 7
  %121 = call i64 @check_defines(i8* %116, i32 %118, i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %113
  store i32 1, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %123, %113, %108
  br label %284

126:                                              ; preds = %104
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %128 = call i64 @strncmp(i8* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %126
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %147, label %135

135:                                              ; preds = %130
  %136 = load i8**, i8*** %5, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 3
  %138 = bitcast i8** %137 to i8*
  %139 = load i32, i32* %4, align 4
  %140 = sub nsw i32 %139, 3
  %141 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %142 = getelementptr inbounds i8, i8* %141, i64 8
  %143 = call i64 @check_defines(i8* %138, i32 %140, i8* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  store i32 1, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %145, %135, %130
  br label %283

148:                                              ; preds = %126
  %149 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %150 = call i64 @strncmp(i8* %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %148
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %155, %152
  %160 = load i32, i32* %11, align 4
  %161 = xor i32 %160, 1
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %12, align 4
  store i32 %162, i32* %13, align 4
  br label %163

163:                                              ; preds = %159, %155
  br label %282

164:                                              ; preds = %148
  %165 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %166 = call i64 @strncmp(i8* %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %186

168:                                              ; preds = %164
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  store i32 0, i32* %11, align 4
  br label %173

173:                                              ; preds = %172, %168
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %12, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  store i32 0, i32* %11, align 4
  br label %179

179:                                              ; preds = %178, %173
  %180 = load i32, i32* %12, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i32, i32* %14, align 4
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i32 %183)
  store i32 0, i32* %12, align 4
  br label %185

185:                                              ; preds = %182, %179
  br label %281

186:                                              ; preds = %164
  %187 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %188 = call i64 @strncmp(i8* %187, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 9)
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %280

190:                                              ; preds = %186
  %191 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %192 = getelementptr inbounds i8, i8* %191, i64 9
  store i8* %192, i8** %18, align 8
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %295

196:                                              ; preds = %190
  br label %197

197:                                              ; preds = %216, %196
  %198 = load i8*, i8** %18, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %214

202:                                              ; preds = %197
  %203 = load i8*, i8** %18, align 8
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 32
  br i1 %206, label %212, label %207

207:                                              ; preds = %202
  %208 = load i8*, i8** %18, align 8
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 34
  br label %212

212:                                              ; preds = %207, %202
  %213 = phi i1 [ true, %202 ], [ %211, %207 ]
  br label %214

214:                                              ; preds = %212, %197
  %215 = phi i1 [ false, %197 ], [ %213, %212 ]
  br i1 %215, label %216, label %219

216:                                              ; preds = %214
  %217 = load i8*, i8** %18, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %18, align 8
  br label %197

219:                                              ; preds = %214
  %220 = load i8*, i8** %18, align 8
  %221 = load i8*, i8** %18, align 8
  %222 = call i32 @strlen(i8* %221)
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %220, i64 %223
  %225 = getelementptr inbounds i8, i8* %224, i64 -1
  store i8* %225, i8** %17, align 8
  br label %226

226:                                              ; preds = %244, %219
  %227 = load i8*, i8** %17, align 8
  %228 = load i8*, i8** %18, align 8
  %229 = icmp ugt i8* %227, %228
  br i1 %229, label %230, label %247

230:                                              ; preds = %226
  %231 = load i8*, i8** %17, align 8
  %232 = load i8, i8* %231, align 1
  %233 = call i64 @isspace(i8 signext %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %230
  %236 = load i8*, i8** %17, align 8
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp eq i32 %238, 34
  br i1 %239, label %240, label %242

240:                                              ; preds = %235, %230
  %241 = load i8*, i8** %17, align 8
  store i8 0, i8* %241, align 1
  br label %243

242:                                              ; preds = %235
  br label %247

243:                                              ; preds = %240
  br label %244

244:                                              ; preds = %243
  %245 = load i8*, i8** %17, align 8
  %246 = getelementptr inbounds i8, i8* %245, i32 -1
  store i8* %246, i8** %17, align 8
  br label %226

247:                                              ; preds = %242, %226
  %248 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %249 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %250 = load i8*, i8** %18, align 8
  %251 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %248, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %249, i8* %250)
  %252 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %253 = call i32* @fopen(i8* %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %253, i32** %19, align 8
  %254 = load i32*, i32** %19, align 8
  %255 = icmp eq i32* %254, null
  br i1 %255, label %256, label %260

256:                                              ; preds = %247
  %257 = load i32, i32* %14, align 4
  %258 = load i8*, i8** %18, align 8
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %257, i8* %258)
  store i32 1, i32* %3, align 4
  br label %303

260:                                              ; preds = %247
  br label %261

261:                                              ; preds = %273, %260
  %262 = load i32*, i32** %19, align 8
  %263 = call i32 @feof(i32* %262)
  %264 = icmp ne i32 %263, 0
  %265 = xor i1 %264, true
  br i1 %265, label %266, label %277

266:                                              ; preds = %261
  %267 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %268 = load i32*, i32** %19, align 8
  %269 = call i8* @fgets(i8* %267, i32 1024, i32* %268)
  store i8* %269, i8** %16, align 8
  %270 = load i8*, i8** %16, align 8
  %271 = icmp eq i8* %270, null
  br i1 %271, label %272, label %273

272:                                              ; preds = %266
  br label %277

273:                                              ; preds = %266
  %274 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %275 = load i32*, i32** %10, align 8
  %276 = call i32 @my_fputs(i8* %274, i32* %275)
  br label %261

277:                                              ; preds = %272, %261
  %278 = load i32*, i32** %19, align 8
  %279 = call i32 @fclose(i32* %278)
  br label %295

280:                                              ; preds = %186
  br label %281

281:                                              ; preds = %280, %185
  br label %282

282:                                              ; preds = %281, %163
  br label %283

283:                                              ; preds = %282, %147
  br label %284

284:                                              ; preds = %283, %125
  br label %295

285:                                              ; preds = %99
  %286 = load i32, i32* %11, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %294, label %288

288:                                              ; preds = %285
  %289 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %290 = call i32 @do_counters(i8* %289)
  %291 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %292 = load i32*, i32** %10, align 8
  %293 = call i32 @my_fputs(i8* %291, i32* %292)
  br label %294

294:                                              ; preds = %288, %285
  br label %295

295:                                              ; preds = %294, %284, %277, %195
  %296 = load i32, i32* %14, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %14, align 4
  br label %87

298:                                              ; preds = %98, %87
  %299 = load i32*, i32** %9, align 8
  %300 = call i32 @fclose(i32* %299)
  %301 = load i32*, i32** %10, align 8
  %302 = call i32 @fclose(i32* %301)
  store i32 0, i32* %3, align 4
  br label %303

303:                                              ; preds = %298, %256, %46, %34, %22
  %304 = load i32, i32* %3, align 4
  ret i32 %304
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @check_defines(i8*, i32, i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @my_fputs(i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @do_counters(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
