; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_gcJson.c_gcBuildQueryJson.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_gcJson.c_gcBuildQueryJson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@HTTP_GC_TARGET_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s%ld\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%.5f\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%.9f\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@TSDB_TIME_PRECISION_MILLI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"invalidcol\00", align 1
@JsonArrStt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@JsonArrEnd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gcBuildQueryJson(i32* %0, %struct.TYPE_6__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32**, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32* @httpMallocJsonBuf(i32* %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %393

30:                                               ; preds = %4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @taos_num_fields(i32* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call %struct.TYPE_5__* @taos_fetch_fields(i32* %33)
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %12, align 8
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %393

38:                                               ; preds = %30
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @taos_result_precision(i32* %39)
  store i32 %40, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 129
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %38
  store i32 1, i32* %14, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp sgt i32 %50, 2
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %55

55:                                               ; preds = %52, %49
  br label %63

56:                                               ; preds = %38
  store i32 0, i32* %14, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %55
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @httpGetCmdsString(i32* %64, i32 %67)
  store i8* %68, i8** %17, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @httpGetCmdsString(i32* %69, i32 %72)
  store i8* %73, i8** %18, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @httpGetCmdsString(i32* %74, i32 %77)
  store i8* %78, i8** %19, align 8
  %79 = load i32, i32* %15, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %97

81:                                               ; preds = %63
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load i32*, i32** %10, align 8
  %88 = load i8*, i8** %17, align 8
  %89 = load i8*, i8** %18, align 8
  %90 = call i32 @gcWriteTargetStartJson(i32* %87, i8* %88, i8* %89)
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %92
  store i64 %96, i64* %94, align 8
  br label %97

97:                                               ; preds = %86, %81, %63
  store i32 0, i32* %20, align 4
  br label %98

98:                                               ; preds = %389, %97
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %392

102:                                              ; preds = %98
  %103 = load i32*, i32** %8, align 8
  %104 = call i32** @taos_fetch_row(i32* %103)
  store i32** %104, i32*** %21, align 8
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, -1
  br i1 %106, label %107, label %244

107:                                              ; preds = %102
  %108 = load i32, i32* @HTTP_GC_TARGET_SIZE, align 4
  %109 = zext i32 %108 to i64
  %110 = call i8* @llvm.stacksave()
  store i8* %110, i8** %22, align 8
  %111 = alloca i8, i64 %109, align 16
  store i64 %109, i64* %23, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %220 [
    i32 135, label %118
    i32 128, label %118
    i32 130, label %129
    i32 132, label %140
    i32 137, label %151
    i32 133, label %161
    i32 134, label %173
    i32 136, label %184
    i32 131, label %184
    i32 129, label %194
  ]

118:                                              ; preds = %107, %107
  %119 = load i32, i32* @HTTP_GC_TARGET_SIZE, align 4
  %120 = load i8*, i8** %18, align 8
  %121 = load i32**, i32*** %21, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = bitcast i32* %125 to i8**
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %111, i32 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %120, i8* %127)
  br label %224

129:                                              ; preds = %107
  %130 = load i32, i32* @HTTP_GC_TARGET_SIZE, align 4
  %131 = load i8*, i8** %18, align 8
  %132 = load i32**, i32*** %21, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %132, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = bitcast i32* %136 to i8**
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %111, i32 %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %131, i8* %138)
  br label %224

140:                                              ; preds = %107
  %141 = load i32, i32* @HTTP_GC_TARGET_SIZE, align 4
  %142 = load i8*, i8** %18, align 8
  %143 = load i32**, i32*** %21, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = bitcast i32* %147 to i8**
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %111, i32 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %142, i8* %149)
  br label %224

151:                                              ; preds = %107
  %152 = load i32, i32* @HTTP_GC_TARGET_SIZE, align 4
  %153 = load i8*, i8** %18, align 8
  %154 = load i32**, i32*** %21, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32*, i32** %154, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %111, i32 %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %153, i32 %159)
  br label %224

161:                                              ; preds = %107
  %162 = load i32, i32* @HTTP_GC_TARGET_SIZE, align 4
  %163 = load i8*, i8** %18, align 8
  %164 = load i32**, i32*** %21, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32*, i32** %164, i64 %166
  %168 = load i32*, i32** %167, align 8
  %169 = bitcast i32* %168 to float*
  %170 = load float, float* %169, align 4
  %171 = fpext float %170 to double
  %172 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %111, i32 %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %163, double %171)
  br label %224

173:                                              ; preds = %107
  %174 = load i32, i32* @HTTP_GC_TARGET_SIZE, align 4
  %175 = load i8*, i8** %18, align 8
  %176 = load i32**, i32*** %21, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32*, i32** %176, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = bitcast i32* %180 to double*
  %182 = load double, double* %181, align 8
  %183 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %111, i32 %174, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %175, double %182)
  br label %224

184:                                              ; preds = %107, %107
  %185 = load i32, i32* @HTTP_GC_TARGET_SIZE, align 4
  %186 = load i8*, i8** %18, align 8
  %187 = load i32**, i32*** %21, align 8
  %188 = load i32, i32* %15, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32*, i32** %187, i64 %189
  %191 = load i32*, i32** %190, align 8
  %192 = bitcast i32* %191 to i8*
  %193 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %111, i32 %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %186, i8* %192)
  br label %224

194:                                              ; preds = %107
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* @TSDB_TIME_PRECISION_MILLI, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %194
  %199 = load i32, i32* @HTTP_GC_TARGET_SIZE, align 4
  %200 = load i8*, i8** %18, align 8
  %201 = load i32**, i32*** %21, align 8
  %202 = load i32, i32* %15, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %111, i32 %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %200, i32 %206)
  br label %219

208:                                              ; preds = %194
  %209 = load i32, i32* @HTTP_GC_TARGET_SIZE, align 4
  %210 = load i8*, i8** %18, align 8
  %211 = load i32**, i32*** %21, align 8
  %212 = load i32, i32* %15, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32*, i32** %211, i64 %213
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %215, align 4
  %217 = sdiv i32 %216, 1000
  %218 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %111, i32 %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %210, i32 %217)
  br label %219

219:                                              ; preds = %208, %198
  br label %224

220:                                              ; preds = %107
  %221 = load i32, i32* @HTTP_GC_TARGET_SIZE, align 4
  %222 = load i8*, i8** %18, align 8
  %223 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %111, i32 %221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %222, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %224

224:                                              ; preds = %220, %219, %184, %173, %161, %151, %140, %129, %118
  %225 = load i8*, i8** %19, align 8
  %226 = call i64 @strcmp(i8* %111, i8* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %224
  %229 = load i8*, i8** %19, align 8
  %230 = call i64 @strlen(i8* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = load i32*, i32** %10, align 8
  %234 = call i32 @gcWriteTargetEndJson(i32* %233)
  br label %235

235:                                              ; preds = %232, %228
  %236 = load i32*, i32** %10, align 8
  %237 = load i8*, i8** %17, align 8
  %238 = call i32 @gcWriteTargetStartJson(i32* %236, i8* %237, i8* %111)
  %239 = load i8*, i8** %19, align 8
  %240 = load i32, i32* @HTTP_GC_TARGET_SIZE, align 4
  %241 = call i32 @strncpy(i8* %239, i8* %111, i32 %240)
  br label %242

242:                                              ; preds = %235, %224
  %243 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %243)
  br label %244

244:                                              ; preds = %242, %102
  %245 = load i32*, i32** %10, align 8
  %246 = call i32 @httpJsonItemToken(i32* %245)
  %247 = load i32*, i32** %10, align 8
  %248 = load i32, i32* @JsonArrStt, align 4
  %249 = call i32 @httpJsonToken(i32* %247, i32 %248)
  %250 = load i32, i32* %14, align 4
  store i32 %250, i32* %24, align 4
  br label %251

251:                                              ; preds = %374, %244
  %252 = load i32, i32* %24, align 4
  %253 = icmp sge i32 %252, 0
  br i1 %253, label %254, label %377

254:                                              ; preds = %251
  %255 = load i32*, i32** %10, align 8
  %256 = call i32 @httpJsonItemToken(i32* %255)
  %257 = load i32**, i32*** %21, align 8
  %258 = load i32, i32* %24, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32*, i32** %257, i64 %259
  %261 = load i32*, i32** %260, align 8
  %262 = icmp eq i32* %261, null
  br i1 %262, label %263, label %266

263:                                              ; preds = %254
  %264 = load i32*, i32** %10, align 8
  %265 = call i32 @httpJsonOriginString(i32* %264, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  br label %374

266:                                              ; preds = %254
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %268 = load i32, i32* %24, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  switch i32 %272, label %370 [
    i32 135, label %273
    i32 128, label %273
    i32 130, label %283
    i32 132, label %293
    i32 137, label %303
    i32 133, label %312
    i32 134, label %322
    i32 136, label %332
    i32 131, label %332
    i32 129, label %346
  ]

273:                                              ; preds = %266, %266
  %274 = load i32*, i32** %10, align 8
  %275 = load i32**, i32*** %21, align 8
  %276 = load i32, i32* %24, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32*, i32** %275, i64 %277
  %279 = load i32*, i32** %278, align 8
  %280 = bitcast i32* %279 to i8**
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 @httpJsonInt(i32* %274, i8* %281)
  br label %373

283:                                              ; preds = %266
  %284 = load i32*, i32** %10, align 8
  %285 = load i32**, i32*** %21, align 8
  %286 = load i32, i32* %24, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32*, i32** %285, i64 %287
  %289 = load i32*, i32** %288, align 8
  %290 = bitcast i32* %289 to i8**
  %291 = load i8*, i8** %290, align 8
  %292 = call i32 @httpJsonInt(i32* %284, i8* %291)
  br label %373

293:                                              ; preds = %266
  %294 = load i32*, i32** %10, align 8
  %295 = load i32**, i32*** %21, align 8
  %296 = load i32, i32* %24, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32*, i32** %295, i64 %297
  %299 = load i32*, i32** %298, align 8
  %300 = bitcast i32* %299 to i8**
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @httpJsonInt(i32* %294, i8* %301)
  br label %373

303:                                              ; preds = %266
  %304 = load i32*, i32** %10, align 8
  %305 = load i32**, i32*** %21, align 8
  %306 = load i32, i32* %24, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32*, i32** %305, i64 %307
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @httpJsonInt64(i32* %304, i32 %310)
  br label %373

312:                                              ; preds = %266
  %313 = load i32*, i32** %10, align 8
  %314 = load i32**, i32*** %21, align 8
  %315 = load i32, i32* %24, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32*, i32** %314, i64 %316
  %318 = load i32*, i32** %317, align 8
  %319 = bitcast i32* %318 to float*
  %320 = load float, float* %319, align 4
  %321 = call i32 @httpJsonFloat(i32* %313, float %320)
  br label %373

322:                                              ; preds = %266
  %323 = load i32*, i32** %10, align 8
  %324 = load i32**, i32*** %21, align 8
  %325 = load i32, i32* %24, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32*, i32** %324, i64 %326
  %328 = load i32*, i32** %327, align 8
  %329 = bitcast i32* %328 to double*
  %330 = load double, double* %329, align 8
  %331 = call i32 @httpJsonDouble(i32* %323, double %330)
  br label %373

332:                                              ; preds = %266, %266
  %333 = load i32*, i32** %10, align 8
  %334 = load i32**, i32*** %21, align 8
  %335 = load i32, i32* %24, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32*, i32** %334, i64 %336
  %338 = load i32*, i32** %337, align 8
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %340 = load i32, i32* %24, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @httpJsonStringForTransMean(i32* %333, i32* %338, i32 %344)
  br label %373

346:                                              ; preds = %266
  %347 = load i32, i32* %13, align 4
  %348 = load i32, i32* @TSDB_TIME_PRECISION_MILLI, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %359

350:                                              ; preds = %346
  %351 = load i32*, i32** %10, align 8
  %352 = load i32**, i32*** %21, align 8
  %353 = load i32, i32* %24, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32*, i32** %352, i64 %354
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @httpJsonInt64(i32* %351, i32 %357)
  br label %369

359:                                              ; preds = %346
  %360 = load i32*, i32** %10, align 8
  %361 = load i32**, i32*** %21, align 8
  %362 = load i32, i32* %24, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32*, i32** %361, i64 %363
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* %365, align 4
  %367 = sdiv i32 %366, 1000
  %368 = call i32 @httpJsonInt64(i32* %360, i32 %367)
  br label %369

369:                                              ; preds = %359, %350
  br label %373

370:                                              ; preds = %266
  %371 = load i32*, i32** %10, align 8
  %372 = call i32 @httpJsonString(i32* %371, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 10)
  br label %373

373:                                              ; preds = %370, %369, %332, %322, %312, %303, %293, %283, %273
  br label %374

374:                                              ; preds = %373, %263
  %375 = load i32, i32* %24, align 4
  %376 = add nsw i32 %375, -1
  store i32 %376, i32* %24, align 4
  br label %251

377:                                              ; preds = %251
  %378 = load i32, i32* %14, align 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %377
  %381 = load i32*, i32** %10, align 8
  %382 = call i32 @httpJsonItemToken(i32* %381)
  %383 = load i32*, i32** %10, align 8
  %384 = call i32 @httpJsonString(i32* %383, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  br label %385

385:                                              ; preds = %380, %377
  %386 = load i32*, i32** %10, align 8
  %387 = load i32, i32* @JsonArrEnd, align 4
  %388 = call i32 @httpJsonToken(i32* %386, i32 %387)
  br label %389

389:                                              ; preds = %385
  %390 = load i32, i32* %20, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %20, align 4
  br label %98

392:                                              ; preds = %98
  store i32 1, i32* %5, align 4
  br label %393

393:                                              ; preds = %392, %37, %29
  %394 = load i32, i32* %5, align 4
  ret i32 %394
}

declare dso_local i32* @httpMallocJsonBuf(i32*) #1

declare dso_local i32 @taos_num_fields(i32*) #1

declare dso_local %struct.TYPE_5__* @taos_fetch_fields(i32*) #1

declare dso_local i32 @taos_result_precision(i32*) #1

declare dso_local i8* @httpGetCmdsString(i32*, i32) #1

declare dso_local i32 @gcWriteTargetStartJson(i32*, i8*, i8*) #1

declare dso_local i32** @taos_fetch_row(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @gcWriteTargetEndJson(i32*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @httpJsonItemToken(i32*) #1

declare dso_local i32 @httpJsonToken(i32*, i32) #1

declare dso_local i32 @httpJsonOriginString(i32*, i8*, i32) #1

declare dso_local i32 @httpJsonInt(i32*, i8*) #1

declare dso_local i32 @httpJsonInt64(i32*, i32) #1

declare dso_local i32 @httpJsonFloat(i32*, float) #1

declare dso_local i32 @httpJsonDouble(i32*, double) #1

declare dso_local i32 @httpJsonStringForTransMean(i32*, i32*, i32) #1

declare dso_local i32 @httpJsonString(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
