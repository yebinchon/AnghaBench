; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_dirac_unpack_block_motion_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_dirac_unpack_block_motion_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32, i32, i32, i32, i32, i32*, %struct.TYPE_11__*, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@CTX_SB_F1 = common dso_local global i32 0, align 4
@CTX_SB_DATA = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @dirac_unpack_block_motion_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dirac_unpack_block_motion_data(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x %struct.TYPE_13__], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 9
  store i32* %19, i32** %4, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @align_get_bits(i32* %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 7
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 4, %34
  %36 = call i8* @DIVRNDUP(i32 %28, i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 7
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 4, %49
  %51 = call i8* @DIVRNDUP(i32 %43, i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 4, %57
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 4, %63
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds [8 x %struct.TYPE_13__], [8 x %struct.TYPE_13__]* %11, i64 0, i64 0
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @get_interleaved_ue_golomb(i32* %69)
  %71 = call i32 @ff_dirac_init_arith_decoder(%struct.TYPE_13__* %67, i32* %68, i32 %70)
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %122, %1
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %125

78:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %112, %78
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %115

85:                                               ; preds = %79
  %86 = getelementptr inbounds [8 x %struct.TYPE_13__], [8 x %struct.TYPE_13__]* %11, i64 0, i64 0
  %87 = load i32, i32* @CTX_SB_F1, align 4
  %88 = load i32, i32* @CTX_SB_DATA, align 4
  %89 = call i32 @dirac_get_arith_uint(%struct.TYPE_13__* %86, i32 %87, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ugt i32 %90, 2
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %93, i32* %2, align 4
  br label %312

94:                                               ; preds = %85
  %95 = load i32, i32* %12, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @pred_sbsplit(i32* %99, i32 %102, i32 %103, i32 %104)
  %106 = add i32 %95, %105
  %107 = urem i32 %106, 3
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %107, i32* %111, align 4
  br label %112

112:                                              ; preds = %94
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %79

115:                                              ; preds = %79
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %5, align 8
  br label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %72

125:                                              ; preds = %72
  %126 = getelementptr inbounds [8 x %struct.TYPE_13__], [8 x %struct.TYPE_13__]* %11, i64 0, i64 0
  %127 = load i32*, i32** %4, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @get_interleaved_ue_golomb(i32* %128)
  %130 = call i32 @ff_dirac_init_arith_decoder(%struct.TYPE_13__* %126, i32* %127, i32 %129)
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %158, %125
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %161

137:                                              ; preds = %131
  %138 = getelementptr inbounds [8 x %struct.TYPE_13__], [8 x %struct.TYPE_13__]* %11, i64 0, i64 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i64 4
  %140 = load i32, i32* %6, align 4
  %141 = mul nsw i32 2, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i64 %142
  %144 = load i32*, i32** %4, align 8
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 @get_interleaved_ue_golomb(i32* %145)
  %147 = call i32 @ff_dirac_init_arith_decoder(%struct.TYPE_13__* %143, i32* %144, i32 %146)
  %148 = getelementptr inbounds [8 x %struct.TYPE_13__], [8 x %struct.TYPE_13__]* %11, i64 0, i64 0
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i64 5
  %150 = load i32, i32* %6, align 4
  %151 = mul nsw i32 2, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i64 %152
  %154 = load i32*, i32** %4, align 8
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 @get_interleaved_ue_golomb(i32* %155)
  %157 = call i32 @ff_dirac_init_arith_decoder(%struct.TYPE_13__* %153, i32* %154, i32 %156)
  br label %158

158:                                              ; preds = %137
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %6, align 4
  br label %131

161:                                              ; preds = %131
  store i32 0, i32* %6, align 4
  br label %162

162:                                              ; preds = %175, %161
  %163 = load i32, i32* %6, align 4
  %164 = icmp slt i32 %163, 3
  br i1 %164, label %165, label %178

165:                                              ; preds = %162
  %166 = getelementptr inbounds [8 x %struct.TYPE_13__], [8 x %struct.TYPE_13__]* %11, i64 0, i64 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i64 1
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i64 %169
  %171 = load i32*, i32** %4, align 8
  %172 = load i32*, i32** %4, align 8
  %173 = call i32 @get_interleaved_ue_golomb(i32* %172)
  %174 = call i32 @ff_dirac_init_arith_decoder(%struct.TYPE_13__* %170, i32* %171, i32 %173)
  br label %175

175:                                              ; preds = %165
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %162

178:                                              ; preds = %162
  store i32 0, i32* %8, align 4
  br label %179

179:                                              ; preds = %282, %178
  %180 = load i32, i32* %8, align 4
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %285

185:                                              ; preds = %179
  store i32 0, i32* %7, align 4
  br label %186

186:                                              ; preds = %278, %185
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %281

192:                                              ; preds = %186
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = mul nsw i32 %196, %199
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %200, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %195, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = shl i32 1, %205
  store i32 %206, i32* %13, align 4
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %8, align 4
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = mul nsw i32 %210, %213
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %209, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = ashr i32 4, %219
  store i32 %220, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %221

221:                                              ; preds = %274, %192
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %13, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %277

225:                                              ; preds = %221
  store i32 0, i32* %10, align 4
  br label %226

226:                                              ; preds = %270, %225
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %13, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %273

230:                                              ; preds = %226
  %231 = load i32, i32* %7, align 4
  %232 = mul nsw i32 4, %231
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %14, align 4
  %235 = mul nsw i32 %233, %234
  %236 = add nsw i32 %232, %235
  store i32 %236, i32* %15, align 4
  %237 = load i32, i32* %8, align 4
  %238 = mul nsw i32 4, %237
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* %14, align 4
  %241 = mul nsw i32 %239, %240
  %242 = add nsw i32 %238, %241
  store i32 %242, i32* %16, align 4
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 6
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %16, align 4
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = mul nsw i32 %246, %249
  %251 = load i32, i32* %15, align 4
  %252 = add nsw i32 %250, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %245, i64 %253
  store i32* %254, i32** %17, align 8
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %256 = getelementptr inbounds [8 x %struct.TYPE_13__], [8 x %struct.TYPE_13__]* %11, i64 0, i64 0
  %257 = load i32*, i32** %17, align 8
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* %15, align 4
  %262 = load i32, i32* %16, align 4
  %263 = call i32 @decode_block_params(%struct.TYPE_12__* %255, %struct.TYPE_13__* %256, i32* %257, i32 %260, i32 %261, i32 %262)
  %264 = load i32*, i32** %17, align 8
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* %14, align 4
  %269 = call i32 @propagate_block_data(i32* %264, i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %230
  %271 = load i32, i32* %10, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %10, align 4
  br label %226

273:                                              ; preds = %226
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %9, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %9, align 4
  br label %221

277:                                              ; preds = %221
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %7, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %7, align 4
  br label %186

281:                                              ; preds = %186
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %8, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %8, align 4
  br label %179

285:                                              ; preds = %179
  store i32 0, i32* %6, align 4
  br label %286

286:                                              ; preds = %308, %285
  %287 = load i32, i32* %6, align 4
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 8
  %291 = mul nsw i32 2, %290
  %292 = add nsw i32 4, %291
  %293 = icmp slt i32 %287, %292
  br i1 %293, label %294, label %311

294:                                              ; preds = %286
  %295 = load i32, i32* %6, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [8 x %struct.TYPE_13__], [8 x %struct.TYPE_13__]* %11, i64 0, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %294
  %302 = load i32, i32* %6, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [8 x %struct.TYPE_13__], [8 x %struct.TYPE_13__]* %11, i64 0, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %2, align 4
  br label %312

307:                                              ; preds = %294
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %6, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %6, align 4
  br label %286

311:                                              ; preds = %286
  store i32 0, i32* %2, align 4
  br label %312

312:                                              ; preds = %311, %301, %92
  %313 = load i32, i32* %2, align 4
  ret i32 %313
}

declare dso_local i32 @align_get_bits(i32*) #1

declare dso_local i8* @DIVRNDUP(i32, i32) #1

declare dso_local i32 @ff_dirac_init_arith_decoder(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @get_interleaved_ue_golomb(i32*) #1

declare dso_local i32 @dirac_get_arith_uint(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @pred_sbsplit(i32*, i32, i32, i32) #1

declare dso_local i32 @decode_block_params(%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i32, i32, i32) #1

declare dso_local i32 @propagate_block_data(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
