; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/svp/extr_ssp16.c_pm_io.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/svp/extr_ssp16.c_pm_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32**, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64 }

@ssp = common dso_local global %struct.TYPE_10__* null, align 8
@SSP_PMC_SET = common dso_local global i32 0, align 4
@PC = common dso_local global i32* null, align 8
@rPMC = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@SSP_PMC_HAVE_ADDR = common dso_local global i32 0, align 4
@rST = common dso_local global i32 0, align 4
@svp = common dso_local global %struct.TYPE_9__* null, align 8
@cart = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@CADDR = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@EL_SVP = common dso_local global i32 0, align 4
@last_iram = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32, i32, i16)* @pm_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @pm_io(i32 %0, i32 %1, i16 zeroext %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SSP_PMC_SET, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %3
  %23 = load i32*, i32** @PC, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 -1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 65295
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load i32*, i32** @PC, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 -1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 65520
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* @SSP_PMC_SET, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  store i16 0, i16* %4, align 2
  br label %319

41:                                               ; preds = %28, %22
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rPMC, i32 0, i32 0), align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %42, i32* %52, align 4
  %53 = load i32, i32* @SSP_PMC_SET, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  store i16 0, i16* %4, align 2
  br label %319

59:                                               ; preds = %3
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %66, %59
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @rST, align 4
  %78 = and i32 %77, 96
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %318

80:                                               ; preds = %76, %73
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** @svp, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i16*
  store i16* %84, i16** %8, align 8
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %211

87:                                               ; preds = %80
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32**, i32*** %89, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 65535
  store i32 %97, i32* %9, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32**, i32*** %99, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i64 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 16
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = and i32 %108, 17407
  %110 = icmp eq i32 %109, 24
  br i1 %110, label %111, label %143

111:                                              ; preds = %87
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @get_inc(i32 %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %10, align 4
  %115 = and i32 %114, 1024
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = load i16*, i16** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i16, i16* %118, i64 %120
  %122 = load i16, i16* %121, align 2
  %123 = load i16, i16* %7, align 2
  %124 = call i32 @overwite_write(i16 zeroext %122, i16 zeroext %123)
  br label %131

125:                                              ; preds = %111
  %126 = load i16, i16* %7, align 2
  %127 = load i16*, i16** %8, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i16, i16* %127, i64 %129
  store i16 %126, i16* %130, align 2
  br label %131

131:                                              ; preds = %125, %117
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i32**, i32*** %134, align 8
  %136 = getelementptr inbounds i32*, i32** %135, i64 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, %132
  store i32 %142, i32* %140, align 4
  br label %210

143:                                              ; preds = %87
  %144 = load i32, i32* %10, align 4
  %145 = and i32 %144, 64511
  %146 = icmp eq i32 %145, 16408
  br i1 %146, label %147, label %181

147:                                              ; preds = %143
  %148 = load i32, i32* %10, align 4
  %149 = and i32 %148, 1024
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %147
  %152 = load i16*, i16** %8, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i16, i16* %152, i64 %154
  %156 = load i16, i16* %155, align 2
  %157 = load i16, i16* %7, align 2
  %158 = call i32 @overwite_write(i16 zeroext %156, i16 zeroext %157)
  br label %165

159:                                              ; preds = %147
  %160 = load i16, i16* %7, align 2
  %161 = load i16*, i16** %8, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i16, i16* %161, i64 %163
  store i16 %160, i16* %164, align 2
  br label %165

165:                                              ; preds = %159, %151
  %166 = load i32, i32* %9, align 4
  %167 = and i32 %166, 1
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 31, i32 1
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i32**, i32*** %172, align 8
  %174 = getelementptr inbounds i32*, i32** %173, i64 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, %170
  store i32 %180, i32* %178, align 4
  br label %209

181:                                              ; preds = %143
  %182 = load i32, i32* %10, align 4
  %183 = and i32 %182, 18431
  %184 = icmp eq i32 %183, 28
  br i1 %184, label %185, label %208

185:                                              ; preds = %181
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @get_inc(i32 %186)
  store i32 %187, i32* %12, align 4
  %188 = load i16, i16* %7, align 2
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** @svp, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = inttoptr i64 %191 to i16*
  %193 = load i32, i32* %9, align 4
  %194 = and i32 %193, 1023
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i16, i16* %192, i64 %195
  store i16 %188, i16* %196, align 2
  %197 = load i32, i32* %12, align 4
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = load i32**, i32*** %199, align 8
  %201 = getelementptr inbounds i32*, i32** %200, i64 1
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, %197
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %185, %181
  br label %209

209:                                              ; preds = %208, %165
  br label %210

210:                                              ; preds = %209, %131
  br label %305

211:                                              ; preds = %80
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  %214 = load i32**, i32*** %213, align 8
  %215 = getelementptr inbounds i32*, i32** %214, i64 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %5, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, 65535
  store i32 %221, i32* %13, align 4
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = load i32**, i32*** %223, align 8
  %225 = getelementptr inbounds i32*, i32** %224, i64 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = ashr i32 %230, 16
  store i32 %231, i32* %14, align 4
  %232 = load i32, i32* %14, align 4
  %233 = and i32 %232, 65520
  %234 = icmp eq i32 %233, 2048
  br i1 %234, label %235, label %279

235:                                              ; preds = %211
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 1
  %238 = load i32**, i32*** %237, align 8
  %239 = getelementptr inbounds i32*, i32** %238, i64 0
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %5, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = and i32 %244, 65535
  %246 = icmp eq i32 %245, -1
  br i1 %246, label %247, label %258

247:                                              ; preds = %235
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  %250 = load i32**, i32*** %249, align 8
  %251 = getelementptr inbounds i32*, i32** %250, i64 0
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %5, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 65536
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %247, %235
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 1
  %261 = load i32**, i32*** %260, align 8
  %262 = getelementptr inbounds i32*, i32** %261, i64 0
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %5, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %266, align 4
  %269 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cart, i32 0, i32 0), align 8
  %270 = inttoptr i64 %269 to i16*
  %271 = load i32, i32* %13, align 4
  %272 = load i32, i32* %14, align 4
  %273 = and i32 %272, 15
  %274 = shl i32 %273, 16
  %275 = or i32 %271, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i16, i16* %270, i64 %276
  %278 = load i16, i16* %277, align 2
  store i16 %278, i16* %7, align 2
  br label %304

279:                                              ; preds = %211
  %280 = load i32, i32* %14, align 4
  %281 = and i32 %280, 18431
  %282 = icmp eq i32 %281, 24
  br i1 %282, label %283, label %302

283:                                              ; preds = %279
  %284 = load i32, i32* %14, align 4
  %285 = call i32 @get_inc(i32 %284)
  store i32 %285, i32* %15, align 4
  %286 = load i16*, i16** %8, align 8
  %287 = load i32, i32* %13, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i16, i16* %286, i64 %288
  %290 = load i16, i16* %289, align 2
  store i16 %290, i16* %7, align 2
  %291 = load i32, i32* %15, align 4
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 1
  %294 = load i32**, i32*** %293, align 8
  %295 = getelementptr inbounds i32*, i32** %294, i64 0
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %5, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = add nsw i32 %300, %291
  store i32 %301, i32* %299, align 4
  br label %303

302:                                              ; preds = %279
  store i16 0, i16* %7, align 2
  br label %303

303:                                              ; preds = %302, %283
  br label %304

304:                                              ; preds = %303, %258
  br label %305

305:                                              ; preds = %304, %210
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 1
  %308 = load i32**, i32*** %307, align 8
  %309 = load i32, i32* %6, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32*, i32** %308, i64 %310
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %5, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  store i32 %316, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rPMC, i32 0, i32 0), align 4
  %317 = load i16, i16* %7, align 2
  store i16 %317, i16* %4, align 2
  br label %319

318:                                              ; preds = %76
  store i16 -1, i16* %4, align 2
  br label %319

319:                                              ; preds = %318, %305, %41, %34
  %320 = load i16, i16* %4, align 2
  ret i16 %320
}

declare dso_local i32 @get_inc(i32) #1

declare dso_local i32 @overwite_write(i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
