; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstd_lazy.c_ZSTD_DUBT_findBestMatch.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstd_lazy.c_ZSTD_DUBT_findBestMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32*, i32, %struct.TYPE_7__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i64*, i32, i64*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"ZSTD_DUBT_findBestMatch (%u) \00", align 1
@ZSTD_DUBT_UNSORTED_MARK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"ZSTD_DUBT_findBestMatch: candidate %u is unsorted\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"ZSTD_DUBT_findBestMatch: nullify last unsorted candidate %u\00", align 1
@ZSTD_extDict = common dso_local global i32 0, align 4
@ZSTD_REP_MOVE = common dso_local global i32 0, align 4
@ZSTD_dictMatchState = common dso_local global i32 0, align 4
@MINMATCH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [82 x i8] c"ZSTD_DUBT_findBestMatch(%u) : found match of length %u and offsetCode %u (pos %u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i64*, i64*, i64*, i32, i32)* @ZSTD_DUBT_findBestMatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_DUBT_findBestMatch(%struct.TYPE_8__* %0, i64* %1, i64* %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i64*, align 8
  %38 = alloca i64*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i64, align 8
  %44 = alloca i32*, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64*, align 8
  %47 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %13, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %14, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  %56 = load i64*, i64** %8, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @ZSTD_hashPtr(i64* %56, i32 %57, i32 %58)
  store i64 %59, i64* %16, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = load i64, i64* %16, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %17, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  store i64* %67, i64** %18, align 8
  %68 = load i64*, i64** %8, align 8
  %69 = load i64*, i64** %18, align 8
  %70 = ptrtoint i64* %68 to i64
  %71 = ptrtoint i64* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %19, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %20, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %21, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %22, align 4
  %86 = load i32, i32* %22, align 4
  %87 = shl i32 1, %86
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %23, align 4
  %89 = load i32, i32* %23, align 4
  %90 = load i32, i32* %19, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %6
  br label %97

93:                                               ; preds = %6
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %23, align 4
  %96 = sub nsw i32 %94, %95
  br label %97

97:                                               ; preds = %93, %92
  %98 = phi i32 [ 0, %92 ], [ %96, %93 ]
  store i32 %98, i32* %24, align 4
  %99 = load i32, i32* %24, align 4
  %100 = load i32, i32* %20, align 4
  %101 = call i32 @MAX(i32 %99, i32 %100)
  store i32 %101, i32* %25, align 4
  %102 = load i32*, i32** %21, align 8
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %23, align 4
  %105 = and i32 %103, %104
  %106 = mul nsw i32 2, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %102, i64 %107
  store i32* %108, i32** %26, align 8
  %109 = load i32*, i32** %21, align 8
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %23, align 4
  %112 = and i32 %110, %111
  %113 = mul nsw i32 2, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %109, i64 %114
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32* %116, i32** %27, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 1, %119
  store i32 %120, i32* %28, align 4
  %121 = load i32, i32* %28, align 4
  store i32 %121, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %122 = load i32, i32* %19, align 4
  %123 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load i64*, i64** %8, align 8
  %125 = load i64*, i64** %9, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 -8
  %127 = icmp ule i64* %124, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  br label %130

130:                                              ; preds = %144, %97
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %25, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = load i32*, i32** %27, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @ZSTD_DUBT_UNSORTED_MARK, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i32, i32* %29, align 4
  %141 = icmp sgt i32 %140, 1
  br label %142

142:                                              ; preds = %139, %134, %130
  %143 = phi i1 [ false, %134 ], [ false, %130 ], [ %141, %139 ]
  br i1 %143, label %144, label %169

144:                                              ; preds = %142
  %145 = load i32, i32* %17, align 4
  %146 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 8, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %30, align 4
  %148 = load i32*, i32** %27, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* %17, align 4
  store i32 %149, i32* %30, align 4
  %150 = load i32*, i32** %26, align 8
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %17, align 4
  %152 = load i32*, i32** %21, align 8
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %23, align 4
  %155 = and i32 %153, %154
  %156 = mul nsw i32 2, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %152, i64 %157
  store i32* %158, i32** %26, align 8
  %159 = load i32*, i32** %21, align 8
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %23, align 4
  %162 = and i32 %160, %161
  %163 = mul nsw i32 2, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %159, i64 %164
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  store i32* %166, i32** %27, align 8
  %167 = load i32, i32* %29, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %29, align 4
  br label %130

169:                                              ; preds = %142
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %25, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %169
  %174 = load i32*, i32** %27, align 8
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @ZSTD_DUBT_UNSORTED_MARK, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load i32, i32* %17, align 4
  %180 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 7, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  %181 = load i32*, i32** %27, align 8
  store i32 0, i32* %181, align 4
  %182 = load i32*, i32** %26, align 8
  store i32 0, i32* %182, align 4
  br label %183

183:                                              ; preds = %178, %173, %169
  %184 = load i32, i32* %30, align 4
  store i32 %184, i32* %17, align 4
  br label %185

185:                                              ; preds = %188, %183
  %186 = load i32, i32* %17, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %209

188:                                              ; preds = %185
  %189 = load i32*, i32** %21, align 8
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* %23, align 4
  %192 = and i32 %190, %191
  %193 = mul nsw i32 2, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %189, i64 %194
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  store i32* %196, i32** %31, align 8
  %197 = load i32*, i32** %31, align 8
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %32, align 4
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %200 = load i32, i32* %17, align 4
  %201 = load i64*, i64** %9, align 8
  %202 = load i32, i32* %29, align 4
  %203 = load i32, i32* %25, align 4
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @ZSTD_insertDUBT1(%struct.TYPE_8__* %199, i32 %200, i64* %201, i32 %202, i32 %203, i32 %204)
  %206 = load i32, i32* %32, align 4
  store i32 %206, i32* %17, align 4
  %207 = load i32, i32* %29, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %29, align 4
  br label %185

209:                                              ; preds = %185
  store i64 0, i64* %33, align 8
  store i64 0, i64* %34, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 2
  %213 = load i64*, i64** %212, align 8
  store i64* %213, i64** %35, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  store i32 %217, i32* %36, align 4
  %218 = load i64*, i64** %35, align 8
  %219 = load i32, i32* %36, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  store i64* %221, i64** %37, align 8
  %222 = load i64*, i64** %18, align 8
  %223 = load i32, i32* %36, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %222, i64 %224
  store i64* %225, i64** %38, align 8
  %226 = load i32*, i32** %21, align 8
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %23, align 4
  %229 = and i32 %227, %228
  %230 = mul nsw i32 2, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %226, i64 %231
  store i32* %232, i32** %39, align 8
  %233 = load i32*, i32** %21, align 8
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* %23, align 4
  %236 = and i32 %234, %235
  %237 = mul nsw i32 2, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %233, i64 %238
  %240 = getelementptr inbounds i32, i32* %239, i64 1
  store i32* %240, i32** %40, align 8
  %241 = load i32, i32* %19, align 4
  %242 = add nsw i32 %241, 8
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %41, align 4
  store i64 0, i64* %43, align 8
  %244 = load i32*, i32** %14, align 8
  %245 = load i64, i64* %16, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %17, align 4
  %248 = load i32, i32* %19, align 4
  %249 = load i32*, i32** %14, align 8
  %250 = load i64, i64* %16, align 8
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  store i32 %248, i32* %251, align 4
  br label %252

252:                                              ; preds = %424, %209
  %253 = load i32, i32* %28, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* %28, align 4
  %255 = icmp ne i32 %253, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = load i32, i32* %17, align 4
  %258 = load i32, i32* %20, align 4
  %259 = icmp sgt i32 %257, %258
  br label %260

260:                                              ; preds = %256, %252
  %261 = phi i1 [ false, %252 ], [ %259, %256 ]
  br i1 %261, label %262, label %425

262:                                              ; preds = %260
  %263 = load i32*, i32** %21, align 8
  %264 = load i32, i32* %17, align 4
  %265 = load i32, i32* %23, align 4
  %266 = and i32 %264, %265
  %267 = mul nsw i32 2, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %263, i64 %268
  store i32* %269, i32** %44, align 8
  %270 = load i64, i64* %33, align 8
  %271 = load i64, i64* %34, align 8
  %272 = call i64 @MIN(i64 %270, i64 %271)
  store i64 %272, i64* %45, align 8
  %273 = load i32, i32* %12, align 4
  %274 = load i32, i32* @ZSTD_extDict, align 4
  %275 = icmp ne i32 %273, %274
  br i1 %275, label %284, label %276

276:                                              ; preds = %262
  %277 = load i32, i32* %17, align 4
  %278 = sext i32 %277 to i64
  %279 = load i64, i64* %45, align 8
  %280 = add i64 %278, %279
  %281 = load i32, i32* %36, align 4
  %282 = sext i32 %281 to i64
  %283 = icmp uge i64 %280, %282
  br i1 %283, label %284, label %299

284:                                              ; preds = %276, %262
  %285 = load i64*, i64** %18, align 8
  %286 = load i32, i32* %17, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i64, i64* %285, i64 %287
  store i64* %288, i64** %46, align 8
  %289 = load i64*, i64** %8, align 8
  %290 = load i64, i64* %45, align 8
  %291 = getelementptr inbounds i64, i64* %289, i64 %290
  %292 = load i64*, i64** %46, align 8
  %293 = load i64, i64* %45, align 8
  %294 = getelementptr inbounds i64, i64* %292, i64 %293
  %295 = load i64*, i64** %9, align 8
  %296 = call i64 @ZSTD_count(i64* %291, i64* %294, i64* %295)
  %297 = load i64, i64* %45, align 8
  %298 = add i64 %297, %296
  store i64 %298, i64* %45, align 8
  br label %329

299:                                              ; preds = %276
  %300 = load i64*, i64** %35, align 8
  %301 = load i32, i32* %17, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i64, i64* %300, i64 %302
  store i64* %303, i64** %46, align 8
  %304 = load i64*, i64** %8, align 8
  %305 = load i64, i64* %45, align 8
  %306 = getelementptr inbounds i64, i64* %304, i64 %305
  %307 = load i64*, i64** %46, align 8
  %308 = load i64, i64* %45, align 8
  %309 = getelementptr inbounds i64, i64* %307, i64 %308
  %310 = load i64*, i64** %9, align 8
  %311 = load i64*, i64** %37, align 8
  %312 = load i64*, i64** %38, align 8
  %313 = call i64 @ZSTD_count_2segments(i64* %306, i64* %309, i64* %310, i64* %311, i64* %312)
  %314 = load i64, i64* %45, align 8
  %315 = add i64 %314, %313
  store i64 %315, i64* %45, align 8
  %316 = load i32, i32* %17, align 4
  %317 = sext i32 %316 to i64
  %318 = load i64, i64* %45, align 8
  %319 = add i64 %317, %318
  %320 = load i32, i32* %36, align 4
  %321 = sext i32 %320 to i64
  %322 = icmp uge i64 %319, %321
  br i1 %322, label %323, label %328

323:                                              ; preds = %299
  %324 = load i64*, i64** %18, align 8
  %325 = load i32, i32* %17, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i64, i64* %324, i64 %326
  store i64* %327, i64** %46, align 8
  br label %328

328:                                              ; preds = %323, %299
  br label %329

329:                                              ; preds = %328, %284
  %330 = load i64, i64* %45, align 8
  %331 = load i64, i64* %43, align 8
  %332 = icmp ugt i64 %330, %331
  br i1 %332, label %333, label %387

333:                                              ; preds = %329
  %334 = load i64, i64* %45, align 8
  %335 = load i32, i32* %41, align 4
  %336 = load i32, i32* %17, align 4
  %337 = sub nsw i32 %335, %336
  %338 = sext i32 %337 to i64
  %339 = icmp ugt i64 %334, %338
  br i1 %339, label %340, label %345

340:                                              ; preds = %333
  %341 = load i32, i32* %17, align 4
  %342 = load i64, i64* %45, align 8
  %343 = trunc i64 %342 to i32
  %344 = add nsw i32 %341, %343
  store i32 %344, i32* %41, align 4
  br label %345

345:                                              ; preds = %340, %333
  %346 = load i64, i64* %45, align 8
  %347 = load i64, i64* %43, align 8
  %348 = sub i64 %346, %347
  %349 = trunc i64 %348 to i32
  %350 = mul nsw i32 4, %349
  %351 = load i32, i32* %19, align 4
  %352 = load i32, i32* %17, align 4
  %353 = sub nsw i32 %351, %352
  %354 = add nsw i32 %353, 1
  %355 = call i64 @ZSTD_highbit32(i32 %354)
  %356 = load i64*, i64** %10, align 8
  %357 = getelementptr inbounds i64, i64* %356, i64 0
  %358 = load i64, i64* %357, align 8
  %359 = trunc i64 %358 to i32
  %360 = add nsw i32 %359, 1
  %361 = call i64 @ZSTD_highbit32(i32 %360)
  %362 = sub nsw i64 %355, %361
  %363 = trunc i64 %362 to i32
  %364 = icmp sgt i32 %350, %363
  br i1 %364, label %365, label %374

365:                                              ; preds = %345
  %366 = load i64, i64* %45, align 8
  store i64 %366, i64* %43, align 8
  %367 = load i32, i32* @ZSTD_REP_MOVE, align 4
  %368 = load i32, i32* %19, align 4
  %369 = add nsw i32 %367, %368
  %370 = load i32, i32* %17, align 4
  %371 = sub nsw i32 %369, %370
  %372 = sext i32 %371 to i64
  %373 = load i64*, i64** %10, align 8
  store i64 %372, i64* %373, align 8
  br label %374

374:                                              ; preds = %365, %345
  %375 = load i64*, i64** %8, align 8
  %376 = load i64, i64* %45, align 8
  %377 = getelementptr inbounds i64, i64* %375, i64 %376
  %378 = load i64*, i64** %9, align 8
  %379 = icmp eq i64* %377, %378
  br i1 %379, label %380, label %386

380:                                              ; preds = %374
  %381 = load i32, i32* %12, align 4
  %382 = load i32, i32* @ZSTD_dictMatchState, align 4
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %384, label %385

384:                                              ; preds = %380
  store i32 0, i32* %28, align 4
  br label %385

385:                                              ; preds = %384, %380
  br label %425

386:                                              ; preds = %374
  br label %387

387:                                              ; preds = %386, %329
  %388 = load i64*, i64** %46, align 8
  %389 = load i64, i64* %45, align 8
  %390 = getelementptr inbounds i64, i64* %388, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = load i64*, i64** %8, align 8
  %393 = load i64, i64* %45, align 8
  %394 = getelementptr inbounds i64, i64* %392, i64 %393
  %395 = load i64, i64* %394, align 8
  %396 = icmp slt i64 %391, %395
  br i1 %396, label %397, label %411

397:                                              ; preds = %387
  %398 = load i32, i32* %17, align 4
  %399 = load i32*, i32** %39, align 8
  store i32 %398, i32* %399, align 4
  %400 = load i64, i64* %45, align 8
  store i64 %400, i64* %33, align 8
  %401 = load i32, i32* %17, align 4
  %402 = load i32, i32* %24, align 4
  %403 = icmp sle i32 %401, %402
  br i1 %403, label %404, label %405

404:                                              ; preds = %397
  store i32* %42, i32** %39, align 8
  br label %425

405:                                              ; preds = %397
  %406 = load i32*, i32** %44, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 1
  store i32* %407, i32** %39, align 8
  %408 = load i32*, i32** %44, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 1
  %410 = load i32, i32* %409, align 4
  store i32 %410, i32* %17, align 4
  br label %424

411:                                              ; preds = %387
  %412 = load i32, i32* %17, align 4
  %413 = load i32*, i32** %40, align 8
  store i32 %412, i32* %413, align 4
  %414 = load i64, i64* %45, align 8
  store i64 %414, i64* %34, align 8
  %415 = load i32, i32* %17, align 4
  %416 = load i32, i32* %24, align 4
  %417 = icmp sle i32 %415, %416
  br i1 %417, label %418, label %419

418:                                              ; preds = %411
  store i32* %42, i32** %40, align 8
  br label %425

419:                                              ; preds = %411
  %420 = load i32*, i32** %44, align 8
  store i32* %420, i32** %40, align 8
  %421 = load i32*, i32** %44, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 0
  %423 = load i32, i32* %422, align 4
  store i32 %423, i32* %17, align 4
  br label %424

424:                                              ; preds = %419, %405
  br label %252

425:                                              ; preds = %418, %404, %385, %260
  %426 = load i32*, i32** %40, align 8
  store i32 0, i32* %426, align 4
  %427 = load i32*, i32** %39, align 8
  store i32 0, i32* %427, align 4
  %428 = load i32, i32* %12, align 4
  %429 = load i32, i32* @ZSTD_dictMatchState, align 4
  %430 = icmp eq i32 %428, %429
  br i1 %430, label %431, label %444

431:                                              ; preds = %425
  %432 = load i32, i32* %28, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %444

434:                                              ; preds = %431
  %435 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %436 = load i64*, i64** %8, align 8
  %437 = load i64*, i64** %9, align 8
  %438 = load i64*, i64** %10, align 8
  %439 = load i64, i64* %43, align 8
  %440 = load i32, i32* %28, align 4
  %441 = load i32, i32* %11, align 4
  %442 = load i32, i32* %12, align 4
  %443 = call i64 @ZSTD_DUBT_findBetterDictMatch(%struct.TYPE_8__* %435, i64* %436, i64* %437, i64* %438, i64 %439, i32 %440, i32 %441, i32 %442)
  store i64 %443, i64* %43, align 8
  br label %444

444:                                              ; preds = %434, %431, %425
  %445 = load i32, i32* %41, align 4
  %446 = load i32, i32* %19, align 4
  %447 = add nsw i32 %446, 8
  %448 = icmp sgt i32 %445, %447
  %449 = zext i1 %448 to i32
  %450 = call i32 @assert(i32 %449)
  %451 = load i32, i32* %41, align 4
  %452 = sub nsw i32 %451, 8
  %453 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %454 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %453, i32 0, i32 2
  store i32 %452, i32* %454, align 8
  %455 = load i64, i64* %43, align 8
  %456 = load i64, i64* @MINMATCH, align 8
  %457 = icmp uge i64 %455, %456
  br i1 %457, label %458, label %475

458:                                              ; preds = %444
  %459 = load i32, i32* %19, align 4
  %460 = load i64*, i64** %10, align 8
  %461 = load i64, i64* %460, align 8
  %462 = trunc i64 %461 to i32
  %463 = load i32, i32* @ZSTD_REP_MOVE, align 4
  %464 = sub nsw i32 %462, %463
  %465 = sub nsw i32 %459, %464
  store i32 %465, i32* %47, align 4
  %466 = load i32, i32* %47, align 4
  %467 = load i32, i32* %19, align 4
  %468 = load i64, i64* %43, align 8
  %469 = trunc i64 %468 to i32
  %470 = load i64*, i64** %10, align 8
  %471 = load i64, i64* %470, align 8
  %472 = trunc i64 %471 to i32
  %473 = load i32, i32* %47, align 4
  %474 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 8, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0), i32 %467, i32 %469, i32 %472, i32 %473)
  br label %475

475:                                              ; preds = %458, %444
  %476 = load i64, i64* %43, align 8
  ret i64 %476
}

declare dso_local i64 @ZSTD_hashPtr(i64*, i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ZSTD_insertDUBT1(%struct.TYPE_8__*, i32, i64*, i32, i32, i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @ZSTD_count(i64*, i64*, i64*) #1

declare dso_local i64 @ZSTD_count_2segments(i64*, i64*, i64*, i64*, i64*) #1

declare dso_local i64 @ZSTD_highbit32(i32) #1

declare dso_local i64 @ZSTD_DUBT_findBetterDictMatch(%struct.TYPE_8__*, i64*, i64*, i64*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
