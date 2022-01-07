; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisenc.c_vorbis_encode_residue_setup.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisenc.c_vorbis_encode_residue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32*, i32*, i32, i64*, %struct.TYPE_17__, %struct.TYPE_18__, %struct.TYPE_24__**, i32**, %struct.TYPE_22__** }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_24__ = type { double }
%struct.TYPE_22__ = type { double, i32, i32*, i64, i32*, i32 }
%struct.TYPE_21__ = type { double, i32, i32, %struct.TYPE_20__*, i64, %struct.TYPE_19__*, i64, i32 }
%struct.TYPE_20__ = type { i64** }
%struct.TYPE_19__ = type { i64** }
%struct.TYPE_23__ = type { i32, i32*, i32* }

@PACKETBLOBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, i32, i32, %struct.TYPE_21__*)* @vorbis_encode_residue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vorbis_encode_residue_setup(%struct.TYPE_25__* %0, i32 %1, i32 %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca double, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %8, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %9, align 8
  %27 = call %struct.TYPE_22__* @_ogg_malloc(i32 48)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 9
  %30 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %30, i64 %32
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %33, align 8
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %11, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memcpy(%struct.TYPE_22__* %34, i32 %37, i32 48)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %44, %4
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  store double %52, double* %54, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  store i32 0, i32* %12, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %213

69:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %111, %69
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %114

76:                                               ; preds = %70
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %107, %76
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 4
  br i1 %79, label %80, label %110

80:                                               ; preds = %77
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i64**, i64*** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64*, i64** %85, i64 %87
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %80
  %96 = load i32, i32* %13, align 4
  %97 = shl i32 1, %96
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %97
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %95, %80
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %77

110:                                              ; preds = %77
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %70

114:                                              ; preds = %70
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = call i8* @book_dup_or_new(%struct.TYPE_16__* %115, i64 %118)
  %120 = ptrtoint i8* %119 to i64
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 3
  store i64 %120, i64* %122, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i32*
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 8
  %129 = load i32**, i32*** %128, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i32*, i32** %129, i64 %132
  store i32* %126, i32** %133, align 8
  store i32 0, i32* %10, align 4
  br label %134

134:                                              ; preds = %209, %114
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %212

140:                                              ; preds = %134
  store i32 0, i32* %13, align 4
  br label %141

141:                                              ; preds = %205, %140
  %142 = load i32, i32* %13, align 4
  %143 = icmp slt i32 %142, 4
  br i1 %143, label %144, label %208

144:                                              ; preds = %141
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 5
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = load i64**, i64*** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64*, i64** %149, i64 %151
  %153 = load i64*, i64** %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %204

159:                                              ; preds = %144
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 5
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load i64**, i64*** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64*, i64** %165, i64 %167
  %169 = load i64*, i64** %168, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = call i8* @book_dup_or_new(%struct.TYPE_16__* %160, i64 %173)
  %175 = ptrtoint i8* %174 to i32
  store i32 %175, i32* %14, align 4
  %176 = load i32, i32* %14, align 4
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 4
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %12, align 4
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  store i32 %176, i32* %183, align 4
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 5
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 0
  %188 = load i64**, i64*** %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64*, i64** %188, i64 %190
  %192 = load i64*, i64** %191, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = inttoptr i64 %196 to i32*
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 8
  %200 = load i32**, i32*** %199, align 8
  %201 = load i32, i32* %14, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32*, i32** %200, i64 %202
  store i32* %197, i32** %203, align 8
  br label %204

204:                                              ; preds = %159, %144
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %13, align 4
  br label %141

208:                                              ; preds = %141
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %10, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %10, align 4
  br label %134

212:                                              ; preds = %134
  br label %357

213:                                              ; preds = %49
  store i32 0, i32* %10, align 4
  br label %214

214:                                              ; preds = %255, %213
  %215 = load i32, i32* %10, align 4
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = icmp slt i32 %215, %218
  br i1 %219, label %220, label %258

220:                                              ; preds = %214
  store i32 0, i32* %13, align 4
  br label %221

221:                                              ; preds = %251, %220
  %222 = load i32, i32* %13, align 4
  %223 = icmp slt i32 %222, 4
  br i1 %223, label %224, label %254

224:                                              ; preds = %221
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 3
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 0
  %229 = load i64**, i64*** %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64*, i64** %229, i64 %231
  %233 = load i64*, i64** %232, align 8
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i64, i64* %233, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %250

239:                                              ; preds = %224
  %240 = load i32, i32* %13, align 4
  %241 = shl i32 1, %240
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 2
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %241
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %239, %224
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %13, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %13, align 4
  br label %221

254:                                              ; preds = %221
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %10, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %10, align 4
  br label %214

258:                                              ; preds = %214
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = call i8* @book_dup_or_new(%struct.TYPE_16__* %259, i64 %262)
  %264 = ptrtoint i8* %263 to i64
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 3
  store i64 %264, i64* %266, align 8
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %267, i32 0, i32 4
  %269 = load i64, i64* %268, align 8
  %270 = inttoptr i64 %269 to i32*
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 8
  %273 = load i32**, i32*** %272, align 8
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 3
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds i32*, i32** %273, i64 %276
  store i32* %270, i32** %277, align 8
  store i32 0, i32* %10, align 4
  br label %278

278:                                              ; preds = %353, %258
  %279 = load i32, i32* %10, align 4
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = icmp slt i32 %279, %282
  br i1 %283, label %284, label %356

284:                                              ; preds = %278
  store i32 0, i32* %13, align 4
  br label %285

285:                                              ; preds = %349, %284
  %286 = load i32, i32* %13, align 4
  %287 = icmp slt i32 %286, 4
  br i1 %287, label %288, label %352

288:                                              ; preds = %285
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 3
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 0
  %293 = load i64**, i64*** %292, align 8
  %294 = load i32, i32* %10, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i64*, i64** %293, i64 %295
  %297 = load i64*, i64** %296, align 8
  %298 = load i32, i32* %13, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i64, i64* %297, i64 %299
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %348

303:                                              ; preds = %288
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %305, i32 0, i32 3
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i32 0, i32 0
  %309 = load i64**, i64*** %308, align 8
  %310 = load i32, i32* %10, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i64*, i64** %309, i64 %311
  %313 = load i64*, i64** %312, align 8
  %314 = load i32, i32* %13, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i64, i64* %313, i64 %315
  %317 = load i64, i64* %316, align 8
  %318 = call i8* @book_dup_or_new(%struct.TYPE_16__* %304, i64 %317)
  %319 = ptrtoint i8* %318 to i32
  store i32 %319, i32* %15, align 4
  %320 = load i32, i32* %15, align 4
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %322 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %321, i32 0, i32 4
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %12, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %12, align 4
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds i32, i32* %323, i64 %326
  store i32 %320, i32* %327, align 4
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 3
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 0
  %332 = load i64**, i64*** %331, align 8
  %333 = load i32, i32* %10, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i64*, i64** %332, i64 %334
  %336 = load i64*, i64** %335, align 8
  %337 = load i32, i32* %13, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i64, i64* %336, i64 %338
  %340 = load i64, i64* %339, align 8
  %341 = inttoptr i64 %340 to i32*
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 8
  %344 = load i32**, i32*** %343, align 8
  %345 = load i32, i32* %15, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32*, i32** %344, i64 %346
  store i32* %341, i32** %347, align 8
  br label %348

348:                                              ; preds = %303, %288
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %13, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %13, align 4
  br label %285

352:                                              ; preds = %285
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* %10, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %10, align 4
  br label %278

356:                                              ; preds = %278
  br label %357

357:                                              ; preds = %356, %212
  %358 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 6
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = sitofp i32 %361 to double
  %363 = fmul double %362, 1.000000e+03
  store double %363, double* %16, align 8
  %364 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %365 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %364, i32 0, i32 7
  %366 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %365, align 8
  %367 = load i32, i32* %7, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %366, i64 %368
  %370 = load %struct.TYPE_24__*, %struct.TYPE_24__** %369, align 8
  store %struct.TYPE_24__* %370, %struct.TYPE_24__** %17, align 8
  %371 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = sitofp i32 %373 to double
  %375 = fdiv double %374, 2.000000e+00
  store double %375, double* %18, align 8
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 0, i32 2
  %378 = load i32*, i32** %377, align 8
  %379 = load i32, i32* %7, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = ashr i32 %382, 1
  %384 = sext i32 %383 to i64
  store i64 %384, i64* %19, align 8
  %385 = load double, double* %16, align 8
  %386 = load double, double* %18, align 8
  %387 = fcmp ogt double %385, %386
  br i1 %387, label %388, label %390

388:                                              ; preds = %357
  %389 = load double, double* %18, align 8
  store double %389, double* %16, align 8
  br label %390

390:                                              ; preds = %388, %357
  %391 = load double, double* %16, align 8
  %392 = load double, double* %18, align 8
  %393 = fdiv double %391, %392
  %394 = load i64, i64* %19, align 8
  %395 = sitofp i64 %394 to double
  %396 = fmul double %393, %395
  %397 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %398 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %397, i32 0, i32 0
  store double %396, double* %398, align 8
  %399 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %400 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 4
  switch i32 %401, label %440 [
    i32 1, label %402
    i32 2, label %439
  ]

402:                                              ; preds = %390
  %403 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %404 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %403, i32 0, i32 6
  %405 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %404, i32 0, i32 1
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %420

408:                                              ; preds = %402
  %409 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %410 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %409, i32 0, i32 5
  %411 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %410, i32 0, i32 0
  %412 = load i32*, i32** %411, align 8
  %413 = load i32, i32* @PACKETBLOBS, align 4
  %414 = sub nsw i32 %413, 1
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %412, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = sitofp i32 %417 to double
  %419 = fmul double %418, 1.000000e+03
  store double %419, double* %16, align 8
  br label %432

420:                                              ; preds = %402
  %421 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %422 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %421, i32 0, i32 5
  %423 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %422, i32 0, i32 0
  %424 = load i32*, i32** %423, align 8
  %425 = load i32, i32* @PACKETBLOBS, align 4
  %426 = sdiv i32 %425, 2
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %424, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = sitofp i32 %429 to double
  %431 = fmul double %430, 1.000000e+03
  store double %431, double* %16, align 8
  br label %432

432:                                              ; preds = %420, %408
  %433 = load double, double* %16, align 8
  %434 = load double, double* %18, align 8
  %435 = fcmp ogt double %433, %434
  br i1 %435, label %436, label %438

436:                                              ; preds = %432
  %437 = load double, double* %18, align 8
  store double %437, double* %16, align 8
  br label %438

438:                                              ; preds = %436, %432
  br label %441

439:                                              ; preds = %390
  store double 2.500000e+02, double* %16, align 8
  br label %441

440:                                              ; preds = %390
  br label %441

441:                                              ; preds = %440, %439, %438
  %442 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %443 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %442, i32 0, i32 1
  %444 = load i32*, i32** %443, align 8
  %445 = load i32, i32* %6, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %444, i64 %446
  %448 = load i32, i32* %447, align 4
  %449 = icmp eq i32 %448, 2
  br i1 %449, label %450, label %576

450:                                              ; preds = %441
  store i32 0, i32* %22, align 4
  store i32 0, i32* %10, align 4
  br label %451

451:                                              ; preds = %522, %450
  %452 = load i32, i32* %10, align 4
  %453 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %454 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %453, i32 0, i32 3
  %455 = load i32, i32* %454, align 8
  %456 = icmp slt i32 %452, %455
  br i1 %456, label %457, label %460

457:                                              ; preds = %451
  %458 = load i32, i32* %22, align 4
  %459 = icmp eq i32 %458, 0
  br label %460

460:                                              ; preds = %457, %451
  %461 = phi i1 [ false, %451 ], [ %459, %457 ]
  br i1 %461, label %462, label %525

462:                                              ; preds = %460
  %463 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %464 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %463, i32 0, i32 4
  %465 = load i64*, i64** %464, align 8
  %466 = load i32, i32* %10, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i64, i64* %465, i64 %467
  %469 = load i64, i64* %468, align 8
  %470 = inttoptr i64 %469 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %470, %struct.TYPE_23__** %23, align 8
  store i32 0, i32* %20, align 4
  br label %471

471:                                              ; preds = %518, %462
  %472 = load i32, i32* %20, align 4
  %473 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %474 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = icmp slt i32 %472, %475
  br i1 %476, label %477, label %480

477:                                              ; preds = %471
  %478 = load i32, i32* %22, align 4
  %479 = icmp eq i32 %478, 0
  br label %480

480:                                              ; preds = %477, %471
  %481 = phi i1 [ false, %471 ], [ %479, %477 ]
  br i1 %481, label %482, label %521

482:                                              ; preds = %480
  %483 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %484 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %483, i32 0, i32 1
  %485 = load i32*, i32** %484, align 8
  %486 = load i32, i32* %20, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32, i32* %485, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = load i32, i32* %6, align 4
  %491 = icmp eq i32 %489, %490
  br i1 %491, label %492, label %517

492:                                              ; preds = %482
  store i32 0, i32* %21, align 4
  br label %493

493:                                              ; preds = %513, %492
  %494 = load i32, i32* %21, align 4
  %495 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %496 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %495, i32 0, i32 1
  %497 = load i32, i32* %496, align 4
  %498 = icmp slt i32 %494, %497
  br i1 %498, label %499, label %516

499:                                              ; preds = %493
  %500 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %501 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %500, i32 0, i32 2
  %502 = load i32*, i32** %501, align 8
  %503 = load i32, i32* %21, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32, i32* %502, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = load i32, i32* %20, align 4
  %508 = icmp eq i32 %506, %507
  br i1 %508, label %509, label %512

509:                                              ; preds = %499
  %510 = load i32, i32* %22, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %22, align 4
  br label %512

512:                                              ; preds = %509, %499
  br label %513

513:                                              ; preds = %512
  %514 = load i32, i32* %21, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %21, align 4
  br label %493

516:                                              ; preds = %493
  br label %517

517:                                              ; preds = %516, %482
  br label %518

518:                                              ; preds = %517
  %519 = load i32, i32* %20, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %20, align 4
  br label %471

521:                                              ; preds = %480
  br label %522

522:                                              ; preds = %521
  %523 = load i32, i32* %10, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %10, align 4
  br label %451

525:                                              ; preds = %460
  %526 = load double, double* %16, align 8
  %527 = load double, double* %18, align 8
  %528 = fdiv double %526, %527
  %529 = load i64, i64* %19, align 8
  %530 = sitofp i64 %529 to double
  %531 = fmul double %528, %530
  %532 = load i32, i32* %22, align 4
  %533 = sitofp i32 %532 to double
  %534 = fmul double %531, %533
  %535 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %536 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %535, i32 0, i32 0
  %537 = load double, double* %536, align 8
  %538 = fdiv double %534, %537
  %539 = fadd double %538, 9.000000e-01
  %540 = fptosi double %539 to i32
  %541 = sitofp i32 %540 to double
  %542 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %543 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %542, i32 0, i32 0
  %544 = load double, double* %543, align 8
  %545 = fmul double %541, %544
  %546 = fptosi double %545 to i32
  %547 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %548 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %547, i32 0, i32 5
  store i32 %546, i32* %548, align 8
  %549 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %550 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %549, i32 0, i32 5
  %551 = load i32, i32* %550, align 8
  %552 = sext i32 %551 to i64
  %553 = load i64, i64* %19, align 8
  %554 = load i32, i32* %22, align 4
  %555 = sext i32 %554 to i64
  %556 = mul nsw i64 %553, %555
  %557 = icmp sgt i64 %552, %556
  br i1 %557, label %558, label %575

558:                                              ; preds = %525
  %559 = load i64, i64* %19, align 8
  %560 = load i32, i32* %22, align 4
  %561 = sext i32 %560 to i64
  %562 = mul nsw i64 %559, %561
  %563 = sitofp i64 %562 to double
  %564 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %565 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %564, i32 0, i32 0
  %566 = load double, double* %565, align 8
  %567 = fdiv double %563, %566
  %568 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %569 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %568, i32 0, i32 0
  %570 = load double, double* %569, align 8
  %571 = fmul double %567, %570
  %572 = fptosi double %571 to i32
  %573 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %574 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %573, i32 0, i32 5
  store i32 %572, i32* %574, align 8
  br label %575

575:                                              ; preds = %558, %525
  br label %618

576:                                              ; preds = %441
  %577 = load double, double* %16, align 8
  %578 = load double, double* %18, align 8
  %579 = fdiv double %577, %578
  %580 = load i64, i64* %19, align 8
  %581 = sitofp i64 %580 to double
  %582 = fmul double %579, %581
  %583 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %584 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %583, i32 0, i32 0
  %585 = load double, double* %584, align 8
  %586 = fdiv double %582, %585
  %587 = fadd double %586, 9.000000e-01
  %588 = fptosi double %587 to i32
  %589 = sitofp i32 %588 to double
  %590 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %591 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %590, i32 0, i32 0
  %592 = load double, double* %591, align 8
  %593 = fmul double %589, %592
  %594 = fptosi double %593 to i32
  %595 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %596 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %595, i32 0, i32 5
  store i32 %594, i32* %596, align 8
  %597 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %598 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %597, i32 0, i32 5
  %599 = load i32, i32* %598, align 8
  %600 = sext i32 %599 to i64
  %601 = load i64, i64* %19, align 8
  %602 = icmp sgt i64 %600, %601
  br i1 %602, label %603, label %617

603:                                              ; preds = %576
  %604 = load i64, i64* %19, align 8
  %605 = sitofp i64 %604 to double
  %606 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %607 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %606, i32 0, i32 0
  %608 = load double, double* %607, align 8
  %609 = fdiv double %605, %608
  %610 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %611 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %610, i32 0, i32 0
  %612 = load double, double* %611, align 8
  %613 = fmul double %609, %612
  %614 = fptosi double %613 to i32
  %615 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %616 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %615, i32 0, i32 5
  store i32 %614, i32* %616, align 8
  br label %617

617:                                              ; preds = %603, %576
  br label %618

618:                                              ; preds = %617, %575
  %619 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %620 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %619, i32 0, i32 5
  %621 = load i32, i32* %620, align 8
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %623, label %630

623:                                              ; preds = %618
  %624 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %625 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %624, i32 0, i32 0
  %626 = load double, double* %625, align 8
  %627 = fptosi double %626 to i32
  %628 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %629 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %628, i32 0, i32 5
  store i32 %627, i32* %629, align 8
  br label %630

630:                                              ; preds = %623, %618
  ret void
}

declare dso_local %struct.TYPE_22__* @_ogg_malloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i8* @book_dup_or_new(%struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
