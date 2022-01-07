; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_blit_rect_32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_blit_rect_32.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i32)* @vc_blit_rect_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc_blit_rect_32(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i32* %8, i32 %9) #0 {
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
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
  store i32 65536, i32* %33, align 4
  %34 = load i32***, i32**** @vc_rotate_matr, align 8
  %35 = load i32, i32* @kDataRotate, align 4
  %36 = load i32, i32* %20, align 4
  %37 = and i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32**, i32*** %34, i64 %38
  %40 = load i32**, i32*** %39, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %33, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, i32* %29, align 4
  %47 = load i32***, i32**** @vc_rotate_matr, align 8
  %48 = load i32, i32* @kDataRotate, align 4
  %49 = load i32, i32* %20, align 4
  %50 = and i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32**, i32*** %47, i64 %51
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %33, align 4
  %59 = mul nsw i32 %57, %58
  store i32 %59, i32* %30, align 4
  %60 = load i32***, i32**** @vc_rotate_matr, align 8
  %61 = load i32, i32* @kDataRotate, align 4
  %62 = load i32, i32* %20, align 4
  %63 = and i32 %61, %62
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32**, i32*** %60, i64 %64
  %66 = load i32**, i32*** %65, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %33, align 4
  %72 = mul nsw i32 %70, %71
  store i32 %72, i32* %31, align 4
  %73 = load i32***, i32**** @vc_rotate_matr, align 8
  %74 = load i32, i32* @kDataRotate, align 4
  %75 = load i32, i32* %20, align 4
  %76 = and i32 %74, %75
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32**, i32*** %73, i64 %77
  %79 = load i32**, i32*** %78, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %33, align 4
  %85 = mul nsw i32 %83, %84
  store i32 %85, i32* %32, align 4
  %86 = load i32, i32* %29, align 4
  %87 = load i32, i32* %30, align 4
  %88 = add nsw i32 %86, %87
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %10
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %33, align 4
  %93 = mul nsw i32 %91, %92
  %94 = sub nsw i32 %93, 32768
  br label %96

95:                                               ; preds = %10
  br label %96

96:                                               ; preds = %95, %90
  %97 = phi i32 [ %94, %90 ], [ 0, %95 ]
  store i32 %97, i32* %27, align 4
  %98 = load i32, i32* %31, align 4
  %99 = load i32, i32* %32, align 4
  %100 = add nsw i32 %98, %99
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %33, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sub nsw i32 %105, 32768
  br label %108

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %102
  %109 = phi i32 [ %106, %102 ], [ 0, %107 ]
  store i32 %109, i32* %28, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i8*, i8** %18, align 8
  %114 = ptrtoint i8* %113 to i64
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %24, align 4
  br label %121

116:                                              ; preds = %108
  %117 = load i32, i32* %16, align 4
  %118 = icmp eq i32 1, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 0, i32* %29, align 4
  br label %120

120:                                              ; preds = %119, %116
  br label %121

121:                                              ; preds = %120, %112
  %122 = load i32*, i32** %19, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load i32, i32* %13, align 4
  %126 = load i32*, i32** %19, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %19, align 8
  br label %129

129:                                              ; preds = %124, %121
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 1), align 8
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 8
  %133 = mul nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %130, %134
  %136 = load i32, i32* %11, align 4
  %137 = mul nsw i32 %136, 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %135, %138
  %140 = inttoptr i64 %139 to i32*
  store i32* %140, i32** %21, align 8
  store i32 0, i32* %22, align 4
  br label %141

141:                                              ; preds = %309, %129
  %142 = load i32, i32* %22, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %312

145:                                              ; preds = %141
  store i32 0, i32* %23, align 4
  br label %146

146:                                              ; preds = %289, %145
  %147 = load i32, i32* %23, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %292

150:                                              ; preds = %146
  %151 = load i32, i32* %16, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %182

153:                                              ; preds = %150
  %154 = load i8*, i8** %18, align 8
  %155 = load i32, i32* %27, align 4
  %156 = load i32, i32* %23, align 4
  %157 = load i32, i32* %29, align 4
  %158 = mul nsw i32 %156, %157
  %159 = add nsw i32 %155, %158
  %160 = load i32, i32* %22, align 4
  %161 = load i32, i32* %30, align 4
  %162 = mul nsw i32 %160, %161
  %163 = add nsw i32 %159, %162
  %164 = ashr i32 %163, 16
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %28, align 4
  %167 = load i32, i32* %23, align 4
  %168 = load i32, i32* %31, align 4
  %169 = mul nsw i32 %167, %168
  %170 = add nsw i32 %166, %169
  %171 = load i32, i32* %22, align 4
  %172 = load i32, i32* %32, align 4
  %173 = mul nsw i32 %171, %172
  %174 = add nsw i32 %170, %173
  %175 = ashr i32 %174, 16
  %176 = mul nsw i32 %165, %175
  %177 = add nsw i32 %164, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %154, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  store i32 %181, i32* %24, align 4
  br label %182

182:                                              ; preds = %153, %150
  %183 = load i32*, i32** %19, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %204

185:                                              ; preds = %182
  %186 = load i32, i32* @kSave, align 4
  %187 = load i32, i32* %20, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %185
  %191 = load i32*, i32** %21, align 8
  %192 = load i32, i32* %23, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load volatile i32, i32* %194, align 4
  store i32 %195, i32* %26, align 4
  %196 = load i32, i32* %26, align 4
  %197 = load i32*, i32** %19, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %19, align 8
  store i32 %196, i32* %197, align 4
  br label %203

199:                                              ; preds = %185
  %200 = load i32*, i32** %19, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 1
  store i32* %201, i32** %19, align 8
  %202 = load i32, i32* %200, align 4
  store i32 %202, i32* %26, align 4
  br label %203

203:                                              ; preds = %199, %190
  br label %204

204:                                              ; preds = %203, %182
  %205 = load i32, i32* @kDataIndexed, align 4
  %206 = load i32, i32* %20, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %235

209:                                              ; preds = %204
  %210 = load i32*, i32** @vc_clut, align 8
  %211 = load i32, i32* %24, align 4
  %212 = mul i32 %211, 3
  %213 = add i32 %212, 0
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %210, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = shl i32 %216, 16
  %218 = load i32*, i32** @vc_clut, align 8
  %219 = load i32, i32* %24, align 4
  %220 = mul i32 %219, 3
  %221 = add i32 %220, 1
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %218, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = shl i32 %224, 8
  %226 = or i32 %217, %225
  %227 = load i32*, i32** @vc_clut, align 8
  %228 = load i32, i32* %24, align 4
  %229 = mul i32 %228, 3
  %230 = add i32 %229, 2
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %227, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %226, %233
  store i32 %234, i32* %25, align 4
  br label %283

235:                                              ; preds = %204
  %236 = load i32, i32* @kDataAlpha, align 4
  %237 = load i32, i32* %20, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %272

240:                                              ; preds = %235
  %241 = load i32, i32* %26, align 4
  %242 = and i32 %241, 16711935
  %243 = load i32, i32* %24, align 4
  %244 = mul i32 %242, %243
  %245 = add i32 %244, 16711935
  %246 = lshr i32 %245, 8
  %247 = and i32 %246, 16711935
  %248 = load i32, i32* %26, align 4
  %249 = and i32 %248, 65280
  %250 = load i32, i32* %24, align 4
  %251 = mul i32 %249, %250
  %252 = add i32 %251, 65280
  %253 = lshr i32 %252, 8
  %254 = and i32 %253, 65280
  %255 = or i32 %247, %254
  store i32 %255, i32* %25, align 4
  %256 = load i64, i64* @vc_progress_white, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %271

258:                                              ; preds = %240
  %259 = load i32, i32* %24, align 4
  %260 = sub i32 255, %259
  %261 = shl i32 %260, 16
  %262 = load i32, i32* %24, align 4
  %263 = sub i32 255, %262
  %264 = shl i32 %263, 8
  %265 = or i32 %261, %264
  %266 = load i32, i32* %24, align 4
  %267 = sub i32 255, %266
  %268 = or i32 %265, %267
  %269 = load i32, i32* %25, align 4
  %270 = add i32 %269, %268
  store i32 %270, i32* %25, align 4
  br label %271

271:                                              ; preds = %258, %240
  br label %282

272:                                              ; preds = %235
  %273 = load i32, i32* @kDataBack, align 4
  %274 = load i32, i32* %20, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %272
  %278 = load i32, i32* %26, align 4
  store i32 %278, i32* %25, align 4
  br label %281

279:                                              ; preds = %272
  %280 = load i32, i32* %24, align 4
  store i32 %280, i32* %25, align 4
  br label %281

281:                                              ; preds = %279, %277
  br label %282

282:                                              ; preds = %281, %271
  br label %283

283:                                              ; preds = %282, %209
  %284 = load i32, i32* %25, align 4
  %285 = load i32*, i32** %21, align 8
  %286 = load i32, i32* %23, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  store volatile i32 %284, i32* %288, align 4
  br label %289

289:                                              ; preds = %283
  %290 = load i32, i32* %23, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %23, align 4
  br label %146

292:                                              ; preds = %146
  %293 = load i32*, i32** %21, align 8
  %294 = bitcast i32* %293 to i8*
  %295 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 8
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %294, i64 %296
  %298 = bitcast i8* %297 to i32*
  store i32* %298, i32** %21, align 8
  %299 = load i32*, i32** %19, align 8
  %300 = icmp ne i32* %299, null
  br i1 %300, label %301, label %308

301:                                              ; preds = %292
  %302 = load i32, i32* %17, align 4
  %303 = load i32, i32* %14, align 4
  %304 = sub nsw i32 %302, %303
  %305 = load i32*, i32** %19, align 8
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds i32, i32* %305, i64 %306
  store i32* %307, i32** %19, align 8
  br label %308

308:                                              ; preds = %301, %292
  br label %309

309:                                              ; preds = %308
  %310 = load i32, i32* %22, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %22, align 4
  br label %141

312:                                              ; preds = %141
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
