; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eatgv.c_tgv_decode_inter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eatgv.c_tgv_decode_inter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32**, i32, i32**, %struct.TYPE_7__*, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32**, i32* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32**, i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@MIN_CACHE_BITS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Invalid value for motion vector bits: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"MV %d %d out of picture\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*, i32*, i32*)* @tgv_decode_inter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tgv_decode_inter(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [4 x i32], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = ptrtoint i32* %30 to i64
  %33 = ptrtoint i32* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  %36 = icmp slt i64 %35, 12
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %38, i32* %5, align 4
  br label %451

39:                                               ; preds = %4
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = call i32 @AV_RL16(i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = call i32 @AV_RL16(i32* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = call i32 @AV_RL16(i32* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 6
  %51 = call i32 @AV_RL16(i32* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 12
  store i32* %53, i32** %8, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @MIN_CACHE_BITS, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %39
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %57, %39
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load i32, i32* @AV_LOG_ERROR, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 (%struct.TYPE_10__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_10__* %63, i32 %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %67, i32* %5, align 4
  br label %451

68:                                               ; preds = %57
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @av_reallocp_array(i32*** %76, i32 %77, i32 8)
  store i32 %78, i32* %21, align 4
  %79 = load i32, i32* %21, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = load i32, i32* %21, align 4
  store i32 %84, i32* %5, align 4
  br label %451

85:                                               ; preds = %74
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %85, %68
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %90, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %89
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  %98 = load i32, i32* %12, align 4
  %99 = mul nsw i32 %98, 16
  %100 = call i32 @av_reallocp(i32*** %97, i32 %99)
  store i32 %100, i32* %22, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  store i32 0, i32* %104, align 8
  %105 = load i32, i32* %22, align 4
  store i32 %105, i32* %5, align 4
  br label %451

106:                                              ; preds = %95
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %106, %89
  %111 = load i32, i32* %10, align 4
  %112 = mul nsw i32 %111, 2
  %113 = mul nsw i32 %112, 10
  %114 = add nsw i32 %113, 31
  %115 = and i32 %114, -32
  store i32 %115, i32* %19, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = ptrtoint i32* %116 to i64
  %119 = ptrtoint i32* %117 to i64
  %120 = sub i64 %118, %119
  %121 = sdiv exact i64 %120, 4
  %122 = load i32, i32* %19, align 4
  %123 = ashr i32 %122, 3
  %124 = load i32, i32* %11, align 4
  %125 = mul nsw i32 16, %124
  %126 = add nsw i32 %123, %125
  %127 = load i32, i32* %12, align 4
  %128 = mul nsw i32 8, %127
  %129 = add nsw i32 %126, %128
  %130 = sext i32 %129 to i64
  %131 = icmp slt i64 %121, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %110
  %133 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %133, i32* %5, align 4
  br label %451

134:                                              ; preds = %110
  %135 = load i32*, i32** %8, align 8
  %136 = load i32, i32* %19, align 4
  %137 = call i32 @init_get_bits(i32* %18, i32* %135, i32 %136)
  store i32 0, i32* %14, align 4
  br label %138

138:                                              ; preds = %163, %134
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %166

142:                                              ; preds = %138
  %143 = call i8* @get_sbits(i32* %18, i32 10)
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load i32**, i32*** %146, align 8
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 %144, i32* %152, align 4
  %153 = call i8* @get_sbits(i32* %18, i32 10)
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i32**, i32*** %156, align 8
  %158 = load i32, i32* %14, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  store i32 %154, i32* %162, align 4
  br label %163

163:                                              ; preds = %142
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  br label %138

166:                                              ; preds = %138
  %167 = load i32, i32* %19, align 4
  %168 = ashr i32 %167, 3
  %169 = load i32*, i32** %8, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32* %171, i32** %8, align 8
  %172 = load i32*, i32** %8, align 8
  store i32* %172, i32** %20, align 8
  %173 = load i32, i32* %11, align 4
  %174 = mul nsw i32 %173, 16
  %175 = load i32*, i32** %8, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32* %177, i32** %8, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = load i32*, i32** %8, align 8
  %181 = ptrtoint i32* %179 to i64
  %182 = ptrtoint i32* %180 to i64
  %183 = sub i64 %181, %182
  %184 = sdiv exact i64 %183, 4
  %185 = shl i64 %184, 3
  %186 = trunc i64 %185 to i32
  %187 = call i32 @init_get_bits(i32* %18, i32* %178, i32 %186)
  store i32 0, i32* %14, align 4
  br label %188

188:                                              ; preds = %228, %166
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %12, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %231

192:                                              ; preds = %188
  store i32 0, i32* %15, align 4
  br label %193

193:                                              ; preds = %202, %192
  %194 = load i32, i32* %15, align 4
  %195 = icmp slt i32 %194, 4
  br i1 %195, label %196, label %205

196:                                              ; preds = %193
  %197 = call i64 @get_bits(i32* %18, i32 8)
  %198 = trunc i64 %197 to i32
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 %200
  store i32 %198, i32* %201, align 4
  br label %202

202:                                              ; preds = %196
  %203 = load i32, i32* %15, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %15, align 4
  br label %193

205:                                              ; preds = %193
  store i32 0, i32* %15, align 4
  br label %206

206:                                              ; preds = %224, %205
  %207 = load i32, i32* %15, align 4
  %208 = icmp slt i32 %207, 16
  br i1 %208, label %209, label %227

209:                                              ; preds = %206
  %210 = call i64 @get_bits(i32* %18, i32 2)
  %211 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 3
  %215 = load i32**, i32*** %214, align 8
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32*, i32** %215, i64 %217
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %15, align 4
  %221 = sub nsw i32 15, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  store i32 %212, i32* %223, align 4
  br label %224

224:                                              ; preds = %209
  %225 = load i32, i32* %15, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %15, align 4
  br label %206

227:                                              ; preds = %206
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %14, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %14, align 4
  br label %188

231:                                              ; preds = %188
  %232 = call i32 @get_bits_left(i32* %18)
  %233 = load i32, i32* %13, align 4
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 5
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = sdiv i32 %238, 4
  %240 = mul nsw i32 %233, %239
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 5
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = sdiv i32 %245, 4
  %247 = mul nsw i32 %240, %246
  %248 = icmp slt i32 %232, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %231
  %250 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %250, i32* %5, align 4
  br label %451

251:                                              ; preds = %231
  store i32 0, i32* %17, align 4
  br label %252

252:                                              ; preds = %447, %251
  %253 = load i32, i32* %17, align 4
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 5
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = sdiv i32 %258, 4
  %260 = icmp slt i32 %253, %259
  br i1 %260, label %261, label %450

261:                                              ; preds = %252
  store i32 0, i32* %16, align 4
  br label %262

262:                                              ; preds = %443, %261
  %263 = load i32, i32* %16, align 4
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 5
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = sdiv i32 %268, 4
  %270 = icmp slt i32 %263, %269
  br i1 %270, label %271, label %446

271:                                              ; preds = %262
  %272 = load i32, i32* %13, align 4
  %273 = call i64 @get_bits(i32* %18, i32 %272)
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %24, align 4
  %275 = load i32, i32* %24, align 4
  %276 = load i32, i32* %10, align 4
  %277 = icmp ult i32 %275, %276
  br i1 %277, label %278, label %363

278:                                              ; preds = %271
  %279 = load i32, i32* %16, align 4
  %280 = mul nsw i32 %279, 4
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 1
  %283 = load i32**, i32*** %282, align 8
  %284 = load i32, i32* %24, align 4
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i32*, i32** %283, i64 %285
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 0
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %280, %289
  store i32 %290, i32* %27, align 4
  %291 = load i32, i32* %17, align 4
  %292 = mul nsw i32 %291, 4
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 1
  %295 = load i32**, i32*** %294, align 8
  %296 = load i32, i32* %24, align 4
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds i32*, i32** %295, i64 %297
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 1
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %292, %301
  store i32 %302, i32* %28, align 4
  %303 = load i32, i32* %27, align 4
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %326, label %305

305:                                              ; preds = %278
  %306 = load i32, i32* %27, align 4
  %307 = add nsw i32 %306, 4
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 5
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = icmp sgt i32 %307, %312
  br i1 %313, label %326, label %314

314:                                              ; preds = %305
  %315 = load i32, i32* %28, align 4
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %326, label %317

317:                                              ; preds = %314
  %318 = load i32, i32* %28, align 4
  %319 = add nsw i32 %318, 4
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 5
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = icmp sgt i32 %319, %324
  br i1 %325, label %326, label %334

326:                                              ; preds = %317, %314, %305, %278
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 5
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %328, align 8
  %330 = load i32, i32* @AV_LOG_ERROR, align 4
  %331 = load i32, i32* %27, align 4
  %332 = load i32, i32* %28, align 4
  %333 = call i32 (%struct.TYPE_10__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_10__* %329, i32 %330, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %331, i32 %332)
  br label %443

334:                                              ; preds = %317
  %335 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 4
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 0
  %339 = load i32**, i32*** %338, align 8
  %340 = getelementptr inbounds i32*, i32** %339, i64 0
  %341 = load i32*, i32** %340, align 8
  %342 = load i32, i32* %27, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  %345 = load i32, i32* %28, align 4
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 4
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 1
  %350 = load i32*, i32** %349, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 0
  %352 = load i32, i32* %351, align 4
  %353 = mul nsw i32 %345, %352
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %344, i64 %354
  store i32* %355, i32** %25, align 8
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 4
  %358 = load %struct.TYPE_7__*, %struct.TYPE_7__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 1
  %360 = load i32*, i32** %359, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 0
  %362 = load i32, i32* %361, align 4
  store i32 %362, i32* %26, align 4
  br label %395

363:                                              ; preds = %271
  %364 = load i32, i32* %24, align 4
  %365 = load i32, i32* %10, align 4
  %366 = sub i32 %364, %365
  store i32 %366, i32* %29, align 4
  %367 = load i32, i32* %29, align 4
  %368 = load i32, i32* %11, align 4
  %369 = icmp slt i32 %367, %368
  br i1 %369, label %370, label %376

370:                                              ; preds = %363
  %371 = load i32*, i32** %20, align 8
  %372 = load i32, i32* %29, align 4
  %373 = mul nsw i32 16, %372
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %371, i64 %374
  store i32* %375, i32** %25, align 8
  br label %394

376:                                              ; preds = %363
  %377 = load i32, i32* %29, align 4
  %378 = load i32, i32* %11, align 4
  %379 = sub nsw i32 %377, %378
  %380 = load i32, i32* %12, align 4
  %381 = icmp slt i32 %379, %380
  br i1 %381, label %382, label %392

382:                                              ; preds = %376
  %383 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i32 0, i32 3
  %385 = load i32**, i32*** %384, align 8
  %386 = load i32, i32* %29, align 4
  %387 = load i32, i32* %11, align 4
  %388 = sub nsw i32 %386, %387
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32*, i32** %385, i64 %389
  %391 = load i32*, i32** %390, align 8
  store i32* %391, i32** %25, align 8
  br label %393

392:                                              ; preds = %376
  br label %443

393:                                              ; preds = %382
  br label %394

394:                                              ; preds = %393, %370
  store i32 4, i32* %26, align 4
  br label %395

395:                                              ; preds = %394, %334
  store i32 0, i32* %15, align 4
  br label %396

396:                                              ; preds = %439, %395
  %397 = load i32, i32* %15, align 4
  %398 = icmp slt i32 %397, 4
  br i1 %398, label %399, label %442

399:                                              ; preds = %396
  store i32 0, i32* %14, align 4
  br label %400

400:                                              ; preds = %435, %399
  %401 = load i32, i32* %14, align 4
  %402 = icmp slt i32 %401, 4
  br i1 %402, label %403, label %438

403:                                              ; preds = %400
  %404 = load i32*, i32** %25, align 8
  %405 = load i32, i32* %15, align 4
  %406 = load i32, i32* %26, align 4
  %407 = mul nsw i32 %405, %406
  %408 = load i32, i32* %14, align 4
  %409 = add nsw i32 %407, %408
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %404, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i32 0, i32 0
  %415 = load i32**, i32*** %414, align 8
  %416 = getelementptr inbounds i32*, i32** %415, i64 0
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* %17, align 4
  %419 = mul nsw i32 %418, 4
  %420 = load i32, i32* %15, align 4
  %421 = add nsw i32 %419, %420
  %422 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %423 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %422, i32 0, i32 1
  %424 = load i32*, i32** %423, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 0
  %426 = load i32, i32* %425, align 4
  %427 = mul nsw i32 %421, %426
  %428 = load i32, i32* %16, align 4
  %429 = mul nsw i32 %428, 4
  %430 = load i32, i32* %14, align 4
  %431 = add nsw i32 %429, %430
  %432 = add nsw i32 %427, %431
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %417, i64 %433
  store i32 %412, i32* %434, align 4
  br label %435

435:                                              ; preds = %403
  %436 = load i32, i32* %14, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %14, align 4
  br label %400

438:                                              ; preds = %400
  br label %439

439:                                              ; preds = %438
  %440 = load i32, i32* %15, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %15, align 4
  br label %396

442:                                              ; preds = %396
  br label %443

443:                                              ; preds = %442, %392, %326
  %444 = load i32, i32* %16, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %16, align 4
  br label %262

446:                                              ; preds = %262
  br label %447

447:                                              ; preds = %446
  %448 = load i32, i32* %17, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %17, align 4
  br label %252

450:                                              ; preds = %252
  store i32 0, i32* %5, align 4
  br label %451

451:                                              ; preds = %450, %249, %132, %102, %81, %60, %37
  %452 = load i32, i32* %5, align 4
  ret i32 %452
}

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, i32, ...) #1

declare dso_local i32 @av_reallocp_array(i32***, i32, i32) #1

declare dso_local i32 @av_reallocp(i32***, i32) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i8* @get_sbits(i32*, i32) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
