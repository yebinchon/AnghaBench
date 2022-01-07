; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_rv34_output_intra.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_rv34_output_intra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32, i32** }

@rv34_qscale_tab = common dso_local global i32* null, align 8
@ittrans = common dso_local global i32* null, align 8
@rv34_chroma_quant = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64*, i32)* @rv34_output_intra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv34_output_intra(%struct.TYPE_6__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [48 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 4
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %7, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %8, align 8
  %25 = bitcast [48 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 192, i1 false)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 0
  store i32 1, i32* %33, align 16
  br label %34

34:                                               ; preds = %32, %3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 2
  store i32 1, i32* %42, align 8
  %43 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 1
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 4
  store i32 1, i32* %52, align 16
  %53 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 3
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 5
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %61, %54
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 16
  store i32 1, i32* %71, align 16
  %72 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 8
  store i32 1, i32* %72, align 16
  br label %73

73:                                               ; preds = %70, %63
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 9
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 32
  store i32 1, i32* %81, align 16
  %82 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 24
  store i32 1, i32* %82, align 16
  br label %83

83:                                               ; preds = %80, %73
  %84 = load i32*, i32** @rv34_qscale_tab, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %178, %83
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %91, 4
  br i1 %92, label %93, label %181

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 %94, 8
  %96 = add nsw i32 9, %95
  store i32 %96, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %154, %93
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 4
  br i1 %99, label %100, label %163

100:                                              ; preds = %97
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** @ittrans, align 8
  %107 = load i64*, i64** %5, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %13, align 4
  %115 = sub nsw i32 %114, 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %13, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 7
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %13, align 4
  %130 = sub nsw i32 %129, 7
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @rv34_pred_4x4_block(%struct.TYPE_6__* %101, i32* %102, i32 %105, i32 %113, i32 %118, i32 %123, i32 %128, i32 %133)
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [48 x i32], [48 x i32]* %9, i64 0, i64 %136
  store i32 1, i32* %137, align 4
  %138 = load i32, i32* %6, align 4
  %139 = and i32 %138, 1
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %100
  br label %154

142:                                              ; preds = %100
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %144 = load i32*, i32** %8, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %14, align 4
  %153 = call i32 @rv34_process_block(%struct.TYPE_6__* %143, i32* %144, i32 %147, i32 %150, i32 0, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %142, %141
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %6, align 4
  %158 = ashr i32 %157, 1
  store i32 %158, i32* %6, align 4
  %159 = load i32*, i32** %8, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 4
  store i32* %160, i32** %8, align 8
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  br label %97

163:                                              ; preds = %97
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = mul nsw i32 %166, 4
  %168 = sub nsw i32 %167, 16
  %169 = load i32*, i32** %8, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32* %171, i32** %8, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i64*, i64** %5, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i64, i64* %175, i64 %176
  store i64* %177, i64** %5, align 8
  br label %178

178:                                              ; preds = %163
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %11, align 4
  br label %90

181:                                              ; preds = %90
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = mul nsw i32 %184, 4
  %186 = load i64*, i64** %5, align 8
  %187 = sext i32 %185 to i64
  %188 = sub i64 0, %187
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  store i64* %189, i64** %5, align 8
  %190 = load i32*, i32** @rv34_qscale_tab, align 8
  %191 = load i64**, i64*** @rv34_chroma_quant, align 8
  %192 = getelementptr inbounds i64*, i64** %191, i64 1
  %193 = load i64*, i64** %192, align 8
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds i64, i64* %193, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds i32, i32* %190, i64 %198
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %15, align 4
  %201 = load i32*, i32** @rv34_qscale_tab, align 8
  %202 = load i64**, i64*** @rv34_chroma_quant, align 8
  %203 = getelementptr inbounds i64*, i64** %202, i64 0
  %204 = load i64*, i64** %203, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds i64, i64* %204, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds i32, i32* %201, i64 %209
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %212

212:                                              ; preds = %331, %181
  %213 = load i32, i32* %12, align 4
  %214 = icmp slt i32 %213, 2
  br i1 %214, label %215, label %334

215:                                              ; preds = %212
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 3
  %218 = load i32**, i32*** %217, align 8
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 1, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32*, i32** %218, i64 %221
  %223 = load i32*, i32** %222, align 8
  store i32* %223, i32** %8, align 8
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 6
  %228 = call i32 @fill_rectangle(i32* %227, i32 2, i32 2, i32 4, i32 0, i32 4)
  store i32 0, i32* %11, align 4
  br label %229

229:                                              ; preds = %327, %215
  %230 = load i32, i32* %11, align 4
  %231 = icmp slt i32 %230, 2
  br i1 %231, label %232, label %330

232:                                              ; preds = %229
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 6
  %237 = load i32, i32* %11, align 4
  %238 = mul nsw i32 %237, 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  store i32* %240, i32** %16, align 8
  store i32 0, i32* %10, align 4
  br label %241

241:                                              ; preds = %312, %232
  %242 = load i32, i32* %10, align 4
  %243 = icmp slt i32 %242, 2
  br i1 %243, label %244, label %319

244:                                              ; preds = %241
  %245 = load i32*, i32** @ittrans, align 8
  %246 = load i64*, i64** %5, align 8
  %247 = load i32, i32* %10, align 4
  %248 = mul nsw i32 %247, 2
  %249 = load i32, i32* %11, align 4
  %250 = mul nsw i32 %249, 2
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = mul nsw i32 %250, %253
  %255 = add nsw i32 %248, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i64, i64* %246, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds i32, i32* %245, i64 %258
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %17, align 4
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %262 = load i32*, i32** %8, align 8
  %263 = load i32, i32* %10, align 4
  %264 = mul nsw i32 4, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %262, i64 %265
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %17, align 4
  %271 = load i32*, i32** %16, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 -4
  %273 = load i32, i32* %272, align 4
  %274 = load i32*, i32** %16, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 -1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %10, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %283, label %279

279:                                              ; preds = %244
  %280 = load i32, i32* %11, align 4
  %281 = icmp ne i32 %280, 0
  %282 = xor i1 %281, true
  br label %283

283:                                              ; preds = %279, %244
  %284 = phi i1 [ false, %244 ], [ %282, %279 ]
  %285 = zext i1 %284 to i32
  %286 = load i32*, i32** %16, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 -3
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @rv34_pred_4x4_block(%struct.TYPE_6__* %261, i32* %266, i32 %269, i32 %270, i32 %273, i32 %276, i32 %285, i32 %288)
  %290 = load i32*, i32** %16, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  store i32 1, i32* %291, align 4
  %292 = load i32, i32* %6, align 4
  %293 = and i32 %292, 1
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %283
  br label %312

296:                                              ; preds = %283
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %298 = load i32*, i32** %8, align 8
  %299 = load i32, i32* %10, align 4
  %300 = mul nsw i32 4, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %298, i64 %301
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %15, align 4
  %310 = load i32, i32* %14, align 4
  %311 = call i32 @rv34_process_block(%struct.TYPE_6__* %297, i32* %302, i32 %305, i32 %308, i32 1, i32 %309, i32 %310)
  br label %312

312:                                              ; preds = %296, %295
  %313 = load i32, i32* %10, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %10, align 4
  %315 = load i32, i32* %6, align 4
  %316 = ashr i32 %315, 1
  store i32 %316, i32* %6, align 4
  %317 = load i32*, i32** %16, align 8
  %318 = getelementptr inbounds i32, i32* %317, i32 1
  store i32* %318, i32** %16, align 8
  br label %241

319:                                              ; preds = %241
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = mul nsw i32 4, %322
  %324 = load i32*, i32** %8, align 8
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i32, i32* %324, i64 %325
  store i32* %326, i32** %8, align 8
  br label %327

327:                                              ; preds = %319
  %328 = load i32, i32* %11, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %11, align 4
  br label %229

330:                                              ; preds = %229
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %12, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %12, align 4
  br label %212

334:                                              ; preds = %212
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rv34_pred_4x4_block(%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @rv34_process_block(%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @fill_rectangle(i32*, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
