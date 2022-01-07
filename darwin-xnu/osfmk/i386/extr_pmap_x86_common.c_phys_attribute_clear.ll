; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_phys_attribute_clear.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_phys_attribute_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, i64 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_19__* }

@FALSE = common dso_local global i64 0, align 8
@PHYS_MODIFIED = common dso_local global i32 0, align 4
@PMAP_OPTIONS_NOFLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"phys_attribute_clear(0x%x,0x%x,0x%x,%p): should not clear 'modified' without flushing TLBs\0A\00", align 1
@PHYS_REFERENCED = common dso_local global i32 0, align 4
@vm_page_fictitious_addr = common dso_local global i64 0, align 8
@vm_page_guard_addr = common dso_local global i64 0, align 8
@PMAP__ATTRIBUTE_CLEAR = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@PMAP_NULL = common dso_local global i64 0, align 8
@pmap_ept_support_ad = common dso_local global i32 0, align 4
@INTEL_EPT_MOD = common dso_local global i8 0, align 1
@TRUE = common dso_local global i64 0, align 8
@PMAP_OPTIONS_CLEAR_WRITE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PMAP_OPTIONS_CLEAR_REUSABLE = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_19__* null, align 8
@task_ledgers = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@PMAP_OPTIONS_SET_REUSABLE = common dso_local global i32 0, align 4
@pmap_phys_attributes = common dso_local global i8* null, align 8
@PHYS_REUSABLE = common dso_local global i8 0, align 1
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phys_attribute_clear(i64 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8, align 1
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i8* null, i8** %11, align 8
  store i8 0, i8* %14, align 1
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %20, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PHYS_MODIFIED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @PMAP_OPTIONS_NOFLUSH, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @panic(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %38, i32 %39, i8* %40)
  br label %42

42:                                               ; preds = %36, %33, %28, %4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @PHYS_REFERENCED, align 4
  %45 = load i32, i32* @PHYS_MODIFIED, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %43, %47
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @PHYS_MODIFIED, align 4
  %54 = load i32, i32* @PHYS_REFERENCED, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = call i64 @physmap_refmod_to_ept(i32 %56)
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %19, align 4
  %59 = call i32 (...) @pmap_intr_assert()
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @vm_page_fictitious_addr, align 8
  %62 = icmp ne i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @vm_page_guard_addr, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %42
  br label %445

69:                                               ; preds = %42
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @ppn_to_pai(i64 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @IS_MANAGED_PAGE(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  br label %445

76:                                               ; preds = %69
  %77 = load i32, i32* @PMAP__ATTRIBUTE_CLEAR, align 4
  %78 = call i32 @PMAP_CODE(i32 %77)
  %79 = load i32, i32* @DBG_FUNC_START, align 4
  %80 = or i32 %78, %79
  %81 = load i64, i64* %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (i32, ...) @PMAP_TRACE(i32 %80, i64 %81, i32 %82)
  %84 = load i32, i32* %12, align 4
  %85 = call %struct.TYPE_17__* @pai_to_pvh(i32 %84)
  store %struct.TYPE_17__* %85, %struct.TYPE_17__** %9, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @LOCK_PVH(i32 %86)
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PMAP_NULL, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %375

93:                                               ; preds = %76
  %94 = load i32, i32* %12, align 4
  %95 = call i64 @IS_INTERNAL_PAGE(i32 %94)
  store i64 %95, i64* %15, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i64 @IS_REUSABLE_PAGE(i32 %96)
  store i64 %97, i64* %16, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %99 = bitcast %struct.TYPE_17__* %98 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %99, %struct.TYPE_18__** %10, align 8
  br label %100

100:                                              ; preds = %369, %93
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  store %struct.TYPE_19__* %103, %struct.TYPE_19__** %13, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %105 = call i64 @is_ept_pmap(%struct.TYPE_19__* %104)
  store i64 %105, i64* %18, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %108 = call i64 @IS_ALTACCT_PAGE(i32 %106, %struct.TYPE_18__* %107)
  store i64 %108, i64* %17, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %110 = call i64 @PVE_VA(%struct.TYPE_18__* %109)
  store i64 %110, i64* %21, align 8
  store i8 0, i8* %22, align 1
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %174

113:                                              ; preds = %100
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %115 = load i64, i64* %21, align 8
  %116 = call i8* @pmap_pte(%struct.TYPE_19__* %114, i64 %115)
  store i8* %116, i8** %11, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = load i64, i64* %18, align 8
  %121 = call signext i8 @PTE_REF(i64 %120)
  %122 = sext i8 %121 to i32
  %123 = load i64, i64* %18, align 8
  %124 = call signext i8 @PTE_MOD(i64 %123)
  %125 = sext i8 %124 to i32
  %126 = or i32 %122, %125
  %127 = and i32 %119, %126
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %22, align 1
  %129 = load i64, i64* %18, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %113
  %132 = load i8, i8* %22, align 1
  %133 = sext i8 %132 to i32
  %134 = load i8, i8* %14, align 1
  %135 = sext i8 %134 to i32
  %136 = or i32 %135, %133
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %14, align 1
  br label %158

138:                                              ; preds = %113
  %139 = load i8, i8* %22, align 1
  %140 = call signext i8 @ept_refmod_to_physmap(i8 signext %139)
  %141 = sext i8 %140 to i32
  %142 = load i8, i8* %14, align 1
  %143 = sext i8 %142 to i32
  %144 = or i32 %143, %141
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %14, align 1
  %146 = load i32, i32* @pmap_ept_support_ad, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %138
  %149 = load i8, i8* %22, align 1
  %150 = sext i8 %149 to i32
  %151 = load i8, i8* @INTEL_EPT_MOD, align 1
  %152 = sext i8 %151 to i32
  %153 = and i32 %150, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i64, i64* @TRUE, align 8
  store i64 %156, i64* %20, align 8
  br label %157

157:                                              ; preds = %155, %148, %138
  br label %158

158:                                              ; preds = %157, %131
  %159 = load i64, i64* %18, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %6, align 4
  %163 = load i8, i8* %22, align 1
  %164 = sext i8 %163 to i32
  %165 = and i32 %164, %162
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %22, align 1
  br label %173

167:                                              ; preds = %158
  %168 = load i32, i32* %19, align 4
  %169 = load i8, i8* %22, align 1
  %170 = sext i8 %169 to i32
  %171 = and i32 %170, %168
  %172 = trunc i32 %171 to i8
  store i8 %172, i8* %22, align 1
  br label %173

173:                                              ; preds = %167, %161
  br label %174

174:                                              ; preds = %173, %100
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @PMAP_OPTIONS_CLEAR_WRITE, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %174
  %180 = load i64, i64* %18, align 8
  %181 = call signext i8 @PTE_WRITE(i64 %180)
  %182 = sext i8 %181 to i32
  %183 = load i8, i8* %22, align 1
  %184 = sext i8 %183 to i32
  %185 = or i32 %184, %182
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %22, align 1
  br label %187

187:                                              ; preds = %179, %174
  %188 = load i8, i8* %22, align 1
  %189 = icmp ne i8 %188, 0
  br i1 %189, label %190, label %220

190:                                              ; preds = %187
  %191 = load i8*, i8** %11, align 8
  %192 = load i8, i8* %22, align 1
  %193 = call i32 @pmap_update_pte(i8* %191, i8 signext %192, i32 0)
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* @PMAP_OPTIONS_NOFLUSH, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %205, label %198

198:                                              ; preds = %190
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %200 = load i64, i64* %21, align 8
  %201 = load i64, i64* %21, align 8
  %202 = load i64, i64* @PAGE_SIZE, align 8
  %203 = add nsw i64 %201, %202
  %204 = call i32 @PMAP_UPDATE_TLBS(%struct.TYPE_19__* %199, i64 %200, i64 %203)
  br label %219

205:                                              ; preds = %190
  %206 = load i8*, i8** %8, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %217

208:                                              ; preds = %205
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %210 = load i64, i64* %21, align 8
  %211 = load i64, i64* %21, align 8
  %212 = load i64, i64* @PAGE_SIZE, align 8
  %213 = add nsw i64 %211, %212
  %214 = load i8*, i8** %8, align 8
  %215 = bitcast i8* %214 to i32*
  %216 = call i32 @PMAP_UPDATE_TLBS_DELAYED(%struct.TYPE_19__* %209, i64 %210, i64 %213, i32* %215)
  br label %218

217:                                              ; preds = %205
  br label %218

218:                                              ; preds = %217, %208
  br label %219

219:                                              ; preds = %218, %198
  br label %220

220:                                              ; preds = %219, %187
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* @PMAP_OPTIONS_CLEAR_REUSABLE, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %294

225:                                              ; preds = %220
  %226 = load i64, i64* %16, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %294

228:                                              ; preds = %225
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** @kernel_pmap, align 8
  %231 = icmp ne %struct.TYPE_19__* %229, %230
  br i1 %231, label %232, label %294

232:                                              ; preds = %228
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp sgt i64 %236, 0
  %238 = zext i1 %237 to i32
  %239 = call i32 @assert(i32 %238)
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 0
  %243 = call i32 @OSAddAtomic(i32 -1, i64* %242)
  %244 = load i64, i64* %15, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %276

246:                                              ; preds = %232
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 1
  %250 = call i32 @OSAddAtomic(i32 1, i64* %249)
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = call i32 @PMAP_STATS_PEAK(i64 %254)
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = icmp sgt i64 %259, 0
  %261 = zext i1 %260 to i32
  %262 = call i32 @assert(i32 %261)
  %263 = load i64, i64* %17, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %246
  br label %275

266:                                              ; preds = %246
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %268 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @task_ledgers, i32 0, i32 1), align 4
  %269 = load i64, i64* @PAGE_SIZE, align 8
  %270 = call i32 @pmap_ledger_credit(%struct.TYPE_19__* %267, i32 %268, i64 %269)
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %272 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @task_ledgers, i32 0, i32 0), align 4
  %273 = load i64, i64* @PAGE_SIZE, align 8
  %274 = call i32 @pmap_ledger_credit(%struct.TYPE_19__* %271, i32 %272, i64 %273)
  br label %275

275:                                              ; preds = %266, %265
  br label %293

276:                                              ; preds = %232
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 2
  %280 = call i32 @OSAddAtomic(i32 1, i64* %279)
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = call i32 @PMAP_STATS_PEAK(i64 %284)
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = icmp sgt i64 %289, 0
  %291 = zext i1 %290 to i32
  %292 = call i32 @assert(i32 %291)
  br label %293

293:                                              ; preds = %276, %275
  br label %364

294:                                              ; preds = %228, %225, %220
  %295 = load i32, i32* %7, align 4
  %296 = load i32, i32* @PMAP_OPTIONS_SET_REUSABLE, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %363

299:                                              ; preds = %294
  %300 = load i64, i64* %16, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %363, label %302

302:                                              ; preds = %299
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** @kernel_pmap, align 8
  %305 = icmp ne %struct.TYPE_19__* %303, %304
  br i1 %305, label %306, label %363

306:                                              ; preds = %302
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 0
  %310 = call i32 @OSAddAtomic(i32 1, i64* %309)
  %311 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %312 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @PMAP_STATS_PEAK(i64 %314)
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = icmp sgt i64 %319, 0
  %321 = zext i1 %320 to i32
  %322 = call i32 @assert(i32 %321)
  %323 = load i64, i64* %15, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %350

325:                                              ; preds = %306
  %326 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %327 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = icmp sgt i64 %329, 0
  %331 = zext i1 %330 to i32
  %332 = call i32 @assert(i32 %331)
  %333 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %334 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 1
  %336 = call i32 @OSAddAtomic(i32 -1, i64* %335)
  %337 = load i64, i64* %17, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %325
  br label %349

340:                                              ; preds = %325
  %341 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %342 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @task_ledgers, i32 0, i32 1), align 4
  %343 = load i64, i64* @PAGE_SIZE, align 8
  %344 = call i32 @pmap_ledger_debit(%struct.TYPE_19__* %341, i32 %342, i64 %343)
  %345 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %346 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @task_ledgers, i32 0, i32 0), align 4
  %347 = load i64, i64* @PAGE_SIZE, align 8
  %348 = call i32 @pmap_ledger_debit(%struct.TYPE_19__* %345, i32 %346, i64 %347)
  br label %349

349:                                              ; preds = %340, %339
  br label %362

350:                                              ; preds = %306
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %352 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = icmp sgt i64 %354, 0
  %356 = zext i1 %355 to i32
  %357 = call i32 @assert(i32 %356)
  %358 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %359 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 2
  %361 = call i32 @OSAddAtomic(i32 -1, i64* %360)
  br label %362

362:                                              ; preds = %350, %349
  br label %363

363:                                              ; preds = %362, %302, %299, %294
  br label %364

364:                                              ; preds = %363, %293
  %365 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %366 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %365, i32 0, i32 0
  %367 = call i64 @queue_next(i32* %366)
  %368 = inttoptr i64 %367 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %368, %struct.TYPE_18__** %10, align 8
  br label %369

369:                                              ; preds = %364
  %370 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %371 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %372 = bitcast %struct.TYPE_17__* %371 to %struct.TYPE_18__*
  %373 = icmp ne %struct.TYPE_18__* %370, %372
  br i1 %373, label %100, label %374

374:                                              ; preds = %369
  br label %375

375:                                              ; preds = %374, %76
  %376 = load i8, i8* %14, align 1
  %377 = sext i8 %376 to i32
  %378 = load i8*, i8** @pmap_phys_attributes, align 8
  %379 = load i32, i32* %12, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8, i8* %378, i64 %380
  %382 = load i8, i8* %381, align 1
  %383 = sext i8 %382 to i32
  %384 = or i32 %383, %377
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %381, align 1
  %386 = load i64, i64* %20, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %393

388:                                              ; preds = %375
  %389 = load i32, i32* @PHYS_MODIFIED, align 4
  %390 = xor i32 %389, -1
  %391 = load i32, i32* %6, align 4
  %392 = and i32 %391, %390
  store i32 %392, i32* %6, align 4
  br label %393

393:                                              ; preds = %388, %375
  %394 = load i32, i32* %6, align 4
  %395 = xor i32 %394, -1
  %396 = load i8*, i8** @pmap_phys_attributes, align 8
  %397 = load i32, i32* %12, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, i8* %396, i64 %398
  %400 = load i8, i8* %399, align 1
  %401 = sext i8 %400 to i32
  %402 = and i32 %401, %395
  %403 = trunc i32 %402 to i8
  store i8 %403, i8* %399, align 1
  %404 = load i32, i32* %7, align 4
  %405 = load i32, i32* @PMAP_OPTIONS_CLEAR_REUSABLE, align 4
  %406 = and i32 %404, %405
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %420

408:                                              ; preds = %393
  %409 = load i8, i8* @PHYS_REUSABLE, align 1
  %410 = sext i8 %409 to i32
  %411 = xor i32 %410, -1
  %412 = load i8*, i8** @pmap_phys_attributes, align 8
  %413 = load i32, i32* %12, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8, i8* %412, i64 %414
  %416 = load i8, i8* %415, align 1
  %417 = sext i8 %416 to i32
  %418 = and i32 %417, %411
  %419 = trunc i32 %418 to i8
  store i8 %419, i8* %415, align 1
  br label %437

420:                                              ; preds = %393
  %421 = load i32, i32* %7, align 4
  %422 = load i32, i32* @PMAP_OPTIONS_SET_REUSABLE, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %436

425:                                              ; preds = %420
  %426 = load i8, i8* @PHYS_REUSABLE, align 1
  %427 = sext i8 %426 to i32
  %428 = load i8*, i8** @pmap_phys_attributes, align 8
  %429 = load i32, i32* %12, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i8, i8* %428, i64 %430
  %432 = load i8, i8* %431, align 1
  %433 = sext i8 %432 to i32
  %434 = or i32 %433, %427
  %435 = trunc i32 %434 to i8
  store i8 %435, i8* %431, align 1
  br label %436

436:                                              ; preds = %425, %420
  br label %437

437:                                              ; preds = %436, %408
  %438 = load i32, i32* %12, align 4
  %439 = call i32 @UNLOCK_PVH(i32 %438)
  %440 = load i32, i32* @PMAP__ATTRIBUTE_CLEAR, align 4
  %441 = call i32 @PMAP_CODE(i32 %440)
  %442 = load i32, i32* @DBG_FUNC_END, align 4
  %443 = or i32 %441, %442
  %444 = call i32 (i32, ...) @PMAP_TRACE(i32 %443)
  br label %445

445:                                              ; preds = %437, %75, %68
  ret void
}

declare dso_local i32 @panic(i8*, i64, i32, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @physmap_refmod_to_ept(i32) #1

declare dso_local i32 @pmap_intr_assert(...) #1

declare dso_local i32 @ppn_to_pai(i64) #1

declare dso_local i32 @IS_MANAGED_PAGE(i32) #1

declare dso_local i32 @PMAP_TRACE(i32, ...) #1

declare dso_local i32 @PMAP_CODE(i32) #1

declare dso_local %struct.TYPE_17__* @pai_to_pvh(i32) #1

declare dso_local i32 @LOCK_PVH(i32) #1

declare dso_local i64 @IS_INTERNAL_PAGE(i32) #1

declare dso_local i64 @IS_REUSABLE_PAGE(i32) #1

declare dso_local i64 @is_ept_pmap(%struct.TYPE_19__*) #1

declare dso_local i64 @IS_ALTACCT_PAGE(i32, %struct.TYPE_18__*) #1

declare dso_local i64 @PVE_VA(%struct.TYPE_18__*) #1

declare dso_local i8* @pmap_pte(%struct.TYPE_19__*, i64) #1

declare dso_local signext i8 @PTE_REF(i64) #1

declare dso_local signext i8 @PTE_MOD(i64) #1

declare dso_local signext i8 @ept_refmod_to_physmap(i8 signext) #1

declare dso_local signext i8 @PTE_WRITE(i64) #1

declare dso_local i32 @pmap_update_pte(i8*, i8 signext, i32) #1

declare dso_local i32 @PMAP_UPDATE_TLBS(%struct.TYPE_19__*, i64, i64) #1

declare dso_local i32 @PMAP_UPDATE_TLBS_DELAYED(%struct.TYPE_19__*, i64, i64, i32*) #1

declare dso_local i32 @OSAddAtomic(i32, i64*) #1

declare dso_local i32 @PMAP_STATS_PEAK(i64) #1

declare dso_local i32 @pmap_ledger_credit(%struct.TYPE_19__*, i32, i64) #1

declare dso_local i32 @pmap_ledger_debit(%struct.TYPE_19__*, i32, i64) #1

declare dso_local i64 @queue_next(i32*) #1

declare dso_local i32 @UNLOCK_PVH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
