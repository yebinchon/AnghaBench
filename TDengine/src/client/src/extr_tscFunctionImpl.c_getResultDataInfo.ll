; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_getResultDataInfo.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_getResultDataInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"Illegal data type %d or data type length %d\00", align 1
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@TSDB_FUNC_TS = common dso_local global i64 0, align 8
@TSDB_FUNC_TS_DUMMY = common dso_local global i64 0, align 8
@TSDB_FUNC_TAG_DUMMY = common dso_local global i64 0, align 8
@TSDB_FUNC_DIFF = common dso_local global i64 0, align 8
@TSDB_FUNC_PRJ = common dso_local global i64 0, align 8
@TSDB_FUNC_TAGPRJ = common dso_local global i64 0, align 8
@TSDB_FUNC_TAG = common dso_local global i64 0, align 8
@TSDB_FUNC_INTERP = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_FUNC_COUNT = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BIGINT = common dso_local global i64 0, align 8
@TSDB_FUNC_ARITHM = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_DOUBLE = common dso_local global i32 0, align 4
@TSDB_FUNC_TS_COMP = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BINARY = common dso_local global i32 0, align 4
@POINTER_BYTES = common dso_local global i32 0, align 4
@TSDB_FUNC_MIN = common dso_local global i64 0, align 8
@TSDB_FUNC_MAX = common dso_local global i64 0, align 8
@DATA_SET_FLAG_SIZE = common dso_local global i64 0, align 8
@TSDB_FUNC_SUM = common dso_local global i64 0, align 8
@TSDB_FUNC_AVG = common dso_local global i64 0, align 8
@TSDB_FUNC_TOP = common dso_local global i64 0, align 8
@TSDB_FUNC_BOTTOM = common dso_local global i64 0, align 8
@TSDB_FUNC_SPREAD = common dso_local global i64 0, align 8
@TSDB_FUNC_APERCT = common dso_local global i64 0, align 8
@MAX_HISTOGRAM_BIN = common dso_local global i32 0, align 4
@TSDB_FUNC_LAST_ROW = common dso_local global i64 0, align 8
@TSDB_FUNC_TWA = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_TINYINT = common dso_local global i64 0, align 8
@TSDB_FUNC_STDDEV = common dso_local global i64 0, align 8
@TSDB_FUNC_FIRST = common dso_local global i64 0, align 8
@TSDB_FUNC_LAST = common dso_local global i64 0, align 8
@TSDB_FUNC_PERCT = common dso_local global i64 0, align 8
@TSDB_FUNC_LEASTSQR = common dso_local global i64 0, align 8
@TSDB_AVG_FUNCTION_INTER_BUFFER_SIZE = common dso_local global i32 0, align 4
@TSDB_FUNC_FIRST_DST = common dso_local global i64 0, align 8
@TSDB_FUNC_LAST_DST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @getResultDataInfo(i64 %0, i64 %1, i64 %2, i64 %3, i32* %4, i32* %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i64 %0, i64* %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = call i32 @isValidDataType(i64 %21, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %9
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @pError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %27)
  %29 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %29, i64* %10, align 8
  br label %463

30:                                               ; preds = %9
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @TSDB_FUNC_TS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %62, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* @TSDB_FUNC_TS_DUMMY, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %62, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* @TSDB_FUNC_TAG_DUMMY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %62, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* @TSDB_FUNC_DIFF, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %62, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* @TSDB_FUNC_PRJ, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* @TSDB_FUNC_TAGPRJ, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* @TSDB_FUNC_TAG, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* @TSDB_FUNC_INTERP, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58, %54, %50, %46, %42, %38, %34, %30
  %63 = load i64, i64* %11, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %15, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i64, i64* %12, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32*, i32** %16, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = load i32*, i32** %17, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %75, i64* %10, align 8
  br label %463

76:                                               ; preds = %58
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* @TSDB_FUNC_COUNT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i64, i64* @TSDB_DATA_TYPE_BIGINT, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i32*, i32** %15, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %16, align 8
  store i32 4, i32* %84, align 4
  %85 = load i32*, i32** %16, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %17, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %88, i64* %10, align 8
  br label %463

89:                                               ; preds = %76
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* @TSDB_FUNC_ARITHM, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i32, i32* @TSDB_DATA_TYPE_DOUBLE, align 4
  %95 = load i32*, i32** %15, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32*, i32** %16, align 8
  store i32 8, i32* %96, align 4
  %97 = load i32*, i32** %16, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %17, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %100, i64* %10, align 8
  br label %463

101:                                              ; preds = %89
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* @TSDB_FUNC_TS_COMP, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %107 = load i32*, i32** %15, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32*, i32** %16, align 8
  store i32 8, i32* %108, align 4
  %109 = load i32, i32* @POINTER_BYTES, align 4
  %110 = load i32*, i32** %17, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %111, i64* %10, align 8
  br label %463

112:                                              ; preds = %101
  %113 = load i32, i32* %19, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %249

115:                                              ; preds = %112
  %116 = load i64, i64* %13, align 8
  %117 = load i64, i64* @TSDB_FUNC_MIN, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* @TSDB_FUNC_MAX, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %119, %115
  %124 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %125 = load i32*, i32** %15, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* @DATA_SET_FLAG_SIZE, align 8
  %128 = add nsw i64 %126, %127
  %129 = trunc i64 %128 to i32
  %130 = load i32*, i32** %16, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32*, i32** %16, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %17, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %134, i64* %10, align 8
  br label %463

135:                                              ; preds = %119
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* @TSDB_FUNC_SUM, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %135
  %140 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %141 = load i32*, i32** %15, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32*, i32** %16, align 8
  store i32 4, i32* %142, align 4
  %143 = load i32*, i32** %16, align 8
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %17, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %146, i64* %10, align 8
  br label %463

147:                                              ; preds = %135
  %148 = load i64, i64* %13, align 8
  %149 = load i64, i64* @TSDB_FUNC_AVG, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %147
  %152 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %153 = load i32*, i32** %15, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i32*, i32** %16, align 8
  store i32 4, i32* %154, align 4
  %155 = load i32*, i32** %16, align 8
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %17, align 8
  store i32 %156, i32* %157, align 4
  %158 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %158, i64* %10, align 8
  br label %463

159:                                              ; preds = %147
  %160 = load i64, i64* %13, align 8
  %161 = load i64, i64* @TSDB_FUNC_TOP, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = load i64, i64* %13, align 8
  %165 = load i64, i64* @TSDB_FUNC_BOTTOM, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %185

167:                                              ; preds = %163, %159
  %168 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %169 = load i32*, i32** %15, align 8
  store i32 %168, i32* %169, align 4
  %170 = load i32, i32* @POINTER_BYTES, align 4
  %171 = sext i32 %170 to i64
  %172 = add i64 4, %171
  %173 = load i32, i32* %18, align 4
  %174 = sext i32 %173 to i64
  %175 = add i64 %172, %174
  %176 = load i64, i64* %14, align 8
  %177 = mul i64 %175, %176
  %178 = add i64 4, %177
  %179 = trunc i64 %178 to i32
  %180 = load i32*, i32** %16, align 8
  store i32 %179, i32* %180, align 4
  %181 = load i32*, i32** %16, align 8
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %17, align 8
  store i32 %182, i32* %183, align 4
  %184 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %184, i64* %10, align 8
  br label %463

185:                                              ; preds = %163
  %186 = load i64, i64* %13, align 8
  %187 = load i64, i64* @TSDB_FUNC_SPREAD, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %185
  %190 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %191 = load i32*, i32** %15, align 8
  store i32 %190, i32* %191, align 4
  %192 = load i32*, i32** %16, align 8
  store i32 4, i32* %192, align 4
  %193 = load i32*, i32** %16, align 8
  %194 = load i32, i32* %193, align 4
  %195 = load i32*, i32** %17, align 8
  store i32 %194, i32* %195, align 4
  %196 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %196, i64* %10, align 8
  br label %463

197:                                              ; preds = %185
  %198 = load i64, i64* %13, align 8
  %199 = load i64, i64* @TSDB_FUNC_APERCT, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %216

201:                                              ; preds = %197
  %202 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %203 = load i32*, i32** %15, align 8
  store i32 %202, i32* %203, align 4
  %204 = load i32, i32* @MAX_HISTOGRAM_BIN, align 4
  %205 = add nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = mul i64 4, %206
  %208 = add i64 %207, 4
  %209 = add i64 %208, 4
  %210 = trunc i64 %209 to i32
  %211 = load i32*, i32** %16, align 8
  store i32 %210, i32* %211, align 4
  %212 = load i32*, i32** %16, align 8
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %17, align 8
  store i32 %213, i32* %214, align 4
  %215 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %215, i64* %10, align 8
  br label %463

216:                                              ; preds = %197
  %217 = load i64, i64* %13, align 8
  %218 = load i64, i64* @TSDB_FUNC_LAST_ROW, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %231

220:                                              ; preds = %216
  %221 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %222 = load i32*, i32** %15, align 8
  store i32 %221, i32* %222, align 4
  %223 = load i64, i64* %12, align 8
  %224 = add i64 4, %223
  %225 = trunc i64 %224 to i32
  %226 = load i32*, i32** %16, align 8
  store i32 %225, i32* %226, align 4
  %227 = load i32*, i32** %16, align 8
  %228 = load i32, i32* %227, align 4
  %229 = load i32*, i32** %17, align 8
  store i32 %228, i32* %229, align 4
  %230 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %230, i64* %10, align 8
  br label %463

231:                                              ; preds = %216
  %232 = load i64, i64* %13, align 8
  %233 = load i64, i64* @TSDB_FUNC_TWA, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %231
  %236 = load i32, i32* @TSDB_DATA_TYPE_DOUBLE, align 4
  %237 = load i32*, i32** %15, align 8
  store i32 %236, i32* %237, align 4
  %238 = load i32*, i32** %16, align 8
  store i32 4, i32* %238, align 4
  %239 = load i32*, i32** %17, align 8
  store i32 4, i32* %239, align 4
  %240 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %240, i64* %10, align 8
  br label %463

241:                                              ; preds = %231
  br label %242

242:                                              ; preds = %241
  br label %243

243:                                              ; preds = %242
  br label %244

244:                                              ; preds = %243
  br label %245

245:                                              ; preds = %244
  br label %246

246:                                              ; preds = %245
  br label %247

247:                                              ; preds = %246
  br label %248

248:                                              ; preds = %247
  br label %249

249:                                              ; preds = %248, %112
  %250 = load i64, i64* %13, align 8
  %251 = load i64, i64* @TSDB_FUNC_SUM, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %272

253:                                              ; preds = %249
  %254 = load i64, i64* %11, align 8
  %255 = load i64, i64* @TSDB_DATA_TYPE_TINYINT, align 8
  %256 = icmp sge i64 %254, %255
  br i1 %256, label %257, label %265

257:                                              ; preds = %253
  %258 = load i64, i64* %11, align 8
  %259 = load i64, i64* @TSDB_DATA_TYPE_BIGINT, align 8
  %260 = icmp sle i64 %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %257
  %262 = load i64, i64* @TSDB_DATA_TYPE_BIGINT, align 8
  %263 = trunc i64 %262 to i32
  %264 = load i32*, i32** %15, align 8
  store i32 %263, i32* %264, align 4
  br label %268

265:                                              ; preds = %257, %253
  %266 = load i32, i32* @TSDB_DATA_TYPE_DOUBLE, align 4
  %267 = load i32*, i32** %15, align 8
  store i32 %266, i32* %267, align 4
  br label %268

268:                                              ; preds = %265, %261
  %269 = load i32*, i32** %16, align 8
  store i32 4, i32* %269, align 4
  %270 = load i32*, i32** %17, align 8
  store i32 4, i32* %270, align 4
  %271 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %271, i64* %10, align 8
  br label %463

272:                                              ; preds = %249
  %273 = load i64, i64* %13, align 8
  %274 = load i64, i64* @TSDB_FUNC_APERCT, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %288

276:                                              ; preds = %272
  %277 = load i32, i32* @TSDB_DATA_TYPE_DOUBLE, align 4
  %278 = load i32*, i32** %15, align 8
  store i32 %277, i32* %278, align 4
  %279 = load i32*, i32** %16, align 8
  store i32 8, i32* %279, align 4
  %280 = load i32, i32* @MAX_HISTOGRAM_BIN, align 4
  %281 = add nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = mul i64 4, %282
  %284 = add i64 8, %283
  %285 = trunc i64 %284 to i32
  %286 = load i32*, i32** %17, align 8
  store i32 %285, i32* %286, align 4
  %287 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %287, i64* %10, align 8
  br label %463

288:                                              ; preds = %272
  %289 = load i64, i64* %13, align 8
  %290 = load i64, i64* @TSDB_FUNC_TWA, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %288
  %293 = load i32, i32* @TSDB_DATA_TYPE_DOUBLE, align 4
  %294 = load i32*, i32** %15, align 8
  store i32 %293, i32* %294, align 4
  %295 = load i32*, i32** %16, align 8
  store i32 8, i32* %295, align 4
  %296 = load i32*, i32** %17, align 8
  store i32 4, i32* %296, align 4
  %297 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %297, i64* %10, align 8
  br label %463

298:                                              ; preds = %288
  br label %299

299:                                              ; preds = %298
  br label %300

300:                                              ; preds = %299
  %301 = load i64, i64* %13, align 8
  %302 = load i64, i64* @TSDB_FUNC_AVG, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %304, label %309

304:                                              ; preds = %300
  %305 = load i32, i32* @TSDB_DATA_TYPE_DOUBLE, align 4
  %306 = load i32*, i32** %15, align 8
  store i32 %305, i32* %306, align 4
  %307 = load i32*, i32** %16, align 8
  store i32 8, i32* %307, align 4
  %308 = load i32*, i32** %17, align 8
  store i32 4, i32* %308, align 4
  br label %461

309:                                              ; preds = %300
  %310 = load i64, i64* %13, align 8
  %311 = load i64, i64* @TSDB_FUNC_STDDEV, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %318

313:                                              ; preds = %309
  %314 = load i32, i32* @TSDB_DATA_TYPE_DOUBLE, align 4
  %315 = load i32*, i32** %15, align 8
  store i32 %314, i32* %315, align 4
  %316 = load i32*, i32** %16, align 8
  store i32 8, i32* %316, align 4
  %317 = load i32*, i32** %17, align 8
  store i32 4, i32* %317, align 4
  br label %460

318:                                              ; preds = %309
  %319 = load i64, i64* %13, align 8
  %320 = load i64, i64* @TSDB_FUNC_MIN, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %326, label %322

322:                                              ; preds = %318
  %323 = load i64, i64* %13, align 8
  %324 = load i64, i64* @TSDB_FUNC_MAX, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %338

326:                                              ; preds = %322, %318
  %327 = load i64, i64* %11, align 8
  %328 = trunc i64 %327 to i32
  %329 = load i32*, i32** %15, align 8
  store i32 %328, i32* %329, align 4
  %330 = load i64, i64* %12, align 8
  %331 = trunc i64 %330 to i32
  %332 = load i32*, i32** %16, align 8
  store i32 %331, i32* %332, align 4
  %333 = load i64, i64* %12, align 8
  %334 = load i64, i64* @DATA_SET_FLAG_SIZE, align 8
  %335 = add nsw i64 %333, %334
  %336 = trunc i64 %335 to i32
  %337 = load i32*, i32** %17, align 8
  store i32 %336, i32* %337, align 4
  br label %459

338:                                              ; preds = %322
  %339 = load i64, i64* %13, align 8
  %340 = load i64, i64* @TSDB_FUNC_FIRST, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %346, label %342

342:                                              ; preds = %338
  %343 = load i64, i64* %13, align 8
  %344 = load i64, i64* @TSDB_FUNC_LAST, align 8
  %345 = icmp eq i64 %343, %344
  br i1 %345, label %346, label %357

346:                                              ; preds = %342, %338
  %347 = load i64, i64* %11, align 8
  %348 = trunc i64 %347 to i32
  %349 = load i32*, i32** %15, align 8
  store i32 %348, i32* %349, align 4
  %350 = load i64, i64* %12, align 8
  %351 = trunc i64 %350 to i32
  %352 = load i32*, i32** %16, align 8
  store i32 %351, i32* %352, align 4
  %353 = load i64, i64* %12, align 8
  %354 = add i64 %353, 4
  %355 = trunc i64 %354 to i32
  %356 = load i32*, i32** %17, align 8
  store i32 %355, i32* %356, align 4
  br label %458

357:                                              ; preds = %342
  %358 = load i64, i64* %13, align 8
  %359 = load i64, i64* @TSDB_FUNC_SPREAD, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %366

361:                                              ; preds = %357
  %362 = load i32, i32* @TSDB_DATA_TYPE_DOUBLE, align 4
  %363 = load i32*, i32** %15, align 8
  store i32 %362, i32* %363, align 4
  %364 = load i32*, i32** %16, align 8
  store i32 8, i32* %364, align 4
  %365 = load i32*, i32** %17, align 8
  store i32 4, i32* %365, align 4
  br label %457

366:                                              ; preds = %357
  %367 = load i64, i64* %13, align 8
  %368 = load i64, i64* @TSDB_FUNC_PERCT, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %370, label %375

370:                                              ; preds = %366
  %371 = load i32, i32* @TSDB_DATA_TYPE_DOUBLE, align 4
  %372 = load i32*, i32** %15, align 8
  store i32 %371, i32* %372, align 4
  %373 = load i32*, i32** %16, align 8
  store i32 8, i32* %373, align 4
  %374 = load i32*, i32** %17, align 8
  store i32 8, i32* %374, align 4
  br label %456

375:                                              ; preds = %366
  %376 = load i64, i64* %13, align 8
  %377 = load i64, i64* @TSDB_FUNC_LEASTSQR, align 8
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %379, label %390

379:                                              ; preds = %375
  %380 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %381 = load i32*, i32** %15, align 8
  store i32 %380, i32* %381, align 4
  %382 = load i32, i32* @TSDB_AVG_FUNCTION_INTER_BUFFER_SIZE, align 4
  %383 = load i32*, i32** %16, align 8
  store i32 %382, i32* %383, align 4
  %384 = load i32*, i32** %16, align 8
  %385 = load i32, i32* %384, align 4
  %386 = sext i32 %385 to i64
  %387 = add i64 %386, 4
  %388 = trunc i64 %387 to i32
  %389 = load i32*, i32** %17, align 8
  store i32 %388, i32* %389, align 4
  br label %455

390:                                              ; preds = %375
  %391 = load i64, i64* %13, align 8
  %392 = load i64, i64* @TSDB_FUNC_FIRST_DST, align 8
  %393 = icmp eq i64 %391, %392
  br i1 %393, label %398, label %394

394:                                              ; preds = %390
  %395 = load i64, i64* %13, align 8
  %396 = load i64, i64* @TSDB_FUNC_LAST_DST, align 8
  %397 = icmp eq i64 %395, %396
  br i1 %397, label %398, label %408

398:                                              ; preds = %394, %390
  %399 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %400 = load i32*, i32** %15, align 8
  store i32 %399, i32* %400, align 4
  %401 = load i64, i64* %12, align 8
  %402 = add i64 %401, 4
  %403 = trunc i64 %402 to i32
  %404 = load i32*, i32** %16, align 8
  store i32 %403, i32* %404, align 4
  %405 = load i32*, i32** %16, align 8
  %406 = load i32, i32* %405, align 4
  %407 = load i32*, i32** %17, align 8
  store i32 %406, i32* %407, align 4
  br label %454

408:                                              ; preds = %394
  %409 = load i64, i64* %13, align 8
  %410 = load i64, i64* @TSDB_FUNC_TOP, align 8
  %411 = icmp eq i64 %409, %410
  br i1 %411, label %416, label %412

412:                                              ; preds = %408
  %413 = load i64, i64* %13, align 8
  %414 = load i64, i64* @TSDB_FUNC_BOTTOM, align 8
  %415 = icmp eq i64 %413, %414
  br i1 %415, label %416, label %435

416:                                              ; preds = %412, %408
  %417 = load i64, i64* %11, align 8
  %418 = trunc i64 %417 to i32
  %419 = load i32*, i32** %15, align 8
  store i32 %418, i32* %419, align 4
  %420 = load i64, i64* %12, align 8
  %421 = trunc i64 %420 to i32
  %422 = load i32*, i32** %16, align 8
  store i32 %421, i32* %422, align 4
  %423 = load i32, i32* @POINTER_BYTES, align 4
  %424 = sext i32 %423 to i64
  %425 = add i64 4, %424
  %426 = load i32, i32* %18, align 4
  %427 = sext i32 %426 to i64
  %428 = add i64 %425, %427
  %429 = load i64, i64* %14, align 8
  %430 = mul i64 %428, %429
  %431 = add i64 4, %430
  store i64 %431, i64* %20, align 8
  %432 = load i64, i64* %20, align 8
  %433 = trunc i64 %432 to i32
  %434 = load i32*, i32** %17, align 8
  store i32 %433, i32* %434, align 4
  br label %453

435:                                              ; preds = %412
  %436 = load i64, i64* %13, align 8
  %437 = load i64, i64* @TSDB_FUNC_LAST_ROW, align 8
  %438 = icmp eq i64 %436, %437
  br i1 %438, label %439, label %450

439:                                              ; preds = %435
  %440 = load i64, i64* %11, align 8
  %441 = trunc i64 %440 to i32
  %442 = load i32*, i32** %15, align 8
  store i32 %441, i32* %442, align 4
  %443 = load i64, i64* %12, align 8
  %444 = trunc i64 %443 to i32
  %445 = load i32*, i32** %16, align 8
  store i32 %444, i32* %445, align 4
  %446 = load i64, i64* %12, align 8
  %447 = add i64 %446, 4
  %448 = trunc i64 %447 to i32
  %449 = load i32*, i32** %17, align 8
  store i32 %448, i32* %449, align 4
  br label %452

450:                                              ; preds = %435
  %451 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %451, i64* %10, align 8
  br label %463

452:                                              ; preds = %439
  br label %453

453:                                              ; preds = %452, %416
  br label %454

454:                                              ; preds = %453, %398
  br label %455

455:                                              ; preds = %454, %379
  br label %456

456:                                              ; preds = %455, %370
  br label %457

457:                                              ; preds = %456, %361
  br label %458

458:                                              ; preds = %457, %346
  br label %459

459:                                              ; preds = %458, %326
  br label %460

460:                                              ; preds = %459, %313
  br label %461

461:                                              ; preds = %460, %304
  %462 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %462, i64* %10, align 8
  br label %463

463:                                              ; preds = %461, %450, %292, %276, %268, %235, %220, %201, %189, %167, %151, %139, %123, %105, %93, %80, %62, %25
  %464 = load i64, i64* %10, align 8
  ret i64 %464
}

declare dso_local i32 @isValidDataType(i64, i64) #1

declare dso_local i32 @pError(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
