; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_mapping0.c_mapping0_inverse.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_mapping0.c_mapping0_inverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.TYPE_18__*, i32, i8*, float*)*, i8* (%struct.TYPE_18__*, i32)* }
%struct.TYPE_18__ = type { i64, i64, float**, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_19__*, %struct.TYPE_16__* }
%struct.TYPE_19__ = type { i32**, i32*, i32* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64*, i64*, i64* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_18__*, i32, float**, i32*, i32)* }
%struct.TYPE_15__ = type { i32*, i64*, i32, i64*, i64*, i32, i64* }

@_floor_P = common dso_local global %struct.TYPE_14__** null, align 8
@_residue_P = common dso_local global %struct.TYPE_13__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32*)* @mapping0_inverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapping0_inverse(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca float**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float*, align 8
  %24 = alloca i32, align 4
  %25 = alloca float*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32* %1, i32** %4, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %5, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %6, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  store %struct.TYPE_20__* %34, %struct.TYPE_20__** %7, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  store %struct.TYPE_19__* %37, %struct.TYPE_19__** %8, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = bitcast i32* %38 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %9, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  store i64 %47, i64* %12, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = mul i64 8, %53
  %55 = trunc i64 %54 to i32
  %56 = call i8* @alloca(i32 %55)
  %57 = bitcast i8* %56 to float**
  store float** %57, float*** %13, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = mul i64 4, %61
  %63 = trunc i64 %62 to i32
  %64 = call i8* @alloca(i32 %63)
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** %14, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = mul i64 4, %69
  %71 = trunc i64 %70 to i32
  %72 = call i8* @alloca(i32 %71)
  %73 = bitcast i8* %72 to i32*
  store i32* %73, i32** %15, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = mul i64 8, %77
  %79 = trunc i64 %78 to i32
  %80 = call i8* @alloca(i32 %79)
  %81 = bitcast i8* %80 to i8**
  store i8** %81, i8*** %16, align 8
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %160, %2
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %163

88:                                               ; preds = %82
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %17, align 4
  %96 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @_floor_P, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i64, i64* %99, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %96, i64 %108
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i8* (%struct.TYPE_18__*, i32)*, i8* (%struct.TYPE_18__*, i32)** %111, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %116, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i8* %112(%struct.TYPE_18__* %113, i32 %125)
  %127 = load i8**, i8*** %16, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  store i8* %126, i8** %130, align 8
  %131 = load i8**, i8*** %16, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %88
  %138 = load i32*, i32** %15, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 1, i32* %141, align 4
  br label %147

142:                                              ; preds = %88
  %143 = load i32*, i32** %15, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 0, i32* %146, align 4
  br label %147

147:                                              ; preds = %142, %137
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 2
  %150 = load float**, float*** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float*, float** %150, i64 %152
  %154 = load float*, float** %153, align 8
  %155 = load i64, i64* %12, align 8
  %156 = mul i64 4, %155
  %157 = udiv i64 %156, 2
  %158 = trunc i64 %157 to i32
  %159 = call i32 @memset(float* %154, i32 0, i32 %158)
  br label %160

160:                                              ; preds = %147
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %82

163:                                              ; preds = %82
  store i32 0, i32* %10, align 4
  br label %164

164:                                              ; preds = %214, %163
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %217

170:                                              ; preds = %164
  %171 = load i32*, i32** %15, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 3
  %174 = load i64*, i64** %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds i32, i32* %171, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %194, label %182

182:                                              ; preds = %170
  %183 = load i32*, i32** %15, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 4
  %186 = load i64*, i64** %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds i32, i32* %183, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %213

194:                                              ; preds = %182, %170
  %195 = load i32*, i32** %15, align 8
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 3
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds i32, i32* %195, i64 %202
  store i32 1, i32* %203, align 4
  %204 = load i32*, i32** %15, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 4
  %207 = load i64*, i64** %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds i32, i32* %204, i64 %211
  store i32 1, i32* %212, align 4
  br label %213

213:                                              ; preds = %194, %182
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %10, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %10, align 4
  br label %164

217:                                              ; preds = %164
  store i32 0, i32* %10, align 4
  br label %218

218:                                              ; preds = %310, %217
  %219 = load i32, i32* %10, align 4
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %313

224:                                              ; preds = %218
  store i32 0, i32* %18, align 4
  store i32 0, i32* %11, align 4
  br label %225

225:                                              ; preds = %272, %224
  %226 = load i32, i32* %11, align 4
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp slt i32 %226, %229
  br i1 %230, label %231, label %275

231:                                              ; preds = %225
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %10, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %271

241:                                              ; preds = %231
  %242 = load i32*, i32** %15, align 8
  %243 = load i32, i32* %11, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %241
  %249 = load i32*, i32** %14, align 8
  %250 = load i32, i32* %18, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 1, i32* %252, align 4
  br label %258

253:                                              ; preds = %241
  %254 = load i32*, i32** %14, align 8
  %255 = load i32, i32* %18, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  store i32 0, i32* %257, align 4
  br label %258

258:                                              ; preds = %253, %248
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 2
  %261 = load float**, float*** %260, align 8
  %262 = load i32, i32* %11, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds float*, float** %261, i64 %263
  %265 = load float*, float** %264, align 8
  %266 = load float**, float*** %13, align 8
  %267 = load i32, i32* %18, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %18, align 4
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds float*, float** %266, i64 %269
  store float* %265, float** %270, align 8
  br label %271

271:                                              ; preds = %258, %231
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %11, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %11, align 4
  br label %225

275:                                              ; preds = %225
  %276 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @_residue_P, align 8
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 2
  %279 = load i64*, i64** %278, align 8
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 6
  %282 = load i64*, i64** %281, align 8
  %283 = load i32, i32* %10, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i64, i64* %282, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds i64, i64* %279, i64 %286
  %288 = load i64, i64* %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %276, i64 %288
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 0
  %292 = load i32 (%struct.TYPE_18__*, i32, float**, i32*, i32)*, i32 (%struct.TYPE_18__*, i32, float**, i32*, i32)** %291, align 8
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 2
  %296 = load i32*, i32** %295, align 8
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 6
  %299 = load i64*, i64** %298, align 8
  %300 = load i32, i32* %10, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i64, i64* %299, i64 %301
  %303 = load i64, i64* %302, align 8
  %304 = getelementptr inbounds i32, i32* %296, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load float**, float*** %13, align 8
  %307 = load i32*, i32** %14, align 8
  %308 = load i32, i32* %18, align 4
  %309 = call i32 %292(%struct.TYPE_18__* %293, i32 %305, float** %306, i32* %307, i32 %308)
  br label %310

310:                                              ; preds = %275
  %311 = load i32, i32* %10, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %10, align 4
  br label %218

313:                                              ; preds = %218
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = sub nsw i32 %316, 1
  store i32 %317, i32* %10, align 4
  br label %318

318:                                              ; preds = %430, %313
  %319 = load i32, i32* %10, align 4
  %320 = icmp sge i32 %319, 0
  br i1 %320, label %321, label %433

321:                                              ; preds = %318
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %322, i32 0, i32 2
  %324 = load float**, float*** %323, align 8
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i32 0, i32 3
  %327 = load i64*, i64** %326, align 8
  %328 = load i32, i32* %10, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i64, i64* %327, i64 %329
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds float*, float** %324, i64 %331
  %333 = load float*, float** %332, align 8
  store float* %333, float** %19, align 8
  %334 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %334, i32 0, i32 2
  %336 = load float**, float*** %335, align 8
  %337 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i32 0, i32 4
  %339 = load i64*, i64** %338, align 8
  %340 = load i32, i32* %10, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i64, i64* %339, i64 %341
  %343 = load i64, i64* %342, align 8
  %344 = getelementptr inbounds float*, float** %336, i64 %343
  %345 = load float*, float** %344, align 8
  store float* %345, float** %20, align 8
  store i32 0, i32* %11, align 4
  br label %346

346:                                              ; preds = %426, %321
  %347 = load i32, i32* %11, align 4
  %348 = sext i32 %347 to i64
  %349 = load i64, i64* %12, align 8
  %350 = sdiv i64 %349, 2
  %351 = icmp slt i64 %348, %350
  br i1 %351, label %352, label %429

352:                                              ; preds = %346
  %353 = load float*, float** %19, align 8
  %354 = load i32, i32* %11, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds float, float* %353, i64 %355
  %357 = load float, float* %356, align 4
  store float %357, float* %21, align 4
  %358 = load float*, float** %20, align 8
  %359 = load i32, i32* %11, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds float, float* %358, i64 %360
  %362 = load float, float* %361, align 4
  store float %362, float* %22, align 4
  %363 = load float, float* %21, align 4
  %364 = fcmp ogt float %363, 0.000000e+00
  br i1 %364, label %365, label %395

365:                                              ; preds = %352
  %366 = load float, float* %22, align 4
  %367 = fcmp ogt float %366, 0.000000e+00
  br i1 %367, label %368, label %381

368:                                              ; preds = %365
  %369 = load float, float* %21, align 4
  %370 = load float*, float** %19, align 8
  %371 = load i32, i32* %11, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds float, float* %370, i64 %372
  store float %369, float* %373, align 4
  %374 = load float, float* %21, align 4
  %375 = load float, float* %22, align 4
  %376 = fsub float %374, %375
  %377 = load float*, float** %20, align 8
  %378 = load i32, i32* %11, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds float, float* %377, i64 %379
  store float %376, float* %380, align 4
  br label %394

381:                                              ; preds = %365
  %382 = load float, float* %21, align 4
  %383 = load float*, float** %20, align 8
  %384 = load i32, i32* %11, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds float, float* %383, i64 %385
  store float %382, float* %386, align 4
  %387 = load float, float* %21, align 4
  %388 = load float, float* %22, align 4
  %389 = fadd float %387, %388
  %390 = load float*, float** %19, align 8
  %391 = load i32, i32* %11, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds float, float* %390, i64 %392
  store float %389, float* %393, align 4
  br label %394

394:                                              ; preds = %381, %368
  br label %425

395:                                              ; preds = %352
  %396 = load float, float* %22, align 4
  %397 = fcmp ogt float %396, 0.000000e+00
  br i1 %397, label %398, label %411

398:                                              ; preds = %395
  %399 = load float, float* %21, align 4
  %400 = load float*, float** %19, align 8
  %401 = load i32, i32* %11, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds float, float* %400, i64 %402
  store float %399, float* %403, align 4
  %404 = load float, float* %21, align 4
  %405 = load float, float* %22, align 4
  %406 = fadd float %404, %405
  %407 = load float*, float** %20, align 8
  %408 = load i32, i32* %11, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds float, float* %407, i64 %409
  store float %406, float* %410, align 4
  br label %424

411:                                              ; preds = %395
  %412 = load float, float* %21, align 4
  %413 = load float*, float** %20, align 8
  %414 = load i32, i32* %11, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds float, float* %413, i64 %415
  store float %412, float* %416, align 4
  %417 = load float, float* %21, align 4
  %418 = load float, float* %22, align 4
  %419 = fsub float %417, %418
  %420 = load float*, float** %19, align 8
  %421 = load i32, i32* %11, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds float, float* %420, i64 %422
  store float %419, float* %423, align 4
  br label %424

424:                                              ; preds = %411, %398
  br label %425

425:                                              ; preds = %424, %394
  br label %426

426:                                              ; preds = %425
  %427 = load i32, i32* %11, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %11, align 4
  br label %346

429:                                              ; preds = %346
  br label %430

430:                                              ; preds = %429
  %431 = load i32, i32* %10, align 4
  %432 = add nsw i32 %431, -1
  store i32 %432, i32* %10, align 4
  br label %318

433:                                              ; preds = %318
  store i32 0, i32* %10, align 4
  br label %434

434:                                              ; preds = %492, %433
  %435 = load i32, i32* %10, align 4
  %436 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %437 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = icmp slt i32 %435, %438
  br i1 %439, label %440, label %495

440:                                              ; preds = %434
  %441 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %442 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %441, i32 0, i32 2
  %443 = load float**, float*** %442, align 8
  %444 = load i32, i32* %10, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds float*, float** %443, i64 %445
  %447 = load float*, float** %446, align 8
  store float* %447, float** %23, align 8
  %448 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %449 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %448, i32 0, i32 0
  %450 = load i32*, i32** %449, align 8
  %451 = load i32, i32* %10, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %450, i64 %452
  %454 = load i32, i32* %453, align 4
  store i32 %454, i32* %24, align 4
  %455 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @_floor_P, align 8
  %456 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %457 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %456, i32 0, i32 1
  %458 = load i64*, i64** %457, align 8
  %459 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %460 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %459, i32 0, i32 1
  %461 = load i64*, i64** %460, align 8
  %462 = load i32, i32* %24, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i64, i64* %461, i64 %463
  %465 = load i64, i64* %464, align 8
  %466 = getelementptr inbounds i64, i64* %458, i64 %465
  %467 = load i64, i64* %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %455, i64 %467
  %469 = load %struct.TYPE_14__*, %struct.TYPE_14__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %469, i32 0, i32 0
  %471 = load i32 (%struct.TYPE_18__*, i32, i8*, float*)*, i32 (%struct.TYPE_18__*, i32, i8*, float*)** %470, align 8
  %472 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %473 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %474 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %473, i32 0, i32 1
  %475 = load i32*, i32** %474, align 8
  %476 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %477 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %476, i32 0, i32 1
  %478 = load i64*, i64** %477, align 8
  %479 = load i32, i32* %24, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i64, i64* %478, i64 %480
  %482 = load i64, i64* %481, align 8
  %483 = getelementptr inbounds i32, i32* %475, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = load i8**, i8*** %16, align 8
  %486 = load i32, i32* %10, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i8*, i8** %485, i64 %487
  %489 = load i8*, i8** %488, align 8
  %490 = load float*, float** %23, align 8
  %491 = call i32 %471(%struct.TYPE_18__* %472, i32 %484, i8* %489, float* %490)
  br label %492

492:                                              ; preds = %440
  %493 = load i32, i32* %10, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %10, align 4
  br label %434

495:                                              ; preds = %434
  store i32 0, i32* %10, align 4
  br label %496

496:                                              ; preds = %523, %495
  %497 = load i32, i32* %10, align 4
  %498 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %499 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = icmp slt i32 %497, %500
  br i1 %501, label %502, label %526

502:                                              ; preds = %496
  %503 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %504 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %503, i32 0, i32 2
  %505 = load float**, float*** %504, align 8
  %506 = load i32, i32* %10, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds float*, float** %505, i64 %507
  %509 = load float*, float** %508, align 8
  store float* %509, float** %25, align 8
  %510 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %511 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %510, i32 0, i32 0
  %512 = load i32**, i32*** %511, align 8
  %513 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %514 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %513, i32 0, i32 1
  %515 = load i64, i64* %514, align 8
  %516 = getelementptr inbounds i32*, i32** %512, i64 %515
  %517 = load i32*, i32** %516, align 8
  %518 = getelementptr inbounds i32, i32* %517, i64 0
  %519 = load i32, i32* %518, align 4
  %520 = load float*, float** %25, align 8
  %521 = load float*, float** %25, align 8
  %522 = call i32 @mdct_backward(i32 %519, float* %520, float* %521)
  br label %523

523:                                              ; preds = %502
  %524 = load i32, i32* %10, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %10, align 4
  br label %496

526:                                              ; preds = %496
  ret i32 0
}

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local i32 @mdct_backward(i32, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
