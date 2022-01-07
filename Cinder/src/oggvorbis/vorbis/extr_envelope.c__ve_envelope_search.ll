; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_envelope.c__ve_envelope_search.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_envelope.c__ve_envelope_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, float**, i64, i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32*, i32, i64, i64, i64, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { double* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }

@VE_WIN = common dso_local global i32 0, align 4
@VE_POST = common dso_local global i32 0, align 4
@VE_MAXSTRETCH = common dso_local global i32 0, align 4
@VE_BANDS = common dso_local global i64 0, align 8
@seq = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@totalshift = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_ve_envelope_search(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %4, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %5, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  store i32* %23, i32** %6, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_11__*
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %7, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %32, %35
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %39, %42
  %44 = load i32, i32* @VE_WIN, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %1
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @VE_WIN, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* @VE_POST, align 4
  %54 = add nsw i32 %52, %53
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %49
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @VE_WIN, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* @VE_POST, align 4
  %64 = add nsw i32 %62, %63
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call i32* @_ogg_realloc(i32* %69, i32 %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 3
  store i32* %76, i32** %78, align 8
  br label %79

79:                                               ; preds = %59, %49
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %195, %79
  %83 = load i64, i64* %9, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %83, %85
  br i1 %86, label %87, label %198

87:                                               ; preds = %82
  store i32 0, i32* %12, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @VE_MAXSTRETCH, align 4
  %96 = mul nsw i32 %95, 2
  %97 = icmp sgt i32 %94, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %87
  %99 = load i32, i32* @VE_MAXSTRETCH, align 4
  %100 = mul nsw i32 %99, 2
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %98, %87
  store i64 0, i64* %8, align 8
  br label %104

104:                                              ; preds = %140, %103
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %110, label %143

110:                                              ; preds = %104
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load float**, float*** %112, align 8
  %114 = load i64, i64* %8, align 8
  %115 = getelementptr inbounds float*, float** %113, i64 %114
  %116 = load float*, float** %115, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %9, align 8
  %122 = mul nsw i64 %120, %121
  %123 = getelementptr inbounds float, float* %116, i64 %122
  store float* %123, float** %13, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = load float*, float** %13, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* @VE_BANDS, align 8
  %135 = mul nsw i64 %133, %134
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i64 %135
  %137 = call i32 @_ve_amp(%struct.TYPE_12__* %124, i32* %125, float* %126, i32 %129, %struct.TYPE_14__* %136)
  %138 = load i32, i32* %12, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %12, align 4
  br label %140

140:                                              ; preds = %110
  %141 = load i64, i64* %8, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %8, align 8
  br label %104

143:                                              ; preds = %104
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* %9, align 8
  %148 = load i32, i32* @VE_POST, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %147, %149
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  store i32 0, i32* %151, align 4
  %152 = load i32, i32* %12, align 4
  %153 = and i32 %152, 1
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %143
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* %9, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32 1, i32* %160, align 4
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* %9, align 8
  %165 = add nsw i64 %164, 1
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 1, i32* %166, align 4
  br label %167

167:                                              ; preds = %155, %143
  %168 = load i32, i32* %12, align 4
  %169 = and i32 %168, 2
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %187

171:                                              ; preds = %167
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* %9, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32 1, i32* %176, align 4
  %177 = load i64, i64* %9, align 8
  %178 = icmp sgt i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %171
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = load i64, i64* %9, align 8
  %184 = sub nsw i64 %183, 1
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 1, i32* %185, align 4
  br label %186

186:                                              ; preds = %179, %171
  br label %187

187:                                              ; preds = %186, %167
  %188 = load i32, i32* %12, align 4
  %189 = and i32 %188, 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 4
  store i32 -1, i32* %193, align 8
  br label %194

194:                                              ; preds = %191, %187
  br label %195

195:                                              ; preds = %194
  %196 = load i64, i64* %9, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %9, align 8
  br label %82

198:                                              ; preds = %82
  %199 = load i32, i32* %11, align 4
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 %199, %202
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %14, align 8
  %209 = load i64, i64* %14, align 8
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = sdiv i32 %217, 4
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %209, %219
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 1
  %225 = load i32, i32* %224, align 4
  %226 = sdiv i32 %225, 2
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %220, %227
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = sdiv i32 %233, 4
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %228, %235
  store i64 %236, i64* %15, align 8
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 6
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %9, align 8
  br label %240

240:                                              ; preds = %286, %198
  %241 = load i64, i64* %9, align 8
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = sub nsw i32 %244, %247
  %249 = sext i32 %248 to i64
  %250 = icmp slt i64 %241, %249
  br i1 %250, label %251, label %293

251:                                              ; preds = %240
  %252 = load i64, i64* %9, align 8
  %253 = load i64, i64* %15, align 8
  %254 = icmp sge i64 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %251
  store i64 1, i64* %2, align 8
  br label %294

256:                                              ; preds = %251
  %257 = load i64, i64* %9, align 8
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 6
  store i64 %257, i64* %259, align 8
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 3
  %262 = load i32*, i32** %261, align 8
  %263 = load i64, i64* %9, align 8
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  %268 = sdiv i64 %263, %267
  %269 = getelementptr inbounds i32, i32* %262, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %286

272:                                              ; preds = %256
  %273 = load i64, i64* %9, align 8
  %274 = load i64, i64* %14, align 8
  %275 = icmp sgt i64 %273, %274
  br i1 %275, label %276, label %285

276:                                              ; preds = %272
  %277 = load i64, i64* %9, align 8
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 7
  store i64 %277, i64* %279, align 8
  %280 = load i64, i64* %9, align 8
  %281 = load i64, i64* %15, align 8
  %282 = icmp sge i64 %280, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %276
  store i64 1, i64* %2, align 8
  br label %294

284:                                              ; preds = %276
  store i64 0, i64* %2, align 8
  br label %294

285:                                              ; preds = %272
  br label %286

286:                                              ; preds = %285, %256
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  %291 = load i64, i64* %9, align 8
  %292 = add nsw i64 %291, %290
  store i64 %292, i64* %9, align 8
  br label %240

293:                                              ; preds = %240
  store i64 -1, i64* %2, align 8
  br label %294

294:                                              ; preds = %293, %284, %283, %255
  %295 = load i64, i64* %2, align 8
  ret i64 %295
}

declare dso_local i32* @_ogg_realloc(i32*, i32) #1

declare dso_local i32 @_ve_amp(%struct.TYPE_12__*, i32*, float*, i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
