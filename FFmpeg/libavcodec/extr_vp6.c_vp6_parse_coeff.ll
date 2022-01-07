; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp6.c_vp6_parse_coeff.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp6.c_vp6_parse_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64*, i64*, i32, i32**, i32*, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, %struct.TYPE_8__*, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64**, i64***, i32*, i64**, i64****, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"End of AC stream reached in vp6_parse_coeff\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_vp56_b6to4 = common dso_local global i64* null, align 8
@ff_vp56_pc_tree = common dso_local global i32 0, align 4
@ff_vp56_coeff_bias = common dso_local global i32* null, align 8
@ff_vp56_coeff_bit_length = common dso_local global i32* null, align 8
@ff_vp56_coeff_parse_table = common dso_local global i64** null, align 8
@vp6_pcr_tree = common dso_local global i32 0, align 4
@vp6_coeff_groups = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @vp6_parse_coeff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp6_parse_coeff(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
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
  %20 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 9
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %4, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %5, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  store i64* %29, i64** %6, align 8
  store i32 0, i32* %18, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i64 @vpX_rac_is_end(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = call i32 @av_log(i32 %36, i32 %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %39, i32* %2, align 4
  br label %346

40:                                               ; preds = %1
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %342, %40
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 6
  br i1 %43, label %44, label %345

44:                                               ; preds = %41
  store i32 1, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp sgt i32 %45, 3
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* %18, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 6
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i64*, i64** @ff_vp56_b6to4, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 5
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %59, %72
  store i32 %73, i32* %17, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64**, i64*** %75, align 8
  %77 = load i32, i32* %18, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64*, i64** %76, i64 %78
  %80 = load i64*, i64** %79, align 8
  store i64* %80, i64** %7, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i64***, i64**** %82, align 8
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64**, i64*** %83, i64 %85
  %87 = load i64**, i64*** %86, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64*, i64** %87, i64 %89
  %91 = load i64*, i64** %90, align 8
  store i64* %91, i64** %8, align 8
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %272, %48
  %93 = load i32, i32* %12, align 4
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %19, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %95, %92
  %99 = load i32*, i32** %4, align 8
  %100 = load i64*, i64** %8, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @vp56_rac_get_prob_branchy(i32* %99, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %215

105:                                              ; preds = %98, %95
  %106 = load i32*, i32** %4, align 8
  %107 = load i64*, i64** %8, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 2
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @vp56_rac_get_prob_branchy(i32* %106, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %175

112:                                              ; preds = %105
  %113 = load i32*, i32** %4, align 8
  %114 = load i64*, i64** %8, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 3
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @vp56_rac_get_prob_branchy(i32* %113, i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %158

119:                                              ; preds = %112
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* @ff_vp56_pc_tree, align 4
  %122 = load i64*, i64** %7, align 8
  %123 = call i32 @vp56_rac_get_tree(i32* %120, i32 %121, i64* %122)
  store i32 %123, i32* %16, align 4
  %124 = load i32*, i32** @ff_vp56_coeff_bias, align 8
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %125, 5
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %10, align 4
  %130 = load i32*, i32** @ff_vp56_coeff_bit_length, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %14, align 4
  br label %135

135:                                              ; preds = %154, %119
  %136 = load i32, i32* %14, align 4
  %137 = icmp sge i32 %136, 0
  br i1 %137, label %138, label %157

138:                                              ; preds = %135
  %139 = load i32*, i32** %4, align 8
  %140 = load i64**, i64*** @ff_vp56_coeff_parse_table, align 8
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64*, i64** %140, i64 %142
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @vp56_rac_get_prob(i32* %139, i64 %148)
  %150 = load i32, i32* %14, align 4
  %151 = shl i32 %149, %150
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %138
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %14, align 4
  br label %135

157:                                              ; preds = %135
  br label %174

158:                                              ; preds = %112
  %159 = load i32*, i32** %4, align 8
  %160 = load i64*, i64** %8, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 4
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @vp56_rac_get_prob_branchy(i32* %159, i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %158
  %166 = load i32*, i32** %4, align 8
  %167 = load i64*, i64** %7, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 5
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @vp56_rac_get_prob(i32* %166, i64 %169)
  %171 = add nsw i32 3, %170
  store i32 %171, i32* %10, align 4
  br label %173

172:                                              ; preds = %158
  store i32 2, i32* %10, align 4
  br label %173

173:                                              ; preds = %172, %165
  br label %174

174:                                              ; preds = %173, %157
  store i32 2, i32* %19, align 4
  br label %176

175:                                              ; preds = %105
  store i32 1, i32* %19, align 4
  store i32 1, i32* %10, align 4
  br label %176

176:                                              ; preds = %175, %174
  %177 = load i32*, i32** %4, align 8
  %178 = call i32 @vp56_rac_get(i32* %177)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %11, align 4
  %181 = sub nsw i32 0, %180
  %182 = xor i32 %179, %181
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %182, %183
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %176
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = mul nsw i32 %191, %190
  store i32 %192, i32* %10, align 4
  br label %193

193:                                              ; preds = %187, %176
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %16, align 4
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 3
  %204 = load i32**, i32*** %203, align 8
  %205 = load i32, i32* %13, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32*, i32** %204, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = load i64*, i64** %6, align 8
  %210 = load i32, i32* %16, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %209, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds i32, i32* %208, i64 %213
  store i32 %201, i32* %214, align 4
  store i32 1, i32* %20, align 4
  br label %265

215:                                              ; preds = %98
  store i32 0, i32* %19, align 4
  %216 = load i32, i32* %12, align 4
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %264

218:                                              ; preds = %215
  %219 = load i32*, i32** %4, align 8
  %220 = load i64*, i64** %8, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 1
  %222 = load i64, i64* %221, align 8
  %223 = call i64 @vp56_rac_get_prob_branchy(i32* %219, i64 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %218
  br label %293

226:                                              ; preds = %218
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 3
  %229 = load i64**, i64*** %228, align 8
  %230 = load i32, i32* %12, align 4
  %231 = icmp sge i32 %230, 6
  %232 = zext i1 %231 to i32
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64*, i64** %229, i64 %233
  %235 = load i64*, i64** %234, align 8
  store i64* %235, i64** %9, align 8
  %236 = load i32*, i32** %4, align 8
  %237 = load i32, i32* @vp6_pcr_tree, align 4
  %238 = load i64*, i64** %9, align 8
  %239 = call i32 @vp56_rac_get_tree(i32* %236, i32 %237, i64* %238)
  store i32 %239, i32* %20, align 4
  %240 = load i32, i32* %20, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %263, label %242

242:                                              ; preds = %226
  store i32 9, i32* %20, align 4
  store i32 0, i32* %14, align 4
  br label %243

243:                                              ; preds = %259, %242
  %244 = load i32, i32* %14, align 4
  %245 = icmp slt i32 %244, 6
  br i1 %245, label %246, label %262

246:                                              ; preds = %243
  %247 = load i32*, i32** %4, align 8
  %248 = load i64*, i64** %9, align 8
  %249 = load i32, i32* %14, align 4
  %250 = add nsw i32 %249, 8
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i64, i64* %248, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @vp56_rac_get_prob(i32* %247, i64 %253)
  %255 = load i32, i32* %14, align 4
  %256 = shl i32 %254, %255
  %257 = load i32, i32* %20, align 4
  %258 = add nsw i32 %257, %256
  store i32 %258, i32* %20, align 4
  br label %259

259:                                              ; preds = %246
  %260 = load i32, i32* %14, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %14, align 4
  br label %243

262:                                              ; preds = %243
  br label %263

263:                                              ; preds = %262, %226
  br label %264

264:                                              ; preds = %263, %215
  br label %265

265:                                              ; preds = %264, %193
  %266 = load i32, i32* %20, align 4
  %267 = load i32, i32* %12, align 4
  %268 = add nsw i32 %267, %266
  store i32 %268, i32* %12, align 4
  %269 = load i32, i32* %12, align 4
  %270 = icmp sge i32 %269, 64
  br i1 %270, label %271, label %272

271:                                              ; preds = %265
  br label %293

272:                                              ; preds = %265
  %273 = load i32*, i32** @vp6_coeff_groups, align 8
  %274 = load i32, i32* %12, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  store i32 %277, i32* %15, align 4
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 4
  %280 = load i64****, i64***** %279, align 8
  %281 = load i32, i32* %18, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i64***, i64**** %280, i64 %282
  %284 = load i64***, i64**** %283, align 8
  %285 = load i32, i32* %19, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i64**, i64*** %284, i64 %286
  %288 = load i64**, i64*** %287, align 8
  %289 = load i32, i32* %15, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i64*, i64** %288, i64 %290
  %292 = load i64*, i64** %291, align 8
  store i64* %292, i64** %8, align 8
  store i64* %292, i64** %7, align 8
  br label %92

293:                                              ; preds = %271, %225
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 3
  %296 = load i32**, i32*** %295, align 8
  %297 = load i32, i32* %13, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32*, i32** %296, i64 %298
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 0
  %302 = load i32, i32* %301, align 4
  %303 = icmp ne i32 %302, 0
  %304 = xor i1 %303, true
  %305 = xor i1 %304, true
  %306 = zext i1 %305 to i32
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 5
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %308, align 8
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 1
  %312 = load i64*, i64** %311, align 8
  %313 = load i32, i32* %13, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i64, i64* %312, i64 %314
  %316 = load i64, i64* %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 0
  store i32 %306, i32* %318, align 4
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 6
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %320, align 8
  %322 = load i64*, i64** @ff_vp56_b6to4, align 8
  %323 = load i32, i32* %13, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i64, i64* %322, i64 %324
  %326 = load i64, i64* %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 0
  store i32 %306, i32* %328, align 4
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 5
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %12, align 4
  %333 = call i64 @FFMIN(i32 %332, i32 63)
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 4
  %338 = load i32*, i32** %337, align 8
  %339 = load i32, i32* %13, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  store i32 %335, i32* %341, align 4
  br label %342

342:                                              ; preds = %293
  %343 = load i32, i32* %13, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %13, align 4
  br label %41

345:                                              ; preds = %41
  store i32 0, i32* %2, align 4
  br label %346

346:                                              ; preds = %345, %33
  %347 = load i32, i32* %2, align 4
  ret i32 %347
}

declare dso_local i64 @vpX_rac_is_end(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i64 @vp56_rac_get_prob_branchy(i32*, i64) #1

declare dso_local i32 @vp56_rac_get_tree(i32*, i32, i64*) #1

declare dso_local i32 @vp56_rac_get_prob(i32*, i64) #1

declare dso_local i32 @vp56_rac_get(i32*) #1

declare dso_local i64 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
