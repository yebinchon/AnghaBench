; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_block.c_vc1_decode_i_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_block.c_vc1_decode_i_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64**, i32, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32***, i64*, i32*, i32*, i64, i32, i32 }

@ff_msmp4_dc_luma_vlc = common dso_local global %struct.TYPE_10__* null, align 8
@DC_VLC_BITS = common dso_local global i32 0, align 4
@ff_msmp4_dc_chroma_vlc = common dso_local global %struct.TYPE_11__* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Illegal DC VLC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32, i32, i32)* @vc1_decode_i_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc1_decode_i_block(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 9
  store i32* %33, i32** %12, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 6
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %13, align 8
  store i32 0, i32* %14, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %50

38:                                               ; preds = %5
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 9
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ff_msmp4_dc_luma_vlc, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DC_VLC_BITS, align 4
  %49 = call i32 @get_vlc2(i32* %40, i32 %47, i32 %48, i32 3)
  store i32 %49, i32* %19, align 4
  br label %62

50:                                               ; preds = %5
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 9
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ff_msmp4_dc_chroma_vlc, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DC_VLC_BITS, align 4
  %61 = call i32 @get_vlc2(i32* %52, i32 %59, i32 %60, i32 3)
  store i32 %61, i32* %19, align 4
  br label %62

62:                                               ; preds = %50, %38
  %63 = load i32, i32* %19, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @AV_LOG_ERROR, align 4
  %70 = call i32 @av_log(i32 %68, i32 %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %495

71:                                               ; preds = %62
  %72 = load i32, i32* %19, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %123

74:                                               ; preds = %71
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %89

84:                                               ; preds = %79, %74
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 3, %87
  br label %90

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %84
  %91 = phi i32 [ %88, %84 ], [ 0, %89 ]
  store i32 %91, i32* %21, align 4
  %92 = load i32, i32* %19, align 4
  %93 = icmp eq i32 %92, 119
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %21, align 4
  %97 = add nsw i32 8, %96
  %98 = call i32 @get_bits(i32* %95, i32 %97)
  store i32 %98, i32* %19, align 4
  br label %115

99:                                               ; preds = %90
  %100 = load i32, i32* %21, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load i32, i32* %19, align 4
  %104 = load i32, i32* %21, align 4
  %105 = shl i32 %103, %104
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %21, align 4
  %108 = call i32 @get_bits(i32* %106, i32 %107)
  %109 = add nsw i32 %105, %108
  %110 = load i32, i32* %21, align 4
  %111 = shl i32 1, %110
  %112 = sub nsw i32 %111, 1
  %113 = sub nsw i32 %109, %112
  store i32 %113, i32* %19, align 4
  br label %114

114:                                              ; preds = %102, %99
  br label %115

115:                                              ; preds = %114, %94
  %116 = load i32*, i32** %12, align 8
  %117 = call i64 @get_bits1(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* %19, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %19, align 4
  br label %122

122:                                              ; preds = %119, %115
  br label %123

123:                                              ; preds = %122, %71
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 6
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i64 @vc1_i_pred_dc(%struct.TYPE_9__* %125, i32 %128, i32 %131, i32 %132, i32** %16, i32* %14)
  %134 = load i32, i32* %19, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %19, align 4
  %138 = load i32, i32* %19, align 4
  %139 = load i32*, i32** %16, align 8
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp slt i32 %140, 4
  br i1 %141, label %142, label %146

142:                                              ; preds = %123
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %20, align 4
  br label %150

146:                                              ; preds = %123
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %20, align 4
  br label %150

150:                                              ; preds = %146, %142
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* %20, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load i32*, i32** %8, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  store i32 %153, i32* %155, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 3
  %158 = load i32***, i32**** %157, align 8
  %159 = getelementptr inbounds i32**, i32*** %158, i64 0
  %160 = load i32**, i32*** %159, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 4
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i32*, i32** %160, i64 %167
  %169 = load i32*, i32** %168, align 8
  store i32* %169, i32** %17, align 8
  %170 = load i32*, i32** %17, align 8
  store i32* %170, i32** %18, align 8
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %150
  %174 = load i32*, i32** %17, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 -16
  store i32* %175, i32** %17, align 8
  br label %189

176:                                              ; preds = %150
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 5
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 16, %183
  %185 = load i32*, i32** %17, align 8
  %186 = sext i32 %184 to i64
  %187 = sub i64 0, %186
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32* %188, i32** %17, align 8
  br label %189

189:                                              ; preds = %176, %173
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = mul nsw i32 %192, 2
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %193, %196
  store i32 %197, i32* %20, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %10, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %391

205:                                              ; preds = %189
  store i32 0, i32* %22, align 4
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 6
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 7
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %227

211:                                              ; preds = %205
  %212 = load i32, i32* %14, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %220, label %214

214:                                              ; preds = %211
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 2
  %217 = load i64**, i64*** %216, align 8
  %218 = getelementptr inbounds i64*, i64** %217, i64 2
  %219 = load i64*, i64** %218, align 8
  store i64* %219, i64** %25, align 8
  br label %226

220:                                              ; preds = %211
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 2
  %223 = load i64**, i64*** %222, align 8
  %224 = getelementptr inbounds i64*, i64** %223, i64 3
  %225 = load i64*, i64** %224, align 8
  store i64* %225, i64** %25, align 8
  br label %226

226:                                              ; preds = %220, %214
  br label %233

227:                                              ; preds = %205
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 2
  %230 = load i64**, i64*** %229, align 8
  %231 = getelementptr inbounds i64*, i64** %230, i64 1
  %232 = load i64*, i64** %231, align 8
  store i64* %232, i64** %25, align 8
  br label %233

233:                                              ; preds = %227, %226
  br label %234

234:                                              ; preds = %253, %233
  %235 = load i32, i32* %22, align 4
  %236 = icmp ne i32 %235, 0
  %237 = xor i1 %236, true
  br i1 %237, label %238, label %263

238:                                              ; preds = %234
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @vc1_decode_ac_coeff(%struct.TYPE_8__* %239, i32* %22, i32* %23, i32* %24, i32 %240)
  store i32 %241, i32* %27, align 4
  %242 = load i32, i32* %27, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %238
  %245 = load i32, i32* %27, align 4
  store i32 %245, i32* %6, align 4
  br label %495

246:                                              ; preds = %238
  %247 = load i32, i32* %23, align 4
  %248 = load i32, i32* %15, align 4
  %249 = add nsw i32 %248, %247
  store i32 %249, i32* %15, align 4
  %250 = load i32, i32* %15, align 4
  %251 = icmp sgt i32 %250, 63
  br i1 %251, label %252, label %253

252:                                              ; preds = %246
  br label %263

253:                                              ; preds = %246
  %254 = load i32, i32* %24, align 4
  %255 = load i32*, i32** %8, align 8
  %256 = load i64*, i64** %25, align 8
  %257 = load i32, i32* %15, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %15, align 4
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i64, i64* %256, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds i32, i32* %255, i64 %261
  store i32 %254, i32* %262, align 4
  br label %234

263:                                              ; preds = %252, %234
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 7
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %303

268:                                              ; preds = %263
  %269 = load i32, i32* %14, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %268
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  store i32 %274, i32* %28, align 4
  br label %281

275:                                              ; preds = %268
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 4
  store i32 %278, i32* %28, align 4
  %279 = load i32*, i32** %17, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 8
  store i32* %280, i32** %17, align 8
  br label %281

281:                                              ; preds = %275, %271
  store i32 1, i32* %26, align 4
  br label %282

282:                                              ; preds = %299, %281
  %283 = load i32, i32* %26, align 4
  %284 = icmp slt i32 %283, 8
  br i1 %284, label %285, label %302

285:                                              ; preds = %282
  %286 = load i32*, i32** %17, align 8
  %287 = load i32, i32* %26, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load i32*, i32** %8, align 8
  %292 = load i32, i32* %26, align 4
  %293 = load i32, i32* %28, align 4
  %294 = shl i32 %292, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %291, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 %297, %290
  store i32 %298, i32* %296, align 4
  br label %299

299:                                              ; preds = %285
  %300 = load i32, i32* %26, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %26, align 4
  br label %282

302:                                              ; preds = %282
  br label %303

303:                                              ; preds = %302, %263
  store i32 1, i32* %26, align 4
  br label %304

304:                                              ; preds = %335, %303
  %305 = load i32, i32* %26, align 4
  %306 = icmp slt i32 %305, 8
  br i1 %306, label %307, label %338

307:                                              ; preds = %304
  %308 = load i32*, i32** %8, align 8
  %309 = load i32, i32* %26, align 4
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 8
  %313 = shl i32 %309, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %308, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = load i32*, i32** %18, align 8
  %318 = load i32, i32* %26, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  store i32 %316, i32* %320, align 4
  %321 = load i32*, i32** %8, align 8
  %322 = load i32, i32* %26, align 4
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 4
  %326 = shl i32 %322, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %321, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = load i32*, i32** %18, align 8
  %331 = load i32, i32* %26, align 4
  %332 = add nsw i32 %331, 8
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %330, i64 %333
  store i32 %329, i32* %334, align 4
  br label %335

335:                                              ; preds = %307
  %336 = load i32, i32* %26, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %26, align 4
  br label %304

338:                                              ; preds = %304
  store i32 1, i32* %26, align 4
  br label %339

339:                                              ; preds = %387, %338
  %340 = load i32, i32* %26, align 4
  %341 = icmp slt i32 %340, 64
  br i1 %341, label %342, label %390

342:                                              ; preds = %339
  %343 = load i32*, i32** %8, align 8
  %344 = load i32, i32* %26, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %386

349:                                              ; preds = %342
  %350 = load i32, i32* %20, align 4
  %351 = load i32*, i32** %8, align 8
  %352 = load i32, i32* %26, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = mul nsw i32 %355, %350
  store i32 %356, i32* %354, align 4
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 5
  %359 = load i32, i32* %358, align 8
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %385, label %361

361:                                              ; preds = %349
  %362 = load i32*, i32** %8, align 8
  %363 = load i32, i32* %26, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %368, label %373

368:                                              ; preds = %361
  %369 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = sub nsw i32 0, %371
  br label %377

373:                                              ; preds = %361
  %374 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  br label %377

377:                                              ; preds = %373, %368
  %378 = phi i32 [ %372, %368 ], [ %376, %373 ]
  %379 = load i32*, i32** %8, align 8
  %380 = load i32, i32* %26, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = add nsw i32 %383, %378
  store i32 %384, i32* %382, align 4
  br label %385

385:                                              ; preds = %377, %349
  br label %386

386:                                              ; preds = %385, %342
  br label %387

387:                                              ; preds = %386
  %388 = load i32, i32* %26, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %26, align 4
  br label %339

390:                                              ; preds = %339
  br label %481

391:                                              ; preds = %189
  %392 = load i32*, i32** %18, align 8
  %393 = call i32 @memset(i32* %392, i32 0, i32 32)
  %394 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 7
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %480

398:                                              ; preds = %391
  %399 = load i32, i32* %14, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %398
  %402 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 8
  store i32 %404, i32* %30, align 4
  br label %413

405:                                              ; preds = %398
  %406 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 4
  %408 = load i32, i32* %407, align 4
  store i32 %408, i32* %30, align 4
  %409 = load i32*, i32** %17, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 8
  store i32* %410, i32** %17, align 8
  %411 = load i32*, i32** %18, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 8
  store i32* %412, i32** %18, align 8
  br label %413

413:                                              ; preds = %405, %401
  %414 = load i32*, i32** %18, align 8
  %415 = load i32*, i32** %17, align 8
  %416 = call i32 @memcpy(i32* %414, i32* %415, i32 16)
  store i32 1, i32* %29, align 4
  br label %417

417:                                              ; preds = %476, %413
  %418 = load i32, i32* %29, align 4
  %419 = icmp slt i32 %418, 8
  br i1 %419, label %420, label %479

420:                                              ; preds = %417
  %421 = load i32*, i32** %17, align 8
  %422 = load i32, i32* %29, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* %20, align 4
  %427 = mul nsw i32 %425, %426
  %428 = load i32*, i32** %8, align 8
  %429 = load i32, i32* %29, align 4
  %430 = load i32, i32* %30, align 4
  %431 = shl i32 %429, %430
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %428, i64 %432
  store i32 %427, i32* %433, align 4
  %434 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i32 0, i32 5
  %436 = load i32, i32* %435, align 8
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %475, label %438

438:                                              ; preds = %420
  %439 = load i32*, i32** %8, align 8
  %440 = load i32, i32* %29, align 4
  %441 = load i32, i32* %30, align 4
  %442 = shl i32 %440, %441
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %439, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %475

447:                                              ; preds = %438
  %448 = load i32*, i32** %8, align 8
  %449 = load i32, i32* %29, align 4
  %450 = load i32, i32* %30, align 4
  %451 = shl i32 %449, %450
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %448, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = icmp slt i32 %454, 0
  br i1 %455, label %456, label %461

456:                                              ; preds = %447
  %457 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %458 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = sub nsw i32 0, %459
  br label %465

461:                                              ; preds = %447
  %462 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %463 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  br label %465

465:                                              ; preds = %461, %456
  %466 = phi i32 [ %460, %456 ], [ %464, %461 ]
  %467 = load i32*, i32** %8, align 8
  %468 = load i32, i32* %29, align 4
  %469 = load i32, i32* %30, align 4
  %470 = shl i32 %468, %469
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %467, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = add nsw i32 %473, %466
  store i32 %474, i32* %472, align 4
  br label %475

475:                                              ; preds = %465, %438, %420
  br label %476

476:                                              ; preds = %475
  %477 = load i32, i32* %29, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %29, align 4
  br label %417

479:                                              ; preds = %417
  br label %480

480:                                              ; preds = %479, %391
  br label %481

481:                                              ; preds = %480, %390
  %482 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %483 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %482, i32 0, i32 7
  %484 = load i64, i64* %483, align 8
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %487

486:                                              ; preds = %481
  store i32 63, i32* %15, align 4
  br label %487

487:                                              ; preds = %486, %481
  %488 = load i32, i32* %15, align 4
  %489 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %490 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %489, i32 0, i32 6
  %491 = load i32*, i32** %490, align 8
  %492 = load i32, i32* %9, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32, i32* %491, i64 %493
  store i32 %488, i32* %494, align 4
  store i32 0, i32* %6, align 4
  br label %495

495:                                              ; preds = %487, %244, %65
  %496 = load i32, i32* %6, align 4
  ret i32 %496
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i64 @vc1_i_pred_dc(%struct.TYPE_9__*, i32, i32, i32, i32**, i32*) #1

declare dso_local i32 @vc1_decode_ac_coeff(%struct.TYPE_8__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
