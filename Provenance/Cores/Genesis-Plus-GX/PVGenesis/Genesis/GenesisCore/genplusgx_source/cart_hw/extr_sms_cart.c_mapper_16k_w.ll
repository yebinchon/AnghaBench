; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_mapper_16k_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_mapper_16k_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i64, i32* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@slot = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MAPPER_SEGA = common dso_local global i64 0, align 8
@sram = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@z80_writemap = common dso_local global i32** null, align 8
@z80_readmap = common dso_local global i32** null, align 8
@cart = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@work_ram = common dso_local global i32* null, align 8
@MAPPER_CODIES = common dso_local global i64 0, align 8
@MAPPER_MULTI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @mapper_16k_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mapper_16k_w(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 0), align 8
  %9 = urem i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 1), align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 3
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 2), align 8
  %17 = load i64, i64* @MAPPER_SEGA, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 1), align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 3
  %25 = sub nsw i32 4, %24
  %26 = shl i32 %25, 3
  %27 = add nsw i32 %20, %26
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 0), align 8
  %29 = urem i32 %27, %28
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %19, %15, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 1), align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %3, align 4
  switch i32 %36, label %359 [
    i32 0, label %37
    i32 1, label %171
    i32 2, label %209
    i32 3, label %298
  ]

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  store i32 32, i32* %5, align 4
  br label %42

42:                                               ; preds = %64, %41
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 48
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sram, i32 0, i32 0), align 8
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, 4
  %49 = shl i32 %48, 12
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 15
  %52 = shl i32 %51, 10
  %53 = add i32 %49, %52
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %46, i64 %54
  %56 = load i32**, i32*** @z80_writemap, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  store i32* %55, i32** %59, align 8
  %60 = load i32**, i32*** @z80_readmap, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  store i32* %55, i32** %63, align 8
  br label %64

64:                                               ; preds = %45
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %42

67:                                               ; preds = %42
  br label %120

68:                                               ; preds = %37
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 1), align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 0), align 8
  %73 = urem i32 %71, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, 3
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %68
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 2), align 8
  %79 = load i64, i64* @MAPPER_SEGA, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, 3
  %85 = sub i32 4, %84
  %86 = shl i32 %85, 3
  %87 = add i32 %82, %86
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 0), align 8
  %89 = urem i32 %87, %88
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %81, %77, %68
  store i32 32, i32* %5, align 4
  br label %91

91:                                               ; preds = %116, %90
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %92, 48
  br i1 %93, label %94, label %119

94:                                               ; preds = %91
  %95 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 3), align 8
  %96 = load i32, i32* %6, align 4
  %97 = shl i32 %96, 14
  %98 = load i32, i32* %5, align 4
  %99 = and i32 %98, 15
  %100 = shl i32 %99, 10
  %101 = or i32 %97, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %95, i64 %102
  %104 = load i32**, i32*** @z80_readmap, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  store i32* %103, i32** %107, align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart, i32 0, i32 0), align 4
  %109 = add nsw i32 %108, 5308416
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i32*
  %112 = load i32**, i32*** @z80_writemap, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  store i32* %111, i32** %115, align 8
  br label %116

116:                                              ; preds = %94
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %91

119:                                              ; preds = %91
  br label %120

120:                                              ; preds = %119, %67
  %121 = load i32, i32* %4, align 4
  %122 = and i32 %121, 16
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %147

124:                                              ; preds = %120
  store i32 48, i32* %5, align 4
  br label %125

125:                                              ; preds = %143, %124
  %126 = load i32, i32* %5, align 4
  %127 = icmp slt i32 %126, 64
  br i1 %127, label %128, label %146

128:                                              ; preds = %125
  %129 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sram, i32 0, i32 0), align 8
  %130 = load i32, i32* %5, align 4
  %131 = and i32 %130, 15
  %132 = shl i32 %131, 10
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = load i32**, i32*** @z80_writemap, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  store i32* %134, i32** %138, align 8
  %139 = load i32**, i32*** @z80_readmap, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  store i32* %134, i32** %142, align 8
  br label %143

143:                                              ; preds = %128
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %5, align 4
  br label %125

146:                                              ; preds = %125
  br label %170

147:                                              ; preds = %120
  store i32 48, i32* %5, align 4
  br label %148

148:                                              ; preds = %166, %147
  %149 = load i32, i32* %5, align 4
  %150 = icmp slt i32 %149, 64
  br i1 %150, label %151, label %169

151:                                              ; preds = %148
  %152 = load i32*, i32** @work_ram, align 8
  %153 = load i32, i32* %5, align 4
  %154 = and i32 %153, 7
  %155 = shl i32 %154, 10
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = load i32**, i32*** @z80_writemap, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  store i32* %157, i32** %161, align 8
  %162 = load i32**, i32*** @z80_readmap, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  store i32* %157, i32** %165, align 8
  br label %166

166:                                              ; preds = %151
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  br label %148

169:                                              ; preds = %148
  br label %170

170:                                              ; preds = %169, %146
  br label %359

171:                                              ; preds = %30
  %172 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 2), align 8
  %173 = load i64, i64* @MAPPER_CODIES, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 2), align 8
  %177 = load i64, i64* @MAPPER_MULTI, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %175, %171
  %180 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 3), align 8
  %181 = load i32, i32* %6, align 4
  %182 = shl i32 %181, 14
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i32**, i32*** @z80_readmap, align 8
  %186 = getelementptr inbounds i32*, i32** %185, i64 0
  store i32* %184, i32** %186, align 8
  br label %187

187:                                              ; preds = %179, %175
  store i32 1, i32* %5, align 4
  br label %188

188:                                              ; preds = %205, %187
  %189 = load i32, i32* %5, align 4
  %190 = icmp slt i32 %189, 16
  br i1 %190, label %191, label %208

191:                                              ; preds = %188
  %192 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 3), align 8
  %193 = load i32, i32* %6, align 4
  %194 = shl i32 %193, 14
  %195 = load i32, i32* %5, align 4
  %196 = and i32 %195, 15
  %197 = shl i32 %196, 10
  %198 = or i32 %194, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %192, i64 %199
  %201 = load i32**, i32*** @z80_readmap, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  store i32* %200, i32** %204, align 8
  br label %205

205:                                              ; preds = %191
  %206 = load i32, i32* %5, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %5, align 4
  br label %188

208:                                              ; preds = %188
  br label %359

209:                                              ; preds = %30
  store i32 16, i32* %5, align 4
  br label %210

210:                                              ; preds = %227, %209
  %211 = load i32, i32* %5, align 4
  %212 = icmp slt i32 %211, 32
  br i1 %212, label %213, label %230

213:                                              ; preds = %210
  %214 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 3), align 8
  %215 = load i32, i32* %6, align 4
  %216 = shl i32 %215, 14
  %217 = load i32, i32* %5, align 4
  %218 = and i32 %217, 15
  %219 = shl i32 %218, 10
  %220 = or i32 %216, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %214, i64 %221
  %223 = load i32**, i32*** @z80_readmap, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32*, i32** %223, i64 %225
  store i32* %222, i32** %226, align 8
  br label %227

227:                                              ; preds = %213
  %228 = load i32, i32* %5, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %5, align 4
  br label %210

230:                                              ; preds = %210
  %231 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 2), align 8
  %232 = load i64, i64* @MAPPER_CODIES, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %297

234:                                              ; preds = %230
  %235 = load i32, i32* %4, align 4
  %236 = and i32 %235, 128
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %261

238:                                              ; preds = %234
  store i32 40, i32* %5, align 4
  br label %239

239:                                              ; preds = %257, %238
  %240 = load i32, i32* %5, align 4
  %241 = icmp slt i32 %240, 48
  br i1 %241, label %242, label %260

242:                                              ; preds = %239
  %243 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sram, i32 0, i32 0), align 8
  %244 = load i32, i32* %5, align 4
  %245 = and i32 %244, 15
  %246 = shl i32 %245, 10
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %243, i64 %247
  %249 = load i32**, i32*** @z80_writemap, align 8
  %250 = load i32, i32* %5, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32*, i32** %249, i64 %251
  store i32* %248, i32** %252, align 8
  %253 = load i32**, i32*** @z80_readmap, align 8
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32*, i32** %253, i64 %255
  store i32* %248, i32** %256, align 8
  br label %257

257:                                              ; preds = %242
  %258 = load i32, i32* %5, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %5, align 4
  br label %239

260:                                              ; preds = %239
  br label %296

261:                                              ; preds = %234
  %262 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 1), align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 3
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 0), align 8
  %266 = urem i32 %264, %265
  store i32 %266, i32* %6, align 4
  store i32 40, i32* %5, align 4
  br label %267

267:                                              ; preds = %292, %261
  %268 = load i32, i32* %5, align 4
  %269 = icmp slt i32 %268, 48
  br i1 %269, label %270, label %295

270:                                              ; preds = %267
  %271 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 3), align 8
  %272 = load i32, i32* %6, align 4
  %273 = shl i32 %272, 14
  %274 = load i32, i32* %5, align 4
  %275 = and i32 %274, 15
  %276 = shl i32 %275, 10
  %277 = or i32 %273, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %271, i64 %278
  %280 = load i32**, i32*** @z80_readmap, align 8
  %281 = load i32, i32* %5, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32*, i32** %280, i64 %282
  store i32* %279, i32** %283, align 8
  %284 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart, i32 0, i32 0), align 4
  %285 = add nsw i32 %284, 5308416
  %286 = sext i32 %285 to i64
  %287 = inttoptr i64 %286 to i32*
  %288 = load i32**, i32*** @z80_writemap, align 8
  %289 = load i32, i32* %5, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32*, i32** %288, i64 %290
  store i32* %287, i32** %291, align 8
  br label %292

292:                                              ; preds = %270
  %293 = load i32, i32* %5, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %5, align 4
  br label %267

295:                                              ; preds = %267
  br label %296

296:                                              ; preds = %295, %260
  br label %297

297:                                              ; preds = %296, %230
  br label %359

298:                                              ; preds = %30
  %299 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 1), align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  %301 = load i32, i32* %300, align 4
  %302 = and i32 %301, 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %298
  br label %359

305:                                              ; preds = %298
  store i32 32, i32* %5, align 4
  br label %306

306:                                              ; preds = %323, %305
  %307 = load i32, i32* %5, align 4
  %308 = icmp slt i32 %307, 40
  br i1 %308, label %309, label %326

309:                                              ; preds = %306
  %310 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 3), align 8
  %311 = load i32, i32* %6, align 4
  %312 = shl i32 %311, 14
  %313 = load i32, i32* %5, align 4
  %314 = and i32 %313, 15
  %315 = shl i32 %314, 10
  %316 = or i32 %312, %315
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %310, i64 %317
  %319 = load i32**, i32*** @z80_readmap, align 8
  %320 = load i32, i32* %5, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32*, i32** %319, i64 %321
  store i32* %318, i32** %322, align 8
  br label %323

323:                                              ; preds = %309
  %324 = load i32, i32* %5, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %5, align 4
  br label %306

326:                                              ; preds = %306
  %327 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 2), align 8
  %328 = load i64, i64* @MAPPER_CODIES, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %337

330:                                              ; preds = %326
  %331 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 1), align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 2
  %333 = load i32, i32* %332, align 4
  %334 = and i32 %333, 128
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %330
  br label %359

337:                                              ; preds = %330, %326
  store i32 40, i32* %5, align 4
  br label %338

338:                                              ; preds = %355, %337
  %339 = load i32, i32* %5, align 4
  %340 = icmp slt i32 %339, 48
  br i1 %340, label %341, label %358

341:                                              ; preds = %338
  %342 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 3), align 8
  %343 = load i32, i32* %6, align 4
  %344 = shl i32 %343, 14
  %345 = load i32, i32* %5, align 4
  %346 = and i32 %345, 15
  %347 = shl i32 %346, 10
  %348 = or i32 %344, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %342, i64 %349
  %351 = load i32**, i32*** @z80_readmap, align 8
  %352 = load i32, i32* %5, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32*, i32** %351, i64 %353
  store i32* %350, i32** %354, align 8
  br label %355

355:                                              ; preds = %341
  %356 = load i32, i32* %5, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %5, align 4
  br label %338

358:                                              ; preds = %338
  br label %359

359:                                              ; preds = %30, %358, %336, %304, %297, %208, %170
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
