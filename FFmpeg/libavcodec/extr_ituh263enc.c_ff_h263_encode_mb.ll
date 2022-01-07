; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ituh263enc.c_ff_h263_encode_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ituh263enc.c_ff_h263_encode_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64, i64*, i32, i32, i32*, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_11__, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32*** }
%struct.TYPE_12__ = type { i32 }

@AV_CODEC_FLAG_PASS1 = common dso_local global i32 0, align 4
@MV_TYPE_16X16 = common dso_local global i32 0, align 4
@ff_h263_inter_MCBPC_bits = common dso_local global i32* null, align 8
@ff_h263_inter_MCBPC_code = common dso_local global i32* null, align 8
@ff_h263_cbpy_tab = common dso_local global i32** null, align 8
@dquant_code = common dso_local global i32* null, align 8
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@ff_h263_intra_MCBPC_bits = common dso_local global i32* null, align 8
@ff_h263_intra_MCBPC_code = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h263_encode_mb(%struct.TYPE_13__* %0, [64 x i32]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca [64 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [6 x i32], align 16
  %17 = alloca [6 x i32*], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store [64 x i32]* %1, [64 x i32]** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 22
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AV_CODEC_FLAG_PASS1, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %18, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 12
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %367, label %32

32:                                               ; preds = %4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = load [64 x i32]*, [64 x i32]** %6, align 8
  %35 = bitcast [64 x i32]* %34 to i32**
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @get_p_cbp(%struct.TYPE_13__* %33, i32** %35, i32 %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %43, %46
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MV_TYPE_16X16, align 4
  %52 = sub nsw i32 %50, %51
  %53 = or i32 %47, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %32
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 15
  %58 = call i32 @put_bits(i32* %57, i32 1, i32 1)
  %59 = load i32, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 14
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 21
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %61, %55
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 20
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %726

75:                                               ; preds = %32
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 15
  %78 = call i32 @put_bits(i32* %77, i32 1, i32 0)
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %79, 3
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %12, align 4
  %82 = ashr i32 %81, 2
  store i32 %82, i32* %10, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %75
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 3
  br i1 %89, label %90, label %93

90:                                               ; preds = %87, %75
  %91 = load i32, i32* %10, align 4
  %92 = xor i32 %91, 15
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 8
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %98, %93
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MV_TYPE_16X16, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %208

107:                                              ; preds = %101
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 15
  %110 = load i32*, i32** @ff_h263_inter_MCBPC_bits, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** @ff_h263_inter_MCBPC_code, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @put_bits(i32* %109, i32 %114, i32 %119)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 15
  %123 = load i32**, i32*** @ff_h263_cbpy_tab, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32**, i32*** @ff_h263_cbpy_tab, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @put_bits(i32* %122, i32 %129, i32 %136)
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %107
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 15
  %145 = load i32*, i32** @dquant_code, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 2
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %145, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @put_bits(i32* %144, i32 2, i32 %152)
  br label %154

154:                                              ; preds = %142, %107
  %155 = load i32, i32* %18, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %159 = call i64 @get_bits_diff(%struct.TYPE_13__* %158)
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 14
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %162, %159
  store i64 %163, i64* %161, align 8
  br label %164

164:                                              ; preds = %157, %154
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %166 = call i32 @ff_h263_pred_motion(%struct.TYPE_13__* %165, i32 0, i32 0, i32* %13, i32* %14)
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 18
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %164
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %13, align 4
  %175 = sub nsw i32 %173, %174
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %14, align 4
  %178 = sub nsw i32 %176, %177
  %179 = call i32 @ff_h263_encode_motion_vector(%struct.TYPE_13__* %172, i32 %175, i32 %178, i32 1)
  br label %207

180:                                              ; preds = %164
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 15
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %13, align 4
  %185 = sub nsw i32 %183, %184
  %186 = call i32 @h263p_encode_umotion(i32* %182, i32 %185)
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 15
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %14, align 4
  %191 = sub nsw i32 %189, %190
  %192 = call i32 @h263p_encode_umotion(i32* %188, i32 %191)
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %13, align 4
  %195 = sub nsw i32 %193, %194
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %206

197:                                              ; preds = %180
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %14, align 4
  %200 = sub nsw i32 %198, %199
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 15
  %205 = call i32 @put_bits(i32* %204, i32 1, i32 1)
  br label %206

206:                                              ; preds = %202, %197, %180
  br label %207

207:                                              ; preds = %206, %171
  br label %354

208:                                              ; preds = %101
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 15
  %211 = load i32*, i32** @ff_h263_inter_MCBPC_bits, align 8
  %212 = load i32, i32* %9, align 4
  %213 = add nsw i32 %212, 16
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** @ff_h263_inter_MCBPC_code, align 8
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, 16
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @put_bits(i32* %210, i32 %216, i32 %222)
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 15
  %226 = load i32**, i32*** @ff_h263_cbpy_tab, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32*, i32** %226, i64 %228
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32**, i32*** @ff_h263_cbpy_tab, align 8
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32*, i32** %233, i64 %235
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @put_bits(i32* %225, i32 %232, i32 %239)
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %257

245:                                              ; preds = %208
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 15
  %248 = load i32*, i32** @dquant_code, align 8
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = add nsw i32 %251, 2
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %248, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @put_bits(i32* %247, i32 2, i32 %255)
  br label %257

257:                                              ; preds = %245, %208
  %258 = load i32, i32* %18, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %257
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %262 = call i64 @get_bits_diff(%struct.TYPE_13__* %261)
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 14
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %265, %262
  store i64 %266, i64* %264, align 8
  br label %267

267:                                              ; preds = %260, %257
  store i32 0, i32* %11, align 4
  br label %268

268:                                              ; preds = %350, %267
  %269 = load i32, i32* %11, align 4
  %270 = icmp slt i32 %269, 4
  br i1 %270, label %271, label %353

271:                                              ; preds = %268
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %273 = load i32, i32* %11, align 4
  %274 = call i32 @ff_h263_pred_motion(%struct.TYPE_13__* %272, i32 %273, i32 0, i32* %13, i32* %14)
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 19
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 0
  %278 = load i32***, i32**** %277, align 8
  %279 = getelementptr inbounds i32**, i32*** %278, i64 0
  %280 = load i32**, i32*** %279, align 8
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 3
  %283 = load i64*, i64** %282, align 8
  %284 = load i32, i32* %11, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = getelementptr inbounds i32*, i32** %280, i64 %287
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  %291 = load i32, i32* %290, align 4
  store i32 %291, i32* %7, align 4
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 19
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 0
  %295 = load i32***, i32**** %294, align 8
  %296 = getelementptr inbounds i32**, i32*** %295, i64 0
  %297 = load i32**, i32*** %296, align 8
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 3
  %300 = load i64*, i64** %299, align 8
  %301 = load i32, i32* %11, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i64, i64* %300, i64 %302
  %304 = load i64, i64* %303, align 8
  %305 = getelementptr inbounds i32*, i32** %297, i64 %304
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 1
  %308 = load i32, i32* %307, align 4
  store i32 %308, i32* %8, align 4
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 18
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %322, label %313

313:                                              ; preds = %271
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %315 = load i32, i32* %7, align 4
  %316 = load i32, i32* %13, align 4
  %317 = sub nsw i32 %315, %316
  %318 = load i32, i32* %8, align 4
  %319 = load i32, i32* %14, align 4
  %320 = sub nsw i32 %318, %319
  %321 = call i32 @ff_h263_encode_motion_vector(%struct.TYPE_13__* %314, i32 %317, i32 %320, i32 1)
  br label %349

322:                                              ; preds = %271
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 15
  %325 = load i32, i32* %7, align 4
  %326 = load i32, i32* %13, align 4
  %327 = sub nsw i32 %325, %326
  %328 = call i32 @h263p_encode_umotion(i32* %324, i32 %327)
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 15
  %331 = load i32, i32* %8, align 4
  %332 = load i32, i32* %14, align 4
  %333 = sub nsw i32 %331, %332
  %334 = call i32 @h263p_encode_umotion(i32* %330, i32 %333)
  %335 = load i32, i32* %7, align 4
  %336 = load i32, i32* %13, align 4
  %337 = sub nsw i32 %335, %336
  %338 = icmp eq i32 %337, 1
  br i1 %338, label %339, label %348

339:                                              ; preds = %322
  %340 = load i32, i32* %8, align 4
  %341 = load i32, i32* %14, align 4
  %342 = sub nsw i32 %340, %341
  %343 = icmp eq i32 %342, 1
  br i1 %343, label %344, label %348

344:                                              ; preds = %339
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 15
  %347 = call i32 @put_bits(i32* %346, i32 1, i32 1)
  br label %348

348:                                              ; preds = %344, %339, %322
  br label %349

349:                                              ; preds = %348, %313
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %11, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %11, align 4
  br label %268

353:                                              ; preds = %268
  br label %354

354:                                              ; preds = %353, %207
  %355 = load i32, i32* %18, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %366

357:                                              ; preds = %354
  %358 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %359 = call i64 @get_bits_diff(%struct.TYPE_13__* %358)
  %360 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 17
  %362 = load i32, i32* %361, align 8
  %363 = sext i32 %362 to i64
  %364 = add nsw i64 %363, %359
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %361, align 8
  br label %366

366:                                              ; preds = %357, %354
  br label %655

367:                                              ; preds = %4
  %368 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %368, i32 0, i32 12
  %370 = load i64, i64* %369, align 8
  %371 = call i32 @av_assert2(i64 %370)
  store i32 0, i32* %12, align 4
  %372 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 13
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %518

376:                                              ; preds = %367
  store i32 0, i32* %11, align 4
  br label %377

377:                                              ; preds = %514, %376
  %378 = load i32, i32* %11, align 4
  %379 = icmp slt i32 %378, 6
  br i1 %379, label %380, label %517

380:                                              ; preds = %377
  %381 = load [64 x i32]*, [64 x i32]** %6, align 8
  %382 = load i32, i32* %11, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [64 x i32], [64 x i32]* %381, i64 %383
  %385 = getelementptr inbounds [64 x i32], [64 x i32]* %384, i64 0, i64 0
  %386 = load i32, i32* %385, align 4
  store i32 %386, i32* %19, align 4
  %387 = load i32, i32* %11, align 4
  %388 = icmp slt i32 %387, 4
  br i1 %388, label %389, label %393

389:                                              ; preds = %380
  %390 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %390, i32 0, i32 4
  %392 = load i32, i32* %391, align 8
  store i32 %392, i32* %20, align 4
  br label %397

393:                                              ; preds = %380
  %394 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %394, i32 0, i32 5
  %396 = load i32, i32* %395, align 4
  store i32 %396, i32* %20, align 4
  br label %397

397:                                              ; preds = %393, %389
  %398 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %399 = load i32, i32* %11, align 4
  %400 = load i32, i32* %11, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [6 x i32*], [6 x i32*]* %17, i64 0, i64 %401
  %403 = call i32 @ff_h263_pred_dc(%struct.TYPE_13__* %398, i32 %399, i32** %402)
  store i32 %403, i32* %15, align 4
  %404 = load i32, i32* %15, align 4
  %405 = load i32, i32* %19, align 4
  %406 = sub nsw i32 %405, %404
  store i32 %406, i32* %19, align 4
  %407 = load i32, i32* %19, align 4
  %408 = icmp sge i32 %407, 0
  br i1 %408, label %409, label %416

409:                                              ; preds = %397
  %410 = load i32, i32* %19, align 4
  %411 = load i32, i32* %20, align 4
  %412 = ashr i32 %411, 1
  %413 = add nsw i32 %410, %412
  %414 = load i32, i32* %20, align 4
  %415 = sdiv i32 %413, %414
  store i32 %415, i32* %19, align 4
  br label %423

416:                                              ; preds = %397
  %417 = load i32, i32* %19, align 4
  %418 = load i32, i32* %20, align 4
  %419 = ashr i32 %418, 1
  %420 = sub nsw i32 %417, %419
  %421 = load i32, i32* %20, align 4
  %422 = sdiv i32 %420, %421
  store i32 %422, i32* %19, align 4
  br label %423

423:                                              ; preds = %416, %409
  %424 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %425 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %424, i32 0, i32 16
  %426 = load i32, i32* %425, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %438, label %428

428:                                              ; preds = %423
  %429 = load i32, i32* %19, align 4
  %430 = icmp slt i32 %429, -127
  br i1 %430, label %431, label %432

431:                                              ; preds = %428
  store i32 -127, i32* %19, align 4
  br label %437

432:                                              ; preds = %428
  %433 = load i32, i32* %19, align 4
  %434 = icmp sgt i32 %433, 127
  br i1 %434, label %435, label %436

435:                                              ; preds = %432
  store i32 127, i32* %19, align 4
  br label %436

436:                                              ; preds = %435, %432
  br label %437

437:                                              ; preds = %436, %431
  br label %438

438:                                              ; preds = %437, %423
  %439 = load i32, i32* %19, align 4
  %440 = load [64 x i32]*, [64 x i32]** %6, align 8
  %441 = load i32, i32* %11, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [64 x i32], [64 x i32]* %440, i64 %442
  %444 = getelementptr inbounds [64 x i32], [64 x i32]* %443, i64 0, i64 0
  store i32 %439, i32* %444, align 4
  %445 = load i32, i32* %20, align 4
  %446 = load i32, i32* %19, align 4
  %447 = mul nsw i32 %445, %446
  %448 = load i32, i32* %15, align 4
  %449 = add nsw i32 %447, %448
  %450 = load i32, i32* %11, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 %451
  store i32 %449, i32* %452, align 4
  %453 = load i32, i32* %11, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = or i32 %456, 1
  store i32 %457, i32* %455, align 4
  %458 = load i32, i32* %11, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 %459
  %461 = load i32, i32* %460, align 4
  %462 = icmp slt i32 %461, 0
  br i1 %462, label %463, label %467

463:                                              ; preds = %438
  %464 = load i32, i32* %11, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 %465
  store i32 0, i32* %466, align 4
  br label %478

467:                                              ; preds = %438
  %468 = load i32, i32* %11, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = icmp sgt i32 %471, 2047
  br i1 %472, label %473, label %477

473:                                              ; preds = %467
  %474 = load i32, i32* %11, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 %475
  store i32 2047, i32* %476, align 4
  br label %477

477:                                              ; preds = %473, %467
  br label %478

478:                                              ; preds = %477, %463
  %479 = load i32, i32* %11, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* %11, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [6 x i32*], [6 x i32*]* %17, i64 0, i64 %484
  %486 = load i32*, i32** %485, align 8
  store i32 %482, i32* %486, align 4
  %487 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %488 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %487, i32 0, i32 6
  %489 = load i32*, i32** %488, align 8
  %490 = load i32, i32* %11, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i32, i32* %489, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = icmp sgt i32 %493, 0
  br i1 %494, label %507, label %495

495:                                              ; preds = %478
  %496 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %497 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %496, i32 0, i32 6
  %498 = load i32*, i32** %497, align 8
  %499 = load i32, i32* %11, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, i32* %498, i64 %500
  %502 = load i32, i32* %501, align 4
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %504, label %513

504:                                              ; preds = %495
  %505 = load i32, i32* %19, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %513

507:                                              ; preds = %504, %478
  %508 = load i32, i32* %11, align 4
  %509 = sub nsw i32 5, %508
  %510 = shl i32 1, %509
  %511 = load i32, i32* %12, align 4
  %512 = or i32 %511, %510
  store i32 %512, i32* %12, align 4
  br label %513

513:                                              ; preds = %507, %504, %495
  br label %514

514:                                              ; preds = %513
  %515 = load i32, i32* %11, align 4
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %11, align 4
  br label %377

517:                                              ; preds = %377
  br label %542

518:                                              ; preds = %367
  store i32 0, i32* %11, align 4
  br label %519

519:                                              ; preds = %538, %518
  %520 = load i32, i32* %11, align 4
  %521 = icmp slt i32 %520, 6
  br i1 %521, label %522, label %541

522:                                              ; preds = %519
  %523 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %524 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %523, i32 0, i32 6
  %525 = load i32*, i32** %524, align 8
  %526 = load i32, i32* %11, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32, i32* %525, i64 %527
  %529 = load i32, i32* %528, align 4
  %530 = icmp sge i32 %529, 1
  br i1 %530, label %531, label %537

531:                                              ; preds = %522
  %532 = load i32, i32* %11, align 4
  %533 = sub nsw i32 5, %532
  %534 = shl i32 1, %533
  %535 = load i32, i32* %12, align 4
  %536 = or i32 %535, %534
  store i32 %536, i32* %12, align 4
  br label %537

537:                                              ; preds = %531, %522
  br label %538

538:                                              ; preds = %537
  %539 = load i32, i32* %11, align 4
  %540 = add nsw i32 %539, 1
  store i32 %540, i32* %11, align 4
  br label %519

541:                                              ; preds = %519
  br label %542

542:                                              ; preds = %541, %517
  %543 = load i32, i32* %12, align 4
  %544 = and i32 %543, 3
  store i32 %544, i32* %9, align 4
  %545 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %546 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %545, i32 0, i32 7
  %547 = load i64, i64* %546, align 8
  %548 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %549 = icmp eq i64 %547, %548
  br i1 %549, label %550, label %572

550:                                              ; preds = %542
  %551 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %552 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %551, i32 0, i32 0
  %553 = load i32, i32* %552, align 8
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %558

555:                                              ; preds = %550
  %556 = load i32, i32* %9, align 4
  %557 = add nsw i32 %556, 4
  store i32 %557, i32* %9, align 4
  br label %558

558:                                              ; preds = %555, %550
  %559 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %560 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %559, i32 0, i32 15
  %561 = load i32*, i32** @ff_h263_intra_MCBPC_bits, align 8
  %562 = load i32, i32* %9, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i32, i32* %561, i64 %563
  %565 = load i32, i32* %564, align 4
  %566 = load i32*, i32** @ff_h263_intra_MCBPC_code, align 8
  %567 = load i32, i32* %9, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i32, i32* %566, i64 %568
  %570 = load i32, i32* %569, align 4
  %571 = call i32 @put_bits(i32* %560, i32 %565, i32 %570)
  br label %599

572:                                              ; preds = %542
  %573 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %574 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 8
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %580

577:                                              ; preds = %572
  %578 = load i32, i32* %9, align 4
  %579 = add nsw i32 %578, 8
  store i32 %579, i32* %9, align 4
  br label %580

580:                                              ; preds = %577, %572
  %581 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %582 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %581, i32 0, i32 15
  %583 = call i32 @put_bits(i32* %582, i32 1, i32 0)
  %584 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %585 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %584, i32 0, i32 15
  %586 = load i32*, i32** @ff_h263_inter_MCBPC_bits, align 8
  %587 = load i32, i32* %9, align 4
  %588 = add nsw i32 %587, 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i32, i32* %586, i64 %589
  %591 = load i32, i32* %590, align 4
  %592 = load i32*, i32** @ff_h263_inter_MCBPC_code, align 8
  %593 = load i32, i32* %9, align 4
  %594 = add nsw i32 %593, 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i32, i32* %592, i64 %595
  %597 = load i32, i32* %596, align 4
  %598 = call i32 @put_bits(i32* %585, i32 %591, i32 %597)
  br label %599

599:                                              ; preds = %580, %558
  %600 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %601 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %600, i32 0, i32 13
  %602 = load i64, i64* %601, align 8
  %603 = icmp ne i64 %602, 0
  br i1 %603, label %604, label %608

604:                                              ; preds = %599
  %605 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %606 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %605, i32 0, i32 15
  %607 = call i32 @put_bits(i32* %606, i32 1, i32 0)
  br label %608

608:                                              ; preds = %604, %599
  %609 = load i32, i32* %12, align 4
  %610 = ashr i32 %609, 2
  store i32 %610, i32* %10, align 4
  %611 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %612 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %611, i32 0, i32 15
  %613 = load i32**, i32*** @ff_h263_cbpy_tab, align 8
  %614 = load i32, i32* %10, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds i32*, i32** %613, i64 %615
  %617 = load i32*, i32** %616, align 8
  %618 = getelementptr inbounds i32, i32* %617, i64 1
  %619 = load i32, i32* %618, align 4
  %620 = load i32**, i32*** @ff_h263_cbpy_tab, align 8
  %621 = load i32, i32* %10, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds i32*, i32** %620, i64 %622
  %624 = load i32*, i32** %623, align 8
  %625 = getelementptr inbounds i32, i32* %624, i64 0
  %626 = load i32, i32* %625, align 4
  %627 = call i32 @put_bits(i32* %612, i32 %619, i32 %626)
  %628 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %629 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 8
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %644

632:                                              ; preds = %608
  %633 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %634 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %633, i32 0, i32 15
  %635 = load i32*, i32** @dquant_code, align 8
  %636 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %637 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 8
  %639 = add nsw i32 %638, 2
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds i32, i32* %635, i64 %640
  %642 = load i32, i32* %641, align 4
  %643 = call i32 @put_bits(i32* %634, i32 2, i32 %642)
  br label %644

644:                                              ; preds = %632, %608
  %645 = load i32, i32* %18, align 4
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %647, label %654

647:                                              ; preds = %644
  %648 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %649 = call i64 @get_bits_diff(%struct.TYPE_13__* %648)
  %650 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %651 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %650, i32 0, i32 14
  %652 = load i64, i64* %651, align 8
  %653 = add nsw i64 %652, %649
  store i64 %653, i64* %651, align 8
  br label %654

654:                                              ; preds = %647, %644
  br label %655

655:                                              ; preds = %654, %366
  store i32 0, i32* %11, align 4
  br label %656

656:                                              ; preds = %688, %655
  %657 = load i32, i32* %11, align 4
  %658 = icmp slt i32 %657, 6
  br i1 %658, label %659, label %691

659:                                              ; preds = %656
  %660 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %661 = load [64 x i32]*, [64 x i32]** %6, align 8
  %662 = load i32, i32* %11, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds [64 x i32], [64 x i32]* %661, i64 %663
  %665 = getelementptr inbounds [64 x i32], [64 x i32]* %664, i64 0, i64 0
  %666 = load i32, i32* %11, align 4
  %667 = call i32 @h263_encode_block(%struct.TYPE_13__* %660, i32* %665, i32 %666)
  %668 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %669 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %668, i32 0, i32 13
  %670 = load i64, i64* %669, align 8
  %671 = icmp ne i64 %670, 0
  br i1 %671, label %672, label %687

672:                                              ; preds = %659
  %673 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %674 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %673, i32 0, i32 12
  %675 = load i64, i64* %674, align 8
  %676 = icmp ne i64 %675, 0
  br i1 %676, label %677, label %687

677:                                              ; preds = %672
  %678 = load i32, i32* %11, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 %679
  %681 = load i32, i32* %680, align 4
  %682 = load [64 x i32]*, [64 x i32]** %6, align 8
  %683 = load i32, i32* %11, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds [64 x i32], [64 x i32]* %682, i64 %684
  %686 = getelementptr inbounds [64 x i32], [64 x i32]* %685, i64 0, i64 0
  store i32 %681, i32* %686, align 4
  br label %687

687:                                              ; preds = %677, %672, %659
  br label %688

688:                                              ; preds = %687
  %689 = load i32, i32* %11, align 4
  %690 = add nsw i32 %689, 1
  store i32 %690, i32* %11, align 4
  br label %656

691:                                              ; preds = %656
  %692 = load i32, i32* %18, align 4
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %694, label %726

694:                                              ; preds = %691
  %695 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %696 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %695, i32 0, i32 12
  %697 = load i64, i64* %696, align 8
  %698 = icmp ne i64 %697, 0
  br i1 %698, label %712, label %699

699:                                              ; preds = %694
  %700 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %701 = call i64 @get_bits_diff(%struct.TYPE_13__* %700)
  %702 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %703 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %702, i32 0, i32 11
  %704 = load i32, i32* %703, align 4
  %705 = sext i32 %704 to i64
  %706 = add nsw i64 %705, %701
  %707 = trunc i64 %706 to i32
  store i32 %707, i32* %703, align 4
  %708 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %709 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %708, i32 0, i32 10
  %710 = load i32, i32* %709, align 8
  %711 = add nsw i32 %710, 1
  store i32 %711, i32* %709, align 8
  br label %725

712:                                              ; preds = %694
  %713 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %714 = call i64 @get_bits_diff(%struct.TYPE_13__* %713)
  %715 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %716 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %715, i32 0, i32 9
  %717 = load i32, i32* %716, align 4
  %718 = sext i32 %717 to i64
  %719 = add nsw i64 %718, %714
  %720 = trunc i64 %719 to i32
  store i32 %720, i32* %716, align 4
  %721 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %722 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %721, i32 0, i32 8
  %723 = load i32, i32* %722, align 8
  %724 = add nsw i32 %723, 1
  store i32 %724, i32* %722, align 8
  br label %725

725:                                              ; preds = %712, %699
  br label %726

726:                                              ; preds = %70, %725, %691
  ret void
}

declare dso_local i32 @get_p_cbp(%struct.TYPE_13__*, i32**, i32, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i64 @get_bits_diff(%struct.TYPE_13__*) #1

declare dso_local i32 @ff_h263_pred_motion(%struct.TYPE_13__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ff_h263_encode_motion_vector(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @h263p_encode_umotion(i32*, i32) #1

declare dso_local i32 @av_assert2(i64) #1

declare dso_local i32 @ff_h263_pred_dc(%struct.TYPE_13__*, i32, i32**) #1

declare dso_local i32 @h263_encode_block(%struct.TYPE_13__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
