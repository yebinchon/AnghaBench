; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_xvideo.c_xv_render_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_xvideo.c_xv_render_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.font_glyph* (i32, i32)*, %struct.font_atlas* (i32)* }
%struct.font_glyph = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.font_atlas = type { i32*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i8*, i32, i32)* @xv_render_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xv_render_msg(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca %struct.font_atlas*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.font_glyph*, align 8
  %29 = alloca [2 x i32], align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %34 = call %struct.TYPE_12__* (...) @config_get_ptr()
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %18, align 8
  store %struct.font_atlas* null, %struct.font_atlas** %19, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %4
  br label %375

40:                                               ; preds = %4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load %struct.font_atlas* (i32)*, %struct.font_atlas* (i32)** %44, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.font_atlas* %45(i32 %48)
  store %struct.font_atlas* %49, %struct.font_atlas** %19, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = mul i32 %53, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %8, align 4
  %57 = uitofp i32 %56 to float
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load float, float* %60, align 4
  %62 = fsub float 1.000000e+00, %61
  %63 = fmul float %57, %62
  %64 = fptosi float %63 to i32
  store i32 %64, i32* %12, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %69, i32* %70, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %75, i32* %76, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %16, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %7, align 4
  %84 = shl i32 %83, 1
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %372, %40
  %86 = load i8*, i8** %6, align 8
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %375

89:                                               ; preds = %85
  store i32* null, i32** %26, align 8
  store i32* null, i32** %27, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load %struct.font_glyph* (i32, i32)*, %struct.font_glyph* (i32, i32)** %93, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = call %struct.font_glyph* %94(i32 %97, i32 %100)
  store %struct.font_glyph* %101, %struct.font_glyph** %28, align 8
  %102 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %103 = icmp ne %struct.font_glyph* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %89
  br label %372

105:                                              ; preds = %89
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %108 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %106, %109
  %111 = add nsw i32 %110, 1
  %112 = and i32 %111, -2
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %115 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  store i32 %117, i32* %21, align 4
  %118 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %119 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %22, align 4
  %121 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %122 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %23, align 4
  %124 = load %struct.font_atlas*, %struct.font_atlas** %19, align 8
  %125 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %128 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %133 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.font_atlas*, %struct.font_atlas** %19, align 8
  %136 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %134, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %131, i64 %139
  store i32* %140, i32** %26, align 8
  %141 = load i32, i32* %20, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %105
  %144 = load i32, i32* %20, align 4
  %145 = load i32*, i32** %26, align 8
  %146 = sext i32 %144 to i64
  %147 = sub i64 0, %146
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32* %148, i32** %26, align 8
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* %22, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %22, align 4
  store i32 0, i32* %20, align 4
  br label %152

152:                                              ; preds = %143, %105
  %153 = load i32, i32* %21, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %152
  %156 = load i32, i32* %21, align 4
  %157 = load %struct.font_atlas*, %struct.font_atlas** %19, align 8
  %158 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = mul nsw i32 %156, %159
  %161 = load i32*, i32** %26, align 8
  %162 = sext i32 %160 to i64
  %163 = sub i64 0, %162
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32* %164, i32** %26, align 8
  %165 = load i32, i32* %21, align 4
  %166 = load i32, i32* %23, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %168

168:                                              ; preds = %155, %152
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %20, align 4
  %171 = sub i32 %169, %170
  store i32 %171, i32* %24, align 4
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %21, align 4
  %174 = sub i32 %172, %173
  store i32 %174, i32* %25, align 4
  %175 = load i32, i32* %24, align 4
  %176 = icmp sle i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %168
  %178 = load i32, i32* %25, align 4
  %179 = icmp sle i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177, %168
  br label %372

181:                                              ; preds = %177
  %182 = load i32, i32* %22, align 4
  %183 = load i32, i32* %24, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i32, i32* %24, align 4
  store i32 %186, i32* %22, align 4
  br label %187

187:                                              ; preds = %185, %181
  %188 = load i32, i32* %23, align 4
  %189 = load i32, i32* %25, align 4
  %190 = icmp sgt i32 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load i32, i32* %25, align 4
  store i32 %192, i32* %23, align 4
  br label %193

193:                                              ; preds = %191, %187
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 6
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = inttoptr i64 %198 to i32*
  %200 = load i32, i32* %21, align 4
  %201 = load i32, i32* %15, align 4
  %202 = mul i32 %200, %201
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %199, i64 %203
  %205 = load i32, i32* %20, align 4
  %206 = shl i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  store i32* %208, i32** %27, align 8
  store i32 0, i32* %10, align 4
  br label %209

209:                                              ; preds = %344, %193
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* %23, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %357

213:                                              ; preds = %209
  store i32 0, i32* %9, align 4
  br label %214

214:                                              ; preds = %340, %213
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* %22, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %343

218:                                              ; preds = %214
  %219 = load i32, i32* %9, align 4
  %220 = shl i32 %219, 1
  store i32 %220, i32* %32, align 4
  %221 = load i32*, i32** %26, align 8
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %222, 0
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  store i32 %226, i32* %227, align 4
  %228 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  store i32 0, i32* %228, align 4
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, 1
  %231 = load i32, i32* %22, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %218
  %234 = load i32*, i32** %26, align 8
  %235 = load i32, i32* %9, align 4
  %236 = add nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  store i32 %239, i32* %240, align 4
  br label %241

241:                                              ; preds = %233, %218
  %242 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  %245 = load i32, i32* %244, align 4
  %246 = add i32 %243, %245
  %247 = lshr i32 %246, 1
  store i32 %247, i32* %30, align 4
  store i32 0, i32* %13, align 4
  br label %248

248:                                              ; preds = %288, %241
  %249 = load i32, i32* %13, align 4
  %250 = icmp ult i32 %249, 2
  br i1 %250, label %251, label %291

251:                                              ; preds = %248
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* %13, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = mul i32 %254, %258
  %260 = load i32, i32* %13, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = sub i32 256, %263
  %265 = load i32*, i32** %27, align 8
  %266 = load i32, i32* %32, align 4
  %267 = load i32, i32* %13, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = add i32 %266, %270
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %265, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = mul i32 %264, %274
  %276 = add i32 %259, %275
  %277 = lshr i32 %276, 8
  store i32 %277, i32* %33, align 4
  %278 = load i32, i32* %33, align 4
  %279 = load i32*, i32** %27, align 8
  %280 = load i32, i32* %32, align 4
  %281 = load i32, i32* %13, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = add i32 %280, %284
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %279, i64 %286
  store i32 %278, i32* %287, align 4
  br label %288

288:                                              ; preds = %251
  %289 = load i32, i32* %13, align 4
  %290 = add i32 %289, 1
  store i32 %290, i32* %13, align 4
  br label %248

291:                                              ; preds = %248
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %30, align 4
  %296 = mul i32 %294, %295
  %297 = load i32, i32* %30, align 4
  %298 = sub i32 256, %297
  %299 = load i32*, i32** %27, align 8
  %300 = load i32, i32* %32, align 4
  %301 = load i32, i32* %16, align 4
  %302 = add i32 %300, %301
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %299, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = mul i32 %298, %305
  %307 = add i32 %296, %306
  %308 = lshr i32 %307, 8
  store i32 %308, i32* %31, align 4
  %309 = load i32, i32* %31, align 4
  %310 = load i32*, i32** %27, align 8
  %311 = load i32, i32* %32, align 4
  %312 = load i32, i32* %16, align 4
  %313 = add i32 %311, %312
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %310, i64 %314
  store i32 %309, i32* %315, align 4
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* %30, align 4
  %320 = mul i32 %318, %319
  %321 = load i32, i32* %30, align 4
  %322 = sub i32 256, %321
  %323 = load i32*, i32** %27, align 8
  %324 = load i32, i32* %32, align 4
  %325 = load i32, i32* %17, align 4
  %326 = add i32 %324, %325
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %323, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = mul i32 %322, %329
  %331 = add i32 %320, %330
  %332 = lshr i32 %331, 8
  store i32 %332, i32* %31, align 4
  %333 = load i32, i32* %31, align 4
  %334 = load i32*, i32** %27, align 8
  %335 = load i32, i32* %32, align 4
  %336 = load i32, i32* %17, align 4
  %337 = add i32 %335, %336
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %334, i64 %338
  store i32 %333, i32* %339, align 4
  br label %340

340:                                              ; preds = %291
  %341 = load i32, i32* %9, align 4
  %342 = add nsw i32 %341, 2
  store i32 %342, i32* %9, align 4
  br label %214

343:                                              ; preds = %214
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %10, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %10, align 4
  %347 = load %struct.font_atlas*, %struct.font_atlas** %19, align 8
  %348 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = load i32*, i32** %26, align 8
  %351 = sext i32 %349 to i64
  %352 = getelementptr inbounds i32, i32* %350, i64 %351
  store i32* %352, i32** %26, align 8
  %353 = load i32, i32* %15, align 4
  %354 = load i32*, i32** %27, align 8
  %355 = zext i32 %353 to i64
  %356 = getelementptr inbounds i32, i32* %354, i64 %355
  store i32* %356, i32** %27, align 8
  br label %209

357:                                              ; preds = %209
  %358 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %359 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %358, i32 0, i32 7
  %360 = load i64, i64* %359, align 8
  %361 = load i32, i32* %11, align 4
  %362 = sext i32 %361 to i64
  %363 = add nsw i64 %362, %360
  %364 = trunc i64 %363 to i32
  store i32 %364, i32* %11, align 4
  %365 = load %struct.font_glyph*, %struct.font_glyph** %28, align 8
  %366 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %365, i32 0, i32 6
  %367 = load i64, i64* %366, align 8
  %368 = load i32, i32* %12, align 4
  %369 = sext i32 %368 to i64
  %370 = add nsw i64 %369, %367
  %371 = trunc i64 %370 to i32
  store i32 %371, i32* %12, align 4
  br label %372

372:                                              ; preds = %357, %180, %104
  %373 = load i8*, i8** %6, align 8
  %374 = getelementptr inbounds i8, i8* %373, i32 1
  store i8* %374, i8** %6, align 8
  br label %85

375:                                              ; preds = %39, %85
  ret void
}

declare dso_local %struct.TYPE_12__* @config_get_ptr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
