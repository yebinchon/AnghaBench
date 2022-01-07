; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plus.c_decode_tones_amplitude.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plus.c_decode_tones_amplitude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64 }

@tone_vlc_tabs = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_12__*, i32, i32*)* @decode_tones_amplitude to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_tones_amplitude(i32* %0, %struct.TYPE_12__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca [48 x i32], align 16
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %23 = bitcast [48 x i32]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 192, i1 false)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %21, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %22, align 8
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %209

40:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %205, %40
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %42, %47
  br i1 %48, label %49, label %208

49:                                               ; preds = %41
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %56, %49
  br label %205

65:                                               ; preds = %56
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %76
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %18, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i64 %88
  store %struct.TYPE_11__* %89, %struct.TYPE_11__** %19, align 8
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %201, %65
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %91, %97
  br i1 %98, label %99, label %204

99:                                               ; preds = %90
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 1024, i32* %14, align 4
  br label %100

100:                                              ; preds = %131, %99
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %101, %107
  br i1 %108, label %109, label %134

109:                                              ; preds = %100
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %115, %121
  %123 = call i32 @FFABS(i64 %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %109
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %15, align 4
  br label %130

130:                                              ; preds = %127, %109
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %100

134:                                              ; preds = %100
  %135 = load i32, i32* %14, align 4
  %136 = icmp slt i32 %135, 8
  br i1 %136, label %137, label %158

137:                                              ; preds = %134
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = add i64 %139, %145
  %147 = trunc i64 %146 to i32
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = add i64 %153, %155
  %157 = getelementptr inbounds [48 x i32], [48 x i32]* %20, i64 0, i64 %156
  store i32 %147, i32* %157, align 4
  br label %200

158:                                              ; preds = %134
  %159 = load i32, i32* %11, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %159, %165
  br i1 %166, label %167, label %188

167:                                              ; preds = %158
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = add i64 %169, %175
  %177 = trunc i64 %176 to i32
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = add i64 %183, %185
  %187 = getelementptr inbounds [48 x i32], [48 x i32]* %20, i64 0, i64 %186
  store i32 %177, i32* %187, align 4
  br label %199

188:                                              ; preds = %158
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = add i64 %194, %196
  %198 = getelementptr inbounds [48 x i32], [48 x i32]* %20, i64 0, i64 %197
  store i32 -1, i32* %198, align 4
  br label %199

199:                                              ; preds = %188, %167
  br label %200

200:                                              ; preds = %199, %137
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  br label %90

204:                                              ; preds = %90
  br label %205

205:                                              ; preds = %204, %64
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %10, align 4
  br label %41

208:                                              ; preds = %41
  br label %209

209:                                              ; preds = %208, %4
  %210 = load i32*, i32** %5, align 8
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, 1
  %213 = call i8* @get_bits(i32* %210, i32 %212)
  %214 = ptrtoint i8* %213 to i32
  store i32 %214, i32* %9, align 4
  %215 = load i32, i32* %9, align 4
  switch i32 %215, label %608 [
    i32 0, label %216
    i32 1, label %304
    i32 2, label %408
    i32 3, label %520
  ]

216:                                              ; preds = %209
  store i32 0, i32* %10, align 4
  br label %217

217:                                              ; preds = %300, %216
  %218 = load i32, i32* %10, align 4
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp slt i32 %218, %223
  br i1 %224, label %225, label %303

225:                                              ; preds = %217
  %226 = load i32*, i32** %8, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %225
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %232, %225
  br label %300

241:                                              ; preds = %232
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %282

248:                                              ; preds = %241
  store i32 0, i32* %12, align 4
  br label %249

249:                                              ; preds = %278, %248
  %250 = load i32, i32* %12, align 4
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %252 = load i32, i32* %10, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp slt i32 %250, %256
  br i1 %257, label %258, label %281

258:                                              ; preds = %249
  %259 = load i32*, i32** %5, align 8
  %260 = call i8* @get_bits(i32* %259, i32 6)
  %261 = ptrtoint i8* %260 to i32
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %265, align 8
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %268 = load i32, i32* %10, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = load i32, i32* %12, align 4
  %274 = sext i32 %273 to i64
  %275 = add i64 %272, %274
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 0
  store i32 %261, i32* %277, align 8
  br label %278

278:                                              ; preds = %258
  %279 = load i32, i32* %12, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %12, align 4
  br label %249

281:                                              ; preds = %249
  br label %299

282:                                              ; preds = %241
  %283 = load i32*, i32** %5, align 8
  %284 = call i8* @get_bits(i32* %283, i32 6)
  %285 = ptrtoint i8* %284 to i32
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 1
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %289, align 8
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %292 = load i32, i32* %10, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  store i32 %285, i32* %298, align 8
  br label %299

299:                                              ; preds = %282, %281
  br label %300

300:                                              ; preds = %299, %240
  %301 = load i32, i32* %10, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %10, align 4
  br label %217

303:                                              ; preds = %217
  br label %608

304:                                              ; preds = %209
  store i32 0, i32* %10, align 4
  br label %305

305:                                              ; preds = %404, %304
  %306 = load i32, i32* %10, align 4
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 0
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = icmp slt i32 %306, %311
  br i1 %312, label %313, label %407

313:                                              ; preds = %305
  %314 = load i32*, i32** %8, align 8
  %315 = load i32, i32* %10, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %328

320:                                              ; preds = %313
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %322 = load i32, i32* %10, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %329, label %328

328:                                              ; preds = %320, %313
  br label %404

329:                                              ; preds = %320
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %378

336:                                              ; preds = %329
  store i32 0, i32* %12, align 4
  br label %337

337:                                              ; preds = %374, %336
  %338 = load i32, i32* %12, align 4
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %340 = load i32, i32* %10, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = icmp slt i32 %338, %344
  br i1 %345, label %346, label %377

346:                                              ; preds = %337
  %347 = load i32*, i32** %5, align 8
  %348 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tone_vlc_tabs, align 8
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %348, i64 3
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tone_vlc_tabs, align 8
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i64 3
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @get_vlc2(i32* %347, i32 %351, i32 %355, i32 1)
  %357 = add nsw i32 %356, 20
  %358 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 0
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i32 0, i32 1
  %362 = load %struct.TYPE_11__*, %struct.TYPE_11__** %361, align 8
  %363 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %364 = load i32, i32* %10, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = load i32, i32* %12, align 4
  %370 = sext i32 %369 to i64
  %371 = add i64 %368, %370
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %362, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 0
  store i32 %357, i32* %373, align 8
  br label %374

374:                                              ; preds = %346
  %375 = load i32, i32* %12, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %12, align 4
  br label %337

377:                                              ; preds = %337
  br label %403

378:                                              ; preds = %329
  %379 = load i32*, i32** %5, align 8
  %380 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tone_vlc_tabs, align 8
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %380, i64 4
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tone_vlc_tabs, align 8
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %384, i64 4
  %386 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @get_vlc2(i32* %379, i32 %383, i32 %387, i32 1)
  %389 = add nsw i32 %388, 24
  %390 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %390, i32 0, i32 0
  %392 = load %struct.TYPE_9__*, %struct.TYPE_9__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %392, i32 0, i32 1
  %394 = load %struct.TYPE_11__*, %struct.TYPE_11__** %393, align 8
  %395 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %396 = load i32, i32* %10, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i32 0, i32 1
  %400 = load i64, i64* %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 0
  store i32 %389, i32* %402, align 8
  br label %403

403:                                              ; preds = %378, %377
  br label %404

404:                                              ; preds = %403, %328
  %405 = load i32, i32* %10, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %10, align 4
  br label %305

407:                                              ; preds = %305
  br label %608

408:                                              ; preds = %209
  store i32 0, i32* %10, align 4
  br label %409

409:                                              ; preds = %516, %408
  %410 = load i32, i32* %10, align 4
  %411 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 0
  %413 = load %struct.TYPE_9__*, %struct.TYPE_9__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = icmp slt i32 %410, %415
  br i1 %416, label %417, label %519

417:                                              ; preds = %409
  %418 = load i32*, i32** %8, align 8
  %419 = load i32, i32* %10, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %432

424:                                              ; preds = %417
  %425 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %426 = load i32, i32* %10, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %425, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %433, label %432

432:                                              ; preds = %424, %417
  br label %516

433:                                              ; preds = %424
  store i32 0, i32* %12, align 4
  br label %434

434:                                              ; preds = %512, %433
  %435 = load i32, i32* %12, align 4
  %436 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %437 = load i32, i32* %10, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %436, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 8
  %442 = icmp slt i32 %435, %441
  br i1 %442, label %443, label %515

443:                                              ; preds = %434
  %444 = load i32*, i32** %5, align 8
  %445 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tone_vlc_tabs, align 8
  %446 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %445, i64 5
  %447 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tone_vlc_tabs, align 8
  %450 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %449, i64 5
  %451 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = call i32 @get_vlc2(i32* %444, i32 %448, i32 %452, i32 1)
  store i32 %453, i32* %16, align 4
  %454 = load i32, i32* %16, align 4
  %455 = call i32 @sign_extend(i32 %454, i32 5)
  store i32 %455, i32* %16, align 4
  %456 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %457 = load i32, i32* %10, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %456, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %459, i32 0, i32 1
  %461 = load i64, i64* %460, align 8
  %462 = load i32, i32* %12, align 4
  %463 = sext i32 %462 to i64
  %464 = add i64 %461, %463
  %465 = getelementptr inbounds [48 x i32], [48 x i32]* %20, i64 0, i64 %464
  %466 = load i32, i32* %465, align 4
  %467 = icmp sge i32 %466, 0
  br i1 %467, label %468, label %489

468:                                              ; preds = %443
  %469 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %470 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %469, i32 0, i32 0
  %471 = load %struct.TYPE_9__*, %struct.TYPE_9__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %471, i32 0, i32 1
  %473 = load %struct.TYPE_11__*, %struct.TYPE_11__** %472, align 8
  %474 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %475 = load i32, i32* %10, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %474, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %477, i32 0, i32 1
  %479 = load i64, i64* %478, align 8
  %480 = load i32, i32* %12, align 4
  %481 = sext i32 %480 to i64
  %482 = add i64 %479, %481
  %483 = getelementptr inbounds [48 x i32], [48 x i32]* %20, i64 0, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %473, i64 %485
  %487 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  br label %490

489:                                              ; preds = %443
  br label %490

490:                                              ; preds = %489, %468
  %491 = phi i32 [ %488, %468 ], [ 34, %489 ]
  store i32 %491, i32* %17, align 4
  %492 = load i32, i32* %17, align 4
  %493 = load i32, i32* %16, align 4
  %494 = add nsw i32 %492, %493
  %495 = and i32 %494, 63
  %496 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %497 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %496, i32 0, i32 0
  %498 = load %struct.TYPE_9__*, %struct.TYPE_9__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %498, i32 0, i32 1
  %500 = load %struct.TYPE_11__*, %struct.TYPE_11__** %499, align 8
  %501 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %502 = load i32, i32* %10, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %501, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %504, i32 0, i32 1
  %506 = load i64, i64* %505, align 8
  %507 = load i32, i32* %12, align 4
  %508 = sext i32 %507 to i64
  %509 = add i64 %506, %508
  %510 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %500, i64 %509
  %511 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %510, i32 0, i32 0
  store i32 %495, i32* %511, align 8
  br label %512

512:                                              ; preds = %490
  %513 = load i32, i32* %12, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %12, align 4
  br label %434

515:                                              ; preds = %434
  br label %516

516:                                              ; preds = %515, %432
  %517 = load i32, i32* %10, align 4
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* %10, align 4
  br label %409

519:                                              ; preds = %409
  br label %608

520:                                              ; preds = %209
  store i32 0, i32* %10, align 4
  br label %521

521:                                              ; preds = %604, %520
  %522 = load i32, i32* %10, align 4
  %523 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %524 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %523, i32 0, i32 0
  %525 = load %struct.TYPE_9__*, %struct.TYPE_9__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = icmp slt i32 %522, %527
  br i1 %528, label %529, label %607

529:                                              ; preds = %521
  %530 = load i32*, i32** %8, align 8
  %531 = load i32, i32* %10, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i32, i32* %530, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %537, label %536

536:                                              ; preds = %529
  br label %604

537:                                              ; preds = %529
  store i32 0, i32* %12, align 4
  br label %538

538:                                              ; preds = %600, %537
  %539 = load i32, i32* %12, align 4
  %540 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %541 = load i32, i32* %10, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %540, i64 %542
  %544 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = icmp slt i32 %539, %545
  br i1 %546, label %547, label %603

547:                                              ; preds = %538
  %548 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %549 = load i32, i32* %10, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %548, i64 %550
  %552 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %551, i32 0, i32 1
  %553 = load i64, i64* %552, align 8
  %554 = load i32, i32* %12, align 4
  %555 = sext i32 %554 to i64
  %556 = add i64 %553, %555
  %557 = getelementptr inbounds [48 x i32], [48 x i32]* %20, i64 0, i64 %556
  %558 = load i32, i32* %557, align 4
  %559 = icmp sge i32 %558, 0
  br i1 %559, label %560, label %581

560:                                              ; preds = %547
  %561 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %562 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %561, i32 0, i32 0
  %563 = load %struct.TYPE_9__*, %struct.TYPE_9__** %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %563, i32 0, i32 1
  %565 = load %struct.TYPE_11__*, %struct.TYPE_11__** %564, align 8
  %566 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %567 = load i32, i32* %10, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %566, i64 %568
  %570 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %569, i32 0, i32 1
  %571 = load i64, i64* %570, align 8
  %572 = load i32, i32* %12, align 4
  %573 = sext i32 %572 to i64
  %574 = add i64 %571, %573
  %575 = getelementptr inbounds [48 x i32], [48 x i32]* %20, i64 0, i64 %574
  %576 = load i32, i32* %575, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %565, i64 %577
  %579 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 8
  br label %582

581:                                              ; preds = %547
  br label %582

582:                                              ; preds = %581, %560
  %583 = phi i32 [ %580, %560 ], [ 32, %581 ]
  %584 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %585 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %584, i32 0, i32 0
  %586 = load %struct.TYPE_9__*, %struct.TYPE_9__** %585, align 8
  %587 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %586, i32 0, i32 1
  %588 = load %struct.TYPE_11__*, %struct.TYPE_11__** %587, align 8
  %589 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %590 = load i32, i32* %10, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %589, i64 %591
  %593 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %592, i32 0, i32 1
  %594 = load i64, i64* %593, align 8
  %595 = load i32, i32* %12, align 4
  %596 = sext i32 %595 to i64
  %597 = add i64 %594, %596
  %598 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %588, i64 %597
  %599 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %598, i32 0, i32 0
  store i32 %583, i32* %599, align 8
  br label %600

600:                                              ; preds = %582
  %601 = load i32, i32* %12, align 4
  %602 = add nsw i32 %601, 1
  store i32 %602, i32* %12, align 4
  br label %538

603:                                              ; preds = %538
  br label %604

604:                                              ; preds = %603, %536
  %605 = load i32, i32* %10, align 4
  %606 = add nsw i32 %605, 1
  store i32 %606, i32* %10, align 4
  br label %521

607:                                              ; preds = %521
  br label %608

608:                                              ; preds = %209, %607, %519, %407, %303
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @FFABS(i64) #2

declare dso_local i8* @get_bits(i32*, i32) #2

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #2

declare dso_local i32 @sign_extend(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
