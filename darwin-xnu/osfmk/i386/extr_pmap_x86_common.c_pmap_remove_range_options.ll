; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_pmap_remove_range_options.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_pmap_remove_range_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32 }

@PV_HASHED_ENTRY_NULL = common dso_local global %struct.TYPE_18__* null, align 8
@PMAP_OPTIONS_REMOVE = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_19__* null, align 8
@PTE_COMPRESSED_ALT = common dso_local global i32 0, align 4
@INTEL_PTE_COMPRESSED_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE_64 = common dso_local global i64 0, align 8
@PHYS_MODIFIED = common dso_local global i32 0, align 4
@PHYS_REFERENCED = common dso_local global i32 0, align 4
@pmap_phys_attributes = common dso_local global i32* null, align 8
@INTEL_EPT_REF = common dso_local global i32 0, align 4
@INTEL_EPT_MOD = common dso_local global i32 0, align 4
@task_ledgers = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@.str = private unnamed_addr constant [47 x i8] c"pmap=%p num_removed=%d stats.resident_count=%d\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"pmap=%p stats_external=%d stats.external=%d\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"pmap=%p stats_internal=%d stats.internal=%d\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"pmap=%p stats_reusable=%d stats.reusable=%d\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"pmap=%p stats_compressed=%lld, stats.compressed=%lld\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"pmap=%p num_unwired=%d stats.wired_count=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_remove_range_options(%struct.TYPE_19__* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** @PV_HASHED_ENTRY_NULL, align 8
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %12, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** @PV_HASHED_ENTRY_NULL, align 8
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %13, align 8
  store i32 0, i32* %15, align 4
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %37 = call i32 @is_ept_pmap(%struct.TYPE_19__* %36)
  store i32 %37, i32* %31, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %27, align 4
  %38 = load i32*, i32** %8, align 8
  store i32* %38, i32** %11, align 8
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %30, align 4
  br label %40

40:                                               ; preds = %114, %5
  %41 = load i32*, i32** %11, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ult i32* %41, %42
  br i1 %43, label %44, label %122

44:                                               ; preds = %40
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %33, align 4
  %47 = load i32, i32* %33, align 4
  %48 = call i64 @pte_to_pa(i32 %47)
  store i64 %48, i64* %29, align 8
  %49 = load i64, i64* %29, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %82

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @PMAP_OPTIONS_REMOVE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %51
  %57 = load i32, i32* %33, align 4
  %58 = call i64 @PTE_IS_COMPRESSED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %56
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** @kernel_pmap, align 8
  %63 = icmp ne %struct.TYPE_19__* %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* %23, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %23, align 4
  %68 = load i32, i32* %26, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %26, align 4
  %70 = load i32, i32* %33, align 4
  %71 = load i32, i32* @PTE_COMPRESSED_ALT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %60
  %75 = load i32, i32* %27, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %27, align 4
  br label %77

77:                                               ; preds = %74, %60
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* @INTEL_PTE_COMPRESSED_MASK, align 4
  %80 = call i32 @pmap_update_pte(i32* %78, i32 %79, i32 0)
  br label %81

81:                                               ; preds = %77, %56, %51
  br label %114

82:                                               ; preds = %44
  %83 = load i32, i32* %18, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %33, align 4
  %86 = call i64 @iswired(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %91

91:                                               ; preds = %88, %82
  %92 = load i64, i64* %29, align 8
  %93 = call i64 @pa_index(i64 %92)
  store i64 %93, i64* %28, align 8
  %94 = load i64, i64* %28, align 8
  %95 = call i32 @IS_MANAGED_PAGE(i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load i32*, i32** %11, align 8
  %99 = call i32 @pmap_store_pte(i32* %98, i32 0)
  br label %114

100:                                              ; preds = %91
  %101 = load i32, i32* %33, align 4
  %102 = load i32, i32* %31, align 4
  %103 = call i32 @PTE_VALID_MASK(i32 %102)
  %104 = and i32 %101, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* %19, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %19, align 4
  br label %109

109:                                              ; preds = %106, %100
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %31, align 4
  %112 = call i32 @PTE_VALID_MASK(i32 %111)
  %113 = call i32 @pmap_update_pte(i32* %110, i32 %112, i32 0)
  br label %114

114:                                              ; preds = %109, %97, %81
  %115 = load i32*, i32** %11, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %11, align 8
  %117 = load i64, i64* @PAGE_SIZE_64, align 8
  %118 = load i32, i32* %30, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %30, align 4
  br label %40

122:                                              ; preds = %40
  %123 = load i32, i32* %18, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %332

126:                                              ; preds = %122
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %30, align 4
  %130 = call i32 @PMAP_UPDATE_TLBS(%struct.TYPE_19__* %127, i32 %128, i32 %129)
  %131 = load i32*, i32** %8, align 8
  store i32* %131, i32** %11, align 8
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %30, align 4
  br label %133

133:                                              ; preds = %314, %126
  %134 = load i32*, i32** %11, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = icmp ult i32* %134, %135
  br i1 %136, label %137, label %322

137:                                              ; preds = %133
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @pte_to_pa(i32 %139)
  store i64 %140, i64* %29, align 8
  %141 = load i64, i64* %29, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %176

143:                                              ; preds = %137
  br label %144

144:                                              ; preds = %186, %143
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @PMAP_OPTIONS_REMOVE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %175

149:                                              ; preds = %144
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @PTE_IS_COMPRESSED(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %175

154:                                              ; preds = %149
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** @kernel_pmap, align 8
  %157 = icmp ne %struct.TYPE_19__* %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = load i32, i32* %23, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %23, align 4
  %162 = load i32, i32* %26, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %26, align 4
  %164 = load i32*, i32** %11, align 8
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @PTE_COMPRESSED_ALT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %154
  %170 = load i32, i32* %27, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %27, align 4
  br label %172

172:                                              ; preds = %169, %154
  %173 = load i32*, i32** %11, align 8
  %174 = call i32 @pmap_store_pte(i32* %173, i32 0)
  br label %175

175:                                              ; preds = %172, %149, %144
  br label %314

176:                                              ; preds = %137
  %177 = load i64, i64* %29, align 8
  %178 = call i64 @pa_index(i64 %177)
  store i64 %178, i64* %28, align 8
  %179 = load i64, i64* %28, align 8
  %180 = call i32 @LOCK_PVH(i64 %179)
  %181 = load i32*, i32** %11, align 8
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @pte_to_pa(i32 %182)
  store i64 %183, i64* %29, align 8
  %184 = load i64, i64* %29, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %176
  %187 = load i64, i64* %28, align 8
  %188 = call i32 @UNLOCK_PVH(i64 %187)
  br label %144

189:                                              ; preds = %176
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %191 = load i32, i32* %30, align 4
  %192 = load i32*, i32** %11, align 8
  %193 = call %struct.TYPE_18__* @pmap_pv_remove(%struct.TYPE_19__* %190, i32 %191, i64* %28, i32* %192, i32* %32)
  store %struct.TYPE_18__* %193, %struct.TYPE_18__** %14, align 8
  %194 = load i32, i32* %16, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %16, align 4
  %196 = load i64, i64* %28, align 8
  %197 = call i64 @IS_REUSABLE_PAGE(i64 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %189
  %200 = load i32, i32* %22, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %22, align 4
  br label %213

202:                                              ; preds = %189
  %203 = load i64, i64* %28, align 8
  %204 = call i32 @IS_INTERNAL_PAGE(i64 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load i32, i32* %21, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %21, align 4
  br label %212

209:                                              ; preds = %202
  %210 = load i32, i32* %20, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %20, align 4
  br label %212

212:                                              ; preds = %209, %206
  br label %213

213:                                              ; preds = %212, %199
  %214 = load i32, i32* %32, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %213
  %217 = load i64, i64* %28, align 8
  %218 = call i32 @IS_INTERNAL_PAGE(i64 %217)
  %219 = call i32 @assert(i32 %218)
  %220 = load i32, i32* %24, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %24, align 4
  %222 = load i32, i32* %25, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %25, align 4
  br label %258

224:                                              ; preds = %213
  %225 = load i64, i64* %28, align 8
  %226 = call i64 @IS_REUSABLE_PAGE(i64 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %224
  %229 = load i32, i32* %32, align 4
  %230 = icmp ne i32 %229, 0
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = call i32 @assert(i32 %232)
  %234 = load i64, i64* %28, align 8
  %235 = call i32 @IS_INTERNAL_PAGE(i64 %234)
  %236 = call i32 @assert(i32 %235)
  br label %257

237:                                              ; preds = %224
  %238 = load i64, i64* %28, align 8
  %239 = call i32 @IS_INTERNAL_PAGE(i64 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %255

241:                                              ; preds = %237
  %242 = load i32, i32* %32, align 4
  %243 = icmp ne i32 %242, 0
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i32
  %246 = call i32 @assert(i32 %245)
  %247 = load i64, i64* %28, align 8
  %248 = call i64 @IS_REUSABLE_PAGE(i64 %247)
  %249 = icmp ne i64 %248, 0
  %250 = xor i1 %249, true
  %251 = zext i1 %250 to i32
  %252 = call i32 @assert(i32 %251)
  %253 = load i32, i32* %24, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %24, align 4
  br label %256

255:                                              ; preds = %237
  br label %256

256:                                              ; preds = %255, %241
  br label %257

257:                                              ; preds = %256, %228
  br label %258

258:                                              ; preds = %257, %216
  %259 = load i32, i32* %31, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %273, label %261

261:                                              ; preds = %258
  %262 = load i32*, i32** %11, align 8
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @PHYS_MODIFIED, align 4
  %265 = load i32, i32* @PHYS_REFERENCED, align 4
  %266 = or i32 %264, %265
  %267 = and i32 %263, %266
  %268 = load i32*, i32** @pmap_phys_attributes, align 8
  %269 = load i64, i64* %28, align 8
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %267
  store i32 %272, i32* %270, align 4
  br label %290

273:                                              ; preds = %258
  %274 = load i32*, i32** %11, align 8
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @INTEL_EPT_REF, align 4
  %277 = load i32, i32* @INTEL_EPT_MOD, align 4
  %278 = or i32 %276, %277
  %279 = and i32 %275, %278
  %280 = call i32 @ept_refmod_to_physmap(i32 %279)
  %281 = load i32, i32* @PHYS_MODIFIED, align 4
  %282 = load i32, i32* @PHYS_REFERENCED, align 4
  %283 = or i32 %281, %282
  %284 = and i32 %280, %283
  %285 = load i32*, i32** @pmap_phys_attributes, align 8
  %286 = load i64, i64* %28, align 8
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %284
  store i32 %289, i32* %287, align 4
  br label %290

290:                                              ; preds = %273, %261
  %291 = load i32*, i32** %11, align 8
  %292 = call i32 @pmap_store_pte(i32* %291, i32 0)
  %293 = load i64, i64* %28, align 8
  %294 = call i32 @UNLOCK_PVH(i64 %293)
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** @PV_HASHED_ENTRY_NULL, align 8
  %297 = icmp ne %struct.TYPE_18__* %295, %296
  br i1 %297, label %298, label %313

298:                                              ; preds = %290
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %300 = ptrtoint %struct.TYPE_18__* %299 to i64
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 0
  store i64 %300, i64* %303, align 8
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %304, %struct.TYPE_18__** %13, align 8
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** @PV_HASHED_ENTRY_NULL, align 8
  %307 = icmp eq %struct.TYPE_18__* %305, %306
  br i1 %307, label %308, label %310

308:                                              ; preds = %298
  %309 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %309, %struct.TYPE_18__** %12, align 8
  br label %310

310:                                              ; preds = %308, %298
  %311 = load i32, i32* %15, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %15, align 4
  br label %313

313:                                              ; preds = %310, %290
  br label %314

314:                                              ; preds = %313, %175
  %315 = load i32*, i32** %11, align 8
  %316 = getelementptr inbounds i32, i32* %315, i32 1
  store i32* %316, i32** %11, align 8
  %317 = load i64, i64* @PAGE_SIZE_64, align 8
  %318 = load i32, i32* %30, align 4
  %319 = sext i32 %318 to i64
  %320 = add nsw i64 %319, %317
  %321 = trunc i64 %320 to i32
  store i32 %321, i32* %30, align 4
  br label %133

322:                                              ; preds = %133
  %323 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** @PV_HASHED_ENTRY_NULL, align 8
  %325 = icmp ne %struct.TYPE_18__* %323, %324
  br i1 %325, label %326, label %331

326:                                              ; preds = %322
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %329 = load i32, i32* %15, align 4
  %330 = call i32 @PV_HASHED_FREE_LIST(%struct.TYPE_18__* %327, %struct.TYPE_18__* %328, i32 %329)
  br label %331

331:                                              ; preds = %326, %322
  br label %332

332:                                              ; preds = %331, %125
  %333 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %334 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @task_ledgers, i32 0, i32 6), align 4
  %335 = load i32, i32* %16, align 4
  %336 = call i32 @machine_ptob(i32 %335)
  %337 = call i32 @pmap_ledger_debit(%struct.TYPE_19__* %333, i32 %334, i32 %336)
  %338 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %16, align 4
  %343 = icmp sge i32 %341, %342
  %344 = zext i1 %343 to i32
  %345 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %346 = load i32, i32* %16, align 4
  %347 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @PMAP_STATS_ASSERTF(i32 %350)
  %352 = load i32, i32* %16, align 4
  %353 = sub nsw i32 0, %352
  %354 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %355, i32 0, i32 0
  %357 = call i32 @OSAddAtomic(i32 %353, i32* %356)
  %358 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %359 = load %struct.TYPE_19__*, %struct.TYPE_19__** @kernel_pmap, align 8
  %360 = icmp ne %struct.TYPE_19__* %358, %359
  br i1 %360, label %361, label %505

361:                                              ; preds = %332
  %362 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* %20, align 4
  %367 = icmp sge i32 %365, %366
  %368 = zext i1 %367 to i32
  %369 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %370 = load i32, i32* %20, align 4
  %371 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @PMAP_STATS_ASSERTF(i32 %374)
  %376 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* %21, align 4
  %381 = icmp sge i32 %379, %380
  %382 = zext i1 %381 to i32
  %383 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %384 = load i32, i32* %21, align 4
  %385 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %386 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 4
  %389 = call i32 @PMAP_STATS_ASSERTF(i32 %388)
  %390 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* %22, align 4
  %395 = icmp sge i32 %393, %394
  %396 = zext i1 %395 to i32
  %397 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %398 = load i32, i32* %22, align 4
  %399 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @PMAP_STATS_ASSERTF(i32 %402)
  %404 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %405, i32 0, i32 4
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* %23, align 4
  %409 = icmp sge i32 %407, %408
  %410 = zext i1 %409 to i32
  %411 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %412 = load i32, i32* %23, align 4
  %413 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %414, i32 0, i32 4
  %416 = load i32, i32* %415, align 4
  %417 = call i32 @PMAP_STATS_ASSERTF(i32 %416)
  %418 = load i32, i32* %20, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %427

420:                                              ; preds = %361
  %421 = load i32, i32* %20, align 4
  %422 = sub nsw i32 0, %421
  %423 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %424, i32 0, i32 1
  %426 = call i32 @OSAddAtomic(i32 %422, i32* %425)
  br label %427

427:                                              ; preds = %420, %361
  %428 = load i32, i32* %21, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %437

430:                                              ; preds = %427
  %431 = load i32, i32* %21, align 4
  %432 = sub nsw i32 0, %431
  %433 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %434, i32 0, i32 2
  %436 = call i32 @OSAddAtomic(i32 %432, i32* %435)
  br label %437

437:                                              ; preds = %430, %427
  %438 = load i32, i32* %22, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %447

440:                                              ; preds = %437
  %441 = load i32, i32* %22, align 4
  %442 = sub nsw i32 0, %441
  %443 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %444 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %444, i32 0, i32 3
  %446 = call i32 @OSAddAtomic(i32 %442, i32* %445)
  br label %447

447:                                              ; preds = %440, %437
  %448 = load i32, i32* %23, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %457

450:                                              ; preds = %447
  %451 = load i32, i32* %23, align 4
  %452 = sub nsw i32 0, %451
  %453 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %454 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %454, i32 0, i32 4
  %456 = call i32 @OSAddAtomic64(i32 %452, i32* %455)
  br label %457

457:                                              ; preds = %450, %447
  %458 = load i32, i32* %24, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %466

460:                                              ; preds = %457
  %461 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %462 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @task_ledgers, i32 0, i32 5), align 4
  %463 = load i32, i32* %24, align 4
  %464 = call i32 @machine_ptob(i32 %463)
  %465 = call i32 @pmap_ledger_debit(%struct.TYPE_19__* %461, i32 %462, i32 %464)
  br label %466

466:                                              ; preds = %460, %457
  %467 = load i32, i32* %26, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %475

469:                                              ; preds = %466
  %470 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %471 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @task_ledgers, i32 0, i32 4), align 4
  %472 = load i32, i32* %26, align 4
  %473 = call i32 @machine_ptob(i32 %472)
  %474 = call i32 @pmap_ledger_debit(%struct.TYPE_19__* %470, i32 %471, i32 %473)
  br label %475

475:                                              ; preds = %469, %466
  %476 = load i32, i32* %25, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %484

478:                                              ; preds = %475
  %479 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %480 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @task_ledgers, i32 0, i32 3), align 4
  %481 = load i32, i32* %25, align 4
  %482 = call i32 @machine_ptob(i32 %481)
  %483 = call i32 @pmap_ledger_debit(%struct.TYPE_19__* %479, i32 %480, i32 %482)
  br label %484

484:                                              ; preds = %478, %475
  %485 = load i32, i32* %27, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %493

487:                                              ; preds = %484
  %488 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %489 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @task_ledgers, i32 0, i32 2), align 4
  %490 = load i32, i32* %27, align 4
  %491 = call i32 @machine_ptob(i32 %490)
  %492 = call i32 @pmap_ledger_debit(%struct.TYPE_19__* %488, i32 %489, i32 %491)
  br label %493

493:                                              ; preds = %487, %484
  %494 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %495 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @task_ledgers, i32 0, i32 1), align 4
  %496 = load i32, i32* %24, align 4
  %497 = load i32, i32* %25, align 4
  %498 = sub nsw i32 %496, %497
  %499 = load i32, i32* %26, align 4
  %500 = load i32, i32* %27, align 4
  %501 = sub nsw i32 %499, %500
  %502 = add nsw i32 %498, %501
  %503 = call i32 @machine_ptob(i32 %502)
  %504 = call i32 @pmap_ledger_debit(%struct.TYPE_19__* %494, i32 %495, i32 %503)
  br label %505

505:                                              ; preds = %493, %332
  %506 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %507 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %507, i32 0, i32 5
  %509 = load i32, i32* %508, align 4
  %510 = load i32, i32* %17, align 4
  %511 = icmp sge i32 %509, %510
  %512 = zext i1 %511 to i32
  %513 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %514 = load i32, i32* %17, align 4
  %515 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %516 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %516, i32 0, i32 5
  %518 = load i32, i32* %517, align 4
  %519 = call i32 @PMAP_STATS_ASSERTF(i32 %518)
  %520 = load i32, i32* %17, align 4
  %521 = sub nsw i32 0, %520
  %522 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %523 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %522, i32 0, i32 0
  %524 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %523, i32 0, i32 5
  %525 = call i32 @OSAddAtomic(i32 %521, i32* %524)
  %526 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %527 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @task_ledgers, i32 0, i32 0), align 4
  %528 = load i32, i32* %17, align 4
  %529 = call i32 @machine_ptob(i32 %528)
  %530 = call i32 @pmap_ledger_debit(%struct.TYPE_19__* %526, i32 %527, i32 %529)
  ret void
}

declare dso_local i32 @is_ept_pmap(%struct.TYPE_19__*) #1

declare dso_local i64 @pte_to_pa(i32) #1

declare dso_local i64 @PTE_IS_COMPRESSED(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pmap_update_pte(i32*, i32, i32) #1

declare dso_local i64 @iswired(i32) #1

declare dso_local i64 @pa_index(i64) #1

declare dso_local i32 @IS_MANAGED_PAGE(i64) #1

declare dso_local i32 @pmap_store_pte(i32*, i32) #1

declare dso_local i32 @PTE_VALID_MASK(i32) #1

declare dso_local i32 @PMAP_UPDATE_TLBS(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @LOCK_PVH(i64) #1

declare dso_local i32 @UNLOCK_PVH(i64) #1

declare dso_local %struct.TYPE_18__* @pmap_pv_remove(%struct.TYPE_19__*, i32, i64*, i32*, i32*) #1

declare dso_local i64 @IS_REUSABLE_PAGE(i64) #1

declare dso_local i32 @IS_INTERNAL_PAGE(i64) #1

declare dso_local i32 @ept_refmod_to_physmap(i32) #1

declare dso_local i32 @PV_HASHED_FREE_LIST(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @pmap_ledger_debit(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @machine_ptob(i32) #1

declare dso_local i32 @PMAP_STATS_ASSERTF(i32) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
