; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sdl_gfx.c_sdl_render_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sdl_gfx.c_sdl_render_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.font_glyph* (i32, i32)*, %struct.font_atlas* (i32)* }
%struct.font_glyph = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.font_atlas = type { i32*, i32 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_15__*, i8*, i32, i32, %struct.TYPE_16__*)* @sdl_render_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdl_render_msg(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i8* %2, i32 %3, i32 %4, %struct.TYPE_16__* %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.font_atlas*, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.font_glyph*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_16__* %5, %struct.TYPE_16__** %12, align 8
  store %struct.font_atlas* null, %struct.font_atlas** %20, align 8
  %39 = call %struct.TYPE_13__* (...) @config_get_ptr()
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %21, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %6
  br label %319

45:                                               ; preds = %6
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load %struct.font_atlas* (i32)*, %struct.font_atlas* (i32)** %49, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.font_atlas* %50(i32 %53)
  store %struct.font_atlas* %54, %struct.font_atlas** %20, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = mul i32 %58, %59
  store i32 %60, i32* %15, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load float, float* %63, align 4
  %65 = fsub float 1.000000e+00, %64
  %66 = load i32, i32* %11, align 4
  %67 = uitofp i32 %66 to float
  %68 = fmul float %65, %67
  %69 = fptosi float %68 to i32
  store i32 %69, i32* %16, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %17, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %18, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %19, align 4
  br label %79

79:                                               ; preds = %316, %45
  %80 = load i8*, i8** %9, align 8
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %83, label %319

83:                                               ; preds = %79
  store i32* null, i32** %28, align 8
  store i32* null, i32** %29, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load %struct.font_glyph* (i32, i32)*, %struct.font_glyph* (i32, i32)** %87, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = call %struct.font_glyph* %88(i32 %91, i32 %94)
  store %struct.font_glyph* %95, %struct.font_glyph** %30, align 8
  %96 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %97 = icmp ne %struct.font_glyph* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %83
  br label %316

99:                                               ; preds = %83
  %100 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %101 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %22, align 4
  %103 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %104 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %23, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %108 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %106, %109
  store i32 %110, i32* %24, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %113 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %111, %114
  store i32 %115, i32* %25, align 4
  %116 = load %struct.font_atlas*, %struct.font_atlas** %20, align 8
  %117 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %120 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %118, i64 %122
  %124 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %125 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.font_atlas*, %struct.font_atlas** %20, align 8
  %128 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %126, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %123, i64 %131
  store i32* %132, i32** %29, align 8
  %133 = load i32, i32* %24, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %99
  %136 = load i32, i32* %24, align 4
  %137 = load i32*, i32** %29, align 8
  %138 = sext i32 %136 to i64
  %139 = sub i64 0, %138
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32* %140, i32** %29, align 8
  %141 = load i32, i32* %24, align 4
  %142 = load i32, i32* %22, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %144

144:                                              ; preds = %135, %99
  %145 = load i32, i32* %25, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %144
  %148 = load i32, i32* %25, align 4
  %149 = load %struct.font_atlas*, %struct.font_atlas** %20, align 8
  %150 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = mul nsw i32 %148, %151
  %153 = load i32*, i32** %29, align 8
  %154 = sext i32 %152 to i64
  %155 = sub i64 0, %154
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32* %156, i32** %29, align 8
  %157 = load i32, i32* %25, align 4
  %158 = load i32, i32* %23, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %23, align 4
  store i32 0, i32* %25, align 4
  br label %160

160:                                              ; preds = %147, %144
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %24, align 4
  %163 = sub i32 %161, %162
  store i32 %163, i32* %26, align 4
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %25, align 4
  %166 = sub i32 %164, %165
  store i32 %166, i32* %27, align 4
  %167 = load i32, i32* %26, align 4
  %168 = icmp sle i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %160
  %170 = load i32, i32* %27, align 4
  %171 = icmp sle i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169, %160
  br label %316

173:                                              ; preds = %169
  %174 = load i32, i32* %22, align 4
  %175 = load i32, i32* %26, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = load i32, i32* %26, align 4
  store i32 %178, i32* %22, align 4
  br label %179

179:                                              ; preds = %177, %173
  %180 = load i32, i32* %23, align 4
  %181 = load i32, i32* %27, align 4
  %182 = icmp sgt i32 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load i32, i32* %27, align 4
  store i32 %184, i32* %23, align 4
  br label %185

185:                                              ; preds = %183, %179
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = inttoptr i64 %188 to i32*
  %190 = load i32, i32* %25, align 4
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = ashr i32 %193, 2
  %195 = mul nsw i32 %190, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %189, i64 %196
  %198 = load i32, i32* %24, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32* %200, i32** %28, align 8
  store i32 0, i32* %14, align 4
  br label %201

201:                                              ; preds = %285, %185
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %23, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %301

205:                                              ; preds = %201
  store i32 0, i32* %13, align 4
  br label %206

206:                                              ; preds = %281, %205
  %207 = load i32, i32* %13, align 4
  %208 = load i32, i32* %22, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %284

210:                                              ; preds = %206
  %211 = load i32*, i32** %29, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %31, align 4
  %216 = load i32*, i32** %28, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %32, align 4
  %221 = load i32, i32* %32, align 4
  %222 = load i32, i32* %17, align 4
  %223 = lshr i32 %221, %222
  %224 = and i32 %223, 255
  store i32 %224, i32* %33, align 4
  %225 = load i32, i32* %32, align 4
  %226 = load i32, i32* %18, align 4
  %227 = lshr i32 %225, %226
  %228 = and i32 %227, 255
  store i32 %228, i32* %34, align 4
  %229 = load i32, i32* %32, align 4
  %230 = load i32, i32* %19, align 4
  %231 = lshr i32 %229, %230
  %232 = and i32 %231, 255
  store i32 %232, i32* %35, align 4
  %233 = load i32, i32* %33, align 4
  %234 = load i32, i32* %31, align 4
  %235 = sub i32 256, %234
  %236 = mul i32 %233, %235
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %31, align 4
  %241 = mul i32 %239, %240
  %242 = add i32 %236, %241
  %243 = lshr i32 %242, 8
  store i32 %243, i32* %36, align 4
  %244 = load i32, i32* %34, align 4
  %245 = load i32, i32* %31, align 4
  %246 = sub i32 256, %245
  %247 = mul i32 %244, %246
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %31, align 4
  %252 = mul i32 %250, %251
  %253 = add i32 %247, %252
  %254 = lshr i32 %253, 8
  store i32 %254, i32* %37, align 4
  %255 = load i32, i32* %35, align 4
  %256 = load i32, i32* %31, align 4
  %257 = sub i32 256, %256
  %258 = mul i32 %255, %257
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %31, align 4
  %263 = mul i32 %261, %262
  %264 = add i32 %258, %263
  %265 = lshr i32 %264, 8
  store i32 %265, i32* %38, align 4
  %266 = load i32, i32* %36, align 4
  %267 = load i32, i32* %17, align 4
  %268 = shl i32 %266, %267
  %269 = load i32, i32* %37, align 4
  %270 = load i32, i32* %18, align 4
  %271 = shl i32 %269, %270
  %272 = or i32 %268, %271
  %273 = load i32, i32* %38, align 4
  %274 = load i32, i32* %19, align 4
  %275 = shl i32 %273, %274
  %276 = or i32 %272, %275
  %277 = load i32*, i32** %28, align 8
  %278 = load i32, i32* %13, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  store i32 %276, i32* %280, align 4
  br label %281

281:                                              ; preds = %210
  %282 = load i32, i32* %13, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %13, align 4
  br label %206

284:                                              ; preds = %206
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %14, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %14, align 4
  %288 = load %struct.font_atlas*, %struct.font_atlas** %20, align 8
  %289 = getelementptr inbounds %struct.font_atlas, %struct.font_atlas* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = load i32*, i32** %29, align 8
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  store i32* %293, i32** %29, align 8
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = ashr i32 %296, 2
  %298 = load i32*, i32** %28, align 8
  %299 = sext i32 %297 to i64
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  store i32* %300, i32** %28, align 8
  br label %201

301:                                              ; preds = %201
  %302 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %303 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %302, i32 0, i32 7
  %304 = load i64, i64* %303, align 8
  %305 = load i32, i32* %15, align 4
  %306 = sext i32 %305 to i64
  %307 = add nsw i64 %306, %304
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %15, align 4
  %309 = load %struct.font_glyph*, %struct.font_glyph** %30, align 8
  %310 = getelementptr inbounds %struct.font_glyph, %struct.font_glyph* %309, i32 0, i32 6
  %311 = load i64, i64* %310, align 8
  %312 = load i32, i32* %16, align 4
  %313 = sext i32 %312 to i64
  %314 = add nsw i64 %313, %311
  %315 = trunc i64 %314 to i32
  store i32 %315, i32* %16, align 4
  br label %316

316:                                              ; preds = %301, %172, %98
  %317 = load i8*, i8** %9, align 8
  %318 = getelementptr inbounds i8, i8* %317, i32 1
  store i8* %318, i8** %9, align 8
  br label %79

319:                                              ; preds = %44, %79
  ret void
}

declare dso_local %struct.TYPE_13__* @config_get_ptr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
