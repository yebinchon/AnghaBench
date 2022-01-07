; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_linenoiseEdit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_linenoiseEdit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linenoiseState = type { i8*, i64, i8*, i32, i64, i64, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@completionCallback = common dso_local global i32* null, align 8
@history_len = common dso_local global i64 0, align 8
@history = common dso_local global i32* null, align 8
@mlmode = common dso_local global i32 0, align 4
@hintsCallback = common dso_local global i32* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LINENOISE_HISTORY_PREV = common dso_local global i32 0, align 4
@LINENOISE_HISTORY_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @linenoiseEdit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linenoiseEdit(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.linenoiseState, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca [3 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 2
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 3
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 6
  store i32 0, i32* %28, align 8
  %29 = call i32 (...) @getColumns()
  %30 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 9
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 8
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 7
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = call i32 @linenoiseHistoryAdd(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 (...) @getCursorPosition()
  store i32 %40, i32* %9, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @stdout, align 4
  %45 = call i32 @fwrite(i8* %41, i32 %43, i32 1, i32 %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %309

48:                                               ; preds = %3
  %49 = call i32 (...) @getCursorPosition()
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %56, %57
  %59 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 3
  store i32 %58, i32* %59, align 8
  br label %60

60:                                               ; preds = %55, %52, %48
  br label %61

61:                                               ; preds = %60, %86, %308
  %62 = load i32, i32* @stdin, align 4
  %63 = call i32 @fread(i8* %11, i32 1, i32 1, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %4, align 4
  br label %309

69:                                               ; preds = %61
  %70 = load i8, i8* %11, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 9
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = load i32*, i32** @completionCallback, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = call i32 @completeLine(%struct.linenoiseState* %8)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %4, align 4
  br label %309

83:                                               ; preds = %76
  %84 = load i32, i32* %14, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %61

87:                                               ; preds = %83
  %88 = load i32, i32* %14, align 4
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %11, align 1
  br label %90

90:                                               ; preds = %87, %73, %69
  %91 = load i8, i8* %11, align 1
  %92 = sext i8 %91 to i32
  switch i32 %92, label %270 [
    i32 129, label %93
    i32 140, label %115
    i32 143, label %117
    i32 8, label %117
    i32 139, label %119
    i32 132, label %134
    i32 141, label %183
    i32 137, label %185
    i32 133, label %187
    i32 134, label %190
    i32 128, label %193
    i32 131, label %276
    i32 136, label %282
    i32 142, label %292
    i32 138, label %294
    i32 135, label %296
    i32 130, label %299
  ]

93:                                               ; preds = %90
  %94 = load i64, i64* @history_len, align 8
  %95 = add i64 %94, -1
  store i64 %95, i64* @history_len, align 8
  %96 = load i32*, i32** @history, align 8
  %97 = load i64, i64* @history_len, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @free(i32 %99)
  %101 = load i32, i32* @mlmode, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = call i32 @linenoiseEditMoveEnd(%struct.linenoiseState* %8)
  br label %105

105:                                              ; preds = %103, %93
  %106 = load i32*, i32** @hintsCallback, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32*, i32** @hintsCallback, align 8
  store i32* %109, i32** %15, align 8
  store i32* null, i32** @hintsCallback, align 8
  %110 = call i32 @refreshLine(%struct.linenoiseState* %8)
  %111 = load i32*, i32** %15, align 8
  store i32* %111, i32** @hintsCallback, align 8
  br label %112

112:                                              ; preds = %108, %105
  %113 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %4, align 4
  br label %309

115:                                              ; preds = %90
  %116 = load i32, i32* @EAGAIN, align 4
  store i32 %116, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %309

117:                                              ; preds = %90, %90
  %118 = call i32 @linenoiseEditBackspace(%struct.linenoiseState* %8)
  br label %301

119:                                              ; preds = %90
  %120 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = call i32 @linenoiseEditDelete(%struct.linenoiseState* %8)
  br label %133

125:                                              ; preds = %119
  %126 = load i64, i64* @history_len, align 8
  %127 = add i64 %126, -1
  store i64 %127, i64* @history_len, align 8
  %128 = load i32*, i32** @history, align 8
  %129 = load i64, i64* @history_len, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @free(i32 %131)
  store i32 -1, i32* %4, align 4
  br label %309

133:                                              ; preds = %123
  br label %301

134:                                              ; preds = %90
  %135 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %138, label %182

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = icmp slt i64 %140, %143
  br i1 %144, label %145, label %182

145:                                              ; preds = %138
  %146 = load i8*, i8** %5, align 8
  %147 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %148, 1
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  store i32 %152, i32* %16, align 4
  %153 = load i8*, i8** %5, align 8
  %154 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = load i8*, i8** %5, align 8
  %159 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = sub nsw i64 %160, 1
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  store i8 %157, i8* %162, align 1
  %163 = load i32, i32* %16, align 4
  %164 = trunc i32 %163 to i8
  %165 = load i8*, i8** %5, align 8
  %166 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  store i8 %164, i8* %168, align 1
  %169 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = icmp ne i64 %170, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %145
  %177 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %177, align 8
  br label %180

180:                                              ; preds = %176, %145
  %181 = call i32 @refreshLine(%struct.linenoiseState* %8)
  br label %182

182:                                              ; preds = %180, %138, %134
  br label %301

183:                                              ; preds = %90
  %184 = call i32 @linenoiseEditMoveLeft(%struct.linenoiseState* %8)
  br label %301

185:                                              ; preds = %90
  %186 = call i32 @linenoiseEditMoveRight(%struct.linenoiseState* %8)
  br label %301

187:                                              ; preds = %90
  %188 = load i32, i32* @LINENOISE_HISTORY_PREV, align 4
  %189 = call i32 @linenoiseEditHistoryNext(%struct.linenoiseState* %8, i32 %188)
  br label %301

190:                                              ; preds = %90
  %191 = load i32, i32* @LINENOISE_HISTORY_NEXT, align 4
  %192 = call i32 @linenoiseEditHistoryNext(%struct.linenoiseState* %8, i32 %191)
  br label %301

193:                                              ; preds = %90
  %194 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %195 = load i32, i32* @stdin, align 4
  %196 = call i32 @fread(i8* %194, i32 1, i32 2, i32 %195)
  %197 = icmp slt i32 %196, 2
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %301

199:                                              ; preds = %193
  %200 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 91
  br i1 %203, label %204, label %254

204:                                              ; preds = %199
  %205 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 1
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp sge i32 %207, 48
  br i1 %208, label %209, label %234

209:                                              ; preds = %204
  %210 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 1
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp sle i32 %212, 57
  br i1 %213, label %214, label %234

214:                                              ; preds = %209
  %215 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %216 = getelementptr inbounds i8, i8* %215, i64 2
  %217 = load i32, i32* @stdin, align 4
  %218 = call i32 @fread(i8* %216, i32 1, i32 1, i32 %217)
  %219 = icmp eq i32 %218, -1
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  br label %301

221:                                              ; preds = %214
  %222 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 2
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 126
  br i1 %225, label %226, label %233

226:                                              ; preds = %221
  %227 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 1
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  switch i32 %229, label %232 [
    i32 51, label %230
  ]

230:                                              ; preds = %226
  %231 = call i32 @linenoiseEditDelete(%struct.linenoiseState* %8)
  br label %232

232:                                              ; preds = %226, %230
  br label %233

233:                                              ; preds = %232, %221
  br label %253

234:                                              ; preds = %209, %204
  %235 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 1
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  switch i32 %237, label %252 [
    i32 65, label %238
    i32 66, label %241
    i32 67, label %244
    i32 68, label %246
    i32 72, label %248
    i32 70, label %250
  ]

238:                                              ; preds = %234
  %239 = load i32, i32* @LINENOISE_HISTORY_PREV, align 4
  %240 = call i32 @linenoiseEditHistoryNext(%struct.linenoiseState* %8, i32 %239)
  br label %252

241:                                              ; preds = %234
  %242 = load i32, i32* @LINENOISE_HISTORY_NEXT, align 4
  %243 = call i32 @linenoiseEditHistoryNext(%struct.linenoiseState* %8, i32 %242)
  br label %252

244:                                              ; preds = %234
  %245 = call i32 @linenoiseEditMoveRight(%struct.linenoiseState* %8)
  br label %252

246:                                              ; preds = %234
  %247 = call i32 @linenoiseEditMoveLeft(%struct.linenoiseState* %8)
  br label %252

248:                                              ; preds = %234
  %249 = call i32 @linenoiseEditMoveHome(%struct.linenoiseState* %8)
  br label %252

250:                                              ; preds = %234
  %251 = call i32 @linenoiseEditMoveEnd(%struct.linenoiseState* %8)
  br label %252

252:                                              ; preds = %234, %250, %248, %246, %244, %241, %238
  br label %253

253:                                              ; preds = %252, %233
  br label %269

254:                                              ; preds = %199
  %255 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp eq i32 %257, 79
  br i1 %258, label %259, label %268

259:                                              ; preds = %254
  %260 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 1
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  switch i32 %262, label %267 [
    i32 72, label %263
    i32 70, label %265
  ]

263:                                              ; preds = %259
  %264 = call i32 @linenoiseEditMoveHome(%struct.linenoiseState* %8)
  br label %267

265:                                              ; preds = %259
  %266 = call i32 @linenoiseEditMoveEnd(%struct.linenoiseState* %8)
  br label %267

267:                                              ; preds = %259, %265, %263
  br label %268

268:                                              ; preds = %267, %254
  br label %269

269:                                              ; preds = %268, %253
  br label %301

270:                                              ; preds = %90
  %271 = load i8, i8* %11, align 1
  %272 = call i32 @linenoiseEditInsert(%struct.linenoiseState* %8, i8 signext %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %270
  store i32 -1, i32* %4, align 4
  br label %309

275:                                              ; preds = %270
  br label %301

276:                                              ; preds = %90
  %277 = load i8*, i8** %5, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 0
  store i8 0, i8* %278, align 1
  %279 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 6
  store i32 0, i32* %279, align 8
  %280 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 5
  store i64 0, i64* %280, align 8
  %281 = call i32 @refreshLine(%struct.linenoiseState* %8)
  br label %301

282:                                              ; preds = %90
  %283 = load i8*, i8** %5, align 8
  %284 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 5
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds i8, i8* %283, i64 %285
  store i8 0, i8* %286, align 1
  %287 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 5
  %288 = load i64, i64* %287, align 8
  %289 = trunc i64 %288 to i32
  %290 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %8, i32 0, i32 6
  store i32 %289, i32* %290, align 8
  %291 = call i32 @refreshLine(%struct.linenoiseState* %8)
  br label %301

292:                                              ; preds = %90
  %293 = call i32 @linenoiseEditMoveHome(%struct.linenoiseState* %8)
  br label %301

294:                                              ; preds = %90
  %295 = call i32 @linenoiseEditMoveEnd(%struct.linenoiseState* %8)
  br label %301

296:                                              ; preds = %90
  %297 = call i32 (...) @linenoiseClearScreen()
  %298 = call i32 @refreshLine(%struct.linenoiseState* %8)
  br label %301

299:                                              ; preds = %90
  %300 = call i32 @linenoiseEditDeletePrevWord(%struct.linenoiseState* %8)
  br label %301

301:                                              ; preds = %299, %296, %294, %292, %282, %276, %275, %269, %220, %198, %190, %187, %185, %183, %182, %133, %117
  %302 = load i32, i32* @stdout, align 4
  %303 = call i64 @__fbufsize(i32 %302)
  %304 = icmp sgt i64 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  %306 = load i32, i32* @stdout, align 4
  %307 = call i32 @fflush(i32 %306)
  br label %308

308:                                              ; preds = %305, %301
  br label %61

309:                                              ; preds = %274, %125, %115, %112, %80, %66, %47
  %310 = load i32, i32* %4, align 4
  ret i32 %310
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @getColumns(...) #1

declare dso_local i32 @linenoiseHistoryAdd(i8*) #1

declare dso_local i32 @getCursorPosition(...) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32) #1

declare dso_local i32 @completeLine(%struct.linenoiseState*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @linenoiseEditMoveEnd(%struct.linenoiseState*) #1

declare dso_local i32 @refreshLine(%struct.linenoiseState*) #1

declare dso_local i32 @linenoiseEditBackspace(%struct.linenoiseState*) #1

declare dso_local i32 @linenoiseEditDelete(%struct.linenoiseState*) #1

declare dso_local i32 @linenoiseEditMoveLeft(%struct.linenoiseState*) #1

declare dso_local i32 @linenoiseEditMoveRight(%struct.linenoiseState*) #1

declare dso_local i32 @linenoiseEditHistoryNext(%struct.linenoiseState*, i32) #1

declare dso_local i32 @linenoiseEditMoveHome(%struct.linenoiseState*) #1

declare dso_local i32 @linenoiseEditInsert(%struct.linenoiseState*, i8 signext) #1

declare dso_local i32 @linenoiseClearScreen(...) #1

declare dso_local i32 @linenoiseEditDeletePrevWord(%struct.linenoiseState*) #1

declare dso_local i64 @__fbufsize(i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
