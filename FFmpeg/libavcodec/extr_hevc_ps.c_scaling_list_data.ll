; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_ps.c_scaling_list_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_ps.c_scaling_list_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32***, i32** }
%struct.TYPE_6__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Invalid delta in scaling list data: %d.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_hevc_diag_scan4x4_y = common dso_local global i32* null, align 8
@ff_hevc_diag_scan4x4_x = common dso_local global i32* null, align 8
@ff_hevc_diag_scan8x8_y = common dso_local global i32* null, align 8
@ff_hevc_diag_scan8x8_x = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_6__*)* @scaling_list_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scaling_list_data(i32* %0, i32* %1, %struct.TYPE_5__* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x [6 x i32]], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %222, %4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %225

23:                                               ; preds = %20
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %214, %23
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 6
  br i1 %26, label %27, label %221

27:                                               ; preds = %24
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @get_bits1(i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %113, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @get_ue_golomb_long(i32* %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %112

37:                                               ; preds = %32
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, 3
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 3, i32 1
  %42 = load i32, i32* %16, align 4
  %43 = mul i32 %42, %41
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @av_log(i32* %48, i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %52, i32* %5, align 4
  br label %376

53:                                               ; preds = %37
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32***, i32**** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32**, i32*** %56, i64 %58
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32***, i32**** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32**, i32*** %67, i64 %69
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %16, align 4
  %74 = sub i32 %72, %73
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %71, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = icmp sgt i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 64, i32 16
  %82 = call i32 @memcpy(i32* %64, i32* %77, i32 %81)
  %83 = load i32, i32* %12, align 4
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %111

85:                                               ; preds = %53
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sub nsw i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %88, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %16, align 4
  %96 = sub i32 %94, %95
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sub nsw i32 %103, 2
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %102, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %99, i32* %110, align 4
  br label %111

111:                                              ; preds = %85, %53
  br label %112

112:                                              ; preds = %111, %32
  br label %213

113:                                              ; preds = %27
  store i32 8, i32* %17, align 4
  %114 = load i32, i32* %12, align 4
  %115 = shl i32 %114, 1
  %116 = add nsw i32 4, %115
  %117 = shl i32 1, %116
  %118 = call i32 @FFMIN(i32 64, i32 %117)
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp sgt i32 %119, 1
  br i1 %120, label %121, label %152

121:                                              ; preds = %113
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 @get_se_golomb(i32* %122)
  %124 = add nsw i32 %123, 8
  %125 = load i32, i32* %12, align 4
  %126 = sub nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %11, i64 0, i64 %127
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [6 x i32], [6 x i32]* %128, i64 0, i64 %130
  store i32 %124, i32* %131, align 4
  %132 = load i32, i32* %12, align 4
  %133 = sub nsw i32 %132, 2
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %11, i64 0, i64 %134
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [6 x i32], [6 x i32]* %135, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sub nsw i32 %144, 2
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %143, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %140, i32* %151, align 4
  br label %152

152:                                              ; preds = %121, %113
  store i32 0, i32* %15, align 4
  br label %153

153:                                              ; preds = %209, %152
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %18, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %212

157:                                              ; preds = %153
  %158 = load i32, i32* %12, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %157
  %161 = load i32*, i32** @ff_hevc_diag_scan4x4_y, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = mul nsw i32 4, %165
  %167 = load i32*, i32** @ff_hevc_diag_scan4x4_x, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %166, %171
  store i32 %172, i32* %14, align 4
  br label %186

173:                                              ; preds = %157
  %174 = load i32*, i32** @ff_hevc_diag_scan8x8_y, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = mul nsw i32 8, %178
  %180 = load i32*, i32** @ff_hevc_diag_scan8x8_x, align 8
  %181 = load i32, i32* %15, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %179, %184
  store i32 %185, i32* %14, align 4
  br label %186

186:                                              ; preds = %173, %160
  %187 = load i32*, i32** %6, align 8
  %188 = call i32 @get_se_golomb(i32* %187)
  store i32 %188, i32* %19, align 4
  %189 = load i32, i32* %17, align 4
  %190 = add i32 %189, 256
  %191 = load i32, i32* %19, align 4
  %192 = add i32 %190, %191
  %193 = urem i32 %192, 256
  store i32 %193, i32* %17, align 4
  %194 = load i32, i32* %17, align 4
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32***, i32**** %196, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32**, i32*** %197, i64 %199
  %201 = load i32**, i32*** %200, align 8
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %194, i32* %208, align 4
  br label %209

209:                                              ; preds = %186
  %210 = load i32, i32* %15, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %15, align 4
  br label %153

212:                                              ; preds = %153
  br label %213

213:                                              ; preds = %212, %112
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %12, align 4
  %216 = icmp eq i32 %215, 3
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 3, i32 1
  %219 = load i32, i32* %13, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %13, align 4
  br label %24

221:                                              ; preds = %24
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %12, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %12, align 4
  br label %20

225:                                              ; preds = %20
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %228, 3
  br i1 %229, label %230, label %375

230:                                              ; preds = %225
  store i32 0, i32* %15, align 4
  br label %231

231:                                              ; preds = %319, %230
  %232 = load i32, i32* %15, align 4
  %233 = icmp slt i32 %232, 64
  br i1 %233, label %234, label %322

234:                                              ; preds = %231
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = load i32***, i32**** %236, align 8
  %238 = getelementptr inbounds i32**, i32*** %237, i64 2
  %239 = load i32**, i32*** %238, align 8
  %240 = getelementptr inbounds i32*, i32** %239, i64 1
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %15, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = load i32***, i32**** %247, align 8
  %249 = getelementptr inbounds i32**, i32*** %248, i64 3
  %250 = load i32**, i32*** %249, align 8
  %251 = getelementptr inbounds i32*, i32** %250, i64 1
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %15, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  store i32 %245, i32* %255, align 4
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load i32***, i32**** %257, align 8
  %259 = getelementptr inbounds i32**, i32*** %258, i64 2
  %260 = load i32**, i32*** %259, align 8
  %261 = getelementptr inbounds i32*, i32** %260, i64 2
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %15, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 0
  %269 = load i32***, i32**** %268, align 8
  %270 = getelementptr inbounds i32**, i32*** %269, i64 3
  %271 = load i32**, i32*** %270, align 8
  %272 = getelementptr inbounds i32*, i32** %271, i64 2
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %15, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  store i32 %266, i32* %276, align 4
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 0
  %279 = load i32***, i32**** %278, align 8
  %280 = getelementptr inbounds i32**, i32*** %279, i64 2
  %281 = load i32**, i32*** %280, align 8
  %282 = getelementptr inbounds i32*, i32** %281, i64 4
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %15, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 0
  %290 = load i32***, i32**** %289, align 8
  %291 = getelementptr inbounds i32**, i32*** %290, i64 3
  %292 = load i32**, i32*** %291, align 8
  %293 = getelementptr inbounds i32*, i32** %292, i64 4
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %15, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %287, i32* %297, align 4
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 0
  %300 = load i32***, i32**** %299, align 8
  %301 = getelementptr inbounds i32**, i32*** %300, i64 2
  %302 = load i32**, i32*** %301, align 8
  %303 = getelementptr inbounds i32*, i32** %302, i64 5
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %15, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 0
  %311 = load i32***, i32**** %310, align 8
  %312 = getelementptr inbounds i32**, i32*** %311, i64 3
  %313 = load i32**, i32*** %312, align 8
  %314 = getelementptr inbounds i32*, i32** %313, i64 5
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %15, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  store i32 %308, i32* %318, align 4
  br label %319

319:                                              ; preds = %234
  %320 = load i32, i32* %15, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %15, align 4
  br label %231

322:                                              ; preds = %231
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 1
  %325 = load i32**, i32*** %324, align 8
  %326 = getelementptr inbounds i32*, i32** %325, i64 0
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 1
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 1
  %332 = load i32**, i32*** %331, align 8
  %333 = getelementptr inbounds i32*, i32** %332, i64 1
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 1
  store i32 %329, i32* %335, align 4
  %336 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 1
  %338 = load i32**, i32*** %337, align 8
  %339 = getelementptr inbounds i32*, i32** %338, i64 0
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 2
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 1
  %345 = load i32**, i32*** %344, align 8
  %346 = getelementptr inbounds i32*, i32** %345, i64 1
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 2
  store i32 %342, i32* %348, align 4
  %349 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 1
  %351 = load i32**, i32*** %350, align 8
  %352 = getelementptr inbounds i32*, i32** %351, i64 0
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 4
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 1
  %358 = load i32**, i32*** %357, align 8
  %359 = getelementptr inbounds i32*, i32** %358, i64 1
  %360 = load i32*, i32** %359, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 4
  store i32 %355, i32* %361, align 4
  %362 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %362, i32 0, i32 1
  %364 = load i32**, i32*** %363, align 8
  %365 = getelementptr inbounds i32*, i32** %364, i64 0
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 5
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %369, i32 0, i32 1
  %371 = load i32**, i32*** %370, align 8
  %372 = getelementptr inbounds i32*, i32** %371, i64 1
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 5
  store i32 %368, i32* %374, align 4
  br label %375

375:                                              ; preds = %322, %225
  store i32 0, i32* %5, align 4
  br label %376

376:                                              ; preds = %375, %47
  %377 = load i32, i32* %5, align 4
  ret i32 %377
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_ue_golomb_long(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @get_se_golomb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
