; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_codebook.c_vorbis_staticbook_unpack.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_codebook.c_vorbis_staticbook_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64*, i32, i32, i32, i32, i32, i64* }
%struct.TYPE_11__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @vorbis_staticbook_unpack(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %13 = call %struct.TYPE_10__* @_ogg_calloc(i32 1, i32 48)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %6, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = call i32 @oggpack_read(%struct.TYPE_11__* %14, i32 24)
  %16 = icmp ne i32 %15, 5653314
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %359

18:                                               ; preds = %1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = call i32 @oggpack_read(%struct.TYPE_11__* %19, i32 16)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = call i32 @oggpack_read(%struct.TYPE_11__* %23, i32 24)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %359

32:                                               ; preds = %18
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = call i32 @_ilog(i64 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = call i32 @_ilog(i64 %41)
  %43 = add nsw i32 %37, %42
  %44 = icmp sgt i32 %43, 24
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %359

46:                                               ; preds = %32
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = call i32 @oggpack_read(%struct.TYPE_11__* %47, i32 1)
  switch i32 %48, label %242 [
    i32 0, label %49
    i32 1, label %150
  ]

49:                                               ; preds = %46
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = call i32 @oggpack_read(%struct.TYPE_11__* %50, i32 1)
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %7, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 1, i32 5
  %60 = mul nsw i32 %55, %59
  %61 = add nsw i32 %60, 7
  %62 = ashr i32 %61, 3
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = call i32 @oggpack_bytes(%struct.TYPE_11__* %66)
  %68 = sub nsw i32 %65, %67
  %69 = icmp sgt i32 %62, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %49
  br label %359

71:                                               ; preds = %49
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 8, %75
  %77 = trunc i64 %76 to i32
  %78 = call i64 @_ogg_malloc(i32 %77)
  %79 = inttoptr i64 %78 to i64*
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  store i64* %79, i64** %81, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %122

84:                                               ; preds = %71
  store i64 0, i64* %4, align 8
  br label %85

85:                                               ; preds = %118, %84
  %86 = load i64, i64* %4, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp slt i64 %86, %90
  br i1 %91, label %92, label %121

92:                                               ; preds = %85
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = call i32 @oggpack_read(%struct.TYPE_11__* %93, i32 1)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %98 = call i32 @oggpack_read(%struct.TYPE_11__* %97, i32 5)
  %99 = sext i32 %98 to i64
  store i64 %99, i64* %8, align 8
  %100 = load i64, i64* %8, align 8
  %101 = icmp eq i64 %100, -1
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %359

103:                                              ; preds = %96
  %104 = load i64, i64* %8, align 8
  %105 = add nsw i64 %104, 1
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %4, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  store i64 %105, i64* %110, align 8
  br label %117

111:                                              ; preds = %92
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* %4, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  store i64 0, i64* %116, align 8
  br label %117

117:                                              ; preds = %111, %103
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %4, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %4, align 8
  br label %85

121:                                              ; preds = %85
  br label %149

122:                                              ; preds = %71
  store i64 0, i64* %4, align 8
  br label %123

123:                                              ; preds = %145, %122
  %124 = load i64, i64* %4, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = icmp slt i64 %124, %128
  br i1 %129, label %130, label %148

130:                                              ; preds = %123
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %132 = call i32 @oggpack_read(%struct.TYPE_11__* %131, i32 5)
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %9, align 8
  %134 = load i64, i64* %9, align 8
  %135 = icmp eq i64 %134, -1
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %359

137:                                              ; preds = %130
  %138 = load i64, i64* %9, align 8
  %139 = add nsw i64 %138, 1
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* %4, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  store i64 %139, i64* %144, align 8
  br label %145

145:                                              ; preds = %137
  %146 = load i64, i64* %4, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %4, align 8
  br label %123

148:                                              ; preds = %123
  br label %149

149:                                              ; preds = %148, %121
  br label %243

150:                                              ; preds = %46
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %152 = call i32 @oggpack_read(%struct.TYPE_11__* %151, i32 5)
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  store i64 %154, i64* %10, align 8
  %155 = load i64, i64* %10, align 8
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %359

158:                                              ; preds = %150
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = mul i64 8, %162
  %164 = trunc i64 %163 to i32
  %165 = call i64 @_ogg_malloc(i32 %164)
  %166 = inttoptr i64 %165 to i64*
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 2
  store i64* %166, i64** %168, align 8
  store i64 0, i64* %4, align 8
  br label %169

169:                                              ; preds = %238, %158
  %170 = load i64, i64* %4, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = icmp slt i64 %170, %174
  br i1 %175, label %176, label %241

176:                                              ; preds = %169
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* %4, align 8
  %183 = sub nsw i64 %181, %182
  %184 = call i32 @_ilog(i64 %183)
  %185 = call i32 @oggpack_read(%struct.TYPE_11__* %177, i32 %184)
  %186 = sext i32 %185 to i64
  store i64 %186, i64* %11, align 8
  %187 = load i64, i64* %11, align 8
  %188 = icmp eq i64 %187, -1
  br i1 %188, label %189, label %190

189:                                              ; preds = %176
  br label %359

190:                                              ; preds = %176
  %191 = load i64, i64* %10, align 8
  %192 = icmp sgt i64 %191, 32
  br i1 %192, label %220, label %193

193:                                              ; preds = %190
  %194 = load i64, i64* %11, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* %4, align 8
  %200 = sub nsw i64 %198, %199
  %201 = icmp sgt i64 %194, %200
  br i1 %201, label %220, label %202

202:                                              ; preds = %193
  %203 = load i64, i64* %11, align 8
  %204 = icmp sgt i64 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %202
  %206 = load i64, i64* %11, align 8
  %207 = sub nsw i64 %206, 1
  %208 = load i64, i64* %10, align 8
  %209 = ashr i64 %208, 1
  %210 = ashr i64 %207, %209
  %211 = load i64, i64* %10, align 8
  %212 = add nsw i64 %211, 1
  %213 = ashr i64 %212, 1
  %214 = ashr i64 %210, %213
  %215 = icmp ne i64 %214, 0
  br label %216

216:                                              ; preds = %205, %202
  %217 = phi i1 [ false, %202 ], [ %215, %205 ]
  %218 = zext i1 %217 to i32
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %216, %193, %190
  br label %358

221:                                              ; preds = %216
  store i64 0, i64* %5, align 8
  br label %222

222:                                              ; preds = %233, %221
  %223 = load i64, i64* %5, align 8
  %224 = load i64, i64* %11, align 8
  %225 = icmp slt i64 %223, %224
  br i1 %225, label %226, label %238

226:                                              ; preds = %222
  %227 = load i64, i64* %10, align 8
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 2
  %230 = load i64*, i64** %229, align 8
  %231 = load i64, i64* %4, align 8
  %232 = getelementptr inbounds i64, i64* %230, i64 %231
  store i64 %227, i64* %232, align 8
  br label %233

233:                                              ; preds = %226
  %234 = load i64, i64* %5, align 8
  %235 = add nsw i64 %234, 1
  store i64 %235, i64* %5, align 8
  %236 = load i64, i64* %4, align 8
  %237 = add nsw i64 %236, 1
  store i64 %237, i64* %4, align 8
  br label %222

238:                                              ; preds = %222
  %239 = load i64, i64* %10, align 8
  %240 = add nsw i64 %239, 1
  store i64 %240, i64* %10, align 8
  br label %169

241:                                              ; preds = %169
  br label %243

242:                                              ; preds = %46
  br label %359

243:                                              ; preds = %241, %149
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %245 = call i32 @oggpack_read(%struct.TYPE_11__* %244, i32 4)
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 8
  switch i32 %245, label %355 [
    i32 0, label %248
    i32 1, label %249
    i32 2, label %249
  ]

248:                                              ; preds = %243
  br label %356

249:                                              ; preds = %243, %243
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %251 = call i32 @oggpack_read(%struct.TYPE_11__* %250, i32 32)
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 4
  store i32 %251, i32* %253, align 4
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %255 = call i32 @oggpack_read(%struct.TYPE_11__* %254, i32 32)
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 5
  store i32 %255, i32* %257, align 8
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %259 = call i32 @oggpack_read(%struct.TYPE_11__* %258, i32 4)
  %260 = add nsw i32 %259, 1
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 6
  store i32 %260, i32* %262, align 4
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %264 = call i32 @oggpack_read(%struct.TYPE_11__* %263, i32 1)
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 7
  store i32 %264, i32* %266, align 8
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 7
  %269 = load i32, i32* %268, align 8
  %270 = icmp eq i32 %269, -1
  br i1 %270, label %271, label %272

271:                                              ; preds = %249
  br label %359

272:                                              ; preds = %249
  store i32 0, i32* %12, align 4
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  switch i32 %275, label %295 [
    i32 1, label %276
    i32 2, label %287
  ]

276:                                              ; preds = %272
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %276
  br label %285

282:                                              ; preds = %276
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %284 = call i32 @_book_maptype1_quantvals(%struct.TYPE_10__* %283)
  br label %285

285:                                              ; preds = %282, %281
  %286 = phi i32 [ 0, %281 ], [ %284, %282 ]
  store i32 %286, i32* %12, align 4
  br label %295

287:                                              ; preds = %272
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = mul nsw i32 %290, %293
  store i32 %294, i32* %12, align 4
  br label %295

295:                                              ; preds = %272, %287, %285
  %296 = load i32, i32* %12, align 4
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 4
  %300 = mul nsw i32 %296, %299
  %301 = add nsw i32 %300, 7
  %302 = ashr i32 %301, 3
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %307 = call i32 @oggpack_bytes(%struct.TYPE_11__* %306)
  %308 = sub nsw i32 %305, %307
  %309 = icmp sgt i32 %302, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %295
  br label %359

311:                                              ; preds = %295
  %312 = load i32, i32* %12, align 4
  %313 = sext i32 %312 to i64
  %314 = mul i64 8, %313
  %315 = trunc i64 %314 to i32
  %316 = call i64 @_ogg_malloc(i32 %315)
  %317 = inttoptr i64 %316 to i64*
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 8
  store i64* %317, i64** %319, align 8
  store i64 0, i64* %4, align 8
  br label %320

320:                                              ; preds = %337, %311
  %321 = load i64, i64* %4, align 8
  %322 = load i32, i32* %12, align 4
  %323 = sext i32 %322 to i64
  %324 = icmp slt i64 %321, %323
  br i1 %324, label %325, label %340

325:                                              ; preds = %320
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 6
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @oggpack_read(%struct.TYPE_11__* %326, i32 %329)
  %331 = sext i32 %330 to i64
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 8
  %334 = load i64*, i64** %333, align 8
  %335 = load i64, i64* %4, align 8
  %336 = getelementptr inbounds i64, i64* %334, i64 %335
  store i64 %331, i64* %336, align 8
  br label %337

337:                                              ; preds = %325
  %338 = load i64, i64* %4, align 8
  %339 = add nsw i64 %338, 1
  store i64 %339, i64* %4, align 8
  br label %320

340:                                              ; preds = %320
  %341 = load i32, i32* %12, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %354

343:                                              ; preds = %340
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 8
  %346 = load i64*, i64** %345, align 8
  %347 = load i32, i32* %12, align 4
  %348 = sub nsw i32 %347, 1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i64, i64* %346, i64 %349
  %351 = load i64, i64* %350, align 8
  %352 = icmp eq i64 %351, -1
  br i1 %352, label %353, label %354

353:                                              ; preds = %343
  br label %359

354:                                              ; preds = %343, %340
  br label %356

355:                                              ; preds = %243
  br label %358

356:                                              ; preds = %354, %248
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %357, %struct.TYPE_10__** %2, align 8
  br label %362

358:                                              ; preds = %355, %220
  br label %359

359:                                              ; preds = %358, %353, %310, %271, %242, %189, %157, %136, %102, %70, %45, %31, %17
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %361 = call i32 @vorbis_staticbook_destroy(%struct.TYPE_10__* %360)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %362

362:                                              ; preds = %359, %356
  %363 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %363
}

declare dso_local %struct.TYPE_10__* @_ogg_calloc(i32, i32) #1

declare dso_local i32 @oggpack_read(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @_ilog(i64) #1

declare dso_local i32 @oggpack_bytes(%struct.TYPE_11__*) #1

declare dso_local i64 @_ogg_malloc(i32) #1

declare dso_local i32 @_book_maptype1_quantvals(%struct.TYPE_10__*) #1

declare dso_local i32 @vorbis_staticbook_destroy(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
