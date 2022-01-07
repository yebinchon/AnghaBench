; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp5.c_vp5_parse_coeff.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp5.c_vp5_parse_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i32**, i64*, i32, i32**, i32*, i32*, %struct.TYPE_5__*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64**, i64***, i64****, i64***** }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"End of AC stream reached in vp5_parse_coeff\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_vp56_b6to4 = common dso_local global i64* null, align 8
@ff_vp56_pc_tree = common dso_local global i32 0, align 4
@ff_vp56_coeff_bias = common dso_local global i32* null, align 8
@ff_vp56_coeff_bit_length = common dso_local global i32* null, align 8
@ff_vp56_coeff_parse_table = common dso_local global i64** null, align 8
@vp5_coeff_groups = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @vp5_parse_coeff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp5_parse_coeff(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
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
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 10
  store i32* %21, i32** %4, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 9
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %5, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  store i64* %27, i64** %6, align 8
  store i32 0, i32* %18, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @vpX_rac_is_end(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = call i32 @av_log(i32 %34, i32 %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %37, i32* %2, align 4
  br label %434

38:                                               ; preds = %1
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %430, %38
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 6
  br i1 %41, label %42, label %433

42:                                               ; preds = %39
  store i32 1, i32* %19, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp sgt i32 %43, 3
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, i32* %18, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32**, i32*** %48, align 8
  %50 = load i64*, i64** @ff_vp56_b6to4, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32*, i32** %49, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 6, %58
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 7
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %59, %72
  store i32 %73, i32* %16, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64**, i64*** %75, align 8
  %77 = load i32, i32* %18, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64*, i64** %76, i64 %78
  %80 = load i64*, i64** %79, align 8
  store i64* %80, i64** %7, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i64***, i64**** %82, align 8
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64**, i64*** %83, i64 %85
  %87 = load i64**, i64*** %86, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64*, i64** %87, i64 %89
  %91 = load i64*, i64** %90, align 8
  store i64* %91, i64** %8, align 8
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %348, %46
  %93 = load i32*, i32** %4, align 8
  %94 = load i64*, i64** %8, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @vp56_rac_get_prob_branchy(i32* %93, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %258

99:                                               ; preds = %92
  %100 = load i32*, i32** %4, align 8
  %101 = load i64*, i64** %8, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 2
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @vp56_rac_get_prob_branchy(i32* %100, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %212

106:                                              ; preds = %99
  %107 = load i32*, i32** %4, align 8
  %108 = load i64*, i64** %8, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 3
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @vp56_rac_get_prob_branchy(i32* %107, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %167

113:                                              ; preds = %106
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32**, i32*** %115, align 8
  %117 = load i64*, i64** @ff_vp56_b6to4, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i32*, i32** %116, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 4, i32* %126, align 4
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* @ff_vp56_pc_tree, align 4
  %129 = load i64*, i64** %7, align 8
  %130 = call i32 @vp56_rac_get_tree(i32* %127, i32 %128, i64* %129)
  store i32 %130, i32* %15, align 4
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @vp56_rac_get(i32* %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32*, i32** @ff_vp56_coeff_bias, align 8
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %134, 5
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %9, align 4
  %139 = load i32*, i32** @ff_vp56_coeff_bit_length, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %163, %113
  %145 = load i32, i32* %13, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %144
  %148 = load i32*, i32** %4, align 8
  %149 = load i64**, i64*** @ff_vp56_coeff_parse_table, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64*, i64** %149, i64 %151
  %153 = load i64*, i64** %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @vp56_rac_get_prob(i32* %148, i64 %157)
  %159 = load i32, i32* %13, align 4
  %160 = shl i32 %158, %159
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %9, align 4
  br label %163

163:                                              ; preds = %147
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %13, align 4
  br label %144

166:                                              ; preds = %144
  br label %211

167:                                              ; preds = %106
  %168 = load i32*, i32** %4, align 8
  %169 = load i64*, i64** %8, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 4
  %171 = load i64, i64* %170, align 8
  %172 = call i64 @vp56_rac_get_prob_branchy(i32* %168, i64 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %194

174:                                              ; preds = %167
  %175 = load i32*, i32** %4, align 8
  %176 = load i64*, i64** %7, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 5
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @vp56_rac_get_prob(i32* %175, i64 %178)
  %180 = add nsw i32 3, %179
  store i32 %180, i32* %9, align 4
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i32**, i32*** %182, align 8
  %184 = load i64*, i64** @ff_vp56_b6to4, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds i32*, i32** %183, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 3, i32* %193, align 4
  br label %208

194:                                              ; preds = %167
  store i32 2, i32* %9, align 4
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  %197 = load i32**, i32*** %196, align 8
  %198 = load i64*, i64** @ff_vp56_b6to4, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds i32*, i32** %197, i64 %202
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32 2, i32* %207, align 4
  br label %208

208:                                              ; preds = %194, %174
  %209 = load i32*, i32** %4, align 8
  %210 = call i32 @vp56_rac_get(i32* %209)
  store i32 %210, i32* %10, align 4
  br label %211

211:                                              ; preds = %208, %166
  store i32 2, i32* %19, align 4
  br label %228

212:                                              ; preds = %99
  store i32 1, i32* %19, align 4
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = load i32**, i32*** %214, align 8
  %216 = load i64*, i64** @ff_vp56_b6to4, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds i32*, i32** %215, i64 %220
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %11, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 1, i32* %225, align 4
  %226 = load i32*, i32** %4, align 8
  %227 = call i32 @vp56_rac_get(i32* %226)
  store i32 %227, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %228

228:                                              ; preds = %212, %211
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %10, align 4
  %231 = sub nsw i32 0, %230
  %232 = xor i32 %229, %231
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %232, %233
  store i32 %234, i32* %9, align 4
  %235 = load i32, i32* %11, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %228
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %9, align 4
  %242 = mul nsw i32 %241, %240
  store i32 %242, i32* %9, align 4
  br label %243

243:                                              ; preds = %237, %228
  %244 = load i32, i32* %9, align 4
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 4
  %247 = load i32**, i32*** %246, align 8
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32*, i32** %247, i64 %249
  %251 = load i32*, i32** %250, align 8
  %252 = load i64*, i64** %6, align 8
  %253 = load i32, i32* %11, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %252, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds i32, i32* %251, i64 %256
  store i32 %244, i32* %257, align 4
  br label %283

258:                                              ; preds = %92
  %259 = load i32, i32* %19, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %269

261:                                              ; preds = %258
  %262 = load i32*, i32** %4, align 8
  %263 = load i64*, i64** %8, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 1
  %265 = load i64, i64* %264, align 8
  %266 = call i64 @vp56_rac_get_prob_branchy(i32* %262, i64 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %261
  br label %350

269:                                              ; preds = %261, %258
  store i32 0, i32* %19, align 4
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 1
  %272 = load i32**, i32*** %271, align 8
  %273 = load i64*, i64** @ff_vp56_b6to4, align 8
  %274 = load i32, i32* %12, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64, i64* %273, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds i32*, i32** %272, i64 %277
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %11, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  store i32 0, i32* %282, align 4
  br label %283

283:                                              ; preds = %269, %243
  %284 = load i32, i32* %11, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %11, align 4
  %286 = load i32, i32* %11, align 4
  %287 = icmp sge i32 %286, 64
  br i1 %287, label %288, label %289

288:                                              ; preds = %283
  br label %350

289:                                              ; preds = %283
  %290 = load i32*, i32** @vp5_coeff_groups, align 8
  %291 = load i32, i32* %11, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  store i32 %294, i32* %14, align 4
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 1
  %297 = load i32**, i32*** %296, align 8
  %298 = load i64*, i64** @ff_vp56_b6to4, align 8
  %299 = load i32, i32* %12, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i64, i64* %298, i64 %300
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds i32*, i32** %297, i64 %302
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %11, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  store i32 %308, i32* %16, align 4
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 2
  %311 = load i64****, i64***** %310, align 8
  %312 = load i32, i32* %18, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i64***, i64**** %311, i64 %313
  %315 = load i64***, i64**** %314, align 8
  %316 = load i32, i32* %19, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i64**, i64*** %315, i64 %317
  %319 = load i64**, i64*** %318, align 8
  %320 = load i32, i32* %14, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i64*, i64** %319, i64 %321
  %323 = load i64*, i64** %322, align 8
  store i64* %323, i64** %7, align 8
  %324 = load i32, i32* %14, align 4
  %325 = icmp sgt i32 %324, 2
  br i1 %325, label %326, label %328

326:                                              ; preds = %289
  %327 = load i64*, i64** %7, align 8
  br label %348

328:                                              ; preds = %289
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 3
  %331 = load i64*****, i64****** %330, align 8
  %332 = load i32, i32* %18, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i64****, i64***** %331, i64 %333
  %335 = load i64****, i64***** %334, align 8
  %336 = load i32, i32* %19, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i64***, i64**** %335, i64 %337
  %339 = load i64***, i64**** %338, align 8
  %340 = load i32, i32* %14, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i64**, i64*** %339, i64 %341
  %343 = load i64**, i64*** %342, align 8
  %344 = load i32, i32* %16, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i64*, i64** %343, i64 %345
  %347 = load i64*, i64** %346, align 8
  br label %348

348:                                              ; preds = %328, %326
  %349 = phi i64* [ %327, %326 ], [ %347, %328 ]
  store i64* %349, i64** %8, align 8
  br label %92

350:                                              ; preds = %288, %268
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 5
  %353 = load i32*, i32** %352, align 8
  %354 = load i64*, i64** @ff_vp56_b6to4, align 8
  %355 = load i32, i32* %12, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i64, i64* %354, i64 %356
  %358 = load i64, i64* %357, align 8
  %359 = getelementptr inbounds i32, i32* %353, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @FFMIN(i32 %360, i32 24)
  store i32 %361, i32* %17, align 4
  %362 = load i32, i32* %11, align 4
  %363 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 5
  %365 = load i32*, i32** %364, align 8
  %366 = load i64*, i64** @ff_vp56_b6to4, align 8
  %367 = load i32, i32* %12, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i64, i64* %366, i64 %368
  %370 = load i64, i64* %369, align 8
  %371 = getelementptr inbounds i32, i32* %365, i64 %370
  store i32 %362, i32* %371, align 4
  %372 = load i32, i32* %11, align 4
  %373 = load i32, i32* %17, align 4
  %374 = icmp slt i32 %372, %373
  br i1 %374, label %375, label %399

375:                                              ; preds = %350
  %376 = load i32, i32* %11, align 4
  store i32 %376, i32* %13, align 4
  br label %377

377:                                              ; preds = %395, %375
  %378 = load i32, i32* %13, align 4
  %379 = load i32, i32* %17, align 4
  %380 = icmp sle i32 %378, %379
  br i1 %380, label %381, label %398

381:                                              ; preds = %377
  %382 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %382, i32 0, i32 1
  %384 = load i32**, i32*** %383, align 8
  %385 = load i64*, i64** @ff_vp56_b6to4, align 8
  %386 = load i32, i32* %12, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i64, i64* %385, i64 %387
  %389 = load i64, i64* %388, align 8
  %390 = getelementptr inbounds i32*, i32** %384, i64 %389
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %13, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  store i32 5, i32* %394, align 4
  br label %395

395:                                              ; preds = %381
  %396 = load i32, i32* %13, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %13, align 4
  br label %377

398:                                              ; preds = %377
  br label %399

399:                                              ; preds = %398, %350
  %400 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %400, i32 0, i32 1
  %402 = load i32**, i32*** %401, align 8
  %403 = load i64*, i64** @ff_vp56_b6to4, align 8
  %404 = load i32, i32* %12, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i64, i64* %403, i64 %405
  %407 = load i64, i64* %406, align 8
  %408 = getelementptr inbounds i32*, i32** %402, i64 %407
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 0
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i32 0, i32 7
  %414 = load %struct.TYPE_5__*, %struct.TYPE_5__** %413, align 8
  %415 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i32 0, i32 2
  %417 = load i64*, i64** %416, align 8
  %418 = load i32, i32* %12, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i64, i64* %417, i64 %419
  %421 = load i64, i64* %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %414, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %422, i32 0, i32 0
  store i32 %411, i32* %423, align 4
  %424 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %424, i32 0, i32 6
  %426 = load i32*, i32** %425, align 8
  %427 = load i32, i32* %12, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  store i32 63, i32* %429, align 4
  br label %430

430:                                              ; preds = %399
  %431 = load i32, i32* %12, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %12, align 4
  br label %39

433:                                              ; preds = %39
  store i32 0, i32* %2, align 4
  br label %434

434:                                              ; preds = %433, %31
  %435 = load i32, i32* %2, align 4
  ret i32 %435
}

declare dso_local i64 @vpX_rac_is_end(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i64 @vp56_rac_get_prob_branchy(i32*, i64) #1

declare dso_local i32 @vp56_rac_get_tree(i32*, i32, i64*) #1

declare dso_local i32 @vp56_rac_get(i32*) #1

declare dso_local i32 @vp56_rac_get_prob(i32*, i64) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
