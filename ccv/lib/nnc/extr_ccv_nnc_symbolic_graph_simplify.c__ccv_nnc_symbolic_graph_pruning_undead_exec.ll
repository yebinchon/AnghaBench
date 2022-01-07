; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_simplify.c__ccv_nnc_symbolic_graph_pruning_undead_exec.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_simplify.c__ccv_nnc_symbolic_graph_pruning_undead_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32*, i32, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@CCV_NNC_GRAPH_FORWARD = common dso_local global i64 0, align 8
@CCV_NNC_GRAPH_BACKWARD = common dso_local global i64 0, align 8
@CCV_NNC_CUSTOM_FORWARD = common dso_local global i64 0, align 8
@CCV_NNC_CUSTOM_BACKWARD = common dso_local global i64 0, align 8
@CCV_NNC_NO_TENSOR_SYMBOL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32*, i32*)* @_ccv_nnc_symbolic_graph_pruning_undead_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_symbolic_graph_pruning_undead_exec(%struct.TYPE_7__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp sge i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %9, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %10, align 8
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 31
  %37 = shl i32 1, %36
  %38 = xor i32 %37, -1
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 5
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %38
  store i32 %45, i32* %43, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %50
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %11, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CCV_NNC_GRAPH_FORWARD, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %79, label %58

58:                                               ; preds = %4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CCV_NNC_GRAPH_BACKWARD, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %79, label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CCV_NNC_CUSTOM_FORWARD, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CCV_NNC_CUSTOM_BACKWARD, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %172

79:                                               ; preds = %72, %65, %58, %4
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %122, %79
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %125

86:                                               ; preds = %80
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %86
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %13, align 4
  %99 = ashr i32 %98, 5
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = and i32 %103, 31
  %105 = shl i32 1, %104
  %106 = and i32 %102, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %96
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @ccv_array_push(i32* %109, i32* %13)
  %111 = load i32, i32* %13, align 4
  %112 = and i32 %111, 31
  %113 = shl i32 1, %112
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %13, align 4
  %116 = ashr i32 %115, 5
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %113
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %108, %96, %86
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %12, align 4
  br label %80

125:                                              ; preds = %80
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %168, %125
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %171

132:                                              ; preds = %126
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp sge i32 %140, 0
  br i1 %141, label %142, label %167

142:                                              ; preds = %132
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %14, align 4
  %145 = ashr i32 %144, 5
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %14, align 4
  %150 = and i32 %149, 31
  %151 = shl i32 1, %150
  %152 = and i32 %148, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %167, label %154

154:                                              ; preds = %142
  %155 = load i32*, i32** %8, align 8
  %156 = call i32 @ccv_array_push(i32* %155, i32* %14)
  %157 = load i32, i32* %14, align 4
  %158 = and i32 %157, 31
  %159 = shl i32 1, %158
  %160 = load i32*, i32** %7, align 8
  %161 = load i32, i32* %14, align 4
  %162 = ashr i32 %161, 5
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %159
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %154, %142, %132
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %12, align 4
  br label %126

171:                                              ; preds = %126
  br label %612

172:                                              ; preds = %72
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 63
  %177 = ashr i32 %176, 6
  store i32 %177, i32* %15, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 63
  %182 = ashr i32 %181, 6
  store i32 %182, i32* %16, align 4
  %183 = load i32, i32* %15, align 4
  %184 = call i32 @ccv_max(i32 1, i32 %183)
  %185 = zext i32 %184 to i64
  %186 = call i8* @llvm.stacksave()
  store i8* %186, i8** %17, align 8
  %187 = alloca i32, i64 %185, align 16
  store i64 %185, i64* %18, align 8
  store i32 0, i32* %12, align 4
  br label %188

188:                                              ; preds = %196, %172
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %15, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %188
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %187, i64 %194
  store i32 0, i32* %195, align 4
  br label %196

196:                                              ; preds = %192
  %197 = load i32, i32* %12, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %12, align 4
  br label %188

199:                                              ; preds = %188
  %200 = load i32, i32* %16, align 4
  %201 = call i32 @ccv_max(i32 1, i32 %200)
  %202 = zext i32 %201 to i64
  %203 = alloca i32, i64 %202, align 16
  store i64 %202, i64* %19, align 8
  store i32 0, i32* %12, align 4
  br label %204

204:                                              ; preds = %212, %199
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %16, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %204
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %203, i64 %210
  store i32 0, i32* %211, align 4
  br label %212

212:                                              ; preds = %208
  %213 = load i32, i32* %12, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %12, align 4
  br label %204

215:                                              ; preds = %204
  store i32 0, i32* %12, align 4
  br label %216

216:                                              ; preds = %242, %215
  %217 = load i32, i32* %12, align 4
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp slt i32 %217, %220
  br i1 %221, label %222, label %245

222:                                              ; preds = %216
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %12, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = icmp sge i32 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %222
  %232 = load i32, i32* %12, align 4
  %233 = and i32 %232, 63
  %234 = shl i32 1, %233
  %235 = load i32, i32* %12, align 4
  %236 = ashr i32 %235, 6
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %187, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %234
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %231, %222
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %12, align 4
  br label %216

245:                                              ; preds = %216
  store i32 0, i32* %12, align 4
  br label %246

246:                                              ; preds = %272, %245
  %247 = load i32, i32* %12, align 4
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %252, label %275

252:                                              ; preds = %246
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 3
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %12, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = icmp sge i32 %259, 0
  br i1 %260, label %261, label %271

261:                                              ; preds = %252
  %262 = load i32, i32* %12, align 4
  %263 = and i32 %262, 63
  %264 = shl i32 1, %263
  %265 = load i32, i32* %12, align 4
  %266 = ashr i32 %265, 6
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %203, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = or i32 %269, %264
  store i32 %270, i32* %268, align 4
  br label %271

271:                                              ; preds = %261, %252
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %12, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %12, align 4
  br label %246

275:                                              ; preds = %246
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 4
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* %15, align 4
  %285 = load i32, i32* %16, align 4
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @ccv_nnc_cmd_bitmask(i64 %287, i32 %280, i32 %283, i32* %187, i32 %284, i32* %203, i32 %285)
  %289 = call i32 @assert(i32 %288)
  br label %290

290:                                              ; preds = %441, %275
  store i32 0, i32* %20, align 4
  store i32 0, i32* %12, align 4
  br label %291

291:                                              ; preds = %368, %290
  %292 = load i32, i32* %12, align 4
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = icmp slt i32 %292, %295
  br i1 %296, label %297, label %371

297:                                              ; preds = %291
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 3
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %12, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %21, align 4
  %305 = load i32, i32* %21, align 4
  %306 = icmp sge i32 %305, 0
  br i1 %306, label %307, label %367

307:                                              ; preds = %297
  %308 = load i32*, i32** %10, align 8
  %309 = load i32, i32* %21, align 4
  %310 = ashr i32 %309, 5
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %308, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %21, align 4
  %315 = and i32 %314, 31
  %316 = shl i32 1, %315
  %317 = and i32 %313, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %367

319:                                              ; preds = %307
  %320 = load i32, i32* %12, align 4
  %321 = ashr i32 %320, 6
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %203, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %12, align 4
  %326 = and i32 %325, 63
  %327 = shl i32 1, %326
  %328 = and i32 %324, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %367

330:                                              ; preds = %319
  %331 = load i32, i32* %12, align 4
  %332 = and i32 %331, 63
  %333 = shl i32 1, %332
  %334 = xor i32 %333, -1
  %335 = load i32, i32* %12, align 4
  %336 = ashr i32 %335, 6
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %203, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = and i32 %339, %334
  store i32 %340, i32* %338, align 4
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 4
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* %15, align 4
  %350 = load i32, i32* %16, align 4
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = call i32 @ccv_nnc_cmd_bitmask(i64 %352, i32 %345, i32 %348, i32* %187, i32 %349, i32* %203, i32 %350)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %330
  store i32 1, i32* %20, align 4
  br label %366

356:                                              ; preds = %330
  %357 = load i32, i32* %12, align 4
  %358 = and i32 %357, 63
  %359 = shl i32 1, %358
  %360 = load i32, i32* %12, align 4
  %361 = ashr i32 %360, 6
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %203, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = or i32 %364, %359
  store i32 %365, i32* %363, align 4
  br label %366

366:                                              ; preds = %356, %355
  br label %367

367:                                              ; preds = %366, %319, %307, %297
  br label %368

368:                                              ; preds = %367
  %369 = load i32, i32* %12, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %12, align 4
  br label %291

371:                                              ; preds = %291
  store i32 0, i32* %12, align 4
  br label %372

372:                                              ; preds = %437, %371
  %373 = load i32, i32* %12, align 4
  %374 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = icmp slt i32 %373, %376
  br i1 %377, label %378, label %440

378:                                              ; preds = %372
  %379 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 1
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %12, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  store i32 %385, i32* %22, align 4
  %386 = load i32, i32* %22, align 4
  %387 = icmp sge i32 %386, 0
  br i1 %387, label %388, label %436

388:                                              ; preds = %378
  %389 = load i32, i32* %12, align 4
  %390 = ashr i32 %389, 6
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %187, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* %12, align 4
  %395 = and i32 %394, 63
  %396 = shl i32 1, %395
  %397 = and i32 %393, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %436

399:                                              ; preds = %388
  %400 = load i32, i32* %12, align 4
  %401 = and i32 %400, 63
  %402 = shl i32 1, %401
  %403 = xor i32 %402, -1
  %404 = load i32, i32* %12, align 4
  %405 = ashr i32 %404, 6
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %187, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = and i32 %408, %403
  store i32 %409, i32* %407, align 4
  %410 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i32 0, i32 4
  %412 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %416 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 8
  %418 = load i32, i32* %15, align 4
  %419 = load i32, i32* %16, align 4
  %420 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = call i32 @ccv_nnc_cmd_bitmask(i64 %421, i32 %414, i32 %417, i32* %187, i32 %418, i32* %203, i32 %419)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %425

424:                                              ; preds = %399
  store i32 1, i32* %20, align 4
  br label %435

425:                                              ; preds = %399
  %426 = load i32, i32* %12, align 4
  %427 = and i32 %426, 63
  %428 = shl i32 1, %427
  %429 = load i32, i32* %12, align 4
  %430 = ashr i32 %429, 6
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %187, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = or i32 %433, %428
  store i32 %434, i32* %432, align 4
  br label %435

435:                                              ; preds = %425, %424
  br label %436

436:                                              ; preds = %435, %388, %378
  br label %437

437:                                              ; preds = %436
  %438 = load i32, i32* %12, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %12, align 4
  br label %372

440:                                              ; preds = %372
  br label %441

441:                                              ; preds = %440
  %442 = load i32, i32* %20, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %290, label %444

444:                                              ; preds = %441
  store i32 0, i32* %12, align 4
  br label %445

445:                                              ; preds = %524, %444
  %446 = load i32, i32* %12, align 4
  %447 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %448 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = icmp slt i32 %446, %449
  br i1 %450, label %451, label %527

451:                                              ; preds = %445
  %452 = load i32, i32* %12, align 4
  %453 = ashr i32 %452, 6
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32, i32* %187, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = load i32, i32* %12, align 4
  %458 = and i32 %457, 63
  %459 = shl i32 1, %458
  %460 = and i32 %456, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %498

462:                                              ; preds = %451
  %463 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %464 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %463, i32 0, i32 1
  %465 = load i32*, i32** %464, align 8
  %466 = load i32, i32* %12, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %465, i64 %467
  %469 = load i32, i32* %468, align 4
  store i32 %469, i32* %23, align 4
  %470 = load i32, i32* %23, align 4
  %471 = icmp sge i32 %470, 0
  br i1 %471, label %472, label %497

472:                                              ; preds = %462
  %473 = load i32*, i32** %7, align 8
  %474 = load i32, i32* %23, align 4
  %475 = ashr i32 %474, 5
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %473, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = load i32, i32* %23, align 4
  %480 = and i32 %479, 31
  %481 = shl i32 1, %480
  %482 = and i32 %478, %481
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %497, label %484

484:                                              ; preds = %472
  %485 = load i32*, i32** %8, align 8
  %486 = call i32 @ccv_array_push(i32* %485, i32* %23)
  %487 = load i32, i32* %23, align 4
  %488 = and i32 %487, 31
  %489 = shl i32 1, %488
  %490 = load i32*, i32** %7, align 8
  %491 = load i32, i32* %23, align 4
  %492 = ashr i32 %491, 5
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32, i32* %490, i64 %493
  %495 = load i32, i32* %494, align 4
  %496 = or i32 %495, %489
  store i32 %496, i32* %494, align 4
  br label %497

497:                                              ; preds = %484, %472, %462
  br label %523

498:                                              ; preds = %451
  %499 = load i8*, i8** @CCV_NNC_NO_TENSOR_SYMBOL, align 8
  %500 = ptrtoint i8* %499 to i32
  %501 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %502 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %501, i32 0, i32 1
  %503 = load i32*, i32** %502, align 8
  %504 = load i32, i32* %12, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i32, i32* %503, i64 %505
  store i32 %500, i32* %506, align 4
  %507 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %508 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %507, i32 0, i32 2
  %509 = load %struct.TYPE_6__*, %struct.TYPE_6__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 4
  %512 = load i32, i32* %6, align 4
  %513 = call i64 @ccv_array_get(i32 %511, i32 %512)
  %514 = inttoptr i64 %513 to %struct.TYPE_8__*
  %515 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %514, i32 0, i32 1
  %516 = load i32*, i32** %515, align 8
  %517 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %518 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %517, i32 0, i32 1
  %519 = load i32*, i32** %518, align 8
  %520 = icmp eq i32* %516, %519
  %521 = zext i1 %520 to i32
  %522 = call i32 @assert(i32 %521)
  br label %523

523:                                              ; preds = %498, %497
  br label %524

524:                                              ; preds = %523
  %525 = load i32, i32* %12, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %12, align 4
  br label %445

527:                                              ; preds = %445
  store i32 0, i32* %12, align 4
  br label %528

528:                                              ; preds = %607, %527
  %529 = load i32, i32* %12, align 4
  %530 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %531 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %530, i32 0, i32 2
  %532 = load i32, i32* %531, align 8
  %533 = icmp slt i32 %529, %532
  br i1 %533, label %534, label %610

534:                                              ; preds = %528
  %535 = load i32, i32* %12, align 4
  %536 = ashr i32 %535, 6
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32, i32* %203, i64 %537
  %539 = load i32, i32* %538, align 4
  %540 = load i32, i32* %12, align 4
  %541 = and i32 %540, 63
  %542 = shl i32 1, %541
  %543 = and i32 %539, %542
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %581

545:                                              ; preds = %534
  %546 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %547 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %546, i32 0, i32 3
  %548 = load i32*, i32** %547, align 8
  %549 = load i32, i32* %12, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %548, i64 %550
  %552 = load i32, i32* %551, align 4
  store i32 %552, i32* %24, align 4
  %553 = load i32, i32* %24, align 4
  %554 = icmp sge i32 %553, 0
  br i1 %554, label %555, label %580

555:                                              ; preds = %545
  %556 = load i32*, i32** %7, align 8
  %557 = load i32, i32* %24, align 4
  %558 = ashr i32 %557, 5
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i32, i32* %556, i64 %559
  %561 = load i32, i32* %560, align 4
  %562 = load i32, i32* %24, align 4
  %563 = and i32 %562, 31
  %564 = shl i32 1, %563
  %565 = and i32 %561, %564
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %580, label %567

567:                                              ; preds = %555
  %568 = load i32*, i32** %8, align 8
  %569 = call i32 @ccv_array_push(i32* %568, i32* %24)
  %570 = load i32, i32* %24, align 4
  %571 = and i32 %570, 31
  %572 = shl i32 1, %571
  %573 = load i32*, i32** %7, align 8
  %574 = load i32, i32* %24, align 4
  %575 = ashr i32 %574, 5
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds i32, i32* %573, i64 %576
  %578 = load i32, i32* %577, align 4
  %579 = or i32 %578, %572
  store i32 %579, i32* %577, align 4
  br label %580

580:                                              ; preds = %567, %555, %545
  br label %606

581:                                              ; preds = %534
  %582 = load i8*, i8** @CCV_NNC_NO_TENSOR_SYMBOL, align 8
  %583 = ptrtoint i8* %582 to i32
  %584 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %585 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %584, i32 0, i32 3
  %586 = load i32*, i32** %585, align 8
  %587 = load i32, i32* %12, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i32, i32* %586, i64 %588
  store i32 %583, i32* %589, align 4
  %590 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %591 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %590, i32 0, i32 2
  %592 = load %struct.TYPE_6__*, %struct.TYPE_6__** %591, align 8
  %593 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 4
  %595 = load i32, i32* %6, align 4
  %596 = call i64 @ccv_array_get(i32 %594, i32 %595)
  %597 = inttoptr i64 %596 to %struct.TYPE_8__*
  %598 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %597, i32 0, i32 3
  %599 = load i32*, i32** %598, align 8
  %600 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %601 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %600, i32 0, i32 3
  %602 = load i32*, i32** %601, align 8
  %603 = icmp eq i32* %599, %602
  %604 = zext i1 %603 to i32
  %605 = call i32 @assert(i32 %604)
  br label %606

606:                                              ; preds = %581, %580
  br label %607

607:                                              ; preds = %606
  %608 = load i32, i32* %12, align 4
  %609 = add nsw i32 %608, 1
  store i32 %609, i32* %12, align 4
  br label %528

610:                                              ; preds = %528
  %611 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %611)
  br label %612

612:                                              ; preds = %610, %171
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_array_push(i32*, i32*) #1

declare dso_local i32 @ccv_max(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ccv_nnc_cmd_bitmask(i64, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i64 @ccv_array_get(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
