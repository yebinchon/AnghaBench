; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_floor1.c_floor1_unpack.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_floor1.c_floor1_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32*, i64*, i32**, i32*, i64*, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@VIF_POSIT = common dso_local global i32 0, align 4
@icomp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_9__*, i32*)* @floor1_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @floor1_unpack(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %21 = call i64 @_ogg_calloc(i32 1, i32 64)
  %22 = inttoptr i64 %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %12, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i8* @oggpack_read(i32* %23, i32 5)
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %72, %2
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %28
  %35 = load i32*, i32** %5, align 8
  %36 = call i8* @oggpack_read(i32* %35, i32 4)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  br label %359

53:                                               ; preds = %34
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %54, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %53
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %63, %53
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %28

75:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %213, %75
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %216

81:                                               ; preds = %76
  %82 = load i32*, i32** %5, align 8
  %83 = call i8* @oggpack_read(i32* %82, i32 3)
  %84 = getelementptr i8, i8* %83, i64 1
  %85 = ptrtoint i8* %84 to i64
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 6
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64 %85, i64* %91, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = call i8* @oggpack_read(i32* %92, i32 2)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %81
  br label %359

110:                                              ; preds = %81
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %110
  %120 = load i32*, i32** %5, align 8
  %121 = call i8* @oggpack_read(i32* %120, i32 8)
  %122 = ptrtoint i8* %121 to i64
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 3
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  store i64 %122, i64* %128, align 8
  br label %129

129:                                              ; preds = %119, %110
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %150, label %138

138:                                              ; preds = %129
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 3
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp sge i64 %145, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %138, %129
  br label %359

151:                                              ; preds = %138
  store i32 0, i32* %8, align 4
  br label %152

152:                                              ; preds = %209, %151
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 1, %160
  %162 = icmp slt i32 %153, %161
  br i1 %162, label %163, label %212

163:                                              ; preds = %152
  %164 = load i32*, i32** %5, align 8
  %165 = call i8* @oggpack_read(i32* %164, i32 8)
  %166 = getelementptr i8, i8* %165, i64 -1
  %167 = ptrtoint i8* %166 to i32
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 4
  %170 = load i32**, i32*** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32*, i32** %170, i64 %172
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %167, i32* %177, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 4
  %180 = load i32**, i32*** %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %180, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %188, -1
  br i1 %189, label %207, label %190

190:                                              ; preds = %163
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 4
  %193 = load i32**, i32*** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32*, i32** %193, i64 %195
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp sge i64 %202, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %190, %163
  br label %359

208:                                              ; preds = %190
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  br label %152

212:                                              ; preds = %152
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %7, align 4
  br label %76

216:                                              ; preds = %76
  %217 = load i32*, i32** %5, align 8
  %218 = call i8* @oggpack_read(i32* %217, i32 2)
  %219 = getelementptr i8, i8* %218, i64 1
  %220 = ptrtoint i8* %219 to i64
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 7
  store i64 %220, i64* %222, align 8
  %223 = load i32*, i32** %5, align 8
  %224 = call i8* @oggpack_read(i32* %223, i32 4)
  %225 = ptrtoint i8* %224 to i32
  store i32 %225, i32* %11, align 4
  %226 = load i32, i32* %11, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %216
  br label %359

229:                                              ; preds = %216
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %230

230:                                              ; preds = %288, %229
  %231 = load i32, i32* %7, align 4
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp slt i32 %231, %234
  br i1 %235, label %236, label %291

236:                                              ; preds = %230
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 6
  %239 = load i64*, i64** %238, align 8
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %7, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64, i64* %239, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = add nsw i64 %251, %249
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %9, align 4
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* @VIF_POSIT, align 4
  %256 = icmp sgt i32 %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %236
  br label %359

258:                                              ; preds = %236
  br label %259

259:                                              ; preds = %284, %258
  %260 = load i32, i32* %8, align 4
  %261 = load i32, i32* %9, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %287

263:                                              ; preds = %259
  %264 = load i32*, i32** %5, align 8
  %265 = load i32, i32* %11, align 4
  %266 = call i8* @oggpack_read(i32* %264, i32 %265)
  %267 = ptrtoint i8* %266 to i32
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 5
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %8, align 4
  %272 = add nsw i32 %271, 2
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  store i32 %267, i32* %274, align 4
  store i32 %267, i32* %13, align 4
  %275 = load i32, i32* %13, align 4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %263
  %278 = load i32, i32* %13, align 4
  %279 = load i32, i32* %11, align 4
  %280 = shl i32 1, %279
  %281 = icmp sge i32 %278, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %277, %263
  br label %359

283:                                              ; preds = %277
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %8, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %8, align 4
  br label %259

287:                                              ; preds = %259
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %7, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %7, align 4
  br label %230

291:                                              ; preds = %230
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 5
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  store i32 0, i32* %295, align 4
  %296 = load i32, i32* %11, align 4
  %297 = shl i32 1, %296
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 5
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 1
  store i32 %297, i32* %301, align 4
  %302 = load i32, i32* @VIF_POSIT, align 4
  %303 = add nsw i32 %302, 2
  %304 = zext i32 %303 to i64
  %305 = call i8* @llvm.stacksave()
  store i8* %305, i8** %14, align 8
  %306 = alloca i32*, i64 %304, align 16
  store i64 %304, i64* %15, align 8
  store i32 0, i32* %7, align 4
  br label %307

307:                                              ; preds = %322, %291
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* %9, align 4
  %310 = add nsw i32 %309, 2
  %311 = icmp slt i32 %308, %310
  br i1 %311, label %312, label %325

312:                                              ; preds = %307
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 5
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %7, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %7, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32*, i32** %306, i64 %320
  store i32* %318, i32** %321, align 8
  br label %322

322:                                              ; preds = %312
  %323 = load i32, i32* %7, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %7, align 4
  br label %307

325:                                              ; preds = %307
  %326 = load i32, i32* %9, align 4
  %327 = add nsw i32 %326, 2
  %328 = load i32, i32* @icomp, align 4
  %329 = call i32 @qsort(i32** %306, i32 %327, i32 8, i32 %328)
  store i32 1, i32* %7, align 4
  br label %330

330:                                              ; preds = %350, %325
  %331 = load i32, i32* %7, align 4
  %332 = load i32, i32* %9, align 4
  %333 = add nsw i32 %332, 2
  %334 = icmp slt i32 %331, %333
  br i1 %334, label %335, label %353

335:                                              ; preds = %330
  %336 = load i32, i32* %7, align 4
  %337 = sub nsw i32 %336, 1
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32*, i32** %306, i64 %338
  %340 = load i32*, i32** %339, align 8
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %7, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32*, i32** %306, i64 %343
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %345, align 4
  %347 = icmp eq i32 %341, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %335
  store i32 5, i32* %16, align 4
  br label %354

349:                                              ; preds = %335
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %7, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %7, align 4
  br label %330

353:                                              ; preds = %330
  store i32 0, i32* %16, align 4
  br label %354

354:                                              ; preds = %348, %353
  %355 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %355)
  %356 = load i32, i32* %16, align 4
  switch i32 %356, label %364 [
    i32 0, label %357
    i32 5, label %359
  ]

357:                                              ; preds = %354
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %358, %struct.TYPE_8__** %3, align 8
  br label %362

359:                                              ; preds = %354, %282, %257, %228, %207, %150, %109, %52
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %361 = call i32 @floor1_free_info(%struct.TYPE_8__* %360)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %362

362:                                              ; preds = %359, %357
  %363 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %363

364:                                              ; preds = %354
  unreachable
}

declare dso_local i64 @_ogg_calloc(i32, i32) #1

declare dso_local i8* @oggpack_read(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @qsort(i32**, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @floor1_free_info(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
