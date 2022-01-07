; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp6.c_vp6_parse_coeff_models.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp6.c_vp6_parse_coeff_models.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32***, i32*, i32*, i64, %struct.TYPE_7__**, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32**, i32**, i32****, i32***, i32* }

@vp6_dccv_pct = common dso_local global i32** null, align 8
@VP56_FRAME_CURRENT = common dso_local global i64 0, align 8
@vp6_coeff_reorder_pct = common dso_local global i32* null, align 8
@vp6_runv_pct = common dso_local global i32** null, align 8
@vp6_ract_pct = common dso_local global i32**** null, align 8
@vp6_huff_coeff_map = common dso_local global i32 0, align 4
@vp6_huff_run_map = common dso_local global i32 0, align 4
@vp6_dccv_lc = common dso_local global i32*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @vp6_parse_coeff_models to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp6_parse_coeff_models(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca [11 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 7
  store i32* %14, i32** %4, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  %19 = call i32 @memset(i32* %18, i32 128, i32 44)
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %92, %1
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %95

23:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %88, %23
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 11
  br i1 %26, label %27, label %91

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = load i32**, i32*** @vp6_dccv_pct, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @vp56_rac_get_prob_branchy(i32* %28, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %27
  %41 = load i32*, i32** %4, align 8
  %42 = call i8* @vp56_rac_gets_nn(i32* %41, i32 7)
  %43 = ptrtoint i8* %42 to i32
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %50, i32* %60, align 4
  br label %87

61:                                               ; preds = %27
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %63, align 8
  %65 = load i64, i64* @VP56_FRAME_CURRENT, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %64, i64 %65
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %61
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %75, i32* %85, align 4
  br label %86

86:                                               ; preds = %71, %61
  br label %87

87:                                               ; preds = %86, %40
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %24

91:                                               ; preds = %24
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %20

95:                                               ; preds = %20
  %96 = load i32*, i32** %4, align 8
  %97 = call i64 @vp56_rac_get(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %128

99:                                               ; preds = %95
  store i32 1, i32* %10, align 4
  br label %100

100:                                              ; preds = %122, %99
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 64
  br i1 %102, label %103, label %125

103:                                              ; preds = %100
  %104 = load i32*, i32** %4, align 8
  %105 = load i32*, i32** @vp6_coeff_reorder_pct, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @vp56_rac_get_prob_branchy(i32* %104, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %103
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @vp56_rac_gets(i32* %113, i32 4)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 4
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %114, i32* %120, align 4
  br label %121

121:                                              ; preds = %112, %103
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %100

125:                                              ; preds = %100
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %127 = call i32 @vp6_coeff_order_table_init(%struct.TYPE_9__* %126)
  br label %128

128:                                              ; preds = %125, %95
  store i32 0, i32* %8, align 4
  br label %129

129:                                              ; preds = %168, %128
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %130, 2
  br i1 %131, label %132, label %171

132:                                              ; preds = %129
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %164, %132
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %134, 14
  br i1 %135, label %136, label %167

136:                                              ; preds = %133
  %137 = load i32*, i32** %4, align 8
  %138 = load i32**, i32*** @vp6_runv_pct, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @vp56_rac_get_prob_branchy(i32* %137, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %136
  %150 = load i32*, i32** %4, align 8
  %151 = call i8* @vp56_rac_gets_nn(i32* %150, i32 7)
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load i32**, i32*** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %152, i32* %162, align 4
  br label %163

163:                                              ; preds = %149, %136
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  br label %133

167:                                              ; preds = %133
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  br label %129

171:                                              ; preds = %129
  store i32 0, i32* %11, align 4
  br label %172

172:                                              ; preds = %284, %171
  %173 = load i32, i32* %11, align 4
  %174 = icmp slt i32 %173, 3
  br i1 %174, label %175, label %287

175:                                              ; preds = %172
  store i32 0, i32* %12, align 4
  br label %176

176:                                              ; preds = %280, %175
  %177 = load i32, i32* %12, align 4
  %178 = icmp slt i32 %177, 2
  br i1 %178, label %179, label %283

179:                                              ; preds = %176
  store i32 0, i32* %8, align 4
  br label %180

180:                                              ; preds = %276, %179
  %181 = load i32, i32* %8, align 4
  %182 = icmp slt i32 %181, 6
  br i1 %182, label %183, label %279

183:                                              ; preds = %180
  store i32 0, i32* %7, align 4
  br label %184

184:                                              ; preds = %272, %183
  %185 = load i32, i32* %7, align 4
  %186 = icmp slt i32 %185, 11
  br i1 %186, label %187, label %275

187:                                              ; preds = %184
  %188 = load i32*, i32** %4, align 8
  %189 = load i32****, i32***** @vp6_ract_pct, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32***, i32**** %189, i64 %191
  %193 = load i32***, i32**** %192, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32**, i32*** %193, i64 %195
  %197 = load i32**, i32*** %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32*, i32** %197, i64 %199
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @vp56_rac_get_prob_branchy(i32* %188, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %237

208:                                              ; preds = %187
  %209 = load i32*, i32** %4, align 8
  %210 = call i8* @vp56_rac_gets_nn(i32* %209, i32 7)
  %211 = ptrtoint i8* %210 to i32
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %213
  store i32 %211, i32* %214, align 4
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 2
  %221 = load i32****, i32***** %220, align 8
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32***, i32**** %221, i64 %223
  %225 = load i32***, i32**** %224, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32**, i32*** %225, i64 %227
  %229 = load i32**, i32*** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32*, i32** %229, i64 %231
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %7, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  store i32 %218, i32* %236, align 4
  br label %271

237:                                              ; preds = %187
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 5
  %240 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %239, align 8
  %241 = load i64, i64* @VP56_FRAME_CURRENT, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %240, i64 %241
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %270

247:                                              ; preds = %237
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 2
  %254 = load i32****, i32***** %253, align 8
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32***, i32**** %254, i64 %256
  %258 = load i32***, i32**** %257, align 8
  %259 = load i32, i32* %11, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32**, i32*** %258, i64 %260
  %262 = load i32**, i32*** %261, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32*, i32** %262, i64 %264
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  store i32 %251, i32* %269, align 4
  br label %270

270:                                              ; preds = %247, %237
  br label %271

271:                                              ; preds = %270, %208
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %7, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %7, align 4
  br label %184

275:                                              ; preds = %184
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %8, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %8, align 4
  br label %180

279:                                              ; preds = %180
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %12, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %12, align 4
  br label %176

283:                                              ; preds = %176
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %11, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %11, align 4
  br label %172

287:                                              ; preds = %172
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 4
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %394

292:                                              ; preds = %287
  store i32 0, i32* %12, align 4
  br label %293

293:                                              ; preds = %386, %292
  %294 = load i32, i32* %12, align 4
  %295 = icmp slt i32 %294, 2
  br i1 %295, label %296, label %389

296:                                              ; preds = %293
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 0
  %300 = load i32**, i32*** %299, align 8
  %301 = load i32, i32* %12, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32*, i32** %300, i64 %302
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* @vp6_huff_coeff_map, align 4
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 3
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %12, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = call i64 @vp6_build_huff_tree(%struct.TYPE_9__* %297, i32* %304, i32 %305, i32 12, i32* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %296
  store i32 -1, i32* %2, align 4
  br label %472

315:                                              ; preds = %296
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 1
  %319 = load i32**, i32*** %318, align 8
  %320 = load i32, i32* %12, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32*, i32** %319, i64 %321
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* @vp6_huff_run_map, align 4
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 2
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* %12, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  %331 = call i64 @vp6_build_huff_tree(%struct.TYPE_9__* %316, i32* %323, i32 %324, i32 9, i32* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %315
  store i32 -1, i32* %2, align 4
  br label %472

334:                                              ; preds = %315
  store i32 0, i32* %11, align 4
  br label %335

335:                                              ; preds = %382, %334
  %336 = load i32, i32* %11, align 4
  %337 = icmp slt i32 %336, 3
  br i1 %337, label %338, label %385

338:                                              ; preds = %335
  store i32 0, i32* %8, align 4
  br label %339

339:                                              ; preds = %378, %338
  %340 = load i32, i32* %8, align 4
  %341 = icmp slt i32 %340, 6
  br i1 %341, label %342, label %381

342:                                              ; preds = %339
  %343 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %344 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 2
  %346 = load i32****, i32***** %345, align 8
  %347 = load i32, i32* %12, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32***, i32**** %346, i64 %348
  %350 = load i32***, i32**** %349, align 8
  %351 = load i32, i32* %11, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32**, i32*** %350, i64 %352
  %354 = load i32**, i32*** %353, align 8
  %355 = load i32, i32* %8, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32*, i32** %354, i64 %356
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* @vp6_huff_coeff_map, align 4
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i32 0, i32 1
  %362 = load i32***, i32**** %361, align 8
  %363 = load i32, i32* %12, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32**, i32*** %362, i64 %364
  %366 = load i32**, i32*** %365, align 8
  %367 = load i32, i32* %11, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32*, i32** %366, i64 %368
  %370 = load i32*, i32** %369, align 8
  %371 = load i32, i32* %8, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = call i64 @vp6_build_huff_tree(%struct.TYPE_9__* %343, i32* %358, i32 %359, i32 12, i32* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %342
  store i32 -1, i32* %2, align 4
  br label %472

377:                                              ; preds = %342
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %8, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %8, align 4
  br label %339

381:                                              ; preds = %339
  br label %382

382:                                              ; preds = %381
  %383 = load i32, i32* %11, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %11, align 4
  br label %335

385:                                              ; preds = %335
  br label %386

386:                                              ; preds = %385
  %387 = load i32, i32* %12, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %12, align 4
  br label %293

389:                                              ; preds = %293
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 0
  %392 = load i32*, i32** %391, align 8
  %393 = call i32 @memset(i32* %392, i32 0, i32 8)
  br label %471

394:                                              ; preds = %287
  store i32 0, i32* %12, align 4
  br label %395

395:                                              ; preds = %467, %394
  %396 = load i32, i32* %12, align 4
  %397 = icmp slt i32 %396, 2
  br i1 %397, label %398, label %470

398:                                              ; preds = %395
  store i32 0, i32* %9, align 4
  br label %399

399:                                              ; preds = %463, %398
  %400 = load i32, i32* %9, align 4
  %401 = icmp slt i32 %400, 3
  br i1 %401, label %402, label %466

402:                                              ; preds = %399
  store i32 0, i32* %7, align 4
  br label %403

403:                                              ; preds = %459, %402
  %404 = load i32, i32* %7, align 4
  %405 = icmp slt i32 %404, 5
  br i1 %405, label %406, label %462

406:                                              ; preds = %403
  %407 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i32 0, i32 0
  %409 = load i32**, i32*** %408, align 8
  %410 = load i32, i32* %12, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32*, i32** %409, i64 %411
  %413 = load i32*, i32** %412, align 8
  %414 = load i32, i32* %7, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %413, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = load i32***, i32**** @vp6_dccv_lc, align 8
  %419 = load i32, i32* %9, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32**, i32*** %418, i64 %420
  %422 = load i32**, i32*** %421, align 8
  %423 = load i32, i32* %7, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32*, i32** %422, i64 %424
  %426 = load i32*, i32** %425, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 0
  %428 = load i32, i32* %427, align 4
  %429 = mul nsw i32 %417, %428
  %430 = add nsw i32 %429, 128
  %431 = ashr i32 %430, 8
  %432 = load i32***, i32**** @vp6_dccv_lc, align 8
  %433 = load i32, i32* %9, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32**, i32*** %432, i64 %434
  %436 = load i32**, i32*** %435, align 8
  %437 = load i32, i32* %7, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32*, i32** %436, i64 %438
  %440 = load i32*, i32** %439, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 1
  %442 = load i32, i32* %441, align 4
  %443 = add nsw i32 %431, %442
  %444 = call i32 @av_clip(i32 %443, i32 1, i32 255)
  %445 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %446 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %445, i32 0, i32 3
  %447 = load i32***, i32**** %446, align 8
  %448 = load i32, i32* %12, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32**, i32*** %447, i64 %449
  %451 = load i32**, i32*** %450, align 8
  %452 = load i32, i32* %9, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32*, i32** %451, i64 %453
  %455 = load i32*, i32** %454, align 8
  %456 = load i32, i32* %7, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %455, i64 %457
  store i32 %444, i32* %458, align 4
  br label %459

459:                                              ; preds = %406
  %460 = load i32, i32* %7, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %7, align 4
  br label %403

462:                                              ; preds = %403
  br label %463

463:                                              ; preds = %462
  %464 = load i32, i32* %9, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %9, align 4
  br label %399

466:                                              ; preds = %399
  br label %467

467:                                              ; preds = %466
  %468 = load i32, i32* %12, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %12, align 4
  br label %395

470:                                              ; preds = %395
  br label %471

471:                                              ; preds = %470, %389
  store i32 0, i32* %2, align 4
  br label %472

472:                                              ; preds = %471, %376, %333, %314
  %473 = load i32, i32* %2, align 4
  ret i32 %473
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @vp56_rac_get_prob_branchy(i32*, i32) #1

declare dso_local i8* @vp56_rac_gets_nn(i32*, i32) #1

declare dso_local i64 @vp56_rac_get(i32*) #1

declare dso_local i32 @vp56_rac_gets(i32*, i32) #1

declare dso_local i32 @vp6_coeff_order_table_init(%struct.TYPE_9__*) #1

declare dso_local i64 @vp6_build_huff_tree(%struct.TYPE_9__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
