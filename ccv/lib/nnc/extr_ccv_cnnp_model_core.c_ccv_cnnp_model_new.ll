; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model_core.c_ccv_cnnp_model_new.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model_core.c_ccv_cnnp_model_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__**, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32*, i32* }

@ccv_cnnp_functional_model_isa = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ccv_cnnp_model_new(%struct.TYPE_20__** %0, i32 %1, %struct.TYPE_20__** %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_20__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__** %0, %struct.TYPE_20__*** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_20__** %2, %struct.TYPE_20__*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp sgt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.TYPE_22__* @ccv_array_new(i32 8, i32 %27, i32 0)
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %11, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @ccv_array_resize(%struct.TYPE_22__* %29, i32 %30)
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %33 = call %struct.TYPE_20__** @ccv_array_get(%struct.TYPE_22__* %32, i32 0)
  %34 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 8, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memcpy(%struct.TYPE_20__** %33, %struct.TYPE_20__** %34, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 1
  %42 = ashr i32 %41, 6
  %43 = add nsw i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %15, align 8
  %46 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %16, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, 1
  %49 = ashr i32 %48, 6
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memset(i32* %46, i32 0, i32 %53)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %73, %5
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %60, i64 %62
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %17, align 4
  br label %73

73:                                               ; preds = %59
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %55

76:                                               ; preds = %55
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %178, %76
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %181

83:                                               ; preds = %77
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call %struct.TYPE_20__** @ccv_array_get(%struct.TYPE_22__* %84, i32 %85)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %86, align 8
  store %struct.TYPE_20__* %87, %struct.TYPE_20__** %18, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = call i32 @CCV_CNNP_IS_MODEL_INPUT(%struct.TYPE_18__* %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %97, align 8
  %99 = icmp ne %struct.TYPE_22__* %98, null
  br i1 %99, label %100, label %177

100:                                              ; preds = %83
  store i32 0, i32* %13, align 4
  br label %101

101:                                              ; preds = %173, %100
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %102, %107
  br i1 %108, label %109, label %176

109:                                              ; preds = %101
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call %struct.TYPE_20__** @ccv_array_get(%struct.TYPE_22__* %112, i32 %113)
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  store %struct.TYPE_20__* %115, %struct.TYPE_20__** %19, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %117, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %122, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %109
  br label %173

130:                                              ; preds = %109
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = call i32 @CCV_CNNP_IS_MODEL_INPUT(%struct.TYPE_18__* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %130
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %138 = call i32 @ccv_array_push(%struct.TYPE_22__* %137, %struct.TYPE_20__** %19)
  br label %172

139:                                              ; preds = %130
  store i32 0, i32* %14, align 4
  br label %140

140:                                              ; preds = %154, %139
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %140
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %146 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %146, i64 %148
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  %151 = icmp eq %struct.TYPE_20__* %145, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %157

153:                                              ; preds = %144
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  br label %140

157:                                              ; preds = %152, %140
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp slt i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = load i32, i32* %14, align 4
  %164 = and i32 %163, 63
  %165 = shl i32 1, %164
  %166 = load i32, i32* %14, align 4
  %167 = ashr i32 %166, 6
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %46, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %165
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %157, %136
  br label %173

173:                                              ; preds = %172, %129
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %13, align 4
  br label %101

176:                                              ; preds = %101
  br label %177

177:                                              ; preds = %176, %83
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %12, align 4
  br label %77

181:                                              ; preds = %77
  store i32 0, i32* %12, align 4
  br label %182

182:                                              ; preds = %195, %181
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %198

188:                                              ; preds = %182
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %190 = load i32, i32* %12, align 4
  %191 = call %struct.TYPE_20__** @ccv_array_get(%struct.TYPE_22__* %189, i32 %190)
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %191, align 8
  store %struct.TYPE_20__* %192, %struct.TYPE_20__** %20, align 8
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 0
  store i64 0, i64* %194, align 8
  br label %195

195:                                              ; preds = %188
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %12, align 4
  br label %182

198:                                              ; preds = %182
  store i32 0, i32* %12, align 4
  br label %199

199:                                              ; preds = %210, %198
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* %7, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %213

203:                                              ; preds = %199
  %204 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %204, i64 %206
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 0
  store i64 0, i64* %209, align 8
  br label %210

210:                                              ; preds = %203
  %211 = load i32, i32* %12, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %12, align 4
  br label %199

213:                                              ; preds = %199
  store i32 0, i32* %12, align 4
  br label %214

214:                                              ; preds = %229, %213
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %232

218:                                              ; preds = %214
  %219 = load i32, i32* %12, align 4
  %220 = ashr i32 %219, 6
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %46, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %12, align 4
  %225 = and i32 %224, 63
  %226 = shl i32 1, %225
  %227 = and i32 %223, %226
  %228 = call i32 @assert(i32 %227)
  br label %229

229:                                              ; preds = %218
  %230 = load i32, i32* %12, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %12, align 4
  br label %214

232:                                              ; preds = %214
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %7, align 4
  %237 = add nsw i32 %235, %236
  store i32 %237, i32* %21, align 4
  %238 = load i32, i32* %21, align 4
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = mul i64 8, %240
  %242 = add i64 40, %241
  %243 = load i32, i32* %17, align 4
  %244 = sext i32 %243 to i64
  %245 = mul i64 4, %244
  %246 = add i64 %242, %245
  %247 = trunc i64 %246 to i32
  %248 = call i64 @cccalloc(i32 1, i32 %247)
  %249 = inttoptr i64 %248 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %249, %struct.TYPE_21__** %22, align 8
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 3
  store i32* @ccv_cnnp_functional_model_isa, i32** %252, align 8
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %254, align 8
  %256 = load i32, i32* %21, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %255, i64 %257
  %259 = bitcast %struct.TYPE_20__** %258 to i32*
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 2
  store i32* %259, i32** %262, align 8
  %263 = load i32, i32* %17, align 4
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 0
  store i32 %263, i32* %266, align 8
  %267 = load i32, i32* %7, align 4
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 1
  store i32 %267, i32* %270, align 4
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %271, i32 0, i32 2
  %273 = load i8*, i8** %10, align 8
  %274 = call i32 @ccv_cnnp_model_copy_name(%struct.TYPE_23__* %272, i8* %273)
  %275 = load i32, i32* %21, align 4
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 8
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %279, align 8
  %281 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  %282 = load i32, i32* %7, align 4
  %283 = sext i32 %282 to i64
  %284 = mul i64 8, %283
  %285 = trunc i64 %284 to i32
  %286 = call i32 @memcpy(%struct.TYPE_20__** %280, %struct.TYPE_20__** %281, i32 %285)
  store i32 0, i32* %12, align 4
  br label %287

287:                                              ; preds = %311, %232
  %288 = load i32, i32* %12, align 4
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = icmp slt i32 %288, %291
  br i1 %292, label %293, label %314

293:                                              ; preds = %287
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %295 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = sub nsw i32 %297, 1
  %299 = load i32, i32* %12, align 4
  %300 = sub nsw i32 %298, %299
  %301 = call %struct.TYPE_20__** @ccv_array_get(%struct.TYPE_22__* %294, i32 %300)
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %301, align 8
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %304, align 8
  %306 = load i32, i32* %7, align 4
  %307 = load i32, i32* %12, align 4
  %308 = add nsw i32 %306, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %305, i64 %309
  store %struct.TYPE_20__* %302, %struct.TYPE_20__** %310, align 8
  br label %311

311:                                              ; preds = %293
  %312 = load i32, i32* %12, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %12, align 4
  br label %287

314:                                              ; preds = %287
  %315 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %316 = call i32 @ccv_array_free(%struct.TYPE_22__* %315)
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %318 = bitcast %struct.TYPE_21__* %317 to i32*
  %319 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %319)
  ret i32* %318
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_22__* @ccv_array_new(i32, i32, i32) #1

declare dso_local i32 @ccv_array_resize(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_20__**, %struct.TYPE_20__**, i32) #1

declare dso_local %struct.TYPE_20__** @ccv_array_get(%struct.TYPE_22__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @CCV_CNNP_IS_MODEL_INPUT(%struct.TYPE_18__*) #1

declare dso_local i32 @ccv_array_push(%struct.TYPE_22__*, %struct.TYPE_20__**) #1

declare dso_local i64 @cccalloc(i32, i32) #1

declare dso_local i32 @ccv_cnnp_model_copy_name(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_22__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
