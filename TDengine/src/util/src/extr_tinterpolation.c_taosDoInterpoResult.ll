; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tinterpolation.c_taosDoInterpoResult.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tinterpolation.c_taosDoInterpoResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i8*, i64, i8**, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32*, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }

@TSDB_FUNC_COUNT = common dso_local global i64 0, align 8
@TSDB_INTERPO_PREV = common dso_local global i64 0, align 8
@TSDB_INTERPO_LINEAR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @taosDoInterpoResult(%struct.TYPE_17__* %0, i64 %1, %struct.TYPE_15__** %2, i64 %3, i64 %4, i64 %5, i64* %6, %struct.TYPE_16__* %7, i8** %8, i64* %9, i64* %10, i64 %11) #0 {
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_15__**, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca %struct.TYPE_16__*, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8**, align 8
  %28 = alloca i8**, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8**, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %14, align 8
  store i64 %1, i64* %15, align 8
  store %struct.TYPE_15__** %2, %struct.TYPE_15__*** %16, align 8
  store i64 %3, i64* %17, align 8
  store i64 %4, i64* %18, align 8
  store i64 %5, i64* %19, align 8
  store i64* %6, i64** %20, align 8
  store %struct.TYPE_16__* %7, %struct.TYPE_16__** %21, align 8
  store i8** %8, i8*** %22, align 8
  store i64* %9, i64** %23, align 8
  store i64* %10, i64** %24, align 8
  store i64 %11, i64* %25, align 8
  store i64 0, i64* %26, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 7
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  store i8** %44, i8*** %27, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  store i8** %46, i8*** %28, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %29, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 3
  %52 = load i8**, i8*** %51, align 8
  store i8** %52, i8*** %30, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @GET_FORWARD_DIRECTION_FACTOR(i32 %55)
  store i64 %56, i64* %31, align 8
  %57 = load i64, i64* %17, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %90

59:                                               ; preds = %12
  br label %60

60:                                               ; preds = %64, %59
  %61 = load i64, i64* %26, align 8
  %62 = load i64, i64* %18, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %66 = load i64, i64* %15, align 8
  %67 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %16, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %69 = load i8**, i8*** %22, align 8
  %70 = load i64, i64* %19, align 8
  %71 = load i64*, i64** %23, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %25, align 8
  %76 = load i64, i64* %29, align 8
  %77 = load i8**, i8*** %30, align 8
  %78 = call i32 @doInterpoResultImpl(%struct.TYPE_17__* %65, i64 %66, %struct.TYPE_15__** %67, %struct.TYPE_16__* %68, i64* %26, i8** %69, i64 %70, i64* %71, i64 %74, i64 %75, i64 %76, i8** %77, i32 1)
  br label %60

79:                                               ; preds = %60
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %82
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 8
  %89 = load i64, i64* %18, align 8
  store i64 %89, i64* %13, align 8
  br label %698

90:                                               ; preds = %12
  br label %91

91:                                               ; preds = %90, %697
  %92 = load i64*, i64** %20, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %32, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %32, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %91
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %105 = call i64 @INTERPOL_IS_ASC_INTERPOL(%struct.TYPE_17__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %103, %91
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %32, align 8
  %112 = icmp sgt i64 %110, %111
  br i1 %112, label %113, label %240

113:                                              ; preds = %107
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %115 = call i64 @INTERPOL_IS_ASC_INTERPOL(%struct.TYPE_17__* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %240, label %117

117:                                              ; preds = %113, %103
  %118 = load i8**, i8*** %28, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %185

121:                                              ; preds = %117
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = sub i64 %127, 1
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = sub i64 %136, 1
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %130, %140
  %142 = call i8* @calloc(i32 1, i32 %141)
  %143 = load i8**, i8*** %28, align 8
  store i8* %142, i8** %143, align 8
  store i32 1, i32* %33, align 4
  br label %144

144:                                              ; preds = %181, %121
  %145 = load i32, i32* %33, align 4
  %146 = sext i32 %145 to i64
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ult i64 %146, %149
  br i1 %150, label %151, label %184

151:                                              ; preds = %144
  %152 = load i8**, i8*** %28, align 8
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %33, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %153, i64 %161
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = load i32, i32* %33, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = load i32, i32* %33, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = call i32 @setNull(i8* %162, i32 %170, i64 %179)
  br label %181

181:                                              ; preds = %151
  %182 = load i32, i32* %33, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %33, align 4
  br label %144

184:                                              ; preds = %144
  br label %185

185:                                              ; preds = %184, %117
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %34, align 8
  store i64 0, i64* %35, align 8
  store i64 0, i64* %36, align 8
  br label %189

189:                                              ; preds = %236, %185
  %190 = load i64, i64* %36, align 8
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %29, align 8
  %195 = sub i64 %193, %194
  %196 = icmp ult i64 %190, %195
  br i1 %196, label %197, label %239

197:                                              ; preds = %189
  %198 = load i8**, i8*** %28, align 8
  %199 = load i8*, i8** %198, align 8
  %200 = load i64, i64* %35, align 8
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  %202 = load i8**, i8*** %22, align 8
  %203 = load i64, i64* %36, align 8
  %204 = getelementptr inbounds i8*, i8** %202, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = load i64, i64* %34, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = load i64, i64* %36, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = mul nsw i64 %206, %214
  %216 = getelementptr inbounds i8, i8* %205, i64 %215
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %218, align 8
  %220 = load i64, i64* %36, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = call i32 @memcpy(i8* %201, i8* %216, i64 %224)
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %227, align 8
  %229 = load i64, i64* %36, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* %35, align 8
  %235 = add nsw i64 %234, %233
  store i64 %235, i64* %35, align 8
  br label %236

236:                                              ; preds = %197
  %237 = load i64, i64* %36, align 8
  %238 = add nsw i64 %237, 1
  store i64 %238, i64* %36, align 8
  br label %189

239:                                              ; preds = %189
  br label %240

240:                                              ; preds = %239, %113, %107
  br label %241

241:                                              ; preds = %267, %240
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* %32, align 8
  %246 = icmp slt i64 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %241
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %249 = call i64 @INTERPOL_IS_ASC_INTERPOL(%struct.TYPE_17__* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %261, label %251

251:                                              ; preds = %247, %241
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* %32, align 8
  %256 = icmp sgt i64 %254, %255
  br i1 %256, label %257, label %265

257:                                              ; preds = %251
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %259 = call i64 @INTERPOL_IS_ASC_INTERPOL(%struct.TYPE_17__* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %265, label %261

261:                                              ; preds = %257, %247
  %262 = load i64, i64* %26, align 8
  %263 = load i64, i64* %18, align 8
  %264 = icmp slt i64 %262, %263
  br label %265

265:                                              ; preds = %261, %257, %251
  %266 = phi i1 [ false, %257 ], [ false, %251 ], [ %264, %261 ]
  br i1 %266, label %267, label %280

267:                                              ; preds = %265
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %269 = load i64, i64* %15, align 8
  %270 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %16, align 8
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %272 = load i8**, i8*** %22, align 8
  %273 = load i64, i64* %19, align 8
  %274 = load i64*, i64** %23, align 8
  %275 = load i64, i64* %32, align 8
  %276 = load i64, i64* %25, align 8
  %277 = load i64, i64* %29, align 8
  %278 = load i8**, i8*** %30, align 8
  %279 = call i32 @doInterpoResultImpl(%struct.TYPE_17__* %268, i64 %269, %struct.TYPE_15__** %270, %struct.TYPE_16__* %271, i64* %26, i8** %272, i64 %273, i64* %274, i64 %275, i64 %276, i64 %277, i8** %278, i32 0)
  br label %241

280:                                              ; preds = %265
  %281 = load i64, i64* %26, align 8
  %282 = load i64, i64* %18, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %288

284:                                              ; preds = %280
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %286 = call i64 @INTERPOL_IS_ASC_INTERPOL(%struct.TYPE_17__* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %295, label %288

288:                                              ; preds = %284, %280
  %289 = load i64, i64* %26, align 8
  %290 = icmp slt i64 %289, 0
  br i1 %290, label %291, label %306

291:                                              ; preds = %288
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %293 = call i64 @INTERPOL_IS_ASC_INTERPOL(%struct.TYPE_17__* %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %306, label %295

295:                                              ; preds = %291, %284
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 7
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 8
  %301 = load i32, i32* %300, align 8
  %302 = sext i32 %301 to i64
  %303 = add nsw i64 %302, %298
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %300, align 8
  %305 = load i64, i64* %18, align 8
  store i64 %305, i64* %13, align 8
  br label %698

306:                                              ; preds = %291, %288
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 4
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* %32, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %626

312:                                              ; preds = %306
  %313 = load i8**, i8*** %27, align 8
  %314 = load i8*, i8** %313, align 8
  %315 = icmp eq i8* %314, null
  br i1 %315, label %316, label %380

316:                                              ; preds = %312
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 0
  %319 = load i32*, i32** %318, align 8
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = sub i64 %322, 1
  %324 = getelementptr inbounds i32, i32* %319, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 2
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %327, align 8
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = sub i64 %331, 1
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %325, %335
  %337 = call i8* @calloc(i32 1, i32 %336)
  %338 = load i8**, i8*** %27, align 8
  store i8* %337, i8** %338, align 8
  store i32 1, i32* %37, align 4
  br label %339

339:                                              ; preds = %376, %316
  %340 = load i32, i32* %37, align 4
  %341 = sext i32 %340 to i64
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  %345 = icmp ult i64 %341, %344
  br i1 %345, label %346, label %379

346:                                              ; preds = %339
  %347 = load i8**, i8*** %27, align 8
  %348 = load i8*, i8** %347, align 8
  %349 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 0
  %351 = load i32*, i32** %350, align 8
  %352 = load i32, i32* %37, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %348, i64 %356
  %358 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 2
  %360 = load %struct.TYPE_14__*, %struct.TYPE_14__** %359, align 8
  %361 = load i32, i32* %37, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 2
  %368 = load %struct.TYPE_14__*, %struct.TYPE_14__** %367, align 8
  %369 = load i32, i32* %37, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = sext i32 %373 to i64
  %375 = call i32 @setNull(i8* %357, i32 %365, i64 %374)
  br label %376

376:                                              ; preds = %346
  %377 = load i32, i32* %37, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %37, align 4
  br label %339

379:                                              ; preds = %339
  br label %380

380:                                              ; preds = %379, %312
  store i64 0, i64* %38, align 8
  store i64 0, i64* %39, align 8
  br label %381

381:                                              ; preds = %608, %380
  %382 = load i64, i64* %38, align 8
  %383 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %384 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = load i64, i64* %29, align 8
  %387 = sub i64 %385, %386
  %388 = icmp ult i64 %382, %387
  br i1 %388, label %389, label %611

389:                                              ; preds = %381
  %390 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %16, align 8
  %391 = load i64, i64* %38, align 8
  %392 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %390, i64 %391
  %393 = load %struct.TYPE_15__*, %struct.TYPE_15__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %396, i32 0, i32 2
  %398 = load %struct.TYPE_14__*, %struct.TYPE_14__** %397, align 8
  %399 = load i64, i64* %38, align 8
  %400 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %398, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = sext i32 %402 to i64
  %404 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %405 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %404, i32 0, i32 9
  %406 = load i32, i32* %405, align 4
  %407 = load i64, i64* %25, align 8
  %408 = load i64, i64* %26, align 8
  %409 = call i8* @getPos(i32 %395, i64 %403, i32 %406, i64 %407, i64 %408)
  store i8* %409, i8** %40, align 8
  %410 = load i64, i64* %38, align 8
  %411 = icmp eq i64 %410, 0
  br i1 %411, label %474, label %412

412:                                              ; preds = %389
  %413 = load i64*, i64** %24, align 8
  %414 = load i64, i64* %38, align 8
  %415 = getelementptr inbounds i64, i64* %413, i64 %414
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @TSDB_FUNC_COUNT, align 8
  %418 = icmp ne i64 %416, %417
  br i1 %418, label %419, label %446

419:                                              ; preds = %412
  %420 = load i8**, i8*** %22, align 8
  %421 = load i64, i64* %38, align 8
  %422 = getelementptr inbounds i8*, i8** %420, i64 %421
  %423 = load i8*, i8** %422, align 8
  %424 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %425 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %424, i32 0, i32 5
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %428 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %427, i32 0, i32 2
  %429 = load %struct.TYPE_14__*, %struct.TYPE_14__** %428, align 8
  %430 = load i64, i64* %38, align 8
  %431 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %429, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 4
  %434 = sext i32 %433 to i64
  %435 = mul i64 %426, %434
  %436 = getelementptr inbounds i8, i8* %423, i64 %435
  %437 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %438 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %437, i32 0, i32 2
  %439 = load %struct.TYPE_14__*, %struct.TYPE_14__** %438, align 8
  %440 = load i64, i64* %38, align 8
  %441 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %439, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = call i32 @isNull(i8* %436, i32 %443)
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %474

446:                                              ; preds = %419, %412
  %447 = load i64*, i64** %24, align 8
  %448 = load i64, i64* %38, align 8
  %449 = getelementptr inbounds i64, i64* %447, i64 %448
  %450 = load i64, i64* %449, align 8
  %451 = load i64, i64* @TSDB_FUNC_COUNT, align 8
  %452 = icmp eq i64 %450, %451
  br i1 %452, label %453, label %538

453:                                              ; preds = %446
  %454 = load i8**, i8*** %22, align 8
  %455 = load i64, i64* %38, align 8
  %456 = getelementptr inbounds i8*, i8** %454, i64 %455
  %457 = load i8*, i8** %456, align 8
  %458 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %459 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %458, i32 0, i32 5
  %460 = load i64, i64* %459, align 8
  %461 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %462 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %461, i32 0, i32 2
  %463 = load %struct.TYPE_14__*, %struct.TYPE_14__** %462, align 8
  %464 = load i64, i64* %38, align 8
  %465 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %463, i64 %464
  %466 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 4
  %468 = sext i32 %467 to i64
  %469 = mul i64 %460, %468
  %470 = getelementptr inbounds i8, i8* %457, i64 %469
  %471 = bitcast i8* %470 to i64*
  %472 = load i64, i64* %471, align 8
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %538

474:                                              ; preds = %453, %419, %389
  %475 = load i8*, i8** %40, align 8
  %476 = load i8**, i8*** %22, align 8
  %477 = load i64, i64* %38, align 8
  %478 = getelementptr inbounds i8*, i8** %476, i64 %477
  %479 = load i8*, i8** %478, align 8
  %480 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %481 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %480, i32 0, i32 5
  %482 = load i64, i64* %481, align 8
  %483 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %484 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %483, i32 0, i32 2
  %485 = load %struct.TYPE_14__*, %struct.TYPE_14__** %484, align 8
  %486 = load i64, i64* %38, align 8
  %487 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %485, i64 %486
  %488 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 4
  %490 = sext i32 %489 to i64
  %491 = mul i64 %482, %490
  %492 = getelementptr inbounds i8, i8* %479, i64 %491
  %493 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %494 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %493, i32 0, i32 2
  %495 = load %struct.TYPE_14__*, %struct.TYPE_14__** %494, align 8
  %496 = load i64, i64* %38, align 8
  %497 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %495, i64 %496
  %498 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 4
  %500 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %501 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %500, i32 0, i32 2
  %502 = load %struct.TYPE_14__*, %struct.TYPE_14__** %501, align 8
  %503 = load i64, i64* %38, align 8
  %504 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %502, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 4
  %507 = call i32 @assignVal(i8* %475, i8* %492, i32 %499, i32 %506)
  %508 = load i8**, i8*** %27, align 8
  %509 = load i8*, i8** %508, align 8
  %510 = load i64, i64* %39, align 8
  %511 = getelementptr inbounds i8, i8* %509, i64 %510
  %512 = load i8**, i8*** %22, align 8
  %513 = load i64, i64* %38, align 8
  %514 = getelementptr inbounds i8*, i8** %512, i64 %513
  %515 = load i8*, i8** %514, align 8
  %516 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %517 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %516, i32 0, i32 5
  %518 = load i64, i64* %517, align 8
  %519 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %520 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %519, i32 0, i32 2
  %521 = load %struct.TYPE_14__*, %struct.TYPE_14__** %520, align 8
  %522 = load i64, i64* %38, align 8
  %523 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %521, i64 %522
  %524 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 4
  %526 = sext i32 %525 to i64
  %527 = mul i64 %518, %526
  %528 = getelementptr inbounds i8, i8* %515, i64 %527
  %529 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %530 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %529, i32 0, i32 2
  %531 = load %struct.TYPE_14__*, %struct.TYPE_14__** %530, align 8
  %532 = load i64, i64* %38, align 8
  %533 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %531, i64 %532
  %534 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 4
  %536 = sext i32 %535 to i64
  %537 = call i32 @memcpy(i8* %511, i8* %528, i64 %536)
  br label %597

538:                                              ; preds = %453, %446
  %539 = load i64, i64* %15, align 8
  %540 = load i64, i64* @TSDB_INTERPO_PREV, align 8
  %541 = icmp eq i64 %539, %540
  br i1 %541, label %542, label %569

542:                                              ; preds = %538
  %543 = load i8*, i8** %40, align 8
  %544 = load i8**, i8*** %27, align 8
  %545 = load i8*, i8** %544, align 8
  %546 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %547 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %546, i32 0, i32 0
  %548 = load i32*, i32** %547, align 8
  %549 = load i64, i64* %38, align 8
  %550 = getelementptr inbounds i32, i32* %548, i64 %549
  %551 = load i32, i32* %550, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i8, i8* %545, i64 %552
  %554 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %555 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %554, i32 0, i32 2
  %556 = load %struct.TYPE_14__*, %struct.TYPE_14__** %555, align 8
  %557 = load i64, i64* %38, align 8
  %558 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %556, i64 %557
  %559 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 4
  %561 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %562 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %561, i32 0, i32 2
  %563 = load %struct.TYPE_14__*, %struct.TYPE_14__** %562, align 8
  %564 = load i64, i64* %38, align 8
  %565 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %563, i64 %564
  %566 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %565, i32 0, i32 1
  %567 = load i32, i32* %566, align 4
  %568 = call i32 @assignVal(i8* %543, i8* %553, i32 %560, i32 %567)
  br label %596

569:                                              ; preds = %538
  %570 = load i64, i64* %15, align 8
  %571 = load i64, i64* @TSDB_INTERPO_LINEAR, align 8
  %572 = icmp eq i64 %570, %571
  br i1 %572, label %573, label %574

573:                                              ; preds = %569
  br label %595

574:                                              ; preds = %569
  %575 = load i8*, i8** %40, align 8
  %576 = load i64*, i64** %23, align 8
  %577 = load i64, i64* %38, align 8
  %578 = getelementptr inbounds i64, i64* %576, i64 %577
  %579 = bitcast i64* %578 to i8*
  %580 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %581 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %580, i32 0, i32 2
  %582 = load %struct.TYPE_14__*, %struct.TYPE_14__** %581, align 8
  %583 = load i64, i64* %38, align 8
  %584 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %582, i64 %583
  %585 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %584, i32 0, i32 0
  %586 = load i32, i32* %585, align 4
  %587 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %588 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %587, i32 0, i32 2
  %589 = load %struct.TYPE_14__*, %struct.TYPE_14__** %588, align 8
  %590 = load i64, i64* %38, align 8
  %591 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %589, i64 %590
  %592 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %591, i32 0, i32 1
  %593 = load i32, i32* %592, align 4
  %594 = call i32 @assignVal(i8* %575, i8* %579, i32 %586, i32 %593)
  br label %595

595:                                              ; preds = %574, %573
  br label %596

596:                                              ; preds = %595, %542
  br label %597

597:                                              ; preds = %596, %474
  %598 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %599 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %598, i32 0, i32 2
  %600 = load %struct.TYPE_14__*, %struct.TYPE_14__** %599, align 8
  %601 = load i64, i64* %38, align 8
  %602 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %600, i64 %601
  %603 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %602, i32 0, i32 0
  %604 = load i32, i32* %603, align 4
  %605 = sext i32 %604 to i64
  %606 = load i64, i64* %39, align 8
  %607 = add nsw i64 %606, %605
  store i64 %607, i64* %39, align 8
  br label %608

608:                                              ; preds = %597
  %609 = load i64, i64* %38, align 8
  %610 = add nsw i64 %609, 1
  store i64 %610, i64* %38, align 8
  br label %381

611:                                              ; preds = %381
  %612 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %16, align 8
  %613 = load i8**, i8*** %30, align 8
  %614 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %615 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %616 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %615, i32 0, i32 9
  %617 = load i32, i32* %616, align 4
  %618 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %619 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %618, i32 0, i32 1
  %620 = load i64, i64* %619, align 8
  %621 = load i64, i64* %29, align 8
  %622 = sub i64 %620, %621
  %623 = load i64, i64* %25, align 8
  %624 = load i64, i64* %26, align 8
  %625 = call i32 @setTagsValueInInterpolation(%struct.TYPE_15__** %612, i8** %613, %struct.TYPE_16__* %614, i32 %617, i64 %622, i64 %623, i64 %624)
  br label %626

626:                                              ; preds = %611, %306
  %627 = load i64, i64* %19, align 8
  %628 = load i64, i64* %31, align 8
  %629 = mul nsw i64 %627, %628
  %630 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %631 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %630, i32 0, i32 4
  %632 = load i64, i64* %631, align 8
  %633 = add nsw i64 %632, %629
  store i64 %633, i64* %631, align 8
  %634 = load i64, i64* %31, align 8
  %635 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %636 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %635, i32 0, i32 5
  %637 = load i64, i64* %636, align 8
  %638 = add i64 %637, %634
  store i64 %638, i64* %636, align 8
  %639 = load i64, i64* %26, align 8
  %640 = add nsw i64 %639, 1
  store i64 %640, i64* %26, align 8
  %641 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %642 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %641, i32 0, i32 5
  %643 = load i64, i64* %642, align 8
  %644 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %645 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %644, i32 0, i32 6
  %646 = load i64, i64* %645, align 8
  %647 = icmp uge i64 %643, %646
  br i1 %647, label %648, label %652

648:                                              ; preds = %626
  %649 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %650 = call i64 @INTERPOL_IS_ASC_INTERPOL(%struct.TYPE_17__* %649)
  %651 = icmp ne i64 %650, 0
  br i1 %651, label %665, label %652

652:                                              ; preds = %648, %626
  %653 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %654 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %653, i32 0, i32 5
  %655 = load i64, i64* %654, align 8
  %656 = icmp ult i64 %655, 0
  br i1 %656, label %657, label %661

657:                                              ; preds = %652
  %658 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %659 = call i64 @INTERPOL_IS_ASC_INTERPOL(%struct.TYPE_17__* %658)
  %660 = icmp ne i64 %659, 0
  br i1 %660, label %661, label %665

661:                                              ; preds = %657, %652
  %662 = load i64, i64* %26, align 8
  %663 = load i64, i64* %18, align 8
  %664 = icmp sge i64 %662, %663
  br i1 %664, label %665, label %697

665:                                              ; preds = %661, %657, %648
  %666 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %667 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %666, i32 0, i32 5
  %668 = load i64, i64* %667, align 8
  %669 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %670 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %669, i32 0, i32 6
  %671 = load i64, i64* %670, align 8
  %672 = icmp uge i64 %668, %671
  br i1 %672, label %678, label %673

673:                                              ; preds = %665
  %674 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %675 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %674, i32 0, i32 5
  %676 = load i64, i64* %675, align 8
  %677 = icmp ult i64 %676, 0
  br i1 %677, label %678, label %686

678:                                              ; preds = %673, %665
  %679 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %680 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %679, i32 0, i32 5
  store i64 -1, i64* %680, align 8
  %681 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %682 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %681, i32 0, i32 6
  store i64 0, i64* %682, align 8
  %683 = load i8**, i8*** %28, align 8
  %684 = load i8*, i8** %683, align 8
  %685 = call i32 @tfree(i8* %684)
  br label %686

686:                                              ; preds = %678, %673
  %687 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %688 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %687, i32 0, i32 7
  %689 = load i64, i64* %688, align 8
  %690 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %691 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %690, i32 0, i32 8
  %692 = load i32, i32* %691, align 8
  %693 = sext i32 %692 to i64
  %694 = add nsw i64 %693, %689
  %695 = trunc i64 %694 to i32
  store i32 %695, i32* %691, align 8
  %696 = load i64, i64* %26, align 8
  store i64 %696, i64* %13, align 8
  br label %698

697:                                              ; preds = %661
  br label %91

698:                                              ; preds = %686, %295, %79
  %699 = load i64, i64* %13, align 8
  ret i64 %699
}

declare dso_local i64 @GET_FORWARD_DIRECTION_FACTOR(i32) #1

declare dso_local i32 @doInterpoResultImpl(%struct.TYPE_17__*, i64, %struct.TYPE_15__**, %struct.TYPE_16__*, i64*, i8**, i64, i64*, i64, i64, i64, i8**, i32) #1

declare dso_local i64 @INTERPOL_IS_ASC_INTERPOL(%struct.TYPE_17__*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @setNull(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @getPos(i32, i64, i32, i64, i64) #1

declare dso_local i32 @isNull(i8*, i32) #1

declare dso_local i32 @assignVal(i8*, i8*, i32, i32) #1

declare dso_local i32 @setTagsValueInInterpolation(%struct.TYPE_15__**, i8**, %struct.TYPE_16__*, i32, i64, i64, i64) #1

declare dso_local i32 @tfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
