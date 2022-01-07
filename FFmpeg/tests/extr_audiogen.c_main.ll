; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/extr_audiogen.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/extr_audiogen.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [185 x i8] c"usage: %s file [<sample rate> [<channels>] [<random seed>]]\0Agenerate a test raw 16 bit audio stream\0AIf the file extension is .wav a WAVE header will be added.\0Adefault: 44100 Hz stereo\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid sample rate: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"invalid number of channels: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@outfile = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c".wav\00", align 1
@FRAC_BITS = common dso_local global i32 0, align 4
@FRAC_ONE = common dso_local global i32 0, align 4

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
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %13, align 4
  %22 = load i32, i32* @MAX_CHANNELS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %14, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %26 = load i32, i32* @MAX_CHANNELS, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %16, align 8
  %29 = load i32, i32* @MAX_CHANNELS, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %17, align 8
  store i32 44100, i32* %18, align 4
  store i32 2, i32* %19, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = icmp sgt i32 %35, 5
  br i1 %36, label %37, label %43

37:                                               ; preds = %34, %2
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @printf(i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = call i32 @exit(i32 1) #4
  unreachable

43:                                               ; preds = %34
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %44, 2
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @atoi(i8* %49)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32, i32* @stderr, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %367

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %43
  %60 = load i32, i32* %4, align 4
  %61 = icmp sgt i32 %60, 3
  br i1 %61, label %62, label %79

62:                                               ; preds = %59
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 3
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @atoi(i8* %65)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %19, align 4
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %74, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* @MAX_CHANNELS, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70, %62
  %75 = load i32, i32* @stderr, align 4
  %76 = load i32, i32* %19, align 4
  %77 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %367

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %59
  %80 = load i32, i32* %4, align 4
  %81 = icmp sgt i32 %80, 4
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 4
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @atoi(i8* %85)
  %87 = ptrtoint i8* %86 to i32
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %82, %79
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @fopen(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %92, i32* @outfile, align 4
  %93 = load i32, i32* @outfile, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %88
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @perror(i8* %98)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %367

100:                                              ; preds = %88
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i8* @strrchr(i8* %103, i8 signext 46)
  store i8* %104, i8** %20, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %100
  %107 = load i8*, i8** %20, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %18, align 4
  %114 = mul nsw i32 6, %113
  %115 = call i32 @put_wav_header(i32 %111, i32 %112, i32 %114)
  br label %116

116:                                              ; preds = %110, %106, %100
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %117

117:                                              ; preds = %145, %116
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %18, align 4
  %120 = mul nsw i32 1, %119
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %148

122:                                              ; preds = %117
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @int_cos(i32 %123)
  %125 = mul nsw i32 %124, 10000
  %126 = load i32, i32* @FRAC_BITS, align 4
  %127 = ashr i32 %125, %126
  store i32 %127, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %135, %122
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %19, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @put16(i32 %133)
  br label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %128

138:                                              ; preds = %128
  %139 = load i32, i32* @FRAC_ONE, align 4
  %140 = mul nsw i32 1000, %139
  %141 = load i32, i32* %18, align 4
  %142 = sdiv i32 %140, %141
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %138
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %117

148:                                              ; preds = %117
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %149

149:                                              ; preds = %183, %148
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %18, align 4
  %152 = mul nsw i32 1, %151
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %186

154:                                              ; preds = %149
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @int_cos(i32 %155)
  %157 = mul nsw i32 %156, 10000
  %158 = load i32, i32* @FRAC_BITS, align 4
  %159 = ashr i32 %157, %158
  store i32 %159, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %160

160:                                              ; preds = %167, %154
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %19, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @put16(i32 %165)
  br label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %160

170:                                              ; preds = %160
  %171 = load i32, i32* %6, align 4
  %172 = mul nsw i32 9900, %171
  %173 = load i32, i32* %18, align 4
  %174 = sdiv i32 %172, %173
  %175 = add nsw i32 100, %174
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* @FRAC_ONE, align 4
  %178 = mul nsw i32 %176, %177
  %179 = load i32, i32* %18, align 4
  %180 = sdiv i32 %178, %179
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %7, align 4
  br label %183

183:                                              ; preds = %170
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %6, align 4
  br label %149

186:                                              ; preds = %149
  store i32 0, i32* %6, align 4
  br label %187

187:                                              ; preds = %206, %186
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %18, align 4
  %190 = sdiv i32 %189, 2
  %191 = icmp slt i32 %188, %190
  br i1 %191, label %192, label %209

192:                                              ; preds = %187
  %193 = call i32 @myrnd(i32* %13, i32 20000)
  %194 = sub nsw i32 %193, 10000
  store i32 %194, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %195

195:                                              ; preds = %202, %192
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* %19, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %195
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @put16(i32 %200)
  br label %202

202:                                              ; preds = %199
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %9, align 4
  br label %195

205:                                              ; preds = %195
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %6, align 4
  br label %187

209:                                              ; preds = %187
  store i32 0, i32* %6, align 4
  br label %210

210:                                              ; preds = %229, %209
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* %18, align 4
  %213 = sdiv i32 %212, 2
  %214 = icmp slt i32 %211, %213
  br i1 %214, label %215, label %232

215:                                              ; preds = %210
  %216 = call i32 @myrnd(i32* %13, i32 65535)
  %217 = sub nsw i32 %216, 32768
  store i32 %217, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %218

218:                                              ; preds = %225, %215
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* %19, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %218
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @put16(i32 %223)
  br label %225

225:                                              ; preds = %222
  %226 = load i32, i32* %9, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %9, align 4
  br label %218

228:                                              ; preds = %218
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %6, align 4
  br label %210

232:                                              ; preds = %210
  store i32 0, i32* %9, align 4
  br label %233

233:                                              ; preds = %251, %232
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* %19, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %254

237:                                              ; preds = %233
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %31, i64 %239
  store i32 0, i32* %240, align 4
  %241 = call i32 @myrnd(i32* %13, i32 5000)
  %242 = add nsw i32 100, %241
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %25, i64 %244
  store i32 %242, i32* %245, align 4
  %246 = call i32 @myrnd(i32* %13, i32 5000)
  %247 = add nsw i32 100, %246
  %248 = load i32, i32* %9, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %28, i64 %249
  store i32 %247, i32* %250, align 4
  br label %251

251:                                              ; preds = %237
  %252 = load i32, i32* %9, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %9, align 4
  br label %233

254:                                              ; preds = %233
  store i32 0, i32* %6, align 4
  br label %255

255:                                              ; preds = %308, %254
  %256 = load i32, i32* %6, align 4
  %257 = load i32, i32* %18, align 4
  %258 = mul nsw i32 1, %257
  %259 = icmp slt i32 %256, %258
  br i1 %259, label %260, label %311

260:                                              ; preds = %255
  store i32 0, i32* %9, align 4
  br label %261

261:                                              ; preds = %304, %260
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* %19, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %307

265:                                              ; preds = %261
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %31, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @int_cos(i32 %269)
  %271 = mul nsw i32 %270, 10000
  %272 = load i32, i32* @FRAC_BITS, align 4
  %273 = ashr i32 %271, %272
  store i32 %273, i32* %8, align 4
  %274 = load i32, i32* %8, align 4
  %275 = call i32 @put16(i32 %274)
  %276 = load i32, i32* %9, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %25, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %9, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %28, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %9, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %25, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = sub nsw i32 %283, %287
  %289 = load i32, i32* %6, align 4
  %290 = mul nsw i32 %288, %289
  %291 = load i32, i32* %18, align 4
  %292 = sdiv i32 %290, %291
  %293 = add nsw i32 %279, %292
  store i32 %293, i32* %10, align 4
  %294 = load i32, i32* %10, align 4
  %295 = load i32, i32* @FRAC_ONE, align 4
  %296 = mul nsw i32 %294, %295
  %297 = load i32, i32* %18, align 4
  %298 = sdiv i32 %296, %297
  %299 = load i32, i32* %9, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %31, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %302, %298
  store i32 %303, i32* %301, align 4
  br label %304

304:                                              ; preds = %265
  %305 = load i32, i32* %9, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %9, align 4
  br label %261

307:                                              ; preds = %261
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %6, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %6, align 4
  br label %255

311:                                              ; preds = %255
  store i32 0, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %312

312:                                              ; preds = %361, %311
  %313 = load i32, i32* %6, align 4
  %314 = load i32, i32* %18, align 4
  %315 = mul nsw i32 2, %314
  %316 = icmp slt i32 %313, %315
  br i1 %316, label %317, label %364

317:                                              ; preds = %312
  store i32 0, i32* %9, align 4
  br label %318

318:                                              ; preds = %357, %317
  %319 = load i32, i32* %9, align 4
  %320 = load i32, i32* %19, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %360

322:                                              ; preds = %318
  %323 = load i32, i32* @FRAC_ONE, align 4
  %324 = load i32, i32* %12, align 4
  %325 = call i32 @int_cos(i32 %324)
  %326 = add nsw i32 %323, %325
  %327 = mul nsw i32 %326, 5000
  %328 = load i32, i32* @FRAC_BITS, align 4
  %329 = ashr i32 %327, %328
  store i32 %329, i32* %11, align 4
  %330 = load i32, i32* %9, align 4
  %331 = and i32 %330, 1
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %322
  %334 = load i32, i32* %11, align 4
  %335 = sub nsw i32 10000, %334
  store i32 %335, i32* %11, align 4
  br label %336

336:                                              ; preds = %333, %322
  %337 = load i32, i32* %7, align 4
  %338 = call i32 @int_cos(i32 %337)
  %339 = load i32, i32* %11, align 4
  %340 = mul nsw i32 %338, %339
  %341 = load i32, i32* @FRAC_BITS, align 4
  %342 = ashr i32 %340, %341
  store i32 %342, i32* %8, align 4
  %343 = load i32, i32* %8, align 4
  %344 = call i32 @put16(i32 %343)
  %345 = load i32, i32* @FRAC_ONE, align 4
  %346 = mul nsw i32 500, %345
  %347 = load i32, i32* %18, align 4
  %348 = sdiv i32 %346, %347
  %349 = load i32, i32* %7, align 4
  %350 = add nsw i32 %349, %348
  store i32 %350, i32* %7, align 4
  %351 = load i32, i32* @FRAC_ONE, align 4
  %352 = mul nsw i32 2, %351
  %353 = load i32, i32* %18, align 4
  %354 = sdiv i32 %352, %353
  %355 = load i32, i32* %12, align 4
  %356 = add nsw i32 %355, %354
  store i32 %356, i32* %12, align 4
  br label %357

357:                                              ; preds = %336
  %358 = load i32, i32* %9, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %9, align 4
  br label %318

360:                                              ; preds = %318
  br label %361

361:                                              ; preds = %360
  %362 = load i32, i32* %6, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %6, align 4
  br label %312

364:                                              ; preds = %312
  %365 = load i32, i32* @outfile, align 4
  %366 = call i32 @fclose(i32 %365)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %367

367:                                              ; preds = %364, %95, %74, %54
  %368 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %368)
  %369 = load i32, i32* %3, align 4
  ret i32 %369
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i8* @atoi(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #2

declare dso_local i32 @fopen(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @put_wav_header(i32, i32, i32) #2

declare dso_local i32 @int_cos(i32) #2

declare dso_local i32 @put16(i32) #2

declare dso_local i32 @myrnd(i32*, i32) #2

declare dso_local i32 @fclose(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
