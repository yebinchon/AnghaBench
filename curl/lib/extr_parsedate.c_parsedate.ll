; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_parsedate.c_parsedate.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_parsedate.c_parsedate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_tm = type { i32, i32, i32, i32, i32, i32 }

@DATE_MDAY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%31[ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz]\00", align 1
@TRUE = common dso_local global i32 0, align 4
@PARSEDATE_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%02d:%02d:%02d%n\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%02d:%02d%n\00", align 1
@errno = common dso_local global i32 0, align 4
@DATE_YEAR = common dso_local global i32 0, align 4
@TIME_T_MAX = common dso_local global i32 0, align 4
@PARSEDATE_LATER = common dso_local global i32 0, align 4
@TIME_T_MIN = common dso_local global i32 0, align 4
@PARSEDATE_SOONER = common dso_local global i32 0, align 4
@PARSEDATE_OK = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @parsedate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parsedate(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.my_tm, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [32 x i8], align 16
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %28 = load i32, i32* @DATE_MDAY, align 4
  store i32 %28, i32* %16, align 4
  %29 = load i8*, i8** %4, align 8
  store i8* %29, i8** %17, align 8
  store i32 0, i32* %18, align 4
  br label %30

30:                                               ; preds = %290, %2
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %18, align 4
  %37 = icmp slt i32 %36, 6
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi i1 [ false, %30 ], [ %37, %35 ]
  br i1 %39, label %40, label %293

40:                                               ; preds = %38
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %19, align 4
  %42 = call i32 @skip(i8** %4)
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @ISALPHA(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %106

47:                                               ; preds = %40
  %48 = bitcast [32 x i8]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %48, i8 0, i64 32, i1 false)
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %51 = call i32 (i8*, i8*, ...) @sscanf(i8* %49, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %55 = call i64 @strlen(i8* %54)
  store i64 %55, i64* %21, align 8
  br label %57

56:                                               ; preds = %47
  store i64 0, i64* %21, align 8
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %62 = load i64, i64* %21, align 8
  %63 = call i32 @checkday(i8* %61, i64 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %19, align 4
  br label %68

68:                                               ; preds = %66, %60
  br label %69

69:                                               ; preds = %68, %57
  %70 = load i32, i32* %19, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %77 = call i32 @checkmonth(i8* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %19, align 4
  br label %82

82:                                               ; preds = %80, %75
  br label %83

83:                                               ; preds = %82, %72, %69
  %84 = load i32, i32* %19, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %14, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %91 = call i32 @checktz(i8* %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @TRUE, align 4
  store i32 %95, i32* %19, align 4
  br label %96

96:                                               ; preds = %94, %89
  br label %97

97:                                               ; preds = %96, %86, %83
  %98 = load i32, i32* %19, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @PARSEDATE_FAIL, align 4
  store i32 %101, i32* %3, align 4
  br label %376

102:                                              ; preds = %97
  %103 = load i64, i64* %21, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 %103
  store i8* %105, i8** %4, align 8
  br label %290

106:                                              ; preds = %40
  %107 = load i8*, i8** %4, align 8
  %108 = load i8, i8* %107, align 1
  %109 = call i64 @ISDIGIT(i8 signext %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %289

111:                                              ; preds = %106
  store i32 0, i32* %24, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i8*, i8** %4, align 8
  %116 = call i32 (i8*, i8*, ...) @sscanf(i8* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %10, i32* %11, i32* %12, i32* %24)
  %117 = icmp eq i32 3, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i32, i32* %24, align 4
  %120 = load i8*, i8** %4, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %4, align 8
  br label %288

123:                                              ; preds = %114, %111
  %124 = load i32, i32* %12, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load i8*, i8** %4, align 8
  %128 = call i32 (i8*, i8*, ...) @sscanf(i8* %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %10, i32* %11, i32* %24)
  %129 = icmp eq i32 2, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load i32, i32* %24, align 4
  %132 = load i8*, i8** %4, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %4, align 8
  store i32 0, i32* %12, align 4
  br label %287

135:                                              ; preds = %126, %123
  %136 = load i32, i32* @errno, align 4
  store i32 %136, i32* %27, align 4
  store i32 0, i32* @errno, align 4
  %137 = load i8*, i8** %4, align 8
  %138 = call i64 @strtol(i8* %137, i8** %23, i32 10)
  store i64 %138, i64* %25, align 8
  %139 = load i32, i32* @errno, align 4
  store i32 %139, i32* %26, align 4
  %140 = load i32, i32* @errno, align 4
  %141 = load i32, i32* %27, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %135
  %144 = load i32, i32* %27, align 4
  store i32 %144, i32* @errno, align 4
  br label %145

145:                                              ; preds = %143, %135
  %146 = load i32, i32* %26, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* @PARSEDATE_FAIL, align 4
  store i32 %149, i32* %3, align 4
  br label %376

150:                                              ; preds = %145
  %151 = load i64, i64* %25, align 8
  %152 = call i32 @curlx_sltosi(i64 %151)
  store i32 %152, i32* %22, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %202

155:                                              ; preds = %150
  %156 = load i8*, i8** %23, align 8
  %157 = load i8*, i8** %4, align 8
  %158 = ptrtoint i8* %156 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = icmp eq i64 %160, 4
  br i1 %161, label %162, label %202

162:                                              ; preds = %155
  %163 = load i32, i32* %22, align 4
  %164 = icmp sle i32 %163, 1400
  br i1 %164, label %165, label %202

165:                                              ; preds = %162
  %166 = load i8*, i8** %17, align 8
  %167 = load i8*, i8** %4, align 8
  %168 = icmp ult i8* %166, %167
  br i1 %168, label %169, label %202

169:                                              ; preds = %165
  %170 = load i8*, i8** %4, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 -1
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 43
  br i1 %174, label %181, label %175

175:                                              ; preds = %169
  %176 = load i8*, i8** %4, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 -1
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 45
  br i1 %180, label %181, label %202

181:                                              ; preds = %175, %169
  %182 = load i32, i32* @TRUE, align 4
  store i32 %182, i32* %19, align 4
  %183 = load i32, i32* %22, align 4
  %184 = sdiv i32 %183, 100
  %185 = mul nsw i32 %184, 60
  %186 = load i32, i32* %22, align 4
  %187 = srem i32 %186, 100
  %188 = add nsw i32 %185, %187
  %189 = mul nsw i32 %188, 60
  store i32 %189, i32* %14, align 4
  %190 = load i8*, i8** %4, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 -1
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 43
  br i1 %194, label %195, label %198

195:                                              ; preds = %181
  %196 = load i32, i32* %14, align 4
  %197 = sub nsw i32 0, %196
  br label %200

198:                                              ; preds = %181
  %199 = load i32, i32* %14, align 4
  br label %200

200:                                              ; preds = %198, %195
  %201 = phi i32 [ %197, %195 ], [ %199, %198 ]
  store i32 %201, i32* %14, align 4
  br label %202

202:                                              ; preds = %200, %175, %165, %162, %155, %150
  %203 = load i8*, i8** %23, align 8
  %204 = load i8*, i8** %4, align 8
  %205 = ptrtoint i8* %203 to i64
  %206 = ptrtoint i8* %204 to i64
  %207 = sub i64 %205, %206
  %208 = icmp eq i64 %207, 8
  br i1 %208, label %209, label %228

209:                                              ; preds = %202
  %210 = load i32, i32* %13, align 4
  %211 = icmp eq i32 %210, -1
  br i1 %211, label %212, label %228

212:                                              ; preds = %209
  %213 = load i32, i32* %8, align 4
  %214 = icmp eq i32 %213, -1
  br i1 %214, label %215, label %228

215:                                              ; preds = %212
  %216 = load i32, i32* %9, align 4
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %218, label %228

218:                                              ; preds = %215
  %219 = load i32, i32* @TRUE, align 4
  store i32 %219, i32* %19, align 4
  %220 = load i32, i32* %22, align 4
  %221 = sdiv i32 %220, 10000
  store i32 %221, i32* %13, align 4
  %222 = load i32, i32* %22, align 4
  %223 = srem i32 %222, 10000
  %224 = sdiv i32 %223, 100
  %225 = sub nsw i32 %224, 1
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* %22, align 4
  %227 = srem i32 %226, 100
  store i32 %227, i32* %9, align 4
  br label %228

228:                                              ; preds = %218, %215, %212, %209, %202
  %229 = load i32, i32* %19, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %249, label %231

231:                                              ; preds = %228
  %232 = load i32, i32* %16, align 4
  %233 = load i32, i32* @DATE_MDAY, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %249

235:                                              ; preds = %231
  %236 = load i32, i32* %9, align 4
  %237 = icmp eq i32 %236, -1
  br i1 %237, label %238, label %249

238:                                              ; preds = %235
  %239 = load i32, i32* %22, align 4
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %238
  %242 = load i32, i32* %22, align 4
  %243 = icmp slt i32 %242, 32
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load i32, i32* %22, align 4
  store i32 %245, i32* %9, align 4
  %246 = load i32, i32* @TRUE, align 4
  store i32 %246, i32* %19, align 4
  br label %247

247:                                              ; preds = %244, %241, %238
  %248 = load i32, i32* @DATE_YEAR, align 4
  store i32 %248, i32* %16, align 4
  br label %249

249:                                              ; preds = %247, %235, %231, %228
  %250 = load i32, i32* %19, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %280, label %252

252:                                              ; preds = %249
  %253 = load i32, i32* %16, align 4
  %254 = load i32, i32* @DATE_YEAR, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %280

256:                                              ; preds = %252
  %257 = load i32, i32* %13, align 4
  %258 = icmp eq i32 %257, -1
  br i1 %258, label %259, label %280

259:                                              ; preds = %256
  %260 = load i32, i32* %22, align 4
  store i32 %260, i32* %13, align 4
  %261 = load i32, i32* @TRUE, align 4
  store i32 %261, i32* %19, align 4
  %262 = load i32, i32* %13, align 4
  %263 = icmp slt i32 %262, 100
  br i1 %263, label %264, label %274

264:                                              ; preds = %259
  %265 = load i32, i32* %13, align 4
  %266 = icmp sgt i32 %265, 70
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i32, i32* %13, align 4
  %269 = add nsw i32 %268, 1900
  store i32 %269, i32* %13, align 4
  br label %273

270:                                              ; preds = %264
  %271 = load i32, i32* %13, align 4
  %272 = add nsw i32 %271, 2000
  store i32 %272, i32* %13, align 4
  br label %273

273:                                              ; preds = %270, %267
  br label %274

274:                                              ; preds = %273, %259
  %275 = load i32, i32* %9, align 4
  %276 = icmp eq i32 %275, -1
  br i1 %276, label %277, label %279

277:                                              ; preds = %274
  %278 = load i32, i32* @DATE_MDAY, align 4
  store i32 %278, i32* %16, align 4
  br label %279

279:                                              ; preds = %277, %274
  br label %280

280:                                              ; preds = %279, %256, %252, %249
  %281 = load i32, i32* %19, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %280
  %284 = load i32, i32* @PARSEDATE_FAIL, align 4
  store i32 %284, i32* %3, align 4
  br label %376

285:                                              ; preds = %280
  %286 = load i8*, i8** %23, align 8
  store i8* %286, i8** %4, align 8
  br label %287

287:                                              ; preds = %285, %130
  br label %288

288:                                              ; preds = %287, %118
  br label %289

289:                                              ; preds = %288, %106
  br label %290

290:                                              ; preds = %289, %102
  %291 = load i32, i32* %18, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %18, align 4
  br label %30

293:                                              ; preds = %38
  %294 = load i32, i32* %12, align 4
  %295 = icmp eq i32 -1, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %293
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %297

297:                                              ; preds = %296, %293
  %298 = load i32, i32* %9, align 4
  %299 = icmp eq i32 -1, %298
  br i1 %299, label %306, label %300

300:                                              ; preds = %297
  %301 = load i32, i32* %8, align 4
  %302 = icmp eq i32 -1, %301
  br i1 %302, label %306, label %303

303:                                              ; preds = %300
  %304 = load i32, i32* %13, align 4
  %305 = icmp eq i32 -1, %304
  br i1 %305, label %306, label %308

306:                                              ; preds = %303, %300, %297
  %307 = load i32, i32* @PARSEDATE_FAIL, align 4
  store i32 %307, i32* %3, align 4
  br label %376

308:                                              ; preds = %303
  %309 = load i32, i32* %13, align 4
  %310 = icmp sgt i32 %309, 2037
  br i1 %310, label %311, label %315

311:                                              ; preds = %308
  %312 = load i32, i32* @TIME_T_MAX, align 4
  %313 = load i32*, i32** %5, align 8
  store i32 %312, i32* %313, align 4
  %314 = load i32, i32* @PARSEDATE_LATER, align 4
  store i32 %314, i32* %3, align 4
  br label %376

315:                                              ; preds = %308
  %316 = load i32, i32* %13, align 4
  %317 = icmp slt i32 %316, 1903
  br i1 %317, label %318, label %322

318:                                              ; preds = %315
  %319 = load i32, i32* @TIME_T_MIN, align 4
  %320 = load i32*, i32** %5, align 8
  store i32 %319, i32* %320, align 4
  %321 = load i32, i32* @PARSEDATE_SOONER, align 4
  store i32 %321, i32* %3, align 4
  br label %376

322:                                              ; preds = %315
  %323 = load i32, i32* %9, align 4
  %324 = icmp sgt i32 %323, 31
  br i1 %324, label %337, label %325

325:                                              ; preds = %322
  %326 = load i32, i32* %8, align 4
  %327 = icmp sgt i32 %326, 11
  br i1 %327, label %337, label %328

328:                                              ; preds = %325
  %329 = load i32, i32* %10, align 4
  %330 = icmp sgt i32 %329, 23
  br i1 %330, label %337, label %331

331:                                              ; preds = %328
  %332 = load i32, i32* %11, align 4
  %333 = icmp sgt i32 %332, 59
  br i1 %333, label %337, label %334

334:                                              ; preds = %331
  %335 = load i32, i32* %12, align 4
  %336 = icmp sgt i32 %335, 60
  br i1 %336, label %337, label %339

337:                                              ; preds = %334, %331, %328, %325, %322
  %338 = load i32, i32* @PARSEDATE_FAIL, align 4
  store i32 %338, i32* %3, align 4
  br label %376

339:                                              ; preds = %334
  %340 = load i32, i32* %12, align 4
  %341 = getelementptr inbounds %struct.my_tm, %struct.my_tm* %15, i32 0, i32 0
  store i32 %340, i32* %341, align 4
  %342 = load i32, i32* %11, align 4
  %343 = getelementptr inbounds %struct.my_tm, %struct.my_tm* %15, i32 0, i32 1
  store i32 %342, i32* %343, align 4
  %344 = load i32, i32* %10, align 4
  %345 = getelementptr inbounds %struct.my_tm, %struct.my_tm* %15, i32 0, i32 2
  store i32 %344, i32* %345, align 4
  %346 = load i32, i32* %9, align 4
  %347 = getelementptr inbounds %struct.my_tm, %struct.my_tm* %15, i32 0, i32 3
  store i32 %346, i32* %347, align 4
  %348 = load i32, i32* %8, align 4
  %349 = getelementptr inbounds %struct.my_tm, %struct.my_tm* %15, i32 0, i32 4
  store i32 %348, i32* %349, align 4
  %350 = load i32, i32* %13, align 4
  %351 = getelementptr inbounds %struct.my_tm, %struct.my_tm* %15, i32 0, i32 5
  store i32 %350, i32* %351, align 4
  %352 = call i32 @my_timegm(%struct.my_tm* %15, i32* %6)
  %353 = load i32, i32* %14, align 4
  %354 = icmp eq i32 %353, -1
  br i1 %354, label %355, label %356

355:                                              ; preds = %339
  store i32 0, i32* %14, align 4
  br label %356

356:                                              ; preds = %355, %339
  %357 = load i32, i32* %14, align 4
  %358 = icmp sgt i32 %357, 0
  br i1 %358, label %359, label %369

359:                                              ; preds = %356
  %360 = load i32, i32* %6, align 4
  %361 = load i32, i32* @TIME_T_MAX, align 4
  %362 = load i32, i32* %14, align 4
  %363 = sub nsw i32 %361, %362
  %364 = icmp sgt i32 %360, %363
  br i1 %364, label %365, label %369

365:                                              ; preds = %359
  %366 = load i32, i32* @TIME_T_MAX, align 4
  %367 = load i32*, i32** %5, align 8
  store i32 %366, i32* %367, align 4
  %368 = load i32, i32* @PARSEDATE_LATER, align 4
  store i32 %368, i32* %3, align 4
  br label %376

369:                                              ; preds = %359, %356
  %370 = load i32, i32* %14, align 4
  %371 = load i32, i32* %6, align 4
  %372 = add nsw i32 %371, %370
  store i32 %372, i32* %6, align 4
  %373 = load i32, i32* %6, align 4
  %374 = load i32*, i32** %5, align 8
  store i32 %373, i32* %374, align 4
  %375 = load i32, i32* @PARSEDATE_OK, align 4
  store i32 %375, i32* %3, align 4
  br label %376

376:                                              ; preds = %369, %365, %337, %318, %311, %306, %283, %148, %100
  %377 = load i32, i32* %3, align 4
  ret i32 %377
}

declare dso_local i32 @skip(i8**) #1

declare dso_local i64 @ISALPHA(i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @checkday(i8*, i64) #1

declare dso_local i32 @checkmonth(i8*) #1

declare dso_local i32 @checktz(i8*) #1

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @curlx_sltosi(i64) #1

declare dso_local i32 @my_timegm(%struct.my_tm*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
