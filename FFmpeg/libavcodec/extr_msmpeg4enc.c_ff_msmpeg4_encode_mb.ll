; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msmpeg4enc.c_ff_msmpeg4_encode_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msmpeg4enc.c_ff_msmpeg4_encode_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32, i64, i64, i32, i32, i64, i32, i64, i64, i32, i32, i32, i32, i32 }

@ff_v2_mb_type = common dso_local global i32** null, align 8
@ff_h263_cbpy_tab = common dso_local global i32** null, align 8
@ff_table_mb_non_intra = common dso_local global i32** null, align 8
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@ff_v2_intra_cbpc = common dso_local global i32** null, align 8
@ff_msmp4_mb_i_table = common dso_local global i32** null, align 8
@ff_table_inter_intra = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_msmpeg4_encode_mb(%struct.TYPE_10__* %0, [64 x i32]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca [64 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store [64 x i32]* %1, [64 x i32]** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = call i32 @ff_msmpeg4_handle_slices(%struct.TYPE_10__* %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %223, label %23

23:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 6
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load i32, i32* %11, align 4
  %38 = sub nsw i32 5, %37
  %39 = shl i32 1, %38
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %36, %27
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %24

46:                                               ; preds = %24
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 9
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %51
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 7
  %61 = call i32 @put_bits(i32* %60, i32 1, i32 1)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 13
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 12
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  br label %466

74:                                               ; preds = %51, %46
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 9
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 7
  %82 = call i32 @put_bits(i32* %81, i32 1, i32 0)
  br label %83

83:                                               ; preds = %79, %74
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp sle i32 %86, 2
  br i1 %87, label %88, label %154

88:                                               ; preds = %83
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 7
  %91 = load i32**, i32*** @ff_v2_mb_type, align 8
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %92, 3
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %91, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32**, i32*** @ff_v2_mb_type, align 8
  %100 = load i32, i32* %9, align 4
  %101 = and i32 %100, 3
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %99, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @put_bits(i32* %90, i32 %98, i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, 3
  %110 = icmp ne i32 %109, 3
  br i1 %110, label %111, label %114

111:                                              ; preds = %88
  %112 = load i32, i32* %9, align 4
  %113 = xor i32 %112, 60
  store i32 %113, i32* %10, align 4
  br label %116

114:                                              ; preds = %88
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %114, %111
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 7
  %119 = load i32**, i32*** @ff_h263_cbpy_tab, align 8
  %120 = load i32, i32* %10, align 4
  %121 = ashr i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %119, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32**, i32*** @ff_h263_cbpy_tab, align 8
  %128 = load i32, i32* %10, align 4
  %129 = ashr i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %127, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @put_bits(i32* %118, i32 %126, i32 %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %137 = call i64 @get_bits_diff(%struct.TYPE_10__* %136)
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, %137
  store i64 %141, i64* %139, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = call i32 @ff_h263_pred_motion(%struct.TYPE_10__* %142, i32 0, i32 0, i32* %12, i32* %13)
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %12, align 4
  %147 = sub nsw i32 %145, %146
  %148 = call i32 @msmpeg4v2_encode_motion(%struct.TYPE_10__* %144, i32 %147)
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %13, align 4
  %152 = sub nsw i32 %150, %151
  %153 = call i32 @msmpeg4v2_encode_motion(%struct.TYPE_10__* %149, i32 %152)
  br label %190

154:                                              ; preds = %83
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 7
  %157 = load i32**, i32*** @ff_table_mb_non_intra, align 8
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 64
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %157, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32**, i32*** @ff_table_mb_non_intra, align 8
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 64
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %165, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @put_bits(i32* %156, i32 %164, i32 %172)
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %175 = call i64 @get_bits_diff(%struct.TYPE_10__* %174)
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 6
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, %175
  store i64 %179, i64* %177, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %181 = call i32 @ff_h263_pred_motion(%struct.TYPE_10__* %180, i32 0, i32 0, i32* %12, i32* %13)
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %12, align 4
  %185 = sub nsw i32 %183, %184
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %13, align 4
  %188 = sub nsw i32 %186, %187
  %189 = call i32 @ff_msmpeg4_encode_motion(%struct.TYPE_10__* %182, i32 %185, i32 %188)
  br label %190

190:                                              ; preds = %154, %116
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %192 = call i64 @get_bits_diff(%struct.TYPE_10__* %191)
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 11
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %192
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %194, align 4
  store i32 0, i32* %11, align 4
  br label %199

199:                                              ; preds = %211, %190
  %200 = load i32, i32* %11, align 4
  %201 = icmp slt i32 %200, 6
  br i1 %201, label %202, label %214

202:                                              ; preds = %199
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %204 = load [64 x i32]*, [64 x i32]** %6, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [64 x i32], [64 x i32]* %204, i64 %206
  %208 = getelementptr inbounds [64 x i32], [64 x i32]* %207, i64 0, i64 0
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @ff_msmpeg4_encode_block(%struct.TYPE_10__* %203, i32* %208, i32 %209)
  br label %211

211:                                              ; preds = %202
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %11, align 4
  br label %199

214:                                              ; preds = %199
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %216 = call i64 @get_bits_diff(%struct.TYPE_10__* %215)
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 10
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %220, %216
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %218, align 8
  br label %466

223:                                              ; preds = %4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %224

224:                                              ; preds = %261, %223
  %225 = load i32, i32* %11, align 4
  %226 = icmp slt i32 %225, 6
  br i1 %226, label %227, label %264

227:                                              ; preds = %224
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = icmp sge i32 %234, 1
  %236 = zext i1 %235 to i32
  store i32 %236, i32* %15, align 4
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %11, align 4
  %239 = sub nsw i32 5, %238
  %240 = shl i32 %237, %239
  %241 = load i32, i32* %9, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %9, align 4
  %243 = load i32, i32* %11, align 4
  %244 = icmp slt i32 %243, 4
  br i1 %244, label %245, label %254

245:                                              ; preds = %227
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %247 = load i32, i32* %11, align 4
  %248 = call i32 @ff_msmpeg4_coded_block_pred(%struct.TYPE_10__* %246, i32 %247, i32** %14)
  store i32 %248, i32* %16, align 4
  %249 = load i32, i32* %15, align 4
  %250 = load i32*, i32** %14, align 8
  store i32 %249, i32* %250, align 4
  %251 = load i32, i32* %15, align 4
  %252 = load i32, i32* %16, align 4
  %253 = xor i32 %251, %252
  store i32 %253, i32* %15, align 4
  br label %254

254:                                              ; preds = %245, %227
  %255 = load i32, i32* %15, align 4
  %256 = load i32, i32* %11, align 4
  %257 = sub nsw i32 5, %256
  %258 = shl i32 %255, %257
  %259 = load i32, i32* %10, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %10, align 4
  br label %261

261:                                              ; preds = %254
  %262 = load i32, i32* %11, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %11, align 4
  br label %224

264:                                              ; preds = %224
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = icmp sle i32 %267, 2
  br i1 %268, label %269, label %349

269:                                              ; preds = %264
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %295

275:                                              ; preds = %269
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 7
  %278 = load i32**, i32*** @ff_v2_intra_cbpc, align 8
  %279 = load i32, i32* %9, align 4
  %280 = and i32 %279, 3
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32*, i32** %278, i64 %281
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  %285 = load i32, i32* %284, align 4
  %286 = load i32**, i32*** @ff_v2_intra_cbpc, align 8
  %287 = load i32, i32* %9, align 4
  %288 = and i32 %287, 3
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32*, i32** %286, i64 %289
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @put_bits(i32* %277, i32 %285, i32 %293)
  br label %326

295:                                              ; preds = %269
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 9
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %295
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 7
  %303 = call i32 @put_bits(i32* %302, i32 1, i32 0)
  br label %304

304:                                              ; preds = %300, %295
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 7
  %307 = load i32**, i32*** @ff_v2_mb_type, align 8
  %308 = load i32, i32* %9, align 4
  %309 = and i32 %308, 3
  %310 = add nsw i32 %309, 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32*, i32** %307, i64 %311
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 1
  %315 = load i32, i32* %314, align 4
  %316 = load i32**, i32*** @ff_v2_mb_type, align 8
  %317 = load i32, i32* %9, align 4
  %318 = and i32 %317, 3
  %319 = add nsw i32 %318, 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32*, i32** %316, i64 %320
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 0
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @put_bits(i32* %306, i32 %315, i32 %324)
  br label %326

326:                                              ; preds = %304, %275
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 7
  %329 = call i32 @put_bits(i32* %328, i32 1, i32 0)
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 7
  %332 = load i32**, i32*** @ff_h263_cbpy_tab, align 8
  %333 = load i32, i32* %9, align 4
  %334 = ashr i32 %333, 2
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32*, i32** %332, i64 %335
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 1
  %339 = load i32, i32* %338, align 4
  %340 = load i32**, i32*** @ff_h263_cbpy_tab, align 8
  %341 = load i32, i32* %9, align 4
  %342 = ashr i32 %341, 2
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32*, i32** %340, i64 %343
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 0
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @put_bits(i32* %331, i32 %339, i32 %347)
  br label %431

349:                                              ; preds = %264
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 2
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %373

355:                                              ; preds = %349
  %356 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 7
  %358 = load i32**, i32*** @ff_msmp4_mb_i_table, align 8
  %359 = load i32, i32* %10, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32*, i32** %358, i64 %360
  %362 = load i32*, i32** %361, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 1
  %364 = load i32, i32* %363, align 4
  %365 = load i32**, i32*** @ff_msmp4_mb_i_table, align 8
  %366 = load i32, i32* %10, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32*, i32** %365, i64 %367
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 0
  %371 = load i32, i32* %370, align 4
  %372 = call i32 @put_bits(i32* %357, i32 %364, i32 %371)
  br label %400

373:                                              ; preds = %349
  %374 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 9
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %373
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 7
  %381 = call i32 @put_bits(i32* %380, i32 1, i32 0)
  br label %382

382:                                              ; preds = %378, %373
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 7
  %385 = load i32**, i32*** @ff_table_mb_non_intra, align 8
  %386 = load i32, i32* %9, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32*, i32** %385, i64 %387
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 1
  %391 = load i32, i32* %390, align 4
  %392 = load i32**, i32*** @ff_table_mb_non_intra, align 8
  %393 = load i32, i32* %9, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32*, i32** %392, i64 %394
  %396 = load i32*, i32** %395, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 0
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @put_bits(i32* %384, i32 %391, i32 %398)
  br label %400

400:                                              ; preds = %382, %355
  %401 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %401, i32 0, i32 7
  %403 = call i32 @put_bits(i32* %402, i32 1, i32 0)
  %404 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %404, i32 0, i32 8
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %430

408:                                              ; preds = %400
  %409 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %409, i32 0, i32 3
  store i64 0, i64* %410, align 8
  %411 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %411, i32 0, i32 7
  %413 = load i32**, i32*** @ff_table_inter_intra, align 8
  %414 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %414, i32 0, i32 3
  %416 = load i64, i64* %415, align 8
  %417 = getelementptr inbounds i32*, i32** %413, i64 %416
  %418 = load i32*, i32** %417, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 1
  %420 = load i32, i32* %419, align 4
  %421 = load i32**, i32*** @ff_table_inter_intra, align 8
  %422 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %422, i32 0, i32 3
  %424 = load i64, i64* %423, align 8
  %425 = getelementptr inbounds i32*, i32** %421, i64 %424
  %426 = load i32*, i32** %425, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 0
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @put_bits(i32* %412, i32 %420, i32 %428)
  br label %430

430:                                              ; preds = %408, %400
  br label %431

431:                                              ; preds = %430, %326
  %432 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %433 = call i64 @get_bits_diff(%struct.TYPE_10__* %432)
  %434 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %435 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %434, i32 0, i32 6
  %436 = load i64, i64* %435, align 8
  %437 = add nsw i64 %436, %433
  store i64 %437, i64* %435, align 8
  store i32 0, i32* %11, align 4
  br label %438

438:                                              ; preds = %450, %431
  %439 = load i32, i32* %11, align 4
  %440 = icmp slt i32 %439, 6
  br i1 %440, label %441, label %453

441:                                              ; preds = %438
  %442 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %443 = load [64 x i32]*, [64 x i32]** %6, align 8
  %444 = load i32, i32* %11, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [64 x i32], [64 x i32]* %443, i64 %445
  %447 = getelementptr inbounds [64 x i32], [64 x i32]* %446, i64 0, i64 0
  %448 = load i32, i32* %11, align 4
  %449 = call i32 @ff_msmpeg4_encode_block(%struct.TYPE_10__* %442, i32* %447, i32 %448)
  br label %450

450:                                              ; preds = %441
  %451 = load i32, i32* %11, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %11, align 4
  br label %438

453:                                              ; preds = %438
  %454 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %455 = call i64 @get_bits_diff(%struct.TYPE_10__* %454)
  %456 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %456, i32 0, i32 5
  %458 = load i32, i32* %457, align 4
  %459 = sext i32 %458 to i64
  %460 = add nsw i64 %459, %455
  %461 = trunc i64 %460 to i32
  store i32 %461, i32* %457, align 4
  %462 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %463 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %462, i32 0, i32 4
  %464 = load i32, i32* %463, align 8
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %463, align 8
  br label %466

466:                                              ; preds = %58, %453, %214
  ret void
}

declare dso_local i32 @ff_msmpeg4_handle_slices(%struct.TYPE_10__*) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i64 @get_bits_diff(%struct.TYPE_10__*) #1

declare dso_local i32 @ff_h263_pred_motion(%struct.TYPE_10__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @msmpeg4v2_encode_motion(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ff_msmpeg4_encode_motion(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ff_msmpeg4_encode_block(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @ff_msmpeg4_coded_block_pred(%struct.TYPE_10__*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
