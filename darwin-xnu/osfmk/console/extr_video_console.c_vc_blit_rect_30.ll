; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_blit_rect_30.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_blit_rect_30.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@vc_rotate_matr = common dso_local global i32*** null, align 8
@kDataRotate = common dso_local global i32 0, align 4
@vinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@kSave = common dso_local global i32 0, align 4
@kDataIndexed = common dso_local global i32 0, align 4
@vc_clut = common dso_local global i32* null, align 8
@kDataAlpha = common dso_local global i32 0, align 4
@vc_progress_white = common dso_local global i64 0, align 8
@kDataBack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i32)* @vc_blit_rect_30 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc_blit_rect_30(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i32* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 %9, i32* %20, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 65536, i32* %34, align 4
  %35 = load i32***, i32**** @vc_rotate_matr, align 8
  %36 = load i32, i32* @kDataRotate, align 4
  %37 = load i32, i32* %20, align 4
  %38 = and i32 %36, %37
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32**, i32*** %35, i64 %39
  %41 = load i32**, i32*** %40, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %34, align 4
  %47 = mul nsw i32 %45, %46
  store i32 %47, i32* %30, align 4
  %48 = load i32***, i32**** @vc_rotate_matr, align 8
  %49 = load i32, i32* @kDataRotate, align 4
  %50 = load i32, i32* %20, align 4
  %51 = and i32 %49, %50
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32**, i32*** %48, i64 %52
  %54 = load i32**, i32*** %53, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %34, align 4
  %60 = mul nsw i32 %58, %59
  store i32 %60, i32* %31, align 4
  %61 = load i32***, i32**** @vc_rotate_matr, align 8
  %62 = load i32, i32* @kDataRotate, align 4
  %63 = load i32, i32* %20, align 4
  %64 = and i32 %62, %63
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32**, i32*** %61, i64 %65
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %34, align 4
  %73 = mul nsw i32 %71, %72
  store i32 %73, i32* %32, align 4
  %74 = load i32***, i32**** @vc_rotate_matr, align 8
  %75 = load i32, i32* @kDataRotate, align 4
  %76 = load i32, i32* %20, align 4
  %77 = and i32 %75, %76
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32**, i32*** %74, i64 %78
  %80 = load i32**, i32*** %79, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %34, align 4
  %86 = mul nsw i32 %84, %85
  store i32 %86, i32* %33, align 4
  %87 = load i32, i32* %30, align 4
  %88 = load i32, i32* %31, align 4
  %89 = add nsw i32 %87, %88
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %10
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %34, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sub nsw i32 %94, 32768
  br label %97

96:                                               ; preds = %10
  br label %97

97:                                               ; preds = %96, %91
  %98 = phi i32 [ %95, %91 ], [ 0, %96 ]
  store i32 %98, i32* %28, align 4
  %99 = load i32, i32* %32, align 4
  %100 = load i32, i32* %33, align 4
  %101 = add nsw i32 %99, %100
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %34, align 4
  %106 = mul nsw i32 %104, %105
  %107 = sub nsw i32 %106, 32768
  br label %109

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108, %103
  %110 = phi i32 [ %107, %103 ], [ 0, %108 ]
  store i32 %110, i32* %29, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i8*, i8** %18, align 8
  %115 = ptrtoint i8* %114 to i64
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %24, align 4
  br label %122

117:                                              ; preds = %109
  %118 = load i32, i32* %16, align 4
  %119 = icmp eq i32 1, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 0, i32* %30, align 4
  br label %121

121:                                              ; preds = %120, %117
  br label %122

122:                                              ; preds = %121, %113
  %123 = load i32*, i32** %19, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i32, i32* %13, align 4
  %127 = load i32*, i32** %19, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %19, align 8
  br label %130

130:                                              ; preds = %125, %122
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 1), align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 8
  %134 = mul nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %131, %135
  %137 = load i32, i32* %11, align 4
  %138 = mul nsw i32 %137, 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %136, %139
  %141 = inttoptr i64 %140 to i32*
  store i32* %141, i32** %21, align 8
  store i32 0, i32* %22, align 4
  br label %142

142:                                              ; preds = %318, %130
  %143 = load i32, i32* %22, align 4
  %144 = load i32, i32* %15, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %321

146:                                              ; preds = %142
  store i32 0, i32* %23, align 4
  br label %147

147:                                              ; preds = %298, %146
  %148 = load i32, i32* %23, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %301

151:                                              ; preds = %147
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %183

154:                                              ; preds = %151
  %155 = load i8*, i8** %18, align 8
  %156 = load i32, i32* %28, align 4
  %157 = load i32, i32* %23, align 4
  %158 = load i32, i32* %30, align 4
  %159 = mul nsw i32 %157, %158
  %160 = add nsw i32 %156, %159
  %161 = load i32, i32* %22, align 4
  %162 = load i32, i32* %31, align 4
  %163 = mul nsw i32 %161, %162
  %164 = add nsw i32 %160, %163
  %165 = ashr i32 %164, 16
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %29, align 4
  %168 = load i32, i32* %23, align 4
  %169 = load i32, i32* %32, align 4
  %170 = mul nsw i32 %168, %169
  %171 = add nsw i32 %167, %170
  %172 = load i32, i32* %22, align 4
  %173 = load i32, i32* %33, align 4
  %174 = mul nsw i32 %172, %173
  %175 = add nsw i32 %171, %174
  %176 = ashr i32 %175, 16
  %177 = mul nsw i32 %166, %176
  %178 = add nsw i32 %165, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %155, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  store i32 %182, i32* %24, align 4
  br label %183

183:                                              ; preds = %154, %151
  %184 = load i32*, i32** %19, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %205

186:                                              ; preds = %183
  %187 = load i32, i32* @kSave, align 4
  %188 = load i32, i32* %20, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %186
  %192 = load i32*, i32** %21, align 8
  %193 = load i32, i32* %23, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load volatile i32, i32* %195, align 4
  store i32 %196, i32* %26, align 4
  %197 = load i32, i32* %26, align 4
  %198 = load i32*, i32** %19, align 8
  %199 = getelementptr inbounds i32, i32* %198, i32 1
  store i32* %199, i32** %19, align 8
  store i32 %197, i32* %198, align 4
  br label %204

200:                                              ; preds = %186
  %201 = load i32*, i32** %19, align 8
  %202 = getelementptr inbounds i32, i32* %201, i32 1
  store i32* %202, i32** %19, align 8
  %203 = load i32, i32* %201, align 4
  store i32 %203, i32* %26, align 4
  br label %204

204:                                              ; preds = %200, %191
  br label %205

205:                                              ; preds = %204, %183
  %206 = load i32, i32* @kDataIndexed, align 4
  %207 = load i32, i32* %20, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %237

210:                                              ; preds = %205
  %211 = load i32*, i32** @vc_clut, align 8
  %212 = load i32, i32* %24, align 4
  %213 = mul i32 %212, 3
  %214 = add i32 %213, 0
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %211, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = shl i32 %217, 22
  %219 = load i32*, i32** @vc_clut, align 8
  %220 = load i32, i32* %24, align 4
  %221 = mul i32 %220, 3
  %222 = add i32 %221, 1
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %219, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = shl i32 %225, 12
  %227 = or i32 %218, %226
  %228 = load i32*, i32** @vc_clut, align 8
  %229 = load i32, i32* %24, align 4
  %230 = mul i32 %229, 3
  %231 = add i32 %230, 2
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %228, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = shl i32 %234, 2
  %236 = or i32 %227, %235
  store i32 %236, i32* %25, align 4
  br label %292

237:                                              ; preds = %205
  %238 = load i32, i32* @kDataAlpha, align 4
  %239 = load i32, i32* %20, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %281

242:                                              ; preds = %237
  %243 = load i32, i32* %26, align 4
  %244 = zext i32 %243 to i64
  store i64 %244, i64* %27, align 8
  %245 = load i64, i64* %27, align 8
  %246 = and i64 %245, 1072694271
  %247 = load i32, i32* %24, align 4
  %248 = zext i32 %247 to i64
  %249 = mul i64 %246, %248
  %250 = add i64 %249, 267387135
  %251 = lshr i64 %250, 8
  %252 = and i64 %251, 1072694271
  %253 = load i64, i64* %27, align 8
  %254 = and i64 %253, 1047552
  %255 = load i32, i32* %24, align 4
  %256 = zext i32 %255 to i64
  %257 = mul i64 %254, %256
  %258 = add i64 %257, 261120
  %259 = lshr i64 %258, 8
  %260 = and i64 %259, 1047552
  %261 = or i64 %252, %260
  store i64 %261, i64* %27, align 8
  %262 = load i64, i64* %27, align 8
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %25, align 4
  %264 = load i64, i64* @vc_progress_white, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %280

266:                                              ; preds = %242
  %267 = load i32, i32* %24, align 4
  %268 = sub i32 255, %267
  %269 = shl i32 %268, 22
  %270 = load i32, i32* %24, align 4
  %271 = sub i32 255, %270
  %272 = shl i32 %271, 12
  %273 = or i32 %269, %272
  %274 = load i32, i32* %24, align 4
  %275 = sub i32 255, %274
  %276 = shl i32 %275, 2
  %277 = or i32 %273, %276
  %278 = load i32, i32* %25, align 4
  %279 = add i32 %278, %277
  store i32 %279, i32* %25, align 4
  br label %280

280:                                              ; preds = %266, %242
  br label %291

281:                                              ; preds = %237
  %282 = load i32, i32* @kDataBack, align 4
  %283 = load i32, i32* %20, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %281
  %287 = load i32, i32* %26, align 4
  store i32 %287, i32* %25, align 4
  br label %290

288:                                              ; preds = %281
  %289 = load i32, i32* %24, align 4
  store i32 %289, i32* %25, align 4
  br label %290

290:                                              ; preds = %288, %286
  br label %291

291:                                              ; preds = %290, %280
  br label %292

292:                                              ; preds = %291, %210
  %293 = load i32, i32* %25, align 4
  %294 = load i32*, i32** %21, align 8
  %295 = load i32, i32* %23, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store volatile i32 %293, i32* %297, align 4
  br label %298

298:                                              ; preds = %292
  %299 = load i32, i32* %23, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %23, align 4
  br label %147

301:                                              ; preds = %147
  %302 = load i32*, i32** %21, align 8
  %303 = bitcast i32* %302 to i8*
  %304 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 8
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, i8* %303, i64 %305
  %307 = bitcast i8* %306 to i32*
  store i32* %307, i32** %21, align 8
  %308 = load i32*, i32** %19, align 8
  %309 = icmp ne i32* %308, null
  br i1 %309, label %310, label %317

310:                                              ; preds = %301
  %311 = load i32, i32* %17, align 4
  %312 = load i32, i32* %14, align 4
  %313 = sub nsw i32 %311, %312
  %314 = load i32*, i32** %19, align 8
  %315 = sext i32 %313 to i64
  %316 = getelementptr inbounds i32, i32* %314, i64 %315
  store i32* %316, i32** %19, align 8
  br label %317

317:                                              ; preds = %310, %301
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %22, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %22, align 4
  br label %142

321:                                              ; preds = %142
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
