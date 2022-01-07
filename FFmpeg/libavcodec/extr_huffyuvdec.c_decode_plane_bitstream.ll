; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_huffyuvdec.c_decode_plane_bitstream.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_huffyuvdec.c_decode_plane_bitstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64**, %struct.TYPE_4__*, i64** }
%struct.TYPE_4__ = type { i32 }

@re = common dso_local global i32 0, align 4
@OP8bits = common dso_local global i32 0, align 4
@VLC_BITS = common dso_local global i32 0, align 4
@OP14bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @decode_plane_bitstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_plane_bitstream(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sdiv i32 %18, 2
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sle i32 %22, 8
  br i1 %23, label %24, label %159

24:                                               ; preds = %3
  %25 = load i32, i32* @re, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = call i32 @OPEN_READER(i32 %25, i32* %27)
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = call i32 @get_bits_left(i32* %31)
  %33 = sdiv i32 %32, 64
  %34 = icmp sge i32 %29, %33
  br i1 %34, label %35, label %77

35:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %73, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* @re, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = call i64 @BITS_LEFT(i32 %41, i32* %43)
  %45 = icmp sgt i64 %44, 0
  br label %46

46:                                               ; preds = %40, %36
  %47 = phi i1 [ false, %36 ], [ %45, %40 ]
  br i1 %47, label %48, label %76

48:                                               ; preds = %46
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 4
  %51 = load i64**, i64*** %50, align 8
  %52 = getelementptr inbounds i64*, i64** %51, i64 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 2, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  %61 = load i64**, i64*** %60, align 8
  %62 = getelementptr inbounds i64*, i64** %61, i64 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 2, %64
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %63, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @OP8bits, align 4
  %72 = call i32 @READ_2PIX_PLANE(i64 %58, i64 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %48
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %36

76:                                               ; preds = %46
  br label %111

77:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %107, %77
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %78
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 4
  %85 = load i64**, i64*** %84, align 8
  %86 = getelementptr inbounds i64*, i64** %85, i64 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = mul nsw i32 2, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  %95 = load i64**, i64*** %94, align 8
  %96 = getelementptr inbounds i64*, i64** %95, i64 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = mul nsw i32 2, %98
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %97, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @OP8bits, align 4
  %106 = call i32 @READ_2PIX_PLANE(i64 %92, i64 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %82
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %78

110:                                              ; preds = %78
  br label %111

111:                                              ; preds = %110, %76
  %112 = load i32, i32* %5, align 4
  %113 = and i32 %112, 1
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %154

115:                                              ; preds = %111
  %116 = load i32, i32* @re, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = call i64 @BITS_LEFT(i32 %116, i32* %118)
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %154

121:                                              ; preds = %115
  %122 = load i32, i32* @re, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = call i32 @UPDATE_CACHE(i32 %122, i32* %124)
  %126 = load i32, i32* @re, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32, i32* @VLC_BITS, align 4
  %130 = call i32 @SHOW_UBITS(i32 %126, i32* %128, i32 %129)
  store i32 %130, i32* %9, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 4
  %133 = load i64**, i64*** %132, align 8
  %134 = getelementptr inbounds i64*, i64** %133, i64 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %135, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load i32, i32* @re, align 4
  %152 = load i32, i32* @VLC_BITS, align 4
  %153 = call i32 @VLC_INTERN(i64 %140, i32 %148, i32* %150, i32 %151, i32 %152, i32 3)
  br label %154

154:                                              ; preds = %121, %115, %111
  %155 = load i32, i32* @re, align 4
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = call i32 @CLOSE_READER(i32 %155, i32* %157)
  br label %419

159:                                              ; preds = %3
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp sle i32 %162, 14
  br i1 %163, label %164, label %299

164:                                              ; preds = %159
  %165 = load i32, i32* @re, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = call i32 @OPEN_READER(i32 %165, i32* %167)
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = call i32 @get_bits_left(i32* %171)
  %173 = sdiv i32 %172, 64
  %174 = icmp sge i32 %169, %173
  br i1 %174, label %175, label %217

175:                                              ; preds = %164
  store i32 0, i32* %7, align 4
  br label %176

176:                                              ; preds = %213, %175
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %8, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %176
  %181 = load i32, i32* @re, align 4
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = call i64 @BITS_LEFT(i32 %181, i32* %183)
  %185 = icmp sgt i64 %184, 0
  br label %186

186:                                              ; preds = %180, %176
  %187 = phi i1 [ false, %176 ], [ %185, %180 ]
  br i1 %187, label %188, label %216

188:                                              ; preds = %186
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  %191 = load i64**, i64*** %190, align 8
  %192 = getelementptr inbounds i64*, i64** %191, i64 0
  %193 = load i64*, i64** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = mul nsw i32 2, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %193, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 2
  %201 = load i64**, i64*** %200, align 8
  %202 = getelementptr inbounds i64*, i64** %201, i64 0
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = mul nsw i32 2, %204
  %206 = add nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %203, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* @OP14bits, align 4
  %212 = call i32 @READ_2PIX_PLANE(i64 %198, i64 %209, i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %188
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %7, align 4
  br label %176

216:                                              ; preds = %186
  br label %251

217:                                              ; preds = %164
  store i32 0, i32* %7, align 4
  br label %218

218:                                              ; preds = %247, %217
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %250

222:                                              ; preds = %218
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 2
  %225 = load i64**, i64*** %224, align 8
  %226 = getelementptr inbounds i64*, i64** %225, i64 0
  %227 = load i64*, i64** %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = mul nsw i32 2, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %227, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 2
  %235 = load i64**, i64*** %234, align 8
  %236 = getelementptr inbounds i64*, i64** %235, i64 0
  %237 = load i64*, i64** %236, align 8
  %238 = load i32, i32* %7, align 4
  %239 = mul nsw i32 2, %238
  %240 = add nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i64, i64* %237, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* @OP14bits, align 4
  %246 = call i32 @READ_2PIX_PLANE(i64 %232, i64 %243, i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %222
  %248 = load i32, i32* %7, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %7, align 4
  br label %218

250:                                              ; preds = %218
  br label %251

251:                                              ; preds = %250, %216
  %252 = load i32, i32* %5, align 4
  %253 = and i32 %252, 1
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %294

255:                                              ; preds = %251
  %256 = load i32, i32* @re, align 4
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 1
  %259 = call i64 @BITS_LEFT(i32 %256, i32* %258)
  %260 = icmp sgt i64 %259, 0
  br i1 %260, label %261, label %294

261:                                              ; preds = %255
  %262 = load i32, i32* @re, align 4
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 1
  %265 = call i32 @UPDATE_CACHE(i32 %262, i32* %264)
  %266 = load i32, i32* @re, align 4
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 1
  %269 = load i32, i32* @VLC_BITS, align 4
  %270 = call i32 @SHOW_UBITS(i32 %266, i32* %268, i32 %269)
  store i32 %270, i32* %13, align 4
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 2
  %273 = load i64**, i64*** %272, align 8
  %274 = getelementptr inbounds i64*, i64** %273, i64 0
  %275 = load i64*, i64** %274, align 8
  %276 = load i32, i32* %5, align 4
  %277 = sub nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64, i64* %275, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 3
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %282, align 8
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 1
  %291 = load i32, i32* @re, align 4
  %292 = load i32, i32* @VLC_BITS, align 4
  %293 = call i32 @VLC_INTERN(i64 %280, i32 %288, i32* %290, i32 %291, i32 %292, i32 3)
  br label %294

294:                                              ; preds = %261, %255, %251
  %295 = load i32, i32* @re, align 4
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 1
  %298 = call i32 @CLOSE_READER(i32 %295, i32* %297)
  br label %418

299:                                              ; preds = %159
  %300 = load i32, i32* %8, align 4
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 1
  %303 = call i32 @get_bits_left(i32* %302)
  %304 = sdiv i32 %303, 64
  %305 = icmp sge i32 %300, %304
  br i1 %305, label %306, label %346

306:                                              ; preds = %299
  store i32 0, i32* %7, align 4
  br label %307

307:                                              ; preds = %342, %306
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* %8, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %316

311:                                              ; preds = %307
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 1
  %314 = call i32 @get_bits_left(i32* %313)
  %315 = icmp sgt i32 %314, 0
  br label %316

316:                                              ; preds = %311, %307
  %317 = phi i1 [ false, %307 ], [ %315, %311 ]
  br i1 %317, label %318, label %345

318:                                              ; preds = %316
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 2
  %321 = load i64**, i64*** %320, align 8
  %322 = getelementptr inbounds i64*, i64** %321, i64 0
  %323 = load i64*, i64** %322, align 8
  %324 = load i32, i32* %7, align 4
  %325 = mul nsw i32 2, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i64, i64* %323, i64 %326
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 2
  %331 = load i64**, i64*** %330, align 8
  %332 = getelementptr inbounds i64*, i64** %331, i64 0
  %333 = load i64*, i64** %332, align 8
  %334 = load i32, i32* %7, align 4
  %335 = mul nsw i32 2, %334
  %336 = add nsw i32 %335, 1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i64, i64* %333, i64 %337
  %339 = load i64, i64* %338, align 8
  %340 = load i32, i32* %6, align 4
  %341 = call i32 @READ_2PIX_PLANE16(i64 %328, i64 %339, i32 %340)
  br label %342

342:                                              ; preds = %318
  %343 = load i32, i32* %7, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %7, align 4
  br label %307

345:                                              ; preds = %316
  br label %379

346:                                              ; preds = %299
  store i32 0, i32* %7, align 4
  br label %347

347:                                              ; preds = %375, %346
  %348 = load i32, i32* %7, align 4
  %349 = load i32, i32* %8, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %378

351:                                              ; preds = %347
  %352 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 2
  %354 = load i64**, i64*** %353, align 8
  %355 = getelementptr inbounds i64*, i64** %354, i64 0
  %356 = load i64*, i64** %355, align 8
  %357 = load i32, i32* %7, align 4
  %358 = mul nsw i32 2, %357
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i64, i64* %356, i64 %359
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %362, i32 0, i32 2
  %364 = load i64**, i64*** %363, align 8
  %365 = getelementptr inbounds i64*, i64** %364, i64 0
  %366 = load i64*, i64** %365, align 8
  %367 = load i32, i32* %7, align 4
  %368 = mul nsw i32 2, %367
  %369 = add nsw i32 %368, 1
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i64, i64* %366, i64 %370
  %372 = load i64, i64* %371, align 8
  %373 = load i32, i32* %6, align 4
  %374 = call i32 @READ_2PIX_PLANE16(i64 %361, i64 %372, i32 %373)
  br label %375

375:                                              ; preds = %351
  %376 = load i32, i32* %7, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %7, align 4
  br label %347

378:                                              ; preds = %347
  br label %379

379:                                              ; preds = %378, %345
  %380 = load i32, i32* %5, align 4
  %381 = and i32 %380, 1
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %417

383:                                              ; preds = %379
  %384 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i32 0, i32 1
  %386 = call i32 @get_bits_left(i32* %385)
  %387 = icmp sgt i32 %386, 0
  br i1 %387, label %388, label %417

388:                                              ; preds = %383
  %389 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i32 0, i32 1
  %391 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %391, i32 0, i32 3
  %393 = load %struct.TYPE_4__*, %struct.TYPE_4__** %392, align 8
  %394 = load i32, i32* %6, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @VLC_BITS, align 4
  %400 = call i32 @get_vlc2(i32* %390, i32 %398, i32 %399, i32 3)
  %401 = shl i32 %400, 2
  store i32 %401, i32* %17, align 4
  %402 = load i32, i32* %17, align 4
  %403 = sext i32 %402 to i64
  %404 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %404, i32 0, i32 1
  %406 = call i64 @get_bits(i32* %405, i32 2)
  %407 = add nsw i64 %403, %406
  %408 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i32 0, i32 2
  %410 = load i64**, i64*** %409, align 8
  %411 = getelementptr inbounds i64*, i64** %410, i64 0
  %412 = load i64*, i64** %411, align 8
  %413 = load i32, i32* %5, align 4
  %414 = sub nsw i32 %413, 1
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i64, i64* %412, i64 %415
  store i64 %407, i64* %416, align 8
  br label %417

417:                                              ; preds = %388, %383, %379
  br label %418

418:                                              ; preds = %417, %294
  br label %419

419:                                              ; preds = %418, %154
  ret void
}

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i64 @BITS_LEFT(i32, i32*) #1

declare dso_local i32 @READ_2PIX_PLANE(i64, i64, i32, i32) #1

declare dso_local i32 @UPDATE_CACHE(i32, i32*) #1

declare dso_local i32 @SHOW_UBITS(i32, i32*, i32) #1

declare dso_local i32 @VLC_INTERN(i64, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

declare dso_local i32 @READ_2PIX_PLANE16(i64, i64, i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i64 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
