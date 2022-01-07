; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dec.c_ac3_decode_transform_coeffs_ch.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dec.c_ac3_decode_transform_coeffs_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32**, i32**, i32**, i32, i32, i32, i64* }
%struct.TYPE_5__ = type { i64, i32*, i64, i32*, i32, i32 }

@CPL_CH = common dso_local global i32 0, align 4
@b1_mantissas = common dso_local global i8*** null, align 8
@b2_mantissas = common dso_local global i8*** null, align 8
@b3_mantissas = common dso_local global i32* null, align 8
@b4_mantissas = common dso_local global i8*** null, align 8
@b5_mantissas = common dso_local global i32* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"bap %d is invalid in plain AC-3\0A\00", align 1
@quantization_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, %struct.TYPE_5__*)* @ac3_decode_transform_coeffs_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ac3_decode_transform_coeffs_ch(%struct.TYPE_6__* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %9, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %10, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %11, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @CPL_CH, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %3
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 8
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %58, %3
  %68 = phi i1 [ true, %3 ], [ %66, %58 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %12, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 7
  store i32* %71, i32** %13, align 8
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %296, %67
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %299

77:                                               ; preds = %73
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  switch i32 %83, label %259 [
    i32 0, label %84
    i32 1, label %97
    i32 2, label %154
    i32 3, label %211
    i32 4, label %217
    i32 5, label %253
  ]

84:                                               ; preds = %77
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 6
  %90 = call i32 @av_lfg_get(i32* %89)
  %91 = ashr i32 %90, 8
  %92 = mul nsw i32 %91, 181
  %93 = ashr i32 %92, 8
  %94 = sub nsw i32 %93, 5931008
  store i32 %94, i32* %16, align 4
  br label %96

95:                                               ; preds = %84
  store i32 0, i32* %16, align 4
  br label %96

96:                                               ; preds = %95, %87
  br label %284

97:                                               ; preds = %77
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %97
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, -1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %16, align 4
  br label %153

115:                                              ; preds = %97
  %116 = load i32*, i32** %13, align 8
  %117 = call i64 @get_bits(i32* %116, i32 5)
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %17, align 4
  %119 = load i8***, i8**** @b1_mantissas, align 8
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8**, i8*** %119, i64 %121
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 0
  %125 = load i8*, i8** %124, align 8
  %126 = ptrtoint i8* %125 to i32
  store i32 %126, i32* %16, align 4
  %127 = load i8***, i8**** @b1_mantissas, align 8
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8**, i8*** %127, i64 %129
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 1
  %133 = load i8*, i8** %132, align 8
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  store i32 %134, i32* %138, align 4
  %139 = load i8***, i8**** @b1_mantissas, align 8
  %140 = load i32, i32* %17, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8**, i8*** %139, i64 %141
  %143 = load i8**, i8*** %142, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 2
  %145 = load i8*, i8** %144, align 8
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  store i32 %146, i32* %150, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  store i64 2, i64* %152, align 8
  br label %153

153:                                              ; preds = %115, %102
  br label %284

154:                                              ; preds = %77
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %154
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %162, -1
  store i64 %163, i64* %161, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %16, align 4
  br label %210

172:                                              ; preds = %154
  %173 = load i32*, i32** %13, align 8
  %174 = call i64 @get_bits(i32* %173, i32 7)
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %18, align 4
  %176 = load i8***, i8**** @b2_mantissas, align 8
  %177 = load i32, i32* %18, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8**, i8*** %176, i64 %178
  %180 = load i8**, i8*** %179, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 0
  %182 = load i8*, i8** %181, align 8
  %183 = ptrtoint i8* %182 to i32
  store i32 %183, i32* %16, align 4
  %184 = load i8***, i8**** @b2_mantissas, align 8
  %185 = load i32, i32* %18, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8**, i8*** %184, i64 %186
  %188 = load i8**, i8*** %187, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 1
  %190 = load i8*, i8** %189, align 8
  %191 = ptrtoint i8* %190 to i32
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  store i32 %191, i32* %195, align 4
  %196 = load i8***, i8**** @b2_mantissas, align 8
  %197 = load i32, i32* %18, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8**, i8*** %196, i64 %198
  %200 = load i8**, i8*** %199, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 2
  %202 = load i8*, i8** %201, align 8
  %203 = ptrtoint i8* %202 to i32
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  store i32 %203, i32* %207, align 4
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  store i64 2, i64* %209, align 8
  br label %210

210:                                              ; preds = %172, %159
  br label %284

211:                                              ; preds = %77
  %212 = load i32*, i32** @b3_mantissas, align 8
  %213 = load i32*, i32** %13, align 8
  %214 = call i64 @get_bits(i32* %213, i32 3)
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %16, align 4
  br label %284

217:                                              ; preds = %77
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 4
  store i32 0, i32* %224, align 8
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %16, align 4
  br label %252

228:                                              ; preds = %217
  %229 = load i32*, i32** %13, align 8
  %230 = call i64 @get_bits(i32* %229, i32 7)
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %19, align 4
  %232 = load i8***, i8**** @b4_mantissas, align 8
  %233 = load i32, i32* %19, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8**, i8*** %232, i64 %234
  %236 = load i8**, i8*** %235, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 0
  %238 = load i8*, i8** %237, align 8
  %239 = ptrtoint i8* %238 to i32
  store i32 %239, i32* %16, align 4
  %240 = load i8***, i8**** @b4_mantissas, align 8
  %241 = load i32, i32* %19, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8**, i8*** %240, i64 %242
  %244 = load i8**, i8*** %243, align 8
  %245 = getelementptr inbounds i8*, i8** %244, i64 1
  %246 = load i8*, i8** %245, align 8
  %247 = ptrtoint i8* %246 to i32
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 5
  store i32 %247, i32* %249, align 4
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 4
  store i32 1, i32* %251, align 8
  br label %252

252:                                              ; preds = %228, %222
  br label %284

253:                                              ; preds = %77
  %254 = load i32*, i32** @b5_mantissas, align 8
  %255 = load i32*, i32** %13, align 8
  %256 = call i64 @get_bits(i32* %255, i32 4)
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %16, align 4
  br label %284

259:                                              ; preds = %77
  %260 = load i32, i32* %15, align 4
  %261 = icmp sgt i32 %260, 15
  br i1 %261, label %262, label %269

262:                                              ; preds = %259
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @AV_LOG_ERROR, align 4
  %267 = load i32, i32* %15, align 4
  %268 = call i32 @av_log(i32 %265, i32 %266, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %267)
  store i32 15, i32* %15, align 4
  br label %269

269:                                              ; preds = %262, %259
  %270 = load i32*, i32** %13, align 8
  %271 = load i32*, i32** @quantization_tab, align 8
  %272 = load i32, i32* %15, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @get_sbits(i32* %270, i32 %275)
  %277 = load i32*, i32** @quantization_tab, align 8
  %278 = load i32, i32* %15, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = sub nsw i32 24, %281
  %283 = shl i32 %276, %282
  store i32 %283, i32* %16, align 4
  br label %284

284:                                              ; preds = %269, %253, %252, %211, %210, %153, %96
  %285 = load i32, i32* %16, align 4
  %286 = load i32*, i32** %10, align 8
  %287 = load i32, i32* %14, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = ashr i32 %285, %290
  %292 = load i32*, i32** %11, align 8
  %293 = load i32, i32* %14, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  store i32 %291, i32* %295, align 4
  br label %296

296:                                              ; preds = %284
  %297 = load i32, i32* %14, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %14, align 4
  br label %73

299:                                              ; preds = %73
  ret void
}

declare dso_local i32 @av_lfg_get(i32*) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @get_sbits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
