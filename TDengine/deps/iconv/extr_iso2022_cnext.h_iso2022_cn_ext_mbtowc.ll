; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_cnext.h_iso2022_cn_ext_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_cnext.h_iso2022_cn_ext_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8* }

@SPLIT_STATE = common dso_local global i32 0, align 4
@ESC = common dso_local global i8 0, align 1
@state2 = common dso_local global i64 0, align 8
@state3 = common dso_local global i32 0, align 4
@state4 = common dso_local global i32 0, align 4
@RET_ILSEQ = common dso_local global i32 0, align 4
@COMBINE_STATE = common dso_local global i32 0, align 4
@SO = common dso_local global i8 0, align 1
@state1 = common dso_local global i32 0, align 4
@SI = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i8*, i32)* @iso2022_cn_ext_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso2022_cn_ext_mbtowc(%struct.TYPE_13__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  %24 = load i32, i32* @SPLIT_STATE, align 4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %496, %479, %217, %200, %183, %166, %149, %125, %101, %84, %67, %4
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %12, align 1
  %28 = load i8, i8* %12, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @ESC, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %453

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 4
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %593

39:                                               ; preds = %33
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 36
  br i1 %44, label %45, label %220

45:                                               ; preds = %39
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 41
  br i1 %50, label %51, label %103

51:                                               ; preds = %45
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 3
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 65
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  store i64 140, i64* @state2, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 4
  store i8* %59, i8** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %593

67:                                               ; preds = %57
  br label %25

68:                                               ; preds = %51
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 3
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 71
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  store i64 141, i64* @state2, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 4
  store i8* %76, i8** %8, align 8
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 4
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %593

84:                                               ; preds = %74
  br label %25

85:                                               ; preds = %68
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 3
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 69
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  store i64 139, i64* @state2, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 4
  store i8* %93, i8** %8, align 8
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 4
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %593

101:                                              ; preds = %91
  br label %25

102:                                              ; preds = %85
  br label %103

103:                                              ; preds = %102, %45
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 42
  br i1 %108, label %109, label %127

109:                                              ; preds = %103
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 3
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 72
  br i1 %114, label %115, label %126

115:                                              ; preds = %109
  store i32 137, i32* @state3, align 4
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 4
  store i8* %117, i8** %8, align 8
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 4
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %593

125:                                              ; preds = %115
  br label %25

126:                                              ; preds = %109
  br label %127

127:                                              ; preds = %126, %103
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %131, 43
  br i1 %132, label %133, label %219

133:                                              ; preds = %127
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 3
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %137, 73
  br i1 %138, label %139, label %150

139:                                              ; preds = %133
  store i32 135, i32* @state4, align 4
  %140 = load i8*, i8** %8, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 4
  store i8* %141, i8** %8, align 8
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 4
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  %147 = icmp slt i32 %144, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  br label %593

149:                                              ; preds = %139
  br label %25

150:                                              ; preds = %133
  %151 = load i8*, i8** %8, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 3
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp eq i32 %154, 74
  br i1 %155, label %156, label %167

156:                                              ; preds = %150
  store i32 134, i32* @state4, align 4
  %157 = load i8*, i8** %8, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 4
  store i8* %158, i8** %8, align 8
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 4
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  %164 = icmp slt i32 %161, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  br label %593

166:                                              ; preds = %156
  br label %25

167:                                              ; preds = %150
  %168 = load i8*, i8** %8, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 3
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp eq i32 %171, 75
  br i1 %172, label %173, label %184

173:                                              ; preds = %167
  store i32 133, i32* @state4, align 4
  %174 = load i8*, i8** %8, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 4
  store i8* %175, i8** %8, align 8
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, 4
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, 1
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  br label %593

183:                                              ; preds = %173
  br label %25

184:                                              ; preds = %167
  %185 = load i8*, i8** %8, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 3
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp eq i32 %188, 76
  br i1 %189, label %190, label %201

190:                                              ; preds = %184
  store i32 132, i32* @state4, align 4
  %191 = load i8*, i8** %8, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 4
  store i8* %192, i8** %8, align 8
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %193, 4
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  %198 = icmp slt i32 %195, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %190
  br label %593

200:                                              ; preds = %190
  br label %25

201:                                              ; preds = %184
  %202 = load i8*, i8** %8, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 3
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp eq i32 %205, 77
  br i1 %206, label %207, label %218

207:                                              ; preds = %201
  store i32 131, i32* @state4, align 4
  %208 = load i8*, i8** %8, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 4
  store i8* %209, i8** %8, align 8
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 4
  store i32 %211, i32* %11, align 4
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %213, 1
  %215 = icmp slt i32 %212, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %207
  br label %593

217:                                              ; preds = %207
  br label %25

218:                                              ; preds = %201
  br label %219

219:                                              ; preds = %218, %127
  br label %220

220:                                              ; preds = %219, %39
  %221 = load i8*, i8** %8, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = icmp eq i32 %224, 78
  br i1 %225, label %226, label %266

226:                                              ; preds = %220
  %227 = load i32, i32* @state3, align 4
  switch i32 %227, label %264 [
    i32 136, label %228
    i32 137, label %229
  ]

228:                                              ; preds = %226
  br label %600

229:                                              ; preds = %226
  %230 = load i8*, i8** %8, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 2
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = icmp slt i32 %233, 128
  br i1 %234, label %235, label %263

235:                                              ; preds = %229
  %236 = load i8*, i8** %8, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 3
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = icmp slt i32 %239, 128
  br i1 %240, label %241, label %263

241:                                              ; preds = %235
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %243 = load i32*, i32** %7, align 8
  %244 = load i8*, i8** %8, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 2
  %246 = call i32 @cns11643_2_mbtowc(%struct.TYPE_13__* %242, i32* %243, i8* %245, i32 2)
  store i32 %246, i32* %13, align 4
  %247 = load i32, i32* %13, align 4
  %248 = load i32, i32* @RET_ILSEQ, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %241
  br label %600

251:                                              ; preds = %241
  %252 = load i32, i32* %13, align 4
  %253 = icmp ne i32 %252, 2
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  %255 = call i32 (...) @abort() #3
  unreachable

256:                                              ; preds = %251
  %257 = load i32, i32* @COMBINE_STATE, align 4
  %258 = load i8*, i8** %10, align 8
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 0
  store i8* %258, i8** %260, align 8
  %261 = load i32, i32* %11, align 4
  %262 = add nsw i32 %261, 4
  store i32 %262, i32* %5, align 4
  br label %607

263:                                              ; preds = %235, %229
  br label %600

264:                                              ; preds = %226
  %265 = call i32 (...) @abort() #3
  unreachable

266:                                              ; preds = %220
  %267 = load i8*, i8** %8, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 1
  %269 = load i8, i8* %268, align 1
  %270 = zext i8 %269 to i32
  %271 = icmp eq i32 %270, 79
  br i1 %271, label %272, label %452

272:                                              ; preds = %266
  %273 = load i32, i32* @state4, align 4
  switch i32 %273, label %450 [
    i32 130, label %274
    i32 135, label %275
    i32 134, label %310
    i32 133, label %345
    i32 132, label %380
    i32 131, label %415
  ]

274:                                              ; preds = %272
  br label %600

275:                                              ; preds = %272
  %276 = load i8*, i8** %8, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 2
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  %280 = icmp slt i32 %279, 128
  br i1 %280, label %281, label %309

281:                                              ; preds = %275
  %282 = load i8*, i8** %8, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 3
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i32
  %286 = icmp slt i32 %285, 128
  br i1 %286, label %287, label %309

287:                                              ; preds = %281
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %289 = load i32*, i32** %7, align 8
  %290 = load i8*, i8** %8, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 2
  %292 = call i32 @cns11643_3_mbtowc(%struct.TYPE_13__* %288, i32* %289, i8* %291, i32 2)
  store i32 %292, i32* %14, align 4
  %293 = load i32, i32* %14, align 4
  %294 = load i32, i32* @RET_ILSEQ, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %287
  br label %600

297:                                              ; preds = %287
  %298 = load i32, i32* %14, align 4
  %299 = icmp ne i32 %298, 2
  br i1 %299, label %300, label %302

300:                                              ; preds = %297
  %301 = call i32 (...) @abort() #3
  unreachable

302:                                              ; preds = %297
  %303 = load i32, i32* @COMBINE_STATE, align 4
  %304 = load i8*, i8** %10, align 8
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 0
  store i8* %304, i8** %306, align 8
  %307 = load i32, i32* %11, align 4
  %308 = add nsw i32 %307, 4
  store i32 %308, i32* %5, align 4
  br label %607

309:                                              ; preds = %281, %275
  br label %600

310:                                              ; preds = %272
  %311 = load i8*, i8** %8, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 2
  %313 = load i8, i8* %312, align 1
  %314 = zext i8 %313 to i32
  %315 = icmp slt i32 %314, 128
  br i1 %315, label %316, label %344

316:                                              ; preds = %310
  %317 = load i8*, i8** %8, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 3
  %319 = load i8, i8* %318, align 1
  %320 = zext i8 %319 to i32
  %321 = icmp slt i32 %320, 128
  br i1 %321, label %322, label %344

322:                                              ; preds = %316
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %324 = load i32*, i32** %7, align 8
  %325 = load i8*, i8** %8, align 8
  %326 = getelementptr inbounds i8, i8* %325, i64 2
  %327 = call i32 @cns11643_4_mbtowc(%struct.TYPE_13__* %323, i32* %324, i8* %326, i32 2)
  store i32 %327, i32* %15, align 4
  %328 = load i32, i32* %15, align 4
  %329 = load i32, i32* @RET_ILSEQ, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %331, label %332

331:                                              ; preds = %322
  br label %600

332:                                              ; preds = %322
  %333 = load i32, i32* %15, align 4
  %334 = icmp ne i32 %333, 2
  br i1 %334, label %335, label %337

335:                                              ; preds = %332
  %336 = call i32 (...) @abort() #3
  unreachable

337:                                              ; preds = %332
  %338 = load i32, i32* @COMBINE_STATE, align 4
  %339 = load i8*, i8** %10, align 8
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 0
  store i8* %339, i8** %341, align 8
  %342 = load i32, i32* %11, align 4
  %343 = add nsw i32 %342, 4
  store i32 %343, i32* %5, align 4
  br label %607

344:                                              ; preds = %316, %310
  br label %600

345:                                              ; preds = %272
  %346 = load i8*, i8** %8, align 8
  %347 = getelementptr inbounds i8, i8* %346, i64 2
  %348 = load i8, i8* %347, align 1
  %349 = zext i8 %348 to i32
  %350 = icmp slt i32 %349, 128
  br i1 %350, label %351, label %379

351:                                              ; preds = %345
  %352 = load i8*, i8** %8, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 3
  %354 = load i8, i8* %353, align 1
  %355 = zext i8 %354 to i32
  %356 = icmp slt i32 %355, 128
  br i1 %356, label %357, label %379

357:                                              ; preds = %351
  %358 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %359 = load i32*, i32** %7, align 8
  %360 = load i8*, i8** %8, align 8
  %361 = getelementptr inbounds i8, i8* %360, i64 2
  %362 = call i32 @cns11643_5_mbtowc(%struct.TYPE_13__* %358, i32* %359, i8* %361, i32 2)
  store i32 %362, i32* %16, align 4
  %363 = load i32, i32* %16, align 4
  %364 = load i32, i32* @RET_ILSEQ, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %367

366:                                              ; preds = %357
  br label %600

367:                                              ; preds = %357
  %368 = load i32, i32* %16, align 4
  %369 = icmp ne i32 %368, 2
  br i1 %369, label %370, label %372

370:                                              ; preds = %367
  %371 = call i32 (...) @abort() #3
  unreachable

372:                                              ; preds = %367
  %373 = load i32, i32* @COMBINE_STATE, align 4
  %374 = load i8*, i8** %10, align 8
  %375 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %375, i32 0, i32 0
  store i8* %374, i8** %376, align 8
  %377 = load i32, i32* %11, align 4
  %378 = add nsw i32 %377, 4
  store i32 %378, i32* %5, align 4
  br label %607

379:                                              ; preds = %351, %345
  br label %600

380:                                              ; preds = %272
  %381 = load i8*, i8** %8, align 8
  %382 = getelementptr inbounds i8, i8* %381, i64 2
  %383 = load i8, i8* %382, align 1
  %384 = zext i8 %383 to i32
  %385 = icmp slt i32 %384, 128
  br i1 %385, label %386, label %414

386:                                              ; preds = %380
  %387 = load i8*, i8** %8, align 8
  %388 = getelementptr inbounds i8, i8* %387, i64 3
  %389 = load i8, i8* %388, align 1
  %390 = zext i8 %389 to i32
  %391 = icmp slt i32 %390, 128
  br i1 %391, label %392, label %414

392:                                              ; preds = %386
  %393 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %394 = load i32*, i32** %7, align 8
  %395 = load i8*, i8** %8, align 8
  %396 = getelementptr inbounds i8, i8* %395, i64 2
  %397 = call i32 @cns11643_6_mbtowc(%struct.TYPE_13__* %393, i32* %394, i8* %396, i32 2)
  store i32 %397, i32* %17, align 4
  %398 = load i32, i32* %17, align 4
  %399 = load i32, i32* @RET_ILSEQ, align 4
  %400 = icmp eq i32 %398, %399
  br i1 %400, label %401, label %402

401:                                              ; preds = %392
  br label %600

402:                                              ; preds = %392
  %403 = load i32, i32* %17, align 4
  %404 = icmp ne i32 %403, 2
  br i1 %404, label %405, label %407

405:                                              ; preds = %402
  %406 = call i32 (...) @abort() #3
  unreachable

407:                                              ; preds = %402
  %408 = load i32, i32* @COMBINE_STATE, align 4
  %409 = load i8*, i8** %10, align 8
  %410 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %410, i32 0, i32 0
  store i8* %409, i8** %411, align 8
  %412 = load i32, i32* %11, align 4
  %413 = add nsw i32 %412, 4
  store i32 %413, i32* %5, align 4
  br label %607

414:                                              ; preds = %386, %380
  br label %600

415:                                              ; preds = %272
  %416 = load i8*, i8** %8, align 8
  %417 = getelementptr inbounds i8, i8* %416, i64 2
  %418 = load i8, i8* %417, align 1
  %419 = zext i8 %418 to i32
  %420 = icmp slt i32 %419, 128
  br i1 %420, label %421, label %449

421:                                              ; preds = %415
  %422 = load i8*, i8** %8, align 8
  %423 = getelementptr inbounds i8, i8* %422, i64 3
  %424 = load i8, i8* %423, align 1
  %425 = zext i8 %424 to i32
  %426 = icmp slt i32 %425, 128
  br i1 %426, label %427, label %449

427:                                              ; preds = %421
  %428 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %429 = load i32*, i32** %7, align 8
  %430 = load i8*, i8** %8, align 8
  %431 = getelementptr inbounds i8, i8* %430, i64 2
  %432 = call i32 @cns11643_7_mbtowc(%struct.TYPE_13__* %428, i32* %429, i8* %431, i32 2)
  store i32 %432, i32* %18, align 4
  %433 = load i32, i32* %18, align 4
  %434 = load i32, i32* @RET_ILSEQ, align 4
  %435 = icmp eq i32 %433, %434
  br i1 %435, label %436, label %437

436:                                              ; preds = %427
  br label %600

437:                                              ; preds = %427
  %438 = load i32, i32* %18, align 4
  %439 = icmp ne i32 %438, 2
  br i1 %439, label %440, label %442

440:                                              ; preds = %437
  %441 = call i32 (...) @abort() #3
  unreachable

442:                                              ; preds = %437
  %443 = load i32, i32* @COMBINE_STATE, align 4
  %444 = load i8*, i8** %10, align 8
  %445 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %446 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %445, i32 0, i32 0
  store i8* %444, i8** %446, align 8
  %447 = load i32, i32* %11, align 4
  %448 = add nsw i32 %447, 4
  store i32 %448, i32* %5, align 4
  br label %607

449:                                              ; preds = %421, %415
  br label %600

450:                                              ; preds = %272
  %451 = call i32 (...) @abort() #3
  unreachable

452:                                              ; preds = %266
  br label %600

453:                                              ; preds = %25
  %454 = load i8, i8* %12, align 1
  %455 = zext i8 %454 to i32
  %456 = load i8, i8* @SO, align 1
  %457 = zext i8 %456 to i32
  %458 = icmp eq i32 %455, %457
  br i1 %458, label %459, label %480

459:                                              ; preds = %453
  %460 = load i64, i64* @state2, align 8
  %461 = icmp ne i64 %460, 140
  br i1 %461, label %462, label %469

462:                                              ; preds = %459
  %463 = load i64, i64* @state2, align 8
  %464 = icmp ne i64 %463, 141
  br i1 %464, label %465, label %469

465:                                              ; preds = %462
  %466 = load i64, i64* @state2, align 8
  %467 = icmp ne i64 %466, 139
  br i1 %467, label %468, label %469

468:                                              ; preds = %465
  br label %600

469:                                              ; preds = %465, %462, %459
  store i32 128, i32* @state1, align 4
  %470 = load i8*, i8** %8, align 8
  %471 = getelementptr inbounds i8, i8* %470, i32 1
  store i8* %471, i8** %8, align 8
  %472 = load i32, i32* %11, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %11, align 4
  %474 = load i32, i32* %9, align 4
  %475 = load i32, i32* %11, align 4
  %476 = add nsw i32 %475, 1
  %477 = icmp slt i32 %474, %476
  br i1 %477, label %478, label %479

478:                                              ; preds = %469
  br label %593

479:                                              ; preds = %469
  br label %25

480:                                              ; preds = %453
  %481 = load i8, i8* %12, align 1
  %482 = zext i8 %481 to i32
  %483 = load i8, i8* @SI, align 1
  %484 = zext i8 %483 to i32
  %485 = icmp eq i32 %482, %484
  br i1 %485, label %486, label %497

486:                                              ; preds = %480
  store i32 129, i32* @state1, align 4
  %487 = load i8*, i8** %8, align 8
  %488 = getelementptr inbounds i8, i8* %487, i32 1
  store i8* %488, i8** %8, align 8
  %489 = load i32, i32* %11, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %11, align 4
  %491 = load i32, i32* %9, align 4
  %492 = load i32, i32* %11, align 4
  %493 = add nsw i32 %492, 1
  %494 = icmp slt i32 %491, %493
  br i1 %494, label %495, label %496

495:                                              ; preds = %486
  br label %593

496:                                              ; preds = %486
  br label %25

497:                                              ; preds = %480
  br label %498

498:                                              ; preds = %497
  %499 = load i32, i32* @state1, align 4
  switch i32 %499, label %591 [
    i32 129, label %500
    i32 128, label %535
  ]

500:                                              ; preds = %498
  %501 = load i8, i8* %12, align 1
  %502 = zext i8 %501 to i32
  %503 = icmp slt i32 %502, 128
  br i1 %503, label %504, label %534

504:                                              ; preds = %500
  %505 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %506 = load i32*, i32** %7, align 8
  %507 = load i8*, i8** %8, align 8
  %508 = call i32 @ascii_mbtowc(%struct.TYPE_13__* %505, i32* %506, i8* %507, i32 1)
  store i32 %508, i32* %19, align 4
  %509 = load i32, i32* %19, align 4
  %510 = load i32, i32* @RET_ILSEQ, align 4
  %511 = icmp eq i32 %509, %510
  br i1 %511, label %512, label %513

512:                                              ; preds = %504
  br label %600

513:                                              ; preds = %504
  %514 = load i32, i32* %19, align 4
  %515 = icmp ne i32 %514, 1
  br i1 %515, label %516, label %518

516:                                              ; preds = %513
  %517 = call i32 (...) @abort() #3
  unreachable

518:                                              ; preds = %513
  %519 = load i32*, i32** %7, align 8
  %520 = load i32, i32* %519, align 4
  %521 = icmp eq i32 %520, 10
  br i1 %521, label %526, label %522

522:                                              ; preds = %518
  %523 = load i32*, i32** %7, align 8
  %524 = load i32, i32* %523, align 4
  %525 = icmp eq i32 %524, 13
  br i1 %525, label %526, label %527

526:                                              ; preds = %522, %518
  store i64 138, i64* @state2, align 8
  store i32 136, i32* @state3, align 4
  store i32 136, i32* @state4, align 4
  br label %527

527:                                              ; preds = %526, %522
  %528 = load i32, i32* @COMBINE_STATE, align 4
  %529 = load i8*, i8** %10, align 8
  %530 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %531 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %530, i32 0, i32 0
  store i8* %529, i8** %531, align 8
  %532 = load i32, i32* %11, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %5, align 4
  br label %607

534:                                              ; preds = %500
  br label %600

535:                                              ; preds = %498
  %536 = load i32, i32* %9, align 4
  %537 = load i32, i32* %11, align 4
  %538 = add nsw i32 %537, 2
  %539 = icmp slt i32 %536, %538
  br i1 %539, label %540, label %541

540:                                              ; preds = %535
  br label %593

541:                                              ; preds = %535
  %542 = load i8*, i8** %8, align 8
  %543 = getelementptr inbounds i8, i8* %542, i64 0
  %544 = load i8, i8* %543, align 1
  %545 = zext i8 %544 to i32
  %546 = icmp slt i32 %545, 128
  br i1 %546, label %547, label %590

547:                                              ; preds = %541
  %548 = load i8*, i8** %8, align 8
  %549 = getelementptr inbounds i8, i8* %548, i64 1
  %550 = load i8, i8* %549, align 1
  %551 = zext i8 %550 to i32
  %552 = icmp slt i32 %551, 128
  br i1 %552, label %553, label %590

553:                                              ; preds = %547
  %554 = load i64, i64* @state2, align 8
  switch i64 %554, label %571 [
    i64 138, label %555
    i64 140, label %556
    i64 141, label %561
    i64 139, label %566
  ]

555:                                              ; preds = %553
  br label %600

556:                                              ; preds = %553
  %557 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %558 = load i32*, i32** %7, align 8
  %559 = load i8*, i8** %8, align 8
  %560 = call i32 @gb2312_mbtowc(%struct.TYPE_13__* %557, i32* %558, i8* %559, i32 2)
  store i32 %560, i32* %20, align 4
  br label %573

561:                                              ; preds = %553
  %562 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %563 = load i32*, i32** %7, align 8
  %564 = load i8*, i8** %8, align 8
  %565 = call i32 @cns11643_1_mbtowc(%struct.TYPE_13__* %562, i32* %563, i8* %564, i32 2)
  store i32 %565, i32* %20, align 4
  br label %573

566:                                              ; preds = %553
  %567 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %568 = load i32*, i32** %7, align 8
  %569 = load i8*, i8** %8, align 8
  %570 = call i32 @isoir165_mbtowc(%struct.TYPE_13__* %567, i32* %568, i8* %569, i32 2)
  store i32 %570, i32* %20, align 4
  br label %573

571:                                              ; preds = %553
  %572 = call i32 (...) @abort() #3
  unreachable

573:                                              ; preds = %566, %561, %556
  %574 = load i32, i32* %20, align 4
  %575 = load i32, i32* @RET_ILSEQ, align 4
  %576 = icmp eq i32 %574, %575
  br i1 %576, label %577, label %578

577:                                              ; preds = %573
  br label %600

578:                                              ; preds = %573
  %579 = load i32, i32* %20, align 4
  %580 = icmp ne i32 %579, 2
  br i1 %580, label %581, label %583

581:                                              ; preds = %578
  %582 = call i32 (...) @abort() #3
  unreachable

583:                                              ; preds = %578
  %584 = load i32, i32* @COMBINE_STATE, align 4
  %585 = load i8*, i8** %10, align 8
  %586 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %587 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %586, i32 0, i32 0
  store i8* %585, i8** %587, align 8
  %588 = load i32, i32* %11, align 4
  %589 = add nsw i32 %588, 2
  store i32 %589, i32* %5, align 4
  br label %607

590:                                              ; preds = %547, %541
  br label %600

591:                                              ; preds = %498
  %592 = call i32 (...) @abort() #3
  unreachable

593:                                              ; preds = %540, %495, %478, %216, %199, %182, %165, %148, %124, %100, %83, %66, %38
  %594 = load i32, i32* @COMBINE_STATE, align 4
  %595 = load i8*, i8** %10, align 8
  %596 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %597 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %596, i32 0, i32 0
  store i8* %595, i8** %597, align 8
  %598 = load i32, i32* %11, align 4
  %599 = call i32 @RET_TOOFEW(i32 %598)
  store i32 %599, i32* %5, align 4
  br label %607

600:                                              ; preds = %590, %577, %555, %534, %512, %468, %452, %449, %436, %414, %401, %379, %366, %344, %331, %309, %296, %274, %263, %250, %228
  %601 = load i32, i32* @COMBINE_STATE, align 4
  %602 = load i8*, i8** %10, align 8
  %603 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %604 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %603, i32 0, i32 0
  store i8* %602, i8** %604, align 8
  %605 = load i32, i32* %11, align 4
  %606 = call i32 @RET_SHIFT_ILSEQ(i32 %605)
  store i32 %606, i32* %5, align 4
  br label %607

607:                                              ; preds = %600, %593, %583, %527, %442, %407, %372, %337, %302, %256
  %608 = load i32, i32* %5, align 4
  ret i32 %608
}

declare dso_local i32 @cns11643_2_mbtowc(%struct.TYPE_13__*, i32*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @cns11643_3_mbtowc(%struct.TYPE_13__*, i32*, i8*, i32) #1

declare dso_local i32 @cns11643_4_mbtowc(%struct.TYPE_13__*, i32*, i8*, i32) #1

declare dso_local i32 @cns11643_5_mbtowc(%struct.TYPE_13__*, i32*, i8*, i32) #1

declare dso_local i32 @cns11643_6_mbtowc(%struct.TYPE_13__*, i32*, i8*, i32) #1

declare dso_local i32 @cns11643_7_mbtowc(%struct.TYPE_13__*, i32*, i8*, i32) #1

declare dso_local i32 @ascii_mbtowc(%struct.TYPE_13__*, i32*, i8*, i32) #1

declare dso_local i32 @gb2312_mbtowc(%struct.TYPE_13__*, i32*, i8*, i32) #1

declare dso_local i32 @cns11643_1_mbtowc(%struct.TYPE_13__*, i32*, i8*, i32) #1

declare dso_local i32 @isoir165_mbtowc(%struct.TYPE_13__*, i32*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @RET_SHIFT_ILSEQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
