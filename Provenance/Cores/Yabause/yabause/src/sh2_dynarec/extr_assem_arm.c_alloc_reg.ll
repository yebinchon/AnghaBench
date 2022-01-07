; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_alloc_reg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_alloc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.regstat = type { i8, i8*, i32, i32 }

@CCREG = common dso_local global i8 0, align 1
@HOST_CCREG = common dso_local global i32 0, align 4
@PTEMP = common dso_local global i8 0, align 1
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
  %16 = and i32 %15, 7
  store i32 %16, i32* %9, align 4
  %17 = load i8, i8* %6, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* @CCREG, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @HOST_CCREG, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %22, %3
  %25 = load i8, i8* %6, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* @PTEMP, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 12, i32* %9, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load %struct.regstat*, %struct.regstat** %4, align 8
  %33 = getelementptr inbounds %struct.regstat, %struct.regstat* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 8
  %35 = sext i8 %34 to i32
  %36 = load i8, i8* %6, align 1
  %37 = sext i8 %36 to i32
  %38 = ashr i32 %35, %37
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %801

42:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %61, %42
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @HOST_REGS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load %struct.regstat*, %struct.regstat** %4, align 8
  %49 = getelementptr inbounds %struct.regstat, %struct.regstat* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* %6, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %801

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %43

64:                                               ; preds = %43
  %65 = load i32, i32* %5, align 4
  %66 = load i8, i8* %6, align 1
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @loop_reg(i32 %65, i8 signext %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.regstat*, %struct.regstat** %4, align 8
  %70 = getelementptr inbounds %struct.regstat, %struct.regstat* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %100

78:                                               ; preds = %64
  %79 = load i8, i8* %6, align 1
  %80 = load %struct.regstat*, %struct.regstat** %4, align 8
  %81 = getelementptr inbounds %struct.regstat, %struct.regstat* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 %79, i8* %85, align 1
  %86 = load i32, i32* %9, align 4
  %87 = shl i32 1, %86
  %88 = xor i32 %87, -1
  %89 = load %struct.regstat*, %struct.regstat** %4, align 8
  %90 = getelementptr inbounds %struct.regstat, %struct.regstat* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* %9, align 4
  %94 = shl i32 1, %93
  %95 = xor i32 %94, -1
  %96 = load %struct.regstat*, %struct.regstat** %4, align 8
  %97 = getelementptr inbounds %struct.regstat, %struct.regstat* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %801

100:                                              ; preds = %64
  %101 = load %struct.regstat*, %struct.regstat** %4, align 8
  %102 = getelementptr inbounds %struct.regstat, %struct.regstat* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 64
  br i1 %110, label %111, label %142

111:                                              ; preds = %100
  %112 = load %struct.regstat*, %struct.regstat** %4, align 8
  %113 = getelementptr inbounds %struct.regstat, %struct.regstat* %112, i32 0, i32 0
  %114 = load i8, i8* %113, align 8
  %115 = sext i8 %114 to i32
  %116 = load i32, i32* %7, align 4
  %117 = ashr i32 %115, %116
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %111
  %121 = load i8, i8* %6, align 1
  %122 = load %struct.regstat*, %struct.regstat** %4, align 8
  %123 = getelementptr inbounds %struct.regstat, %struct.regstat* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 %121, i8* %127, align 1
  %128 = load i32, i32* %9, align 4
  %129 = shl i32 1, %128
  %130 = xor i32 %129, -1
  %131 = load %struct.regstat*, %struct.regstat** %4, align 8
  %132 = getelementptr inbounds %struct.regstat, %struct.regstat* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load i32, i32* %9, align 4
  %136 = shl i32 1, %135
  %137 = xor i32 %136, -1
  %138 = load %struct.regstat*, %struct.regstat** %4, align 8
  %139 = getelementptr inbounds %struct.regstat, %struct.regstat* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %801

142:                                              ; preds = %111, %100
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %191, %142
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @HOST_REGS, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %194

147:                                              ; preds = %143
  %148 = load %struct.regstat*, %struct.regstat** %4, align 8
  %149 = getelementptr inbounds %struct.regstat, %struct.regstat* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp sge i32 %156, 0
  br i1 %157, label %158, label %190

158:                                              ; preds = %147
  %159 = load %struct.regstat*, %struct.regstat** %4, align 8
  %160 = getelementptr inbounds %struct.regstat, %struct.regstat* %159, i32 0, i32 0
  %161 = load i8, i8* %160, align 8
  %162 = sext i8 %161 to i32
  %163 = load i32, i32* %7, align 4
  %164 = ashr i32 %162, %163
  %165 = and i32 %164, 1
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %189

167:                                              ; preds = %158
  %168 = load i32, i32* %5, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %181, label %170

170:                                              ; preds = %167
  %171 = load i32*, i32** @unneeded_reg, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %7, align 4
  %178 = ashr i32 %176, %177
  %179 = and i32 %178, 1
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %170, %167
  %182 = load %struct.regstat*, %struct.regstat** %4, align 8
  %183 = getelementptr inbounds %struct.regstat, %struct.regstat* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  store i8 -1, i8* %187, align 1
  br label %194

188:                                              ; preds = %170
  br label %189

189:                                              ; preds = %188, %158
  br label %190

190:                                              ; preds = %189, %147
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %8, align 4
  br label %143

194:                                              ; preds = %181, %143
  %195 = load i32, i32* %5, align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %320

197:                                              ; preds = %194
  store i32 0, i32* %8, align 4
  br label %198

198:                                              ; preds = %316, %197
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @HOST_REGS, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %319

202:                                              ; preds = %198
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* @EXCLUDE_REG, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %315

206:                                              ; preds = %202
  %207 = load %struct.regstat*, %struct.regstat** %4, align 8
  %208 = getelementptr inbounds %struct.regstat, %struct.regstat* %207, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %216, label %315

216:                                              ; preds = %206
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %218 = load i32, i32* %5, align 4
  %219 = sub nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %8, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** @rs1, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sub nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %227, %233
  br i1 %234, label %235, label %314

235:                                              ; preds = %216
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sub nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** @rs2, align 8
  %248 = load i32, i32* %5, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %246, %252
  br i1 %253, label %254, label %314

254:                                              ; preds = %235
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %256 = load i32, i32* %5, align 4
  %257 = sub nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load i32*, i32** @rt1, align 8
  %267 = load i32, i32* %5, align 4
  %268 = sub nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %265, %271
  br i1 %272, label %273, label %314

273:                                              ; preds = %254
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %275 = load i32, i32* %5, align 4
  %276 = sub nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %8, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32*, i32** @rt2, align 8
  %286 = load i32, i32* %5, align 4
  %287 = sub nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %285, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = icmp ne i32 %284, %290
  br i1 %291, label %292, label %314

292:                                              ; preds = %273
  %293 = load i8, i8* %6, align 1
  %294 = load %struct.regstat*, %struct.regstat** %4, align 8
  %295 = getelementptr inbounds %struct.regstat, %struct.regstat* %294, i32 0, i32 1
  %296 = load i8*, i8** %295, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %296, i64 %298
  store i8 %293, i8* %299, align 1
  %300 = load i32, i32* %8, align 4
  %301 = shl i32 1, %300
  %302 = xor i32 %301, -1
  %303 = load %struct.regstat*, %struct.regstat** %4, align 8
  %304 = getelementptr inbounds %struct.regstat, %struct.regstat* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = and i32 %305, %302
  store i32 %306, i32* %304, align 8
  %307 = load i32, i32* %8, align 4
  %308 = shl i32 1, %307
  %309 = xor i32 %308, -1
  %310 = load %struct.regstat*, %struct.regstat** %4, align 8
  %311 = getelementptr inbounds %struct.regstat, %struct.regstat* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = and i32 %312, %309
  store i32 %313, i32* %311, align 4
  br label %801

314:                                              ; preds = %273, %254, %235, %216
  br label %315

315:                                              ; preds = %314, %206, %202
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %8, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %8, align 4
  br label %198

319:                                              ; preds = %198
  br label %320

320:                                              ; preds = %319, %194
  store i32 0, i32* %8, align 4
  br label %321

321:                                              ; preds = %362, %320
  %322 = load i32, i32* %8, align 4
  %323 = load i32, i32* @HOST_REGS, align 4
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %365

325:                                              ; preds = %321
  %326 = load i32, i32* %8, align 4
  %327 = load i32, i32* @EXCLUDE_REG, align 4
  %328 = icmp ne i32 %326, %327
  br i1 %328, label %329, label %361

329:                                              ; preds = %325
  %330 = load %struct.regstat*, %struct.regstat** %4, align 8
  %331 = getelementptr inbounds %struct.regstat, %struct.regstat* %330, i32 0, i32 1
  %332 = load i8*, i8** %331, align 8
  %333 = load i32, i32* %8, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8, i8* %332, i64 %334
  %336 = load i8, i8* %335, align 1
  %337 = sext i8 %336 to i32
  %338 = icmp eq i32 %337, -1
  br i1 %338, label %339, label %361

339:                                              ; preds = %329
  %340 = load i8, i8* %6, align 1
  %341 = load %struct.regstat*, %struct.regstat** %4, align 8
  %342 = getelementptr inbounds %struct.regstat, %struct.regstat* %341, i32 0, i32 1
  %343 = load i8*, i8** %342, align 8
  %344 = load i32, i32* %8, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8, i8* %343, i64 %345
  store i8 %340, i8* %346, align 1
  %347 = load i32, i32* %8, align 4
  %348 = shl i32 1, %347
  %349 = xor i32 %348, -1
  %350 = load %struct.regstat*, %struct.regstat** %4, align 8
  %351 = getelementptr inbounds %struct.regstat, %struct.regstat* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = and i32 %352, %349
  store i32 %353, i32* %351, align 8
  %354 = load i32, i32* %8, align 4
  %355 = shl i32 1, %354
  %356 = xor i32 %355, -1
  %357 = load %struct.regstat*, %struct.regstat** %4, align 8
  %358 = getelementptr inbounds %struct.regstat, %struct.regstat* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = and i32 %359, %356
  store i32 %360, i32* %358, align 4
  br label %801

361:                                              ; preds = %329, %325
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* %8, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %8, align 4
  br label %321

365:                                              ; preds = %321
  %366 = load i32, i32* @MAXREG, align 4
  %367 = add nsw i32 %366, 1
  %368 = zext i32 %367 to i64
  %369 = call i8* @llvm.stacksave()
  store i8* %369, i8** %10, align 8
  %370 = alloca i8, i64 %368, align 16
  store i64 %368, i64* %11, align 8
  %371 = trunc i64 %368 to i32
  %372 = call i32 @memset(i8* %370, i32 10, i32 %371)
  %373 = load i32, i32* %5, align 4
  %374 = call i32 @lsn(i8* %370, i32 %373, i32* %9)
  %375 = load i32, i32* %5, align 4
  %376 = icmp sgt i32 %375, 0
  br i1 %376, label %377, label %685

377:                                              ; preds = %365
  %378 = load i64*, i64** @bt, align 8
  %379 = load i32, i32* %5, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i64, i64* %378, i64 %380
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %395

384:                                              ; preds = %377
  %385 = load i8, i8* @CCREG, align 1
  %386 = sext i8 %385 to i64
  %387 = getelementptr inbounds i8, i8* %370, i64 %386
  %388 = load i8, i8* %387, align 1
  %389 = zext i8 %388 to i32
  %390 = icmp sgt i32 %389, 2
  br i1 %390, label %391, label %395

391:                                              ; preds = %384
  %392 = load i8, i8* @CCREG, align 1
  %393 = sext i8 %392 to i64
  %394 = getelementptr inbounds i8, i8* %370, i64 %393
  store i8 2, i8* %394, align 1
  br label %395

395:                                              ; preds = %391, %384, %377
  %396 = load i32, i32* %5, align 4
  %397 = icmp sgt i32 %396, 1
  br i1 %397, label %398, label %445

398:                                              ; preds = %395
  %399 = load i8, i8* @CCREG, align 1
  %400 = sext i8 %399 to i64
  %401 = getelementptr inbounds i8, i8* %370, i64 %400
  %402 = load i8, i8* %401, align 1
  %403 = zext i8 %402 to i32
  %404 = icmp sgt i32 %403, 2
  br i1 %404, label %405, label %445

405:                                              ; preds = %398
  %406 = load i64*, i64** @itype, align 8
  %407 = load i32, i32* %5, align 4
  %408 = sub nsw i32 %407, 2
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i64, i64* %406, i64 %409
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @RJUMP, align 8
  %413 = icmp eq i64 %411, %412
  br i1 %413, label %441, label %414

414:                                              ; preds = %405
  %415 = load i64*, i64** @itype, align 8
  %416 = load i32, i32* %5, align 4
  %417 = sub nsw i32 %416, 2
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i64, i64* %415, i64 %418
  %420 = load i64, i64* %419, align 8
  %421 = load i64, i64* @UJUMP, align 8
  %422 = icmp eq i64 %420, %421
  br i1 %422, label %441, label %423

423:                                              ; preds = %414
  %424 = load i64*, i64** @itype, align 8
  %425 = load i32, i32* %5, align 4
  %426 = sub nsw i32 %425, 2
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i64, i64* %424, i64 %427
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @CJUMP, align 8
  %431 = icmp eq i64 %429, %430
  br i1 %431, label %441, label %432

432:                                              ; preds = %423
  %433 = load i64*, i64** @itype, align 8
  %434 = load i32, i32* %5, align 4
  %435 = sub nsw i32 %434, 2
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i64, i64* %433, i64 %436
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* @SJUMP, align 8
  %440 = icmp eq i64 %438, %439
  br i1 %440, label %441, label %445

441:                                              ; preds = %432, %423, %414, %405
  %442 = load i8, i8* @CCREG, align 1
  %443 = sext i8 %442 to i64
  %444 = getelementptr inbounds i8, i8* %370, i64 %443
  store i8 2, i8* %444, align 1
  br label %445

445:                                              ; preds = %441, %432, %398, %395
  store i32 10, i32* %12, align 4
  br label %446

446:                                              ; preds = %681, %445
  %447 = load i32, i32* %12, align 4
  %448 = icmp sge i32 %447, 3
  br i1 %448, label %449, label %684

449:                                              ; preds = %446
  %450 = load %struct.regstat*, %struct.regstat** %4, align 8
  %451 = getelementptr inbounds %struct.regstat, %struct.regstat* %450, i32 0, i32 1
  %452 = load i8*, i8** %451, align 8
  %453 = load i32, i32* %9, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i8, i8* %452, i64 %454
  %456 = load i8, i8* %455, align 1
  %457 = sext i8 %456 to i32
  %458 = and i32 %457, 63
  store i32 %458, i32* %7, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i8, i8* %370, i64 %459
  %461 = load i8, i8* %460, align 1
  %462 = zext i8 %461 to i32
  %463 = load i32, i32* %12, align 4
  %464 = icmp eq i32 %462, %463
  br i1 %464, label %465, label %515

465:                                              ; preds = %449
  store i32 0, i32* %8, align 4
  br label %466

466:                                              ; preds = %504, %465
  %467 = load i32, i32* %8, align 4
  %468 = load i32, i32* @HOST_REGS, align 4
  %469 = icmp slt i32 %467, %468
  br i1 %469, label %470, label %507

470:                                              ; preds = %466
  %471 = load %struct.regstat*, %struct.regstat** %4, align 8
  %472 = getelementptr inbounds %struct.regstat, %struct.regstat* %471, i32 0, i32 1
  %473 = load i8*, i8** %472, align 8
  %474 = load i32, i32* %8, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i8, i8* %473, i64 %475
  %477 = load i8, i8* %476, align 1
  %478 = sext i8 %477 to i32
  %479 = and i32 %478, 63
  %480 = load i32, i32* %7, align 4
  %481 = icmp eq i32 %479, %480
  br i1 %481, label %482, label %503

482:                                              ; preds = %470
  %483 = load %struct.regstat*, %struct.regstat** %4, align 8
  %484 = getelementptr inbounds %struct.regstat, %struct.regstat* %483, i32 0, i32 1
  %485 = load i8*, i8** %484, align 8
  %486 = load i32, i32* %8, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i8, i8* %485, i64 %487
  store i8 -1, i8* %488, align 1
  %489 = load i32, i32* %8, align 4
  %490 = shl i32 1, %489
  %491 = xor i32 %490, -1
  %492 = load %struct.regstat*, %struct.regstat** %4, align 8
  %493 = getelementptr inbounds %struct.regstat, %struct.regstat* %492, i32 0, i32 2
  %494 = load i32, i32* %493, align 8
  %495 = and i32 %494, %491
  store i32 %495, i32* %493, align 8
  %496 = load i32, i32* %8, align 4
  %497 = shl i32 1, %496
  %498 = xor i32 %497, -1
  %499 = load %struct.regstat*, %struct.regstat** %4, align 8
  %500 = getelementptr inbounds %struct.regstat, %struct.regstat* %499, i32 0, i32 3
  %501 = load i32, i32* %500, align 4
  %502 = and i32 %501, %498
  store i32 %502, i32* %500, align 4
  br label %503

503:                                              ; preds = %482, %470
  br label %504

504:                                              ; preds = %503
  %505 = load i32, i32* %8, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %8, align 4
  br label %466

507:                                              ; preds = %466
  %508 = load i8, i8* %6, align 1
  %509 = load %struct.regstat*, %struct.regstat** %4, align 8
  %510 = getelementptr inbounds %struct.regstat, %struct.regstat* %509, i32 0, i32 1
  %511 = load i8*, i8** %510, align 8
  %512 = load i32, i32* %9, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i8, i8* %511, i64 %513
  store i8 %508, i8* %514, align 1
  store i32 1, i32* %13, align 4
  br label %799

515:                                              ; preds = %449
  store i32 0, i32* %7, align 4
  br label %516

516:                                              ; preds = %677, %515
  %517 = load i32, i32* %7, align 4
  %518 = load i32, i32* @MAXREG, align 4
  %519 = icmp sle i32 %517, %518
  br i1 %519, label %520, label %680

520:                                              ; preds = %516
  %521 = load i32, i32* %7, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i8, i8* %370, i64 %522
  %524 = load i8, i8* %523, align 1
  %525 = zext i8 %524 to i32
  %526 = load i32, i32* %12, align 4
  %527 = icmp eq i32 %525, %526
  br i1 %527, label %528, label %676

528:                                              ; preds = %520
  %529 = load i32, i32* %7, align 4
  %530 = load i32*, i32** @rs1, align 8
  %531 = load i32, i32* %5, align 4
  %532 = sub nsw i32 %531, 1
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i32, i32* %530, i64 %533
  %535 = load i32, i32* %534, align 4
  %536 = icmp ne i32 %529, %535
  br i1 %536, label %537, label %676

537:                                              ; preds = %528
  %538 = load i32, i32* %7, align 4
  %539 = load i32*, i32** @rs2, align 8
  %540 = load i32, i32* %5, align 4
  %541 = sub nsw i32 %540, 1
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, i32* %539, i64 %542
  %544 = load i32, i32* %543, align 4
  %545 = icmp ne i32 %538, %544
  br i1 %545, label %546, label %676

546:                                              ; preds = %537
  %547 = load i32, i32* %7, align 4
  %548 = load i32*, i32** @rt1, align 8
  %549 = load i32, i32* %5, align 4
  %550 = sub nsw i32 %549, 1
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %548, i64 %551
  %553 = load i32, i32* %552, align 4
  %554 = icmp ne i32 %547, %553
  br i1 %554, label %555, label %676

555:                                              ; preds = %546
  %556 = load i32, i32* %7, align 4
  %557 = load i32*, i32** @rt2, align 8
  %558 = load i32, i32* %5, align 4
  %559 = sub nsw i32 %558, 1
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %557, i64 %560
  %562 = load i32, i32* %561, align 4
  %563 = icmp ne i32 %556, %562
  br i1 %563, label %564, label %676

564:                                              ; preds = %555
  store i32 0, i32* %8, align 4
  br label %565

565:                                              ; preds = %617, %564
  %566 = load i32, i32* %8, align 4
  %567 = load i32, i32* @HOST_REGS, align 4
  %568 = icmp slt i32 %566, %567
  br i1 %568, label %569, label %620

569:                                              ; preds = %565
  %570 = load i32, i32* %8, align 4
  %571 = load i32, i32* @HOST_CCREG, align 4
  %572 = icmp ne i32 %570, %571
  br i1 %572, label %581, label %573

573:                                              ; preds = %569
  %574 = load i32, i32* %12, align 4
  %575 = load i8, i8* @CCREG, align 1
  %576 = sext i8 %575 to i64
  %577 = getelementptr inbounds i8, i8* %370, i64 %576
  %578 = load i8, i8* %577, align 1
  %579 = zext i8 %578 to i32
  %580 = icmp slt i32 %574, %579
  br i1 %580, label %581, label %616

581:                                              ; preds = %573, %569
  %582 = load %struct.regstat*, %struct.regstat** %4, align 8
  %583 = getelementptr inbounds %struct.regstat, %struct.regstat* %582, i32 0, i32 1
  %584 = load i8*, i8** %583, align 8
  %585 = load i32, i32* %8, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i8, i8* %584, i64 %586
  %588 = load i8, i8* %587, align 1
  %589 = sext i8 %588 to i32
  %590 = load i32, i32* %7, align 4
  %591 = add nsw i32 %590, 64
  %592 = icmp eq i32 %589, %591
  br i1 %592, label %593, label %615

593:                                              ; preds = %581
  %594 = load i8, i8* %6, align 1
  %595 = load %struct.regstat*, %struct.regstat** %4, align 8
  %596 = getelementptr inbounds %struct.regstat, %struct.regstat* %595, i32 0, i32 1
  %597 = load i8*, i8** %596, align 8
  %598 = load i32, i32* %8, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i8, i8* %597, i64 %599
  store i8 %594, i8* %600, align 1
  %601 = load i32, i32* %8, align 4
  %602 = shl i32 1, %601
  %603 = xor i32 %602, -1
  %604 = load %struct.regstat*, %struct.regstat** %4, align 8
  %605 = getelementptr inbounds %struct.regstat, %struct.regstat* %604, i32 0, i32 2
  %606 = load i32, i32* %605, align 8
  %607 = and i32 %606, %603
  store i32 %607, i32* %605, align 8
  %608 = load i32, i32* %8, align 4
  %609 = shl i32 1, %608
  %610 = xor i32 %609, -1
  %611 = load %struct.regstat*, %struct.regstat** %4, align 8
  %612 = getelementptr inbounds %struct.regstat, %struct.regstat* %611, i32 0, i32 3
  %613 = load i32, i32* %612, align 4
  %614 = and i32 %613, %610
  store i32 %614, i32* %612, align 4
  store i32 1, i32* %13, align 4
  br label %799

615:                                              ; preds = %581
  br label %616

616:                                              ; preds = %615, %573
  br label %617

617:                                              ; preds = %616
  %618 = load i32, i32* %8, align 4
  %619 = add nsw i32 %618, 1
  store i32 %619, i32* %8, align 4
  br label %565

620:                                              ; preds = %565
  store i32 0, i32* %8, align 4
  br label %621

621:                                              ; preds = %672, %620
  %622 = load i32, i32* %8, align 4
  %623 = load i32, i32* @HOST_REGS, align 4
  %624 = icmp slt i32 %622, %623
  br i1 %624, label %625, label %675

625:                                              ; preds = %621
  %626 = load i32, i32* %8, align 4
  %627 = load i32, i32* @HOST_CCREG, align 4
  %628 = icmp ne i32 %626, %627
  br i1 %628, label %637, label %629

629:                                              ; preds = %625
  %630 = load i32, i32* %12, align 4
  %631 = load i8, i8* @CCREG, align 1
  %632 = sext i8 %631 to i64
  %633 = getelementptr inbounds i8, i8* %370, i64 %632
  %634 = load i8, i8* %633, align 1
  %635 = zext i8 %634 to i32
  %636 = icmp slt i32 %630, %635
  br i1 %636, label %637, label %671

637:                                              ; preds = %629, %625
  %638 = load %struct.regstat*, %struct.regstat** %4, align 8
  %639 = getelementptr inbounds %struct.regstat, %struct.regstat* %638, i32 0, i32 1
  %640 = load i8*, i8** %639, align 8
  %641 = load i32, i32* %8, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds i8, i8* %640, i64 %642
  %644 = load i8, i8* %643, align 1
  %645 = sext i8 %644 to i32
  %646 = load i32, i32* %7, align 4
  %647 = icmp eq i32 %645, %646
  br i1 %647, label %648, label %670

648:                                              ; preds = %637
  %649 = load i8, i8* %6, align 1
  %650 = load %struct.regstat*, %struct.regstat** %4, align 8
  %651 = getelementptr inbounds %struct.regstat, %struct.regstat* %650, i32 0, i32 1
  %652 = load i8*, i8** %651, align 8
  %653 = load i32, i32* %8, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds i8, i8* %652, i64 %654
  store i8 %649, i8* %655, align 1
  %656 = load i32, i32* %8, align 4
  %657 = shl i32 1, %656
  %658 = xor i32 %657, -1
  %659 = load %struct.regstat*, %struct.regstat** %4, align 8
  %660 = getelementptr inbounds %struct.regstat, %struct.regstat* %659, i32 0, i32 2
  %661 = load i32, i32* %660, align 8
  %662 = and i32 %661, %658
  store i32 %662, i32* %660, align 8
  %663 = load i32, i32* %8, align 4
  %664 = shl i32 1, %663
  %665 = xor i32 %664, -1
  %666 = load %struct.regstat*, %struct.regstat** %4, align 8
  %667 = getelementptr inbounds %struct.regstat, %struct.regstat* %666, i32 0, i32 3
  %668 = load i32, i32* %667, align 4
  %669 = and i32 %668, %665
  store i32 %669, i32* %667, align 4
  store i32 1, i32* %13, align 4
  br label %799

670:                                              ; preds = %637
  br label %671

671:                                              ; preds = %670, %629
  br label %672

672:                                              ; preds = %671
  %673 = load i32, i32* %8, align 4
  %674 = add nsw i32 %673, 1
  store i32 %674, i32* %8, align 4
  br label %621

675:                                              ; preds = %621
  br label %676

676:                                              ; preds = %675, %555, %546, %537, %528, %520
  br label %677

677:                                              ; preds = %676
  %678 = load i32, i32* %7, align 4
  %679 = add nsw i32 %678, 1
  store i32 %679, i32* %7, align 4
  br label %516

680:                                              ; preds = %516
  br label %681

681:                                              ; preds = %680
  %682 = load i32, i32* %12, align 4
  %683 = add nsw i32 %682, -1
  store i32 %683, i32* %12, align 4
  br label %446

684:                                              ; preds = %446
  br label %685

685:                                              ; preds = %684, %365
  store i32 10, i32* %12, align 4
  br label %686

686:                                              ; preds = %793, %685
  %687 = load i32, i32* %12, align 4
  %688 = icmp sge i32 %687, 0
  br i1 %688, label %689, label %796

689:                                              ; preds = %686
  store i32 0, i32* %7, align 4
  br label %690

690:                                              ; preds = %789, %689
  %691 = load i32, i32* %7, align 4
  %692 = load i32, i32* @MAXREG, align 4
  %693 = icmp sle i32 %691, %692
  br i1 %693, label %694, label %792

694:                                              ; preds = %690
  %695 = load i32, i32* %7, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds i8, i8* %370, i64 %696
  %698 = load i8, i8* %697, align 1
  %699 = zext i8 %698 to i32
  %700 = load i32, i32* %12, align 4
  %701 = icmp eq i32 %699, %700
  br i1 %701, label %702, label %788

702:                                              ; preds = %694
  store i32 0, i32* %8, align 4
  br label %703

703:                                              ; preds = %742, %702
  %704 = load i32, i32* %8, align 4
  %705 = load i32, i32* @HOST_REGS, align 4
  %706 = icmp slt i32 %704, %705
  br i1 %706, label %707, label %745

707:                                              ; preds = %703
  %708 = load %struct.regstat*, %struct.regstat** %4, align 8
  %709 = getelementptr inbounds %struct.regstat, %struct.regstat* %708, i32 0, i32 1
  %710 = load i8*, i8** %709, align 8
  %711 = load i32, i32* %8, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds i8, i8* %710, i64 %712
  %714 = load i8, i8* %713, align 1
  %715 = sext i8 %714 to i32
  %716 = load i32, i32* %7, align 4
  %717 = add nsw i32 %716, 64
  %718 = icmp eq i32 %715, %717
  br i1 %718, label %719, label %741

719:                                              ; preds = %707
  %720 = load i8, i8* %6, align 1
  %721 = load %struct.regstat*, %struct.regstat** %4, align 8
  %722 = getelementptr inbounds %struct.regstat, %struct.regstat* %721, i32 0, i32 1
  %723 = load i8*, i8** %722, align 8
  %724 = load i32, i32* %8, align 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds i8, i8* %723, i64 %725
  store i8 %720, i8* %726, align 1
  %727 = load i32, i32* %8, align 4
  %728 = shl i32 1, %727
  %729 = xor i32 %728, -1
  %730 = load %struct.regstat*, %struct.regstat** %4, align 8
  %731 = getelementptr inbounds %struct.regstat, %struct.regstat* %730, i32 0, i32 2
  %732 = load i32, i32* %731, align 8
  %733 = and i32 %732, %729
  store i32 %733, i32* %731, align 8
  %734 = load i32, i32* %8, align 4
  %735 = shl i32 1, %734
  %736 = xor i32 %735, -1
  %737 = load %struct.regstat*, %struct.regstat** %4, align 8
  %738 = getelementptr inbounds %struct.regstat, %struct.regstat* %737, i32 0, i32 3
  %739 = load i32, i32* %738, align 4
  %740 = and i32 %739, %736
  store i32 %740, i32* %738, align 4
  store i32 1, i32* %13, align 4
  br label %799

741:                                              ; preds = %707
  br label %742

742:                                              ; preds = %741
  %743 = load i32, i32* %8, align 4
  %744 = add nsw i32 %743, 1
  store i32 %744, i32* %8, align 4
  br label %703

745:                                              ; preds = %703
  store i32 0, i32* %8, align 4
  br label %746

746:                                              ; preds = %784, %745
  %747 = load i32, i32* %8, align 4
  %748 = load i32, i32* @HOST_REGS, align 4
  %749 = icmp slt i32 %747, %748
  br i1 %749, label %750, label %787

750:                                              ; preds = %746
  %751 = load %struct.regstat*, %struct.regstat** %4, align 8
  %752 = getelementptr inbounds %struct.regstat, %struct.regstat* %751, i32 0, i32 1
  %753 = load i8*, i8** %752, align 8
  %754 = load i32, i32* %8, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds i8, i8* %753, i64 %755
  %757 = load i8, i8* %756, align 1
  %758 = sext i8 %757 to i32
  %759 = load i32, i32* %7, align 4
  %760 = icmp eq i32 %758, %759
  br i1 %760, label %761, label %783

761:                                              ; preds = %750
  %762 = load i8, i8* %6, align 1
  %763 = load %struct.regstat*, %struct.regstat** %4, align 8
  %764 = getelementptr inbounds %struct.regstat, %struct.regstat* %763, i32 0, i32 1
  %765 = load i8*, i8** %764, align 8
  %766 = load i32, i32* %8, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds i8, i8* %765, i64 %767
  store i8 %762, i8* %768, align 1
  %769 = load i32, i32* %8, align 4
  %770 = shl i32 1, %769
  %771 = xor i32 %770, -1
  %772 = load %struct.regstat*, %struct.regstat** %4, align 8
  %773 = getelementptr inbounds %struct.regstat, %struct.regstat* %772, i32 0, i32 2
  %774 = load i32, i32* %773, align 8
  %775 = and i32 %774, %771
  store i32 %775, i32* %773, align 8
  %776 = load i32, i32* %8, align 4
  %777 = shl i32 1, %776
  %778 = xor i32 %777, -1
  %779 = load %struct.regstat*, %struct.regstat** %4, align 8
  %780 = getelementptr inbounds %struct.regstat, %struct.regstat* %779, i32 0, i32 3
  %781 = load i32, i32* %780, align 4
  %782 = and i32 %781, %778
  store i32 %782, i32* %780, align 4
  store i32 1, i32* %13, align 4
  br label %799

783:                                              ; preds = %750
  br label %784

784:                                              ; preds = %783
  %785 = load i32, i32* %8, align 4
  %786 = add nsw i32 %785, 1
  store i32 %786, i32* %8, align 4
  br label %746

787:                                              ; preds = %746
  br label %788

788:                                              ; preds = %787, %694
  br label %789

789:                                              ; preds = %788
  %790 = load i32, i32* %7, align 4
  %791 = add nsw i32 %790, 1
  store i32 %791, i32* %7, align 4
  br label %690

792:                                              ; preds = %690
  br label %793

793:                                              ; preds = %792
  %794 = load i32, i32* %12, align 4
  %795 = add nsw i32 %794, -1
  store i32 %795, i32* %12, align 4
  br label %686

796:                                              ; preds = %686
  %797 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %798 = call i32 @exit(i32 1) #4
  unreachable

799:                                              ; preds = %761, %719, %648, %593, %507
  %800 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %800)
  br label %801

801:                                              ; preds = %799, %339, %292, %120, %78, %59, %41
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
