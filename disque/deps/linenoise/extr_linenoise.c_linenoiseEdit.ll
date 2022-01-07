; ModuleID = '/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_linenoiseEdit.c'
source_filename = "/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_linenoiseEdit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linenoiseState = type { i32, i32, i8*, i64, i8*, i64, i64, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@completionCallback = common dso_local global i32* null, align 8
@history_len = common dso_local global i64 0, align 8
@history = common dso_local global i32* null, align 8
@mlmode = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LINENOISE_HISTORY_PREV = common dso_local global i32 0, align 4
@LINENOISE_HISTORY_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64, i8*)* @linenoiseEdit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linenoiseEdit(i32 %0, i32 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.linenoiseState, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca [3 x i8], align 1
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 2
  store i8* %21, i8** %22, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 3
  store i64 %23, i64* %24, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 4
  store i8* %25, i8** %26, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 8
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 7
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @getColumns(i32 %33, i32 %34)
  %36 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 11
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 10
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 9
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %42, align 8
  %45 = call i32 @linenoiseHistoryAdd(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %46 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @write(i32 %47, i8* %48, i32 %50)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %300

54:                                               ; preds = %5
  br label %55

55:                                               ; preds = %54, %83, %299
  %56 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @read(i32 %57, i8* %13, i32 1)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %6, align 4
  br label %300

64:                                               ; preds = %55
  %65 = load i8, i8* %13, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 9
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load i32*, i32** @completionCallback, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = call signext i8 @completeLine(%struct.linenoiseState* %12)
  store i8 %72, i8* %13, align 1
  %73 = load i8, i8* %13, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %6, align 4
  br label %300

79:                                               ; preds = %71
  %80 = load i8, i8* %13, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %55

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %84, %68, %64
  %86 = load i8, i8* %13, align 1
  %87 = sext i8 %86 to i32
  switch i32 %87, label %268 [
    i32 129, label %88
    i32 140, label %103
    i32 143, label %105
    i32 8, label %105
    i32 139, label %107
    i32 132, label %122
    i32 141, label %171
    i32 137, label %173
    i32 133, label %175
    i32 134, label %178
    i32 128, label %181
    i32 131, label %274
    i32 136, label %280
    i32 142, label %290
    i32 138, label %292
    i32 135, label %294
    i32 130, label %297
  ]

88:                                               ; preds = %85
  %89 = load i64, i64* @history_len, align 8
  %90 = add i64 %89, -1
  store i64 %90, i64* @history_len, align 8
  %91 = load i32*, i32** @history, align 8
  %92 = load i64, i64* @history_len, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @free(i32 %94)
  %96 = load i32, i32* @mlmode, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = call i32 @linenoiseEditMoveEnd(%struct.linenoiseState* %12)
  br label %100

100:                                              ; preds = %98, %88
  %101 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 7
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %6, align 4
  br label %300

103:                                              ; preds = %85
  %104 = load i32, i32* @EAGAIN, align 4
  store i32 %104, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %300

105:                                              ; preds = %85, %85
  %106 = call i32 @linenoiseEditBackspace(%struct.linenoiseState* %12)
  br label %299

107:                                              ; preds = %85
  %108 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 7
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = call i32 @linenoiseEditDelete(%struct.linenoiseState* %12)
  br label %121

113:                                              ; preds = %107
  %114 = load i64, i64* @history_len, align 8
  %115 = add i64 %114, -1
  store i64 %115, i64* @history_len, align 8
  %116 = load i32*, i32** @history, align 8
  %117 = load i64, i64* @history_len, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @free(i32 %119)
  store i32 -1, i32* %6, align 4
  br label %300

121:                                              ; preds = %111
  br label %299

122:                                              ; preds = %85
  %123 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %170

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 7
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = icmp slt i64 %128, %131
  br i1 %132, label %133, label %170

133:                                              ; preds = %126
  %134 = load i8*, i8** %9, align 8
  %135 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %136, 1
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  store i32 %140, i32* %16, align 4
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = load i8*, i8** %9, align 8
  %147 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %148, 1
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  store i8 %145, i8* %150, align 1
  %151 = load i32, i32* %16, align 4
  %152 = trunc i32 %151 to i8
  %153 = load i8*, i8** %9, align 8
  %154 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  store i8 %152, i8* %156, align 1
  %157 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 7
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = icmp ne i64 %158, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %133
  %165 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %165, align 8
  br label %168

168:                                              ; preds = %164, %133
  %169 = call i32 @refreshLine(%struct.linenoiseState* %12)
  br label %170

170:                                              ; preds = %168, %126, %122
  br label %299

171:                                              ; preds = %85
  %172 = call i32 @linenoiseEditMoveLeft(%struct.linenoiseState* %12)
  br label %299

173:                                              ; preds = %85
  %174 = call i32 @linenoiseEditMoveRight(%struct.linenoiseState* %12)
  br label %299

175:                                              ; preds = %85
  %176 = load i32, i32* @LINENOISE_HISTORY_PREV, align 4
  %177 = call i32 @linenoiseEditHistoryNext(%struct.linenoiseState* %12, i32 %176)
  br label %299

178:                                              ; preds = %85
  %179 = load i32, i32* @LINENOISE_HISTORY_NEXT, align 4
  %180 = call i32 @linenoiseEditHistoryNext(%struct.linenoiseState* %12, i32 %179)
  br label %299

181:                                              ; preds = %85
  %182 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %185 = call i32 @read(i32 %183, i8* %184, i32 1)
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  br label %299

188:                                              ; preds = %181
  %189 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  %193 = call i32 @read(i32 %190, i8* %192, i32 1)
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  br label %299

196:                                              ; preds = %188
  %197 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 91
  br i1 %200, label %201, label %252

201:                                              ; preds = %196
  %202 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp sge i32 %204, 48
  br i1 %205, label %206, label %232

206:                                              ; preds = %201
  %207 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp sle i32 %209, 57
  br i1 %210, label %211, label %232

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %215 = getelementptr inbounds i8, i8* %214, i64 2
  %216 = call i32 @read(i32 %213, i8* %215, i32 1)
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %218, label %219

218:                                              ; preds = %211
  br label %299

219:                                              ; preds = %211
  %220 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 2
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 126
  br i1 %223, label %224, label %231

224:                                              ; preds = %219
  %225 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  switch i32 %227, label %230 [
    i32 51, label %228
  ]

228:                                              ; preds = %224
  %229 = call i32 @linenoiseEditDelete(%struct.linenoiseState* %12)
  br label %230

230:                                              ; preds = %224, %228
  br label %231

231:                                              ; preds = %230, %219
  br label %251

232:                                              ; preds = %206, %201
  %233 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  switch i32 %235, label %250 [
    i32 65, label %236
    i32 66, label %239
    i32 67, label %242
    i32 68, label %244
    i32 72, label %246
    i32 70, label %248
  ]

236:                                              ; preds = %232
  %237 = load i32, i32* @LINENOISE_HISTORY_PREV, align 4
  %238 = call i32 @linenoiseEditHistoryNext(%struct.linenoiseState* %12, i32 %237)
  br label %250

239:                                              ; preds = %232
  %240 = load i32, i32* @LINENOISE_HISTORY_NEXT, align 4
  %241 = call i32 @linenoiseEditHistoryNext(%struct.linenoiseState* %12, i32 %240)
  br label %250

242:                                              ; preds = %232
  %243 = call i32 @linenoiseEditMoveRight(%struct.linenoiseState* %12)
  br label %250

244:                                              ; preds = %232
  %245 = call i32 @linenoiseEditMoveLeft(%struct.linenoiseState* %12)
  br label %250

246:                                              ; preds = %232
  %247 = call i32 @linenoiseEditMoveHome(%struct.linenoiseState* %12)
  br label %250

248:                                              ; preds = %232
  %249 = call i32 @linenoiseEditMoveEnd(%struct.linenoiseState* %12)
  br label %250

250:                                              ; preds = %232, %248, %246, %244, %242, %239, %236
  br label %251

251:                                              ; preds = %250, %231
  br label %267

252:                                              ; preds = %196
  %253 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 79
  br i1 %256, label %257, label %266

257:                                              ; preds = %252
  %258 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  switch i32 %260, label %265 [
    i32 72, label %261
    i32 70, label %263
  ]

261:                                              ; preds = %257
  %262 = call i32 @linenoiseEditMoveHome(%struct.linenoiseState* %12)
  br label %265

263:                                              ; preds = %257
  %264 = call i32 @linenoiseEditMoveEnd(%struct.linenoiseState* %12)
  br label %265

265:                                              ; preds = %257, %263, %261
  br label %266

266:                                              ; preds = %265, %252
  br label %267

267:                                              ; preds = %266, %251
  br label %299

268:                                              ; preds = %85
  %269 = load i8, i8* %13, align 1
  %270 = call i32 @linenoiseEditInsert(%struct.linenoiseState* %12, i8 signext %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %268
  store i32 -1, i32* %6, align 4
  br label %300

273:                                              ; preds = %268
  br label %299

274:                                              ; preds = %85
  %275 = load i8*, i8** %9, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 0
  store i8 0, i8* %276, align 1
  %277 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 7
  store i32 0, i32* %277, align 8
  %278 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  store i64 0, i64* %278, align 8
  %279 = call i32 @refreshLine(%struct.linenoiseState* %12)
  br label %299

280:                                              ; preds = %85
  %281 = load i8*, i8** %9, align 8
  %282 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds i8, i8* %281, i64 %283
  store i8 0, i8* %284, align 1
  %285 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 6
  %286 = load i64, i64* %285, align 8
  %287 = trunc i64 %286 to i32
  %288 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %12, i32 0, i32 7
  store i32 %287, i32* %288, align 8
  %289 = call i32 @refreshLine(%struct.linenoiseState* %12)
  br label %299

290:                                              ; preds = %85
  %291 = call i32 @linenoiseEditMoveHome(%struct.linenoiseState* %12)
  br label %299

292:                                              ; preds = %85
  %293 = call i32 @linenoiseEditMoveEnd(%struct.linenoiseState* %12)
  br label %299

294:                                              ; preds = %85
  %295 = call i32 (...) @linenoiseClearScreen()
  %296 = call i32 @refreshLine(%struct.linenoiseState* %12)
  br label %299

297:                                              ; preds = %85
  %298 = call i32 @linenoiseEditDeletePrevWord(%struct.linenoiseState* %12)
  br label %299

299:                                              ; preds = %297, %294, %292, %290, %280, %274, %273, %267, %218, %195, %187, %178, %175, %173, %171, %170, %121, %105
  br label %55

300:                                              ; preds = %272, %113, %103, %100, %76, %61, %53
  %301 = load i32, i32* %6, align 4
  ret i32 %301
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @getColumns(i32, i32) #1

declare dso_local i32 @linenoiseHistoryAdd(i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local signext i8 @completeLine(%struct.linenoiseState*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @linenoiseEditMoveEnd(%struct.linenoiseState*) #1

declare dso_local i32 @linenoiseEditBackspace(%struct.linenoiseState*) #1

declare dso_local i32 @linenoiseEditDelete(%struct.linenoiseState*) #1

declare dso_local i32 @refreshLine(%struct.linenoiseState*) #1

declare dso_local i32 @linenoiseEditMoveLeft(%struct.linenoiseState*) #1

declare dso_local i32 @linenoiseEditMoveRight(%struct.linenoiseState*) #1

declare dso_local i32 @linenoiseEditHistoryNext(%struct.linenoiseState*, i32) #1

declare dso_local i32 @linenoiseEditMoveHome(%struct.linenoiseState*) #1

declare dso_local i32 @linenoiseEditInsert(%struct.linenoiseState*, i8 signext) #1

declare dso_local i32 @linenoiseClearScreen(...) #1

declare dso_local i32 @linenoiseEditDeletePrevWord(%struct.linenoiseState*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
