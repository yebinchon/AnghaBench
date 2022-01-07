; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_probetest.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_probetest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@single_format = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"probetest [-f <input format>] [<retry_count> [<max_size>]]\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"max_size out of bounds\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"retry_count out of bounds\0A\00", align 1
@AVPROBE_PADDING_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"testing size=%d\0A\00", align 1
@failures = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %23 = bitcast %struct.TYPE_3__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 32, i1 false)
  store i32 4097, i32* %14, align 4
  store i32 65537, i32* %15, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %24

24:                                               ; preds = %97, %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %100

28:                                               ; preds = %24
  %29 = load i8**, i8*** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %37, 1
  %39 = load i32, i32* %4, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i8*, i8** @single_format, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %41
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %45, i64 %48
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** @single_format, align 8
  br label %96

51:                                               ; preds = %41, %36, %28
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @read_int(i8* %56)
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %51
  %60 = load i32, i32* %16, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @read_int(i8* %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %16, align 4
  br label %95

71:                                               ; preds = %59, %51
  %72 = load i8**, i8*** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @read_int(i8* %76)
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %71
  %80 = load i32, i32* %16, align 4
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @read_int(i8* %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %16, align 4
  br label %94

91:                                               ; preds = %79, %71
  %92 = load i32, i32* @stderr, align 4
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %358

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94, %62
  br label %96

96:                                               ; preds = %95, %44
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %24

100:                                              ; preds = %24
  %101 = load i32, i32* %15, align 4
  %102 = icmp ugt i32 %101, 125000000
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* @stderr, align 4
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %358

106:                                              ; preds = %100
  %107 = load i32, i32* %14, align 4
  %108 = icmp ugt i32 %107, 1000000000
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* @stderr, align 4
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %358

112:                                              ; preds = %106
  %113 = call i32 @av_lfg_init(i32* %12, i32 -559038737)
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32* null, i32** %114, align 8
  store i32 1, i32* %9, align 4
  br label %115

115:                                              ; preds = %348, %112
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %351

119:                                              ; preds = %115
  %120 = load i32, i32* %9, align 4
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 %120, i32* %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* @AVPROBE_PADDING_SIZE, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32* @av_realloc(i32* %123, i64 %127)
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32* %128, i32** %129, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %130, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %119
  %135 = load i32, i32* @stderr, align 4
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %358

137:                                              ; preds = %119
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = zext i32 %140 to i64
  %142 = load i64, i64* @AVPROBE_PADDING_SIZE, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @memset(i32* %139, i32 0, i64 %143)
  %145 = load i32, i32* @stderr, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %145, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %146)
  store i32 0, i32* %10, align 4
  br label %148

148:                                              ; preds = %340, %137
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp ult i32 %149, %150
  br i1 %151, label %152, label %347

152:                                              ; preds = %148
  store i32 0, i32* %8, align 4
  br label %153

153:                                              ; preds = %336, %152
  %154 = load i32, i32* %8, align 4
  %155 = icmp ult i32 %154, 4
  br i1 %155, label %156, label %339

156:                                              ; preds = %153
  store i32 0, i32* %6, align 4
  br label %157

157:                                              ; preds = %332, %156
  %158 = load i32, i32* %6, align 4
  %159 = icmp ult i32 %158, 4096
  br i1 %159, label %160, label %335

160:                                              ; preds = %157
  store i32 0, i32* %17, align 4
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @init_put_bits(i32* %13, i32* %162, i32 %163)
  %165 = load i32, i32* %8, align 4
  switch i32 %165, label %326 [
    i32 0, label %166
    i32 1, label %183
    i32 2, label %212
    i32 3, label %240
  ]

166:                                              ; preds = %160
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %179, %166
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %9, align 4
  %170 = mul i32 %169, 8
  %171 = icmp ult i32 %168, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %167
  %173 = call i32 @av_lfg_get(i32* %12)
  %174 = load i32, i32* %6, align 4
  %175 = shl i32 %174, 20
  %176 = icmp ugt i32 %173, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @put_bits(i32* %13, i32 1, i32 %177)
  br label %179

179:                                              ; preds = %172
  %180 = load i32, i32* %7, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %167

182:                                              ; preds = %167
  br label %326

183:                                              ; preds = %160
  store i32 0, i32* %7, align 4
  br label %184

184:                                              ; preds = %208, %183
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* %9, align 4
  %187 = mul i32 %186, 8
  %188 = icmp ult i32 %185, %187
  br i1 %188, label %189, label %211

189:                                              ; preds = %184
  %190 = load i32, i32* %17, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32, i32* %6, align 4
  %194 = and i32 %193, 63
  br label %198

195:                                              ; preds = %189
  %196 = load i32, i32* %6, align 4
  %197 = lshr i32 %196, 6
  br label %198

198:                                              ; preds = %195, %192
  %199 = phi i32 [ %194, %192 ], [ %197, %195 ]
  store i32 %199, i32* %18, align 4
  %200 = call i32 @av_lfg_get(i32* %12)
  %201 = load i32, i32* %18, align 4
  %202 = shl i32 %201, 26
  %203 = icmp ugt i32 %200, %202
  %204 = zext i1 %203 to i32
  store i32 %204, i32* %19, align 4
  %205 = load i32, i32* %19, align 4
  %206 = call i32 @put_bits(i32* %13, i32 1, i32 %205)
  %207 = load i32, i32* %19, align 4
  store i32 %207, i32* %17, align 4
  br label %208

208:                                              ; preds = %198
  %209 = load i32, i32* %7, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %7, align 4
  br label %184

211:                                              ; preds = %184
  br label %326

212:                                              ; preds = %160
  store i32 0, i32* %7, align 4
  br label %213

213:                                              ; preds = %236, %212
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* %9, align 4
  %216 = mul i32 %215, 8
  %217 = icmp ult i32 %214, %216
  br i1 %217, label %218, label %239

218:                                              ; preds = %213
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* %17, align 4
  %221 = mul i32 %220, 3
  %222 = lshr i32 %219, %221
  %223 = and i32 %222, 7
  store i32 %223, i32* %20, align 4
  %224 = call i32 @av_lfg_get(i32* %12)
  %225 = load i32, i32* %20, align 4
  %226 = shl i32 %225, 29
  %227 = icmp ugt i32 %224, %226
  %228 = zext i1 %227 to i32
  store i32 %228, i32* %21, align 4
  %229 = load i32, i32* %21, align 4
  %230 = call i32 @put_bits(i32* %13, i32 1, i32 %229)
  %231 = load i32, i32* %17, align 4
  %232 = mul i32 2, %231
  %233 = load i32, i32* %21, align 4
  %234 = add i32 %232, %233
  %235 = and i32 %234, 3
  store i32 %235, i32* %17, align 4
  br label %236

236:                                              ; preds = %218
  %237 = load i32, i32* %7, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %7, align 4
  br label %213

239:                                              ; preds = %213
  br label %326

240:                                              ; preds = %160
  store i32 0, i32* %7, align 4
  br label %241

241:                                              ; preds = %322, %240
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* %9, align 4
  %244 = icmp ult i32 %242, %243
  br i1 %244, label %245, label %325

245:                                              ; preds = %241
  store i32 0, i32* %22, align 4
  br label %246

246:                                              ; preds = %314, %245
  %247 = load i32, i32* %6, align 4
  %248 = and i32 %247, 63
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %315

250:                                              ; preds = %246
  %251 = call i32 @av_lfg_get(i32* %12)
  %252 = lshr i32 %251, 24
  store i32 %252, i32* %22, align 4
  %253 = load i32, i32* %22, align 4
  %254 = icmp sge i32 %253, 97
  br i1 %254, label %255, label %263

255:                                              ; preds = %250
  %256 = load i32, i32* %22, align 4
  %257 = icmp sle i32 %256, 122
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  %259 = load i32, i32* %6, align 4
  %260 = and i32 %259, 1
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %258
  br label %315

263:                                              ; preds = %258, %255, %250
  %264 = load i32, i32* %22, align 4
  %265 = icmp sge i32 %264, 65
  br i1 %265, label %266, label %274

266:                                              ; preds = %263
  %267 = load i32, i32* %22, align 4
  %268 = icmp sle i32 %267, 90
  br i1 %268, label %269, label %274

269:                                              ; preds = %266
  %270 = load i32, i32* %6, align 4
  %271 = and i32 %270, 2
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %269
  br label %315

274:                                              ; preds = %269, %266, %263
  %275 = load i32, i32* %22, align 4
  %276 = icmp sge i32 %275, 48
  br i1 %276, label %277, label %285

277:                                              ; preds = %274
  %278 = load i32, i32* %22, align 4
  %279 = icmp sle i32 %278, 57
  br i1 %279, label %280, label %285

280:                                              ; preds = %277
  %281 = load i32, i32* %6, align 4
  %282 = and i32 %281, 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %280
  br label %315

285:                                              ; preds = %280, %277, %274
  %286 = load i32, i32* %22, align 4
  %287 = icmp eq i32 %286, 32
  br i1 %287, label %288, label %293

288:                                              ; preds = %285
  %289 = load i32, i32* %6, align 4
  %290 = and i32 %289, 8
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %288
  br label %315

293:                                              ; preds = %288, %285
  %294 = load i32, i32* %22, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %293
  %297 = load i32, i32* %6, align 4
  %298 = and i32 %297, 16
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %296
  br label %315

301:                                              ; preds = %296, %293
  %302 = load i32, i32* %22, align 4
  %303 = icmp eq i32 %302, 1
  br i1 %303, label %304, label %309

304:                                              ; preds = %301
  %305 = load i32, i32* %6, align 4
  %306 = and i32 %305, 32
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %304
  br label %315

309:                                              ; preds = %304, %301
  br label %310

310:                                              ; preds = %309
  br label %311

311:                                              ; preds = %310
  br label %312

312:                                              ; preds = %311
  br label %313

313:                                              ; preds = %312
  br label %314

314:                                              ; preds = %313
  br label %246

315:                                              ; preds = %308, %300, %292, %284, %273, %262, %246
  %316 = load i32, i32* %22, align 4
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %7, align 4
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  store i32 %316, i32* %321, align 4
  br label %322

322:                                              ; preds = %315
  %323 = load i32, i32* %7, align 4
  %324 = add i32 %323, 1
  store i32 %324, i32* %7, align 4
  br label %241

325:                                              ; preds = %241
  br label %326

326:                                              ; preds = %325, %160, %239, %211, %182
  %327 = call i32 @flush_put_bits(i32* %13)
  %328 = load i32, i32* %8, align 4
  %329 = load i32, i32* %6, align 4
  %330 = load i32, i32* %9, align 4
  %331 = call i32 @probe(%struct.TYPE_3__* %11, i32 %328, i32 %329, i32 %330)
  br label %332

332:                                              ; preds = %326
  %333 = load i32, i32* %6, align 4
  %334 = add i32 %333, 1
  store i32 %334, i32* %6, align 4
  br label %157

335:                                              ; preds = %157
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %8, align 4
  %338 = add i32 %337, 1
  store i32 %338, i32* %8, align 4
  br label %153

339:                                              ; preds = %153
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %9, align 4
  %342 = call i64 @FFMAX(i32 %341, i32 32)
  %343 = load i32, i32* %10, align 4
  %344 = zext i32 %343 to i64
  %345 = add nsw i64 %344, %342
  %346 = trunc i64 %345 to i32
  store i32 %346, i32* %10, align 4
  br label %148

347:                                              ; preds = %148
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %9, align 4
  %350 = mul i32 %349, 2
  store i32 %350, i32* %9, align 4
  br label %115

351:                                              ; preds = %115
  %352 = call i64 (...) @AV_READ_TIME()
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %351
  %355 = call i32 (...) @print_times()
  br label %356

356:                                              ; preds = %354, %351
  %357 = load i32, i32* @failures, align 4
  store i32 %357, i32* %3, align 4
  br label %358

358:                                              ; preds = %356, %134, %109, %103, %91
  %359 = load i32, i32* %3, align 4
  ret i32 %359
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @read_int(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @av_lfg_init(i32*, i32) #2

declare dso_local i32* @av_realloc(i32*, i64) #2

declare dso_local i32 @memset(i32*, i32, i64) #2

declare dso_local i32 @init_put_bits(i32*, i32*, i32) #2

declare dso_local i32 @put_bits(i32*, i32, i32) #2

declare dso_local i32 @av_lfg_get(i32*) #2

declare dso_local i32 @flush_put_bits(i32*) #2

declare dso_local i32 @probe(%struct.TYPE_3__*, i32, i32, i32) #2

declare dso_local i64 @FFMAX(i32, i32) #2

declare dso_local i64 @AV_READ_TIME(...) #2

declare dso_local i32 @print_times(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
