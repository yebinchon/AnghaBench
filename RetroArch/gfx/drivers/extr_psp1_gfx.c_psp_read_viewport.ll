; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_psp1_gfx.c_psp_read_viewport.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_psp1_gfx.c_psp_read_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@PSP_DISPLAY_SETBUF_NEXTFRAME = common dso_local global i32 0, align 4
@SCEGU_SCR_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @psp_read_viewport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_read_viewport(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load i32*, i32** %6, align 8
  store i32* %23, i32** %17, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %18, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @PSP_DISPLAY_SETBUF_NEXTFRAME, align 4
  %29 = call i32 @sceDisplayGetFrameBuf(i8** %8, i32* %11, i32* %12, i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %41

40:                                               ; preds = %3
  br label %41

41:                                               ; preds = %40, %35
  %42 = phi i32 [ %39, %35 ], [ 0, %40 ]
  store i32 %42, i32* %13, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  br label %54

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi i32 [ %52, %48 ], [ 0, %53 ]
  store i32 %55, i32* %14, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %59, %63
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %54
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %71, %75
  br label %79

77:                                               ; preds = %54
  %78 = load i32, i32* %11, align 4
  br label %79

79:                                               ; preds = %77, %67
  %80 = phi i32 [ %76, %67 ], [ %78, %77 ]
  store i32 %80, i32* %15, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %84, %88
  %90 = load i32, i32* @SCEGU_SCR_HEIGHT, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %79
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %96, %100
  br label %104

102:                                              ; preds = %79
  %103 = load i32, i32* @SCEGU_SCR_HEIGHT, align 4
  br label %104

104:                                              ; preds = %102, %92
  %105 = phi i32 [ %101, %92 ], [ %103, %102 ]
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %12, align 4
  switch i32 %106, label %316 [
    i32 129, label %107
    i32 130, label %160
    i32 131, label %214
    i32 128, label %265
  ]

107:                                              ; preds = %104
  %108 = load i32, i32* %16, align 4
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %156, %107
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %159

114:                                              ; preds = %110
  %115 = load i8*, i8** %8, align 8
  %116 = bitcast i8* %115 to i32*
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %10, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32* %124, i32** %19, align 8
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %152, %114
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %155

130:                                              ; preds = %126
  %131 = load i32*, i32** %19, align 8
  %132 = load i32, i32* %131, align 4
  %133 = ashr i32 %132, 11
  %134 = shl i32 %133, 3
  %135 = load i32*, i32** %17, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %17, align 8
  store i32 %134, i32* %135, align 4
  %137 = load i32*, i32** %19, align 8
  %138 = load i32, i32* %137, align 4
  %139 = ashr i32 %138, 5
  %140 = shl i32 %139, 2
  %141 = and i32 %140, 255
  %142 = load i32*, i32** %17, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %17, align 8
  store i32 %141, i32* %142, align 4
  %144 = load i32*, i32** %19, align 8
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 31
  %147 = shl i32 %146, 3
  %148 = load i32*, i32** %17, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %17, align 8
  store i32 %147, i32* %148, align 4
  %150 = load i32*, i32** %19, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %19, align 8
  br label %152

152:                                              ; preds = %130
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %126

155:                                              ; preds = %126
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %10, align 4
  br label %110

159:                                              ; preds = %110
  store i32 1, i32* %4, align 4
  br label %317

160:                                              ; preds = %104
  %161 = load i32, i32* %16, align 4
  %162 = sub nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %163

163:                                              ; preds = %210, %160
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp sge i32 %164, %165
  br i1 %166, label %167, label %213

167:                                              ; preds = %163
  %168 = load i8*, i8** %8, align 8
  %169 = bitcast i8* %168 to i32*
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %10, align 4
  %172 = mul nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %169, i64 %173
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32* %177, i32** %20, align 8
  %178 = load i32, i32* %13, align 4
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %206, %167
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %15, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %209

183:                                              ; preds = %179
  %184 = load i32*, i32** %20, align 8
  %185 = load i32, i32* %184, align 4
  %186 = ashr i32 %185, 10
  %187 = shl i32 %186, 3
  %188 = and i32 %187, 255
  %189 = load i32*, i32** %17, align 8
  %190 = getelementptr inbounds i32, i32* %189, i32 1
  store i32* %190, i32** %17, align 8
  store i32 %188, i32* %189, align 4
  %191 = load i32*, i32** %20, align 8
  %192 = load i32, i32* %191, align 4
  %193 = ashr i32 %192, 5
  %194 = shl i32 %193, 3
  %195 = and i32 %194, 255
  %196 = load i32*, i32** %17, align 8
  %197 = getelementptr inbounds i32, i32* %196, i32 1
  store i32* %197, i32** %17, align 8
  store i32 %195, i32* %196, align 4
  %198 = load i32*, i32** %20, align 8
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, 31
  %201 = shl i32 %200, 3
  %202 = load i32*, i32** %17, align 8
  %203 = getelementptr inbounds i32, i32* %202, i32 1
  store i32* %203, i32** %17, align 8
  store i32 %201, i32* %202, align 4
  %204 = load i32*, i32** %20, align 8
  %205 = getelementptr inbounds i32, i32* %204, i32 1
  store i32* %205, i32** %20, align 8
  br label %206

206:                                              ; preds = %183
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %9, align 4
  br label %179

209:                                              ; preds = %179
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %10, align 4
  br label %163

213:                                              ; preds = %163
  store i32 1, i32* %4, align 4
  br label %317

214:                                              ; preds = %104
  %215 = load i32, i32* %16, align 4
  %216 = sub nsw i32 %215, 1
  store i32 %216, i32* %10, align 4
  br label %217

217:                                              ; preds = %261, %214
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %14, align 4
  %220 = icmp sge i32 %218, %219
  br i1 %220, label %221, label %264

221:                                              ; preds = %217
  %222 = load i8*, i8** %8, align 8
  %223 = bitcast i8* %222 to i32*
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* %10, align 4
  %226 = mul nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %223, i64 %227
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  store i32* %231, i32** %21, align 8
  %232 = load i32, i32* %13, align 4
  store i32 %232, i32* %9, align 4
  br label %233

233:                                              ; preds = %257, %221
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* %15, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %260

237:                                              ; preds = %233
  %238 = load i32*, i32** %21, align 8
  %239 = load i32, i32* %238, align 4
  %240 = ashr i32 %239, 4
  %241 = and i32 %240, 240
  %242 = load i32*, i32** %17, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 1
  store i32* %243, i32** %17, align 8
  store i32 %241, i32* %242, align 4
  %244 = load i32*, i32** %21, align 8
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, 240
  %247 = load i32*, i32** %17, align 8
  %248 = getelementptr inbounds i32, i32* %247, i32 1
  store i32* %248, i32** %17, align 8
  store i32 %246, i32* %247, align 4
  %249 = load i32*, i32** %21, align 8
  %250 = load i32, i32* %249, align 4
  %251 = shl i32 %250, 4
  %252 = and i32 %251, 240
  %253 = load i32*, i32** %17, align 8
  %254 = getelementptr inbounds i32, i32* %253, i32 1
  store i32* %254, i32** %17, align 8
  store i32 %252, i32* %253, align 4
  %255 = load i32*, i32** %21, align 8
  %256 = getelementptr inbounds i32, i32* %255, i32 1
  store i32* %256, i32** %21, align 8
  br label %257

257:                                              ; preds = %237
  %258 = load i32, i32* %9, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %9, align 4
  br label %233

260:                                              ; preds = %233
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %10, align 4
  %263 = add nsw i32 %262, -1
  store i32 %263, i32* %10, align 4
  br label %217

264:                                              ; preds = %217
  store i32 1, i32* %4, align 4
  br label %317

265:                                              ; preds = %104
  %266 = load i32, i32* %16, align 4
  %267 = sub nsw i32 %266, 1
  store i32 %267, i32* %10, align 4
  br label %268

268:                                              ; preds = %312, %265
  %269 = load i32, i32* %10, align 4
  %270 = load i32, i32* %14, align 4
  %271 = icmp sge i32 %269, %270
  br i1 %271, label %272, label %315

272:                                              ; preds = %268
  %273 = load i8*, i8** %8, align 8
  %274 = bitcast i8* %273 to i32*
  %275 = load i32, i32* %11, align 4
  %276 = load i32, i32* %10, align 4
  %277 = mul nsw i32 %275, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %274, i64 %278
  %280 = load i32, i32* %13, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  store i32* %282, i32** %22, align 8
  %283 = load i32, i32* %13, align 4
  store i32 %283, i32* %9, align 4
  br label %284

284:                                              ; preds = %308, %272
  %285 = load i32, i32* %9, align 4
  %286 = load i32, i32* %15, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %311

288:                                              ; preds = %284
  %289 = load i32*, i32** %22, align 8
  %290 = load i32, i32* %289, align 4
  %291 = ashr i32 %290, 16
  %292 = and i32 %291, 255
  %293 = load i32*, i32** %17, align 8
  %294 = getelementptr inbounds i32, i32* %293, i32 1
  store i32* %294, i32** %17, align 8
  store i32 %292, i32* %293, align 4
  %295 = load i32*, i32** %22, align 8
  %296 = load i32, i32* %295, align 4
  %297 = ashr i32 %296, 8
  %298 = and i32 %297, 255
  %299 = load i32*, i32** %17, align 8
  %300 = getelementptr inbounds i32, i32* %299, i32 1
  store i32* %300, i32** %17, align 8
  store i32 %298, i32* %299, align 4
  %301 = load i32*, i32** %22, align 8
  %302 = load i32, i32* %301, align 4
  %303 = and i32 %302, 255
  %304 = load i32*, i32** %17, align 8
  %305 = getelementptr inbounds i32, i32* %304, i32 1
  store i32* %305, i32** %17, align 8
  store i32 %303, i32* %304, align 4
  %306 = load i32*, i32** %22, align 8
  %307 = getelementptr inbounds i32, i32* %306, i32 1
  store i32* %307, i32** %22, align 8
  br label %308

308:                                              ; preds = %288
  %309 = load i32, i32* %9, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %9, align 4
  br label %284

311:                                              ; preds = %284
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %10, align 4
  %314 = add nsw i32 %313, -1
  store i32 %314, i32* %10, align 4
  br label %268

315:                                              ; preds = %268
  store i32 1, i32* %4, align 4
  br label %317

316:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %317

317:                                              ; preds = %316, %315, %264, %213, %159
  %318 = load i32, i32* %4, align 4
  ret i32 %318
}

declare dso_local i32 @sceDisplayGetFrameBuf(i8**, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
