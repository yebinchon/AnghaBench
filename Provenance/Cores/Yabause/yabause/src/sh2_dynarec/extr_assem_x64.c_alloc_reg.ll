; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_alloc_reg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_alloc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.regstat = type { i8, i8*, i32, i32 }

@CCREG = common dso_local global i8 0, align 1
@HOST_CCREG = common dso_local global i32 0, align 4
@HOST_REGS = common dso_local global i32 0, align 4
@unneeded_reg = common dso_local global i32* null, align 8
@EXCLUDE_REG = common dso_local global i32 0, align 4
@regs = common dso_local global %struct.TYPE_2__* null, align 8
@rs1 = common dso_local global i32* null, align 8
@rs2 = common dso_local global i32* null, align 8
@rt1 = common dso_local global i32* null, align 8
@rt2 = common dso_local global i32* null, align 8
@MAXREG = common dso_local global i32 0, align 4
@bt = common dso_local global i64* null, align 8
@itype = common dso_local global i64* null, align 8
@RJUMP = common dso_local global i64 0, align 8
@UJUMP = common dso_local global i64 0, align 8
@CJUMP = common dso_local global i64 0, align 8
@SJUMP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"This shouldn't happen (alloc_reg)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alloc_reg(%struct.regstat* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca %struct.regstat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.regstat* %0, %struct.regstat** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %14 = load i8, i8* %6, align 1
  %15 = sext i8 %14 to i32
  %16 = and i32 %15, 3
  %17 = load i8, i8* %6, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sgt i32 %18, 21
  %20 = zext i1 %19 to i32
  %21 = mul nsw i32 %20, 4
  %22 = add nsw i32 %16, %21
  %23 = load i8, i8* %6, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 24
  %26 = zext i1 %25 to i32
  %27 = add nsw i32 %22, %26
  %28 = load i8, i8* %6, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 28
  %31 = zext i1 %30 to i32
  %32 = add nsw i32 %27, %31
  %33 = load i8, i8* %6, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 32
  %36 = zext i1 %35 to i32
  %37 = add nsw i32 %32, %36
  store i32 %37, i32* %9, align 4
  %38 = load i8, i8* %6, align 1
  %39 = sext i8 %38 to i32
  %40 = load i8, i8* @CCREG, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %3
  %44 = load i32, i32* @HOST_CCREG, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %43, %3
  %46 = load %struct.regstat*, %struct.regstat** %4, align 8
  %47 = getelementptr inbounds %struct.regstat, %struct.regstat* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 8
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* %6, align 1
  %51 = sext i8 %50 to i32
  %52 = ashr i32 %49, %51
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %855

56:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %75, %56
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @HOST_REGS, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load %struct.regstat*, %struct.regstat** %4, align 8
  %63 = getelementptr inbounds %struct.regstat, %struct.regstat* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = load i8, i8* %6, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %855

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %57

78:                                               ; preds = %57
  %79 = load i32, i32* %5, align 4
  %80 = load i8, i8* %6, align 1
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @loop_reg(i32 %79, i8 signext %80, i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load %struct.regstat*, %struct.regstat** %4, align 8
  %84 = getelementptr inbounds %struct.regstat, %struct.regstat* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %114

92:                                               ; preds = %78
  %93 = load i8, i8* %6, align 1
  %94 = load %struct.regstat*, %struct.regstat** %4, align 8
  %95 = getelementptr inbounds %struct.regstat, %struct.regstat* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  store i8 %93, i8* %99, align 1
  %100 = load i32, i32* %9, align 4
  %101 = shl i32 1, %100
  %102 = xor i32 %101, -1
  %103 = load %struct.regstat*, %struct.regstat** %4, align 8
  %104 = getelementptr inbounds %struct.regstat, %struct.regstat* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* %9, align 4
  %108 = shl i32 1, %107
  %109 = xor i32 %108, -1
  %110 = load %struct.regstat*, %struct.regstat** %4, align 8
  %111 = getelementptr inbounds %struct.regstat, %struct.regstat* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %855

114:                                              ; preds = %78
  %115 = load %struct.regstat*, %struct.regstat** %4, align 8
  %116 = getelementptr inbounds %struct.regstat, %struct.regstat* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 64
  br i1 %124, label %125, label %156

125:                                              ; preds = %114
  %126 = load %struct.regstat*, %struct.regstat** %4, align 8
  %127 = getelementptr inbounds %struct.regstat, %struct.regstat* %126, i32 0, i32 0
  %128 = load i8, i8* %127, align 8
  %129 = sext i8 %128 to i32
  %130 = load i32, i32* %7, align 4
  %131 = ashr i32 %129, %130
  %132 = and i32 %131, 1
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %156

134:                                              ; preds = %125
  %135 = load i8, i8* %6, align 1
  %136 = load %struct.regstat*, %struct.regstat** %4, align 8
  %137 = getelementptr inbounds %struct.regstat, %struct.regstat* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  store i8 %135, i8* %141, align 1
  %142 = load i32, i32* %9, align 4
  %143 = shl i32 1, %142
  %144 = xor i32 %143, -1
  %145 = load %struct.regstat*, %struct.regstat** %4, align 8
  %146 = getelementptr inbounds %struct.regstat, %struct.regstat* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* %9, align 4
  %150 = shl i32 1, %149
  %151 = xor i32 %150, -1
  %152 = load %struct.regstat*, %struct.regstat** %4, align 8
  %153 = getelementptr inbounds %struct.regstat, %struct.regstat* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %855

156:                                              ; preds = %125, %114
  store i32 0, i32* %8, align 4
  br label %157

157:                                              ; preds = %193, %156
  %158 = load i32, i32* %8, align 4
  %159 = icmp slt i32 %158, 4
  br i1 %159, label %160, label %196

160:                                              ; preds = %157
  %161 = load %struct.regstat*, %struct.regstat** %4, align 8
  %162 = getelementptr inbounds %struct.regstat, %struct.regstat* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %170, label %192

170:                                              ; preds = %160
  %171 = load i8, i8* %6, align 1
  %172 = load %struct.regstat*, %struct.regstat** %4, align 8
  %173 = getelementptr inbounds %struct.regstat, %struct.regstat* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  store i8 %171, i8* %177, align 1
  %178 = load i32, i32* %8, align 4
  %179 = shl i32 1, %178
  %180 = xor i32 %179, -1
  %181 = load %struct.regstat*, %struct.regstat** %4, align 8
  %182 = getelementptr inbounds %struct.regstat, %struct.regstat* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = and i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load i32, i32* %8, align 4
  %186 = shl i32 1, %185
  %187 = xor i32 %186, -1
  %188 = load %struct.regstat*, %struct.regstat** %4, align 8
  %189 = getelementptr inbounds %struct.regstat, %struct.regstat* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, %187
  store i32 %191, i32* %189, align 4
  br label %855

192:                                              ; preds = %160
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %8, align 4
  br label %157

196:                                              ; preds = %157
  store i32 0, i32* %8, align 4
  br label %197

197:                                              ; preds = %245, %196
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @HOST_REGS, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %248

201:                                              ; preds = %197
  %202 = load %struct.regstat*, %struct.regstat** %4, align 8
  %203 = getelementptr inbounds %struct.regstat, %struct.regstat* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  store i32 %209, i32* %7, align 4
  %210 = load i32, i32* %7, align 4
  %211 = icmp sge i32 %210, 0
  br i1 %211, label %212, label %244

212:                                              ; preds = %201
  %213 = load %struct.regstat*, %struct.regstat** %4, align 8
  %214 = getelementptr inbounds %struct.regstat, %struct.regstat* %213, i32 0, i32 0
  %215 = load i8, i8* %214, align 8
  %216 = sext i8 %215 to i32
  %217 = load i32, i32* %7, align 4
  %218 = ashr i32 %216, %217
  %219 = and i32 %218, 1
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %243

221:                                              ; preds = %212
  %222 = load i32, i32* %5, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %235, label %224

224:                                              ; preds = %221
  %225 = load i32*, i32** @unneeded_reg, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %7, align 4
  %232 = ashr i32 %230, %231
  %233 = and i32 %232, 1
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %224, %221
  %236 = load %struct.regstat*, %struct.regstat** %4, align 8
  %237 = getelementptr inbounds %struct.regstat, %struct.regstat* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %238, i64 %240
  store i8 -1, i8* %241, align 1
  br label %248

242:                                              ; preds = %224
  br label %243

243:                                              ; preds = %242, %212
  br label %244

244:                                              ; preds = %243, %201
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %8, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %8, align 4
  br label %197

248:                                              ; preds = %235, %197
  %249 = load i32, i32* %5, align 4
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %374

251:                                              ; preds = %248
  store i32 0, i32* %8, align 4
  br label %252

252:                                              ; preds = %370, %251
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* @HOST_REGS, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %373

256:                                              ; preds = %252
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* @EXCLUDE_REG, align 4
  %259 = icmp ne i32 %257, %258
  br i1 %259, label %260, label %369

260:                                              ; preds = %256
  %261 = load %struct.regstat*, %struct.regstat** %4, align 8
  %262 = getelementptr inbounds %struct.regstat, %struct.regstat* %261, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  %264 = load i32, i32* %8, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %263, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %268, -1
  br i1 %269, label %270, label %369

270:                                              ; preds = %260
  %271 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %272 = load i32, i32* %5, align 4
  %273 = sub nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %8, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load i32*, i32** @rs1, align 8
  %283 = load i32, i32* %5, align 4
  %284 = sub nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %282, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %281, %287
  br i1 %288, label %289, label %368

289:                                              ; preds = %270
  %290 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %291 = load i32, i32* %5, align 4
  %292 = sub nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32*, i32** @rs2, align 8
  %302 = load i32, i32* %5, align 4
  %303 = sub nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %301, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %300, %306
  br i1 %307, label %308, label %368

308:                                              ; preds = %289
  %309 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %310 = load i32, i32* %5, align 4
  %311 = sub nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %8, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load i32*, i32** @rt1, align 8
  %321 = load i32, i32* %5, align 4
  %322 = sub nsw i32 %321, 1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %320, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %319, %325
  br i1 %326, label %327, label %368

327:                                              ; preds = %308
  %328 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %329 = load i32, i32* %5, align 4
  %330 = sub nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %332, i32 0, i32 0
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %8, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = load i32*, i32** @rt2, align 8
  %340 = load i32, i32* %5, align 4
  %341 = sub nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %339, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = icmp ne i32 %338, %344
  br i1 %345, label %346, label %368

346:                                              ; preds = %327
  %347 = load i8, i8* %6, align 1
  %348 = load %struct.regstat*, %struct.regstat** %4, align 8
  %349 = getelementptr inbounds %struct.regstat, %struct.regstat* %348, i32 0, i32 1
  %350 = load i8*, i8** %349, align 8
  %351 = load i32, i32* %8, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8, i8* %350, i64 %352
  store i8 %347, i8* %353, align 1
  %354 = load i32, i32* %8, align 4
  %355 = shl i32 1, %354
  %356 = xor i32 %355, -1
  %357 = load %struct.regstat*, %struct.regstat** %4, align 8
  %358 = getelementptr inbounds %struct.regstat, %struct.regstat* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = and i32 %359, %356
  store i32 %360, i32* %358, align 8
  %361 = load i32, i32* %8, align 4
  %362 = shl i32 1, %361
  %363 = xor i32 %362, -1
  %364 = load %struct.regstat*, %struct.regstat** %4, align 8
  %365 = getelementptr inbounds %struct.regstat, %struct.regstat* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 4
  %367 = and i32 %366, %363
  store i32 %367, i32* %365, align 4
  br label %855

368:                                              ; preds = %327, %308, %289, %270
  br label %369

369:                                              ; preds = %368, %260, %256
  br label %370

370:                                              ; preds = %369
  %371 = load i32, i32* %8, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %8, align 4
  br label %252

373:                                              ; preds = %252
  br label %374

374:                                              ; preds = %373, %248
  store i32 0, i32* %8, align 4
  br label %375

375:                                              ; preds = %416, %374
  %376 = load i32, i32* %8, align 4
  %377 = load i32, i32* @HOST_REGS, align 4
  %378 = icmp slt i32 %376, %377
  br i1 %378, label %379, label %419

379:                                              ; preds = %375
  %380 = load i32, i32* %8, align 4
  %381 = load i32, i32* @EXCLUDE_REG, align 4
  %382 = icmp ne i32 %380, %381
  br i1 %382, label %383, label %415

383:                                              ; preds = %379
  %384 = load %struct.regstat*, %struct.regstat** %4, align 8
  %385 = getelementptr inbounds %struct.regstat, %struct.regstat* %384, i32 0, i32 1
  %386 = load i8*, i8** %385, align 8
  %387 = load i32, i32* %8, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, i8* %386, i64 %388
  %390 = load i8, i8* %389, align 1
  %391 = sext i8 %390 to i32
  %392 = icmp eq i32 %391, -1
  br i1 %392, label %393, label %415

393:                                              ; preds = %383
  %394 = load i8, i8* %6, align 1
  %395 = load %struct.regstat*, %struct.regstat** %4, align 8
  %396 = getelementptr inbounds %struct.regstat, %struct.regstat* %395, i32 0, i32 1
  %397 = load i8*, i8** %396, align 8
  %398 = load i32, i32* %8, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, i8* %397, i64 %399
  store i8 %394, i8* %400, align 1
  %401 = load i32, i32* %8, align 4
  %402 = shl i32 1, %401
  %403 = xor i32 %402, -1
  %404 = load %struct.regstat*, %struct.regstat** %4, align 8
  %405 = getelementptr inbounds %struct.regstat, %struct.regstat* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = and i32 %406, %403
  store i32 %407, i32* %405, align 8
  %408 = load i32, i32* %8, align 4
  %409 = shl i32 1, %408
  %410 = xor i32 %409, -1
  %411 = load %struct.regstat*, %struct.regstat** %4, align 8
  %412 = getelementptr inbounds %struct.regstat, %struct.regstat* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 4
  %414 = and i32 %413, %410
  store i32 %414, i32* %412, align 4
  br label %855

415:                                              ; preds = %383, %379
  br label %416

416:                                              ; preds = %415
  %417 = load i32, i32* %8, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %8, align 4
  br label %375

419:                                              ; preds = %375
  %420 = load i32, i32* @MAXREG, align 4
  %421 = add nsw i32 %420, 1
  %422 = zext i32 %421 to i64
  %423 = call i8* @llvm.stacksave()
  store i8* %423, i8** %10, align 8
  %424 = alloca i8, i64 %422, align 16
  store i64 %422, i64* %11, align 8
  %425 = trunc i64 %422 to i32
  %426 = call i32 @memset(i8* %424, i32 10, i32 %425)
  %427 = load i32, i32* %5, align 4
  %428 = call i32 @lsn(i8* %424, i32 %427, i32* %9)
  %429 = load i32, i32* %5, align 4
  %430 = icmp sgt i32 %429, 0
  br i1 %430, label %431, label %739

431:                                              ; preds = %419
  %432 = load i64*, i64** @bt, align 8
  %433 = load i32, i32* %5, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i64, i64* %432, i64 %434
  %436 = load i64, i64* %435, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %449

438:                                              ; preds = %431
  %439 = load i8, i8* @CCREG, align 1
  %440 = sext i8 %439 to i64
  %441 = getelementptr inbounds i8, i8* %424, i64 %440
  %442 = load i8, i8* %441, align 1
  %443 = zext i8 %442 to i32
  %444 = icmp sgt i32 %443, 2
  br i1 %444, label %445, label %449

445:                                              ; preds = %438
  %446 = load i8, i8* @CCREG, align 1
  %447 = sext i8 %446 to i64
  %448 = getelementptr inbounds i8, i8* %424, i64 %447
  store i8 2, i8* %448, align 1
  br label %449

449:                                              ; preds = %445, %438, %431
  %450 = load i32, i32* %5, align 4
  %451 = icmp sgt i32 %450, 1
  br i1 %451, label %452, label %499

452:                                              ; preds = %449
  %453 = load i8, i8* @CCREG, align 1
  %454 = sext i8 %453 to i64
  %455 = getelementptr inbounds i8, i8* %424, i64 %454
  %456 = load i8, i8* %455, align 1
  %457 = zext i8 %456 to i32
  %458 = icmp sgt i32 %457, 2
  br i1 %458, label %459, label %499

459:                                              ; preds = %452
  %460 = load i64*, i64** @itype, align 8
  %461 = load i32, i32* %5, align 4
  %462 = sub nsw i32 %461, 2
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i64, i64* %460, i64 %463
  %465 = load i64, i64* %464, align 8
  %466 = load i64, i64* @RJUMP, align 8
  %467 = icmp eq i64 %465, %466
  br i1 %467, label %495, label %468

468:                                              ; preds = %459
  %469 = load i64*, i64** @itype, align 8
  %470 = load i32, i32* %5, align 4
  %471 = sub nsw i32 %470, 2
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i64, i64* %469, i64 %472
  %474 = load i64, i64* %473, align 8
  %475 = load i64, i64* @UJUMP, align 8
  %476 = icmp eq i64 %474, %475
  br i1 %476, label %495, label %477

477:                                              ; preds = %468
  %478 = load i64*, i64** @itype, align 8
  %479 = load i32, i32* %5, align 4
  %480 = sub nsw i32 %479, 2
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i64, i64* %478, i64 %481
  %483 = load i64, i64* %482, align 8
  %484 = load i64, i64* @CJUMP, align 8
  %485 = icmp eq i64 %483, %484
  br i1 %485, label %495, label %486

486:                                              ; preds = %477
  %487 = load i64*, i64** @itype, align 8
  %488 = load i32, i32* %5, align 4
  %489 = sub nsw i32 %488, 2
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i64, i64* %487, i64 %490
  %492 = load i64, i64* %491, align 8
  %493 = load i64, i64* @SJUMP, align 8
  %494 = icmp eq i64 %492, %493
  br i1 %494, label %495, label %499

495:                                              ; preds = %486, %477, %468, %459
  %496 = load i8, i8* @CCREG, align 1
  %497 = sext i8 %496 to i64
  %498 = getelementptr inbounds i8, i8* %424, i64 %497
  store i8 2, i8* %498, align 1
  br label %499

499:                                              ; preds = %495, %486, %452, %449
  store i32 10, i32* %12, align 4
  br label %500

500:                                              ; preds = %735, %499
  %501 = load i32, i32* %12, align 4
  %502 = icmp sge i32 %501, 3
  br i1 %502, label %503, label %738

503:                                              ; preds = %500
  %504 = load %struct.regstat*, %struct.regstat** %4, align 8
  %505 = getelementptr inbounds %struct.regstat, %struct.regstat* %504, i32 0, i32 1
  %506 = load i8*, i8** %505, align 8
  %507 = load i32, i32* %9, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i8, i8* %506, i64 %508
  %510 = load i8, i8* %509, align 1
  %511 = sext i8 %510 to i32
  %512 = and i32 %511, 63
  store i32 %512, i32* %7, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i8, i8* %424, i64 %513
  %515 = load i8, i8* %514, align 1
  %516 = zext i8 %515 to i32
  %517 = load i32, i32* %12, align 4
  %518 = icmp eq i32 %516, %517
  br i1 %518, label %519, label %569

519:                                              ; preds = %503
  store i32 0, i32* %8, align 4
  br label %520

520:                                              ; preds = %558, %519
  %521 = load i32, i32* %8, align 4
  %522 = load i32, i32* @HOST_REGS, align 4
  %523 = icmp slt i32 %521, %522
  br i1 %523, label %524, label %561

524:                                              ; preds = %520
  %525 = load %struct.regstat*, %struct.regstat** %4, align 8
  %526 = getelementptr inbounds %struct.regstat, %struct.regstat* %525, i32 0, i32 1
  %527 = load i8*, i8** %526, align 8
  %528 = load i32, i32* %8, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i8, i8* %527, i64 %529
  %531 = load i8, i8* %530, align 1
  %532 = sext i8 %531 to i32
  %533 = and i32 %532, 63
  %534 = load i32, i32* %7, align 4
  %535 = icmp eq i32 %533, %534
  br i1 %535, label %536, label %557

536:                                              ; preds = %524
  %537 = load %struct.regstat*, %struct.regstat** %4, align 8
  %538 = getelementptr inbounds %struct.regstat, %struct.regstat* %537, i32 0, i32 1
  %539 = load i8*, i8** %538, align 8
  %540 = load i32, i32* %8, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i8, i8* %539, i64 %541
  store i8 -1, i8* %542, align 1
  %543 = load i32, i32* %8, align 4
  %544 = shl i32 1, %543
  %545 = xor i32 %544, -1
  %546 = load %struct.regstat*, %struct.regstat** %4, align 8
  %547 = getelementptr inbounds %struct.regstat, %struct.regstat* %546, i32 0, i32 2
  %548 = load i32, i32* %547, align 8
  %549 = and i32 %548, %545
  store i32 %549, i32* %547, align 8
  %550 = load i32, i32* %8, align 4
  %551 = shl i32 1, %550
  %552 = xor i32 %551, -1
  %553 = load %struct.regstat*, %struct.regstat** %4, align 8
  %554 = getelementptr inbounds %struct.regstat, %struct.regstat* %553, i32 0, i32 3
  %555 = load i32, i32* %554, align 4
  %556 = and i32 %555, %552
  store i32 %556, i32* %554, align 4
  br label %557

557:                                              ; preds = %536, %524
  br label %558

558:                                              ; preds = %557
  %559 = load i32, i32* %8, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %8, align 4
  br label %520

561:                                              ; preds = %520
  %562 = load i8, i8* %6, align 1
  %563 = load %struct.regstat*, %struct.regstat** %4, align 8
  %564 = getelementptr inbounds %struct.regstat, %struct.regstat* %563, i32 0, i32 1
  %565 = load i8*, i8** %564, align 8
  %566 = load i32, i32* %9, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i8, i8* %565, i64 %567
  store i8 %562, i8* %568, align 1
  store i32 1, i32* %13, align 4
  br label %853

569:                                              ; preds = %503
  store i32 0, i32* %7, align 4
  br label %570

570:                                              ; preds = %731, %569
  %571 = load i32, i32* %7, align 4
  %572 = load i32, i32* @MAXREG, align 4
  %573 = icmp sle i32 %571, %572
  br i1 %573, label %574, label %734

574:                                              ; preds = %570
  %575 = load i32, i32* %7, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds i8, i8* %424, i64 %576
  %578 = load i8, i8* %577, align 1
  %579 = zext i8 %578 to i32
  %580 = load i32, i32* %12, align 4
  %581 = icmp eq i32 %579, %580
  br i1 %581, label %582, label %730

582:                                              ; preds = %574
  %583 = load i32, i32* %7, align 4
  %584 = load i32*, i32** @rs1, align 8
  %585 = load i32, i32* %5, align 4
  %586 = sub nsw i32 %585, 1
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds i32, i32* %584, i64 %587
  %589 = load i32, i32* %588, align 4
  %590 = icmp ne i32 %583, %589
  br i1 %590, label %591, label %730

591:                                              ; preds = %582
  %592 = load i32, i32* %7, align 4
  %593 = load i32*, i32** @rs2, align 8
  %594 = load i32, i32* %5, align 4
  %595 = sub nsw i32 %594, 1
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32, i32* %593, i64 %596
  %598 = load i32, i32* %597, align 4
  %599 = icmp ne i32 %592, %598
  br i1 %599, label %600, label %730

600:                                              ; preds = %591
  %601 = load i32, i32* %7, align 4
  %602 = load i32*, i32** @rt1, align 8
  %603 = load i32, i32* %5, align 4
  %604 = sub nsw i32 %603, 1
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i32, i32* %602, i64 %605
  %607 = load i32, i32* %606, align 4
  %608 = icmp ne i32 %601, %607
  br i1 %608, label %609, label %730

609:                                              ; preds = %600
  %610 = load i32, i32* %7, align 4
  %611 = load i32*, i32** @rt2, align 8
  %612 = load i32, i32* %5, align 4
  %613 = sub nsw i32 %612, 1
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i32, i32* %611, i64 %614
  %616 = load i32, i32* %615, align 4
  %617 = icmp ne i32 %610, %616
  br i1 %617, label %618, label %730

618:                                              ; preds = %609
  store i32 0, i32* %8, align 4
  br label %619

619:                                              ; preds = %671, %618
  %620 = load i32, i32* %8, align 4
  %621 = load i32, i32* @HOST_REGS, align 4
  %622 = icmp slt i32 %620, %621
  br i1 %622, label %623, label %674

623:                                              ; preds = %619
  %624 = load i32, i32* %8, align 4
  %625 = load i32, i32* @HOST_CCREG, align 4
  %626 = icmp ne i32 %624, %625
  br i1 %626, label %635, label %627

627:                                              ; preds = %623
  %628 = load i32, i32* %12, align 4
  %629 = load i8, i8* @CCREG, align 1
  %630 = sext i8 %629 to i64
  %631 = getelementptr inbounds i8, i8* %424, i64 %630
  %632 = load i8, i8* %631, align 1
  %633 = zext i8 %632 to i32
  %634 = icmp slt i32 %628, %633
  br i1 %634, label %635, label %670

635:                                              ; preds = %627, %623
  %636 = load %struct.regstat*, %struct.regstat** %4, align 8
  %637 = getelementptr inbounds %struct.regstat, %struct.regstat* %636, i32 0, i32 1
  %638 = load i8*, i8** %637, align 8
  %639 = load i32, i32* %8, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds i8, i8* %638, i64 %640
  %642 = load i8, i8* %641, align 1
  %643 = sext i8 %642 to i32
  %644 = load i32, i32* %7, align 4
  %645 = add nsw i32 %644, 64
  %646 = icmp eq i32 %643, %645
  br i1 %646, label %647, label %669

647:                                              ; preds = %635
  %648 = load i8, i8* %6, align 1
  %649 = load %struct.regstat*, %struct.regstat** %4, align 8
  %650 = getelementptr inbounds %struct.regstat, %struct.regstat* %649, i32 0, i32 1
  %651 = load i8*, i8** %650, align 8
  %652 = load i32, i32* %8, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds i8, i8* %651, i64 %653
  store i8 %648, i8* %654, align 1
  %655 = load i32, i32* %8, align 4
  %656 = shl i32 1, %655
  %657 = xor i32 %656, -1
  %658 = load %struct.regstat*, %struct.regstat** %4, align 8
  %659 = getelementptr inbounds %struct.regstat, %struct.regstat* %658, i32 0, i32 2
  %660 = load i32, i32* %659, align 8
  %661 = and i32 %660, %657
  store i32 %661, i32* %659, align 8
  %662 = load i32, i32* %8, align 4
  %663 = shl i32 1, %662
  %664 = xor i32 %663, -1
  %665 = load %struct.regstat*, %struct.regstat** %4, align 8
  %666 = getelementptr inbounds %struct.regstat, %struct.regstat* %665, i32 0, i32 3
  %667 = load i32, i32* %666, align 4
  %668 = and i32 %667, %664
  store i32 %668, i32* %666, align 4
  store i32 1, i32* %13, align 4
  br label %853

669:                                              ; preds = %635
  br label %670

670:                                              ; preds = %669, %627
  br label %671

671:                                              ; preds = %670
  %672 = load i32, i32* %8, align 4
  %673 = add nsw i32 %672, 1
  store i32 %673, i32* %8, align 4
  br label %619

674:                                              ; preds = %619
  store i32 0, i32* %8, align 4
  br label %675

675:                                              ; preds = %726, %674
  %676 = load i32, i32* %8, align 4
  %677 = load i32, i32* @HOST_REGS, align 4
  %678 = icmp slt i32 %676, %677
  br i1 %678, label %679, label %729

679:                                              ; preds = %675
  %680 = load i32, i32* %8, align 4
  %681 = load i32, i32* @HOST_CCREG, align 4
  %682 = icmp ne i32 %680, %681
  br i1 %682, label %691, label %683

683:                                              ; preds = %679
  %684 = load i32, i32* %12, align 4
  %685 = load i8, i8* @CCREG, align 1
  %686 = sext i8 %685 to i64
  %687 = getelementptr inbounds i8, i8* %424, i64 %686
  %688 = load i8, i8* %687, align 1
  %689 = zext i8 %688 to i32
  %690 = icmp slt i32 %684, %689
  br i1 %690, label %691, label %725

691:                                              ; preds = %683, %679
  %692 = load %struct.regstat*, %struct.regstat** %4, align 8
  %693 = getelementptr inbounds %struct.regstat, %struct.regstat* %692, i32 0, i32 1
  %694 = load i8*, i8** %693, align 8
  %695 = load i32, i32* %8, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds i8, i8* %694, i64 %696
  %698 = load i8, i8* %697, align 1
  %699 = sext i8 %698 to i32
  %700 = load i32, i32* %7, align 4
  %701 = icmp eq i32 %699, %700
  br i1 %701, label %702, label %724

702:                                              ; preds = %691
  %703 = load i8, i8* %6, align 1
  %704 = load %struct.regstat*, %struct.regstat** %4, align 8
  %705 = getelementptr inbounds %struct.regstat, %struct.regstat* %704, i32 0, i32 1
  %706 = load i8*, i8** %705, align 8
  %707 = load i32, i32* %8, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds i8, i8* %706, i64 %708
  store i8 %703, i8* %709, align 1
  %710 = load i32, i32* %8, align 4
  %711 = shl i32 1, %710
  %712 = xor i32 %711, -1
  %713 = load %struct.regstat*, %struct.regstat** %4, align 8
  %714 = getelementptr inbounds %struct.regstat, %struct.regstat* %713, i32 0, i32 2
  %715 = load i32, i32* %714, align 8
  %716 = and i32 %715, %712
  store i32 %716, i32* %714, align 8
  %717 = load i32, i32* %8, align 4
  %718 = shl i32 1, %717
  %719 = xor i32 %718, -1
  %720 = load %struct.regstat*, %struct.regstat** %4, align 8
  %721 = getelementptr inbounds %struct.regstat, %struct.regstat* %720, i32 0, i32 3
  %722 = load i32, i32* %721, align 4
  %723 = and i32 %722, %719
  store i32 %723, i32* %721, align 4
  store i32 1, i32* %13, align 4
  br label %853

724:                                              ; preds = %691
  br label %725

725:                                              ; preds = %724, %683
  br label %726

726:                                              ; preds = %725
  %727 = load i32, i32* %8, align 4
  %728 = add nsw i32 %727, 1
  store i32 %728, i32* %8, align 4
  br label %675

729:                                              ; preds = %675
  br label %730

730:                                              ; preds = %729, %609, %600, %591, %582, %574
  br label %731

731:                                              ; preds = %730
  %732 = load i32, i32* %7, align 4
  %733 = add nsw i32 %732, 1
  store i32 %733, i32* %7, align 4
  br label %570

734:                                              ; preds = %570
  br label %735

735:                                              ; preds = %734
  %736 = load i32, i32* %12, align 4
  %737 = add nsw i32 %736, -1
  store i32 %737, i32* %12, align 4
  br label %500

738:                                              ; preds = %500
  br label %739

739:                                              ; preds = %738, %419
  store i32 10, i32* %12, align 4
  br label %740

740:                                              ; preds = %847, %739
  %741 = load i32, i32* %12, align 4
  %742 = icmp sge i32 %741, 0
  br i1 %742, label %743, label %850

743:                                              ; preds = %740
  store i32 0, i32* %7, align 4
  br label %744

744:                                              ; preds = %843, %743
  %745 = load i32, i32* %7, align 4
  %746 = load i32, i32* @MAXREG, align 4
  %747 = icmp sle i32 %745, %746
  br i1 %747, label %748, label %846

748:                                              ; preds = %744
  %749 = load i32, i32* %7, align 4
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds i8, i8* %424, i64 %750
  %752 = load i8, i8* %751, align 1
  %753 = zext i8 %752 to i32
  %754 = load i32, i32* %12, align 4
  %755 = icmp eq i32 %753, %754
  br i1 %755, label %756, label %842

756:                                              ; preds = %748
  store i32 0, i32* %8, align 4
  br label %757

757:                                              ; preds = %796, %756
  %758 = load i32, i32* %8, align 4
  %759 = load i32, i32* @HOST_REGS, align 4
  %760 = icmp slt i32 %758, %759
  br i1 %760, label %761, label %799

761:                                              ; preds = %757
  %762 = load %struct.regstat*, %struct.regstat** %4, align 8
  %763 = getelementptr inbounds %struct.regstat, %struct.regstat* %762, i32 0, i32 1
  %764 = load i8*, i8** %763, align 8
  %765 = load i32, i32* %8, align 4
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds i8, i8* %764, i64 %766
  %768 = load i8, i8* %767, align 1
  %769 = sext i8 %768 to i32
  %770 = load i32, i32* %7, align 4
  %771 = add nsw i32 %770, 64
  %772 = icmp eq i32 %769, %771
  br i1 %772, label %773, label %795

773:                                              ; preds = %761
  %774 = load i8, i8* %6, align 1
  %775 = load %struct.regstat*, %struct.regstat** %4, align 8
  %776 = getelementptr inbounds %struct.regstat, %struct.regstat* %775, i32 0, i32 1
  %777 = load i8*, i8** %776, align 8
  %778 = load i32, i32* %8, align 4
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds i8, i8* %777, i64 %779
  store i8 %774, i8* %780, align 1
  %781 = load i32, i32* %8, align 4
  %782 = shl i32 1, %781
  %783 = xor i32 %782, -1
  %784 = load %struct.regstat*, %struct.regstat** %4, align 8
  %785 = getelementptr inbounds %struct.regstat, %struct.regstat* %784, i32 0, i32 2
  %786 = load i32, i32* %785, align 8
  %787 = and i32 %786, %783
  store i32 %787, i32* %785, align 8
  %788 = load i32, i32* %8, align 4
  %789 = shl i32 1, %788
  %790 = xor i32 %789, -1
  %791 = load %struct.regstat*, %struct.regstat** %4, align 8
  %792 = getelementptr inbounds %struct.regstat, %struct.regstat* %791, i32 0, i32 3
  %793 = load i32, i32* %792, align 4
  %794 = and i32 %793, %790
  store i32 %794, i32* %792, align 4
  store i32 1, i32* %13, align 4
  br label %853

795:                                              ; preds = %761
  br label %796

796:                                              ; preds = %795
  %797 = load i32, i32* %8, align 4
  %798 = add nsw i32 %797, 1
  store i32 %798, i32* %8, align 4
  br label %757

799:                                              ; preds = %757
  store i32 0, i32* %8, align 4
  br label %800

800:                                              ; preds = %838, %799
  %801 = load i32, i32* %8, align 4
  %802 = load i32, i32* @HOST_REGS, align 4
  %803 = icmp slt i32 %801, %802
  br i1 %803, label %804, label %841

804:                                              ; preds = %800
  %805 = load %struct.regstat*, %struct.regstat** %4, align 8
  %806 = getelementptr inbounds %struct.regstat, %struct.regstat* %805, i32 0, i32 1
  %807 = load i8*, i8** %806, align 8
  %808 = load i32, i32* %8, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds i8, i8* %807, i64 %809
  %811 = load i8, i8* %810, align 1
  %812 = sext i8 %811 to i32
  %813 = load i32, i32* %7, align 4
  %814 = icmp eq i32 %812, %813
  br i1 %814, label %815, label %837

815:                                              ; preds = %804
  %816 = load i8, i8* %6, align 1
  %817 = load %struct.regstat*, %struct.regstat** %4, align 8
  %818 = getelementptr inbounds %struct.regstat, %struct.regstat* %817, i32 0, i32 1
  %819 = load i8*, i8** %818, align 8
  %820 = load i32, i32* %8, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds i8, i8* %819, i64 %821
  store i8 %816, i8* %822, align 1
  %823 = load i32, i32* %8, align 4
  %824 = shl i32 1, %823
  %825 = xor i32 %824, -1
  %826 = load %struct.regstat*, %struct.regstat** %4, align 8
  %827 = getelementptr inbounds %struct.regstat, %struct.regstat* %826, i32 0, i32 2
  %828 = load i32, i32* %827, align 8
  %829 = and i32 %828, %825
  store i32 %829, i32* %827, align 8
  %830 = load i32, i32* %8, align 4
  %831 = shl i32 1, %830
  %832 = xor i32 %831, -1
  %833 = load %struct.regstat*, %struct.regstat** %4, align 8
  %834 = getelementptr inbounds %struct.regstat, %struct.regstat* %833, i32 0, i32 3
  %835 = load i32, i32* %834, align 4
  %836 = and i32 %835, %832
  store i32 %836, i32* %834, align 4
  store i32 1, i32* %13, align 4
  br label %853

837:                                              ; preds = %804
  br label %838

838:                                              ; preds = %837
  %839 = load i32, i32* %8, align 4
  %840 = add nsw i32 %839, 1
  store i32 %840, i32* %8, align 4
  br label %800

841:                                              ; preds = %800
  br label %842

842:                                              ; preds = %841, %748
  br label %843

843:                                              ; preds = %842
  %844 = load i32, i32* %7, align 4
  %845 = add nsw i32 %844, 1
  store i32 %845, i32* %7, align 4
  br label %744

846:                                              ; preds = %744
  br label %847

847:                                              ; preds = %846
  %848 = load i32, i32* %12, align 4
  %849 = add nsw i32 %848, -1
  store i32 %849, i32* %12, align 4
  br label %740

850:                                              ; preds = %740
  %851 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %852 = call i32 @exit(i32 1) #4
  unreachable

853:                                              ; preds = %815, %773, %702, %647, %561
  %854 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %854)
  br label %855

855:                                              ; preds = %853, %393, %346, %170, %134, %92, %73, %55
  ret void
}

declare dso_local i32 @loop_reg(i32, i8 signext, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @lsn(i8*, i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
