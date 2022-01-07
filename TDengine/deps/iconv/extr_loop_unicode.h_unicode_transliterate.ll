; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_loop_unicode.h_unicode_transliterate.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_loop_unicode.h_unicode_transliterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i8*, i32, i64)* }

@HAVE_HANGUL_JAMO = common dso_local global i32 0, align 4
@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@cjk_variants_indx = common dso_local global i32* null, align 8
@cjk_variants = common dso_local global i16* null, align 8
@HAVE_QUOTATION_MARKS = common dso_local global i32 0, align 4
@HAVE_ACCENTS = common dso_local global i32 0, align 4
@translit_data = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i8*, i64)* @unicode_transliterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unicode_transliterate(%struct.TYPE_10__* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x i32], align 4
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @HAVE_HANGUL_JAMO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %121

42:                                               ; preds = %4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @johab_hangul_decompose(%struct.TYPE_10__* %43, i32* %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @RET_ILUNI, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %120

50:                                               ; preds = %42
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %12, align 8
  %54 = load i8*, i8** %8, align 8
  store i8* %54, i8** %13, align 8
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %98, %50
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %101

60:                                               ; preds = %56
  %61 = load i64, i64* %9, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %64, i32* %16, align 4
  br label %108

65:                                               ; preds = %60
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32 (%struct.TYPE_10__*, i8*, i32, i64)*, i32 (%struct.TYPE_10__*, i8*, i32, i64)** %68, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %9, align 8
  %77 = call i32 %69(%struct.TYPE_10__* %70, i8* %71, i32 %75, i64 %76)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* @RET_ILUNI, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %65
  br label %108

82:                                               ; preds = %65
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %9, align 8
  %86 = icmp ule i64 %84, %85
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = call i32 (...) @abort() #3
  unreachable

89:                                               ; preds = %82
  %90 = load i32, i32* %16, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %8, align 8
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %9, align 8
  %97 = sub i64 %96, %95
  store i64 %97, i64* %9, align 8
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %15, align 4
  br label %56

101:                                              ; preds = %56
  %102 = load i8*, i8** %8, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %5, align 4
  br label %398

108:                                              ; preds = %81, %63
  %109 = load i8*, i8** %12, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  %112 = load i8*, i8** %13, align 8
  store i8* %112, i8** %8, align 8
  %113 = load i64, i64* %14, align 8
  store i64 %113, i64* %9, align 8
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* @RET_ILUNI, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %118, i32* %5, align 4
  br label %398

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119, %42
  br label %121

121:                                              ; preds = %120, %4
  store i32 -1, i32* %17, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp eq i32 %122, 12294
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 0, i32* %17, align 4
  br label %144

125:                                              ; preds = %121
  %126 = load i32, i32* %7, align 4
  %127 = icmp eq i32 %126, 12534
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 1, i32* %17, align 4
  br label %143

129:                                              ; preds = %125
  %130 = load i32, i32* %7, align 4
  %131 = icmp sge i32 %130, 19968
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 40960
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i32*, i32** @cjk_variants_indx, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sub nsw i32 %137, 19968
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %17, align 4
  br label %142

142:                                              ; preds = %135, %132, %129
  br label %143

143:                                              ; preds = %142, %128
  br label %144

144:                                              ; preds = %143, %124
  %145 = load i32, i32* %17, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %246

147:                                              ; preds = %144
  br label %148

148:                                              ; preds = %242, %147
  %149 = load i16*, i16** @cjk_variants, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i16, i16* %149, i64 %151
  %153 = load i16, i16* %152, align 2
  store i16 %153, i16* %19, align 2
  %154 = load i16, i16* %19, align 2
  %155 = zext i16 %154 to i32
  %156 = and i32 %155, 32768
  %157 = trunc i32 %156 to i16
  store i16 %157, i16* %20, align 2
  %158 = load i16, i16* %19, align 2
  %159 = zext i16 %158 to i32
  %160 = and i32 %159, 32767
  %161 = trunc i32 %160 to i16
  store i16 %161, i16* %19, align 2
  %162 = load i16, i16* %19, align 2
  %163 = zext i16 %162 to i32
  %164 = add nsw i32 %163, 12288
  %165 = trunc i32 %164 to i16
  store i16 %165, i16* %19, align 2
  %166 = load i16, i16* %19, align 2
  %167 = zext i16 %166 to i32
  %168 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  store i32 %167, i32* %168, align 4
  %169 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  store i32 12350, i32* %169, align 4
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  store i8* %172, i8** %21, align 8
  %173 = load i8*, i8** %8, align 8
  store i8* %173, i8** %22, align 8
  %174 = load i64, i64* %9, align 8
  store i64 %174, i64* %23, align 8
  store i32 0, i32* %24, align 4
  br label %175

175:                                              ; preds = %216, %148
  %176 = load i32, i32* %24, align 4
  %177 = icmp slt i32 %176, 2
  br i1 %177, label %178, label %219

178:                                              ; preds = %175
  %179 = load i64, i64* %9, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %182, i32* %25, align 4
  br label %226

183:                                              ; preds = %178
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i32 (%struct.TYPE_10__*, i8*, i32, i64)*, i32 (%struct.TYPE_10__*, i8*, i32, i64)** %186, align 8
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %189 = load i8*, i8** %8, align 8
  %190 = load i32, i32* %24, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i64, i64* %9, align 8
  %195 = call i32 %187(%struct.TYPE_10__* %188, i8* %189, i32 %193, i64 %194)
  store i32 %195, i32* %25, align 4
  %196 = load i32, i32* %25, align 4
  %197 = load i32, i32* @RET_ILUNI, align 4
  %198 = icmp sle i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %183
  br label %226

200:                                              ; preds = %183
  %201 = load i32, i32* %25, align 4
  %202 = sext i32 %201 to i64
  %203 = load i64, i64* %9, align 8
  %204 = icmp ule i64 %202, %203
  br i1 %204, label %207, label %205

205:                                              ; preds = %200
  %206 = call i32 (...) @abort() #3
  unreachable

207:                                              ; preds = %200
  %208 = load i32, i32* %25, align 4
  %209 = load i8*, i8** %8, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  store i8* %211, i8** %8, align 8
  %212 = load i32, i32* %25, align 4
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* %9, align 8
  %215 = sub i64 %214, %213
  store i64 %215, i64* %9, align 8
  br label %216

216:                                              ; preds = %207
  %217 = load i32, i32* %24, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %24, align 4
  br label %175

219:                                              ; preds = %175
  %220 = load i8*, i8** %8, align 8
  %221 = load i8*, i8** %22, align 8
  %222 = ptrtoint i8* %220 to i64
  %223 = ptrtoint i8* %221 to i64
  %224 = sub i64 %222, %223
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %5, align 4
  br label %398

226:                                              ; preds = %199, %181
  %227 = load i8*, i8** %21, align 8
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 1
  store i8* %227, i8** %229, align 8
  %230 = load i8*, i8** %22, align 8
  store i8* %230, i8** %8, align 8
  %231 = load i64, i64* %23, align 8
  store i64 %231, i64* %9, align 8
  %232 = load i32, i32* %25, align 4
  %233 = load i32, i32* @RET_ILUNI, align 4
  %234 = icmp ne i32 %232, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %226
  %236 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %236, i32* %5, align 4
  br label %398

237:                                              ; preds = %226
  %238 = load i16, i16* %20, align 2
  %239 = icmp ne i16 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  br label %245

241:                                              ; preds = %237
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %17, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %17, align 4
  br label %148

245:                                              ; preds = %240
  br label %246

246:                                              ; preds = %245, %144
  %247 = load i32, i32* %7, align 4
  %248 = icmp sge i32 %247, 8216
  br i1 %248, label %249, label %299

249:                                              ; preds = %246
  %250 = load i32, i32* %7, align 4
  %251 = icmp sle i32 %250, 8218
  br i1 %251, label %252, label %299

252:                                              ; preds = %249
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @HAVE_QUOTATION_MARKS, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %267

259:                                              ; preds = %252
  %260 = load i32, i32* %7, align 4
  %261 = icmp eq i32 %260, 8218
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  br label %265

263:                                              ; preds = %259
  %264 = load i32, i32* %7, align 4
  br label %265

265:                                              ; preds = %263, %262
  %266 = phi i32 [ 8216, %262 ], [ %264, %263 ]
  br label %282

267:                                              ; preds = %252
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @HAVE_ACCENTS, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %267
  %275 = load i32, i32* %7, align 4
  %276 = icmp eq i32 %275, 8217
  %277 = zext i1 %276 to i64
  %278 = select i1 %276, i32 180, i32 96
  br label %280

279:                                              ; preds = %267
  br label %280

280:                                              ; preds = %279, %274
  %281 = phi i32 [ %278, %274 ], [ 39, %279 ]
  br label %282

282:                                              ; preds = %280, %265
  %283 = phi i32 [ %266, %265 ], [ %281, %280 ]
  store i32 %283, i32* %26, align 4
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 0
  %287 = load i32 (%struct.TYPE_10__*, i8*, i32, i64)*, i32 (%struct.TYPE_10__*, i8*, i32, i64)** %286, align 8
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %289 = load i8*, i8** %8, align 8
  %290 = load i32, i32* %26, align 4
  %291 = load i64, i64* %9, align 8
  %292 = call i32 %287(%struct.TYPE_10__* %288, i8* %289, i32 %290, i64 %291)
  store i32 %292, i32* %27, align 4
  %293 = load i32, i32* %27, align 4
  %294 = load i32, i32* @RET_ILUNI, align 4
  %295 = icmp ne i32 %293, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %282
  %297 = load i32, i32* %27, align 4
  store i32 %297, i32* %5, align 4
  br label %398

298:                                              ; preds = %282
  br label %299

299:                                              ; preds = %298, %249, %246
  %300 = load i32, i32* %7, align 4
  %301 = call i32 @translit_index(i32 %300)
  store i32 %301, i32* %28, align 4
  %302 = load i32, i32* %28, align 4
  %303 = icmp sge i32 %302, 0
  br i1 %303, label %304, label %396

304:                                              ; preds = %299
  %305 = load i32*, i32** @translit_data, align 8
  %306 = load i32, i32* %28, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  store i32* %308, i32** %29, align 8
  %309 = load i32*, i32** %29, align 8
  %310 = getelementptr inbounds i32, i32* %309, i32 1
  store i32* %310, i32** %29, align 8
  %311 = load i32, i32* %309, align 4
  store i32 %311, i32* %30, align 4
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 1
  %314 = load i8*, i8** %313, align 8
  store i8* %314, i8** %31, align 8
  %315 = load i8*, i8** %8, align 8
  store i8* %315, i8** %32, align 8
  %316 = load i64, i64* %9, align 8
  store i64 %316, i64* %33, align 8
  store i32 0, i32* %34, align 4
  br label %317

317:                                              ; preds = %374, %304
  %318 = load i32, i32* %34, align 4
  %319 = load i32, i32* %30, align 4
  %320 = icmp ult i32 %318, %319
  br i1 %320, label %321, label %377

321:                                              ; preds = %317
  %322 = load i64, i64* %9, align 8
  %323 = icmp eq i64 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %321
  %325 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %325, i32* %35, align 4
  br label %384

326:                                              ; preds = %321
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 2
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 0
  %330 = load i32 (%struct.TYPE_10__*, i8*, i32, i64)*, i32 (%struct.TYPE_10__*, i8*, i32, i64)** %329, align 8
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %332 = load i8*, i8** %8, align 8
  %333 = load i32*, i32** %29, align 8
  %334 = load i32, i32* %34, align 4
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = load i64, i64* %9, align 8
  %339 = call i32 %330(%struct.TYPE_10__* %331, i8* %332, i32 %337, i64 %338)
  store i32 %339, i32* %35, align 4
  %340 = load i32, i32* %35, align 4
  %341 = load i32, i32* @RET_ILUNI, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %353

343:                                              ; preds = %326
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %345 = load i32*, i32** %29, align 8
  %346 = load i32, i32* %34, align 4
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = load i8*, i8** %8, align 8
  %351 = load i64, i64* %9, align 8
  %352 = call i32 @unicode_transliterate(%struct.TYPE_10__* %344, i32 %349, i8* %350, i64 %351)
  store i32 %352, i32* %35, align 4
  br label %353

353:                                              ; preds = %343, %326
  %354 = load i32, i32* %35, align 4
  %355 = load i32, i32* @RET_ILUNI, align 4
  %356 = icmp sle i32 %354, %355
  br i1 %356, label %357, label %358

357:                                              ; preds = %353
  br label %384

358:                                              ; preds = %353
  %359 = load i32, i32* %35, align 4
  %360 = sext i32 %359 to i64
  %361 = load i64, i64* %9, align 8
  %362 = icmp ule i64 %360, %361
  br i1 %362, label %365, label %363

363:                                              ; preds = %358
  %364 = call i32 (...) @abort() #3
  unreachable

365:                                              ; preds = %358
  %366 = load i32, i32* %35, align 4
  %367 = load i8*, i8** %8, align 8
  %368 = sext i32 %366 to i64
  %369 = getelementptr inbounds i8, i8* %367, i64 %368
  store i8* %369, i8** %8, align 8
  %370 = load i32, i32* %35, align 4
  %371 = sext i32 %370 to i64
  %372 = load i64, i64* %9, align 8
  %373 = sub i64 %372, %371
  store i64 %373, i64* %9, align 8
  br label %374

374:                                              ; preds = %365
  %375 = load i32, i32* %34, align 4
  %376 = add i32 %375, 1
  store i32 %376, i32* %34, align 4
  br label %317

377:                                              ; preds = %317
  %378 = load i8*, i8** %8, align 8
  %379 = load i8*, i8** %32, align 8
  %380 = ptrtoint i8* %378 to i64
  %381 = ptrtoint i8* %379 to i64
  %382 = sub i64 %380, %381
  %383 = trunc i64 %382 to i32
  store i32 %383, i32* %5, align 4
  br label %398

384:                                              ; preds = %357, %324
  %385 = load i8*, i8** %31, align 8
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 1
  store i8* %385, i8** %387, align 8
  %388 = load i8*, i8** %32, align 8
  store i8* %388, i8** %8, align 8
  %389 = load i64, i64* %33, align 8
  store i64 %389, i64* %9, align 8
  %390 = load i32, i32* %35, align 4
  %391 = load i32, i32* @RET_ILUNI, align 4
  %392 = icmp ne i32 %390, %391
  br i1 %392, label %393, label %395

393:                                              ; preds = %384
  %394 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %394, i32* %5, align 4
  br label %398

395:                                              ; preds = %384
  br label %396

396:                                              ; preds = %395, %299
  %397 = load i32, i32* @RET_ILUNI, align 4
  store i32 %397, i32* %5, align 4
  br label %398

398:                                              ; preds = %396, %393, %377, %296, %235, %219, %117, %101
  %399 = load i32, i32* %5, align 4
  ret i32 %399
}

declare dso_local i32 @johab_hangul_decompose(%struct.TYPE_10__*, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @translit_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
