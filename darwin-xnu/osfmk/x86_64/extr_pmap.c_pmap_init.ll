; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32*, i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_10__ = type { i64, i64, i64 }

@kpml4obj_object_store = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_11__* null, align 8
@NPML4PGS = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@kpdptobj_object_store = common dso_local global i32 0, align 4
@NPDPTPGS = common dso_local global i64 0, align 8
@kptobj_object_store = common dso_local global i32 0, align 4
@NPDEPGS = common dso_local global i64 0, align 8
@avail_end = common dso_local global i32 0, align 4
@npvhashbuckets = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@KMA_KOBJECT = common dso_local global i32 0, align 4
@KMA_PERMANENT = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_PMAP = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"pmap_init\00", align 1
@pv_head_table = common dso_local global %struct.TYPE_9__* null, align 8
@pv_hash_table = common dso_local global i32* null, align 8
@pv_lock_table = common dso_local global i8* null, align 8
@pv_hash_lock_table = common dso_local global i8* null, align 8
@pmap_phys_attributes = common dso_local global i8* null, align 8
@pmap_memory_regions = common dso_local global %struct.TYPE_10__* null, align 8
@pmap_memory_region_count = common dso_local global i32 0, align 4
@kEfiConventionalMemory = common dso_local global i64 0, align 8
@PHYS_MANAGED = common dso_local global i8 0, align 1
@last_managed_page = common dso_local global i64 0, align 8
@lowest_hi = common dso_local global i64 0, align 8
@highest_hi = common dso_local global i64 0, align 8
@PHYS_NOENCRYPT = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pmap\00", align 1
@pmap_zone = common dso_local global i32 0, align 4
@Z_NOENCRYPT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@task_max = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"pagetable anchors\00", align 1
@pmap_anchor_zone = common dso_local global i32 0, align 4
@Z_ALIGNMENT_REQUIRED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"pagetable user anchors\00", align 1
@pmap_uanchor_zone = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"pv_list\00", align 1
@pv_hashed_list_zone = common dso_local global i32 0, align 4
@Z_GZALLOC_EXEMPT = common dso_local global i32 0, align 4
@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@VM_MIN_KERNEL_PAGE = common dso_local global i64 0, align 8
@avail_start = common dso_local global i32 0, align 4
@pmap_initialized = common dso_local global i64 0, align 8
@MAX_PREEMPTION_LATENCY_NS = common dso_local global i64 0, align 8
@tscFCvtn2t = common dso_local global i32 0, align 4
@max_preemption_latency_tsc = common dso_local global i32 0, align 4
@KERNEL_BASEMENT = common dso_local global i32 0, align 4
@PMAP_EXPAND_OPTIONS_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@HV_VMX_EPTP_ENABLE_AD_FLAGS = common dso_local global i32 0, align 4
@HV_VMX_EPTP_MEMORY_TYPE_WB = common dso_local global i32 0, align 4
@MSR_IA32_VMX_EPT_VPID_CAP = common dso_local global i32 0, align 4
@MSR_IA32_VMX_EPT_VPID_CAP_AD_SHIFT = common dso_local global i32 0, align 4
@npvhashmask = common dso_local global i64 0, align 8
@pmap_ept_support_ad = common dso_local global i32 0, align 4
@pmap_eptp_flags = common dso_local global i32 0, align 4
@pmap_npages = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kernel_pmap, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  store i32* @kpml4obj_object_store, i32** %13, align 8
  %14 = load i64, i64* @NPML4PGS, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = mul nsw i32 %15, %16
  %18 = call i32 @_vm_object_allocate(i32 %17, i32* @kpml4obj_object_store)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kernel_pmap, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  store i32* @kpdptobj_object_store, i32** %20, align 8
  %21 = load i64, i64* @NPDPTPGS, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = mul nsw i32 %22, %23
  %25 = call i32 @_vm_object_allocate(i32 %24, i32* @kpdptobj_object_store)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kernel_pmap, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32* @kptobj_object_store, i32** %27, align 8
  %28 = load i64, i64* @NPDEPGS, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = mul nsw i32 %29, %30
  %32 = call i32 @_vm_object_allocate(i32 %31, i32* @kptobj_object_store)
  %33 = load i32, i32* @avail_end, align 4
  %34 = call i64 @i386_btop(i32 %33)
  store i64 %34, i64* %1, align 8
  %35 = load i64, i64* %1, align 8
  %36 = mul i64 4, %35
  %37 = load i32, i32* @npvhashbuckets, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 8, %38
  %40 = add i64 %36, %39
  %41 = load i64, i64* %1, align 8
  %42 = call i32 @pv_lock_table_size(i64 %41)
  %43 = sext i32 %42 to i64
  %44 = add i64 %40, %43
  %45 = load i32, i32* @npvhashbuckets, align 4
  %46 = call i32 @pv_hash_lock_table_size(i32 %45)
  %47 = sext i32 %46 to i64
  %48 = add i64 %44, %47
  %49 = load i64, i64* %1, align 8
  %50 = add i64 %48, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @round_page(i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* @kernel_map, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @KMA_KOBJECT, align 4
  %57 = load i32, i32* @KMA_PERMANENT, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @VM_KERN_MEMORY_PMAP, align 4
  %60 = call i64 @kernel_memory_allocate(i32 %54, i64* %2, i32 %55, i32 0, i32 %58, i32 %59)
  %61 = load i64, i64* @KERN_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %0
  %64 = call i32 @panic(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %0
  %66 = load i64, i64* %2, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @memset(i8* %67, i32 0, i32 %68)
  %70 = load i64, i64* %2, align 8
  store i64 %70, i64* %5, align 8
  %71 = load i32, i32* %3, align 4
  store i32 %71, i32* %4, align 4
  %72 = load i64, i64* %2, align 8
  %73 = inttoptr i64 %72 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** @pv_head_table, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pv_head_table, align 8
  %75 = load i64, i64* %1, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %75
  %77 = ptrtoint %struct.TYPE_9__* %76 to i64
  store i64 %77, i64* %2, align 8
  %78 = load i64, i64* %2, align 8
  %79 = inttoptr i64 %78 to i32*
  store i32* %79, i32** @pv_hash_table, align 8
  %80 = load i32*, i32** @pv_hash_table, align 8
  %81 = load i32, i32* @npvhashbuckets, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = ptrtoint i32* %83 to i64
  store i64 %84, i64* %2, align 8
  %85 = load i64, i64* %2, align 8
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** @pv_lock_table, align 8
  %87 = load i8*, i8** @pv_lock_table, align 8
  %88 = load i64, i64* %1, align 8
  %89 = call i32 @pv_lock_table_size(i64 %88)
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = ptrtoint i8* %91 to i64
  store i64 %92, i64* %2, align 8
  %93 = load i64, i64* %2, align 8
  %94 = inttoptr i64 %93 to i8*
  store i8* %94, i8** @pv_hash_lock_table, align 8
  %95 = load i8*, i8** @pv_hash_lock_table, align 8
  %96 = load i32, i32* @npvhashbuckets, align 4
  %97 = call i32 @pv_hash_lock_table_size(i32 %96)
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  %100 = ptrtoint i8* %99 to i64
  store i64 %100, i64* %2, align 8
  %101 = load i64, i64* %2, align 8
  %102 = inttoptr i64 %101 to i8*
  store i8* %102, i8** @pmap_phys_attributes, align 8
  %103 = load i32, i32* @avail_end, align 4
  %104 = call i64 @i386_btop(i32 %103)
  store i64 %104, i64* %7, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pmap_memory_regions, align 8
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %9, align 8
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %170, %65
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @pmap_memory_region_count, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %175

110:                                              ; preds = %106
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @kEfiConventionalMemory, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %170

117:                                              ; preds = %110
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %10, align 8
  br label %121

121:                                              ; preds = %166, %117
  %122 = load i64, i64* %10, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ule i64 %122, %125
  br i1 %126, label %127, label %169

127:                                              ; preds = %121
  %128 = load i64, i64* %10, align 8
  %129 = load i64, i64* %7, align 8
  %130 = icmp ult i64 %128, %129
  br i1 %130, label %131, label %165

131:                                              ; preds = %127
  %132 = load i8, i8* @PHYS_MANAGED, align 1
  %133 = sext i8 %132 to i32
  %134 = load i8*, i8** @pmap_phys_attributes, align 8
  %135 = load i64, i64* %10, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = or i32 %138, %133
  %140 = trunc i32 %139 to i8
  store i8 %140, i8* %136, align 1
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* @last_managed_page, align 8
  %143 = icmp ugt i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %131
  %145 = load i64, i64* %10, align 8
  store i64 %145, i64* @last_managed_page, align 8
  br label %146

146:                                              ; preds = %144, %131
  %147 = load i64, i64* %10, align 8
  %148 = load i64, i64* @lowest_hi, align 8
  %149 = icmp uge i64 %147, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %146
  %151 = load i64, i64* %10, align 8
  %152 = load i64, i64* @highest_hi, align 8
  %153 = icmp ule i64 %151, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %150
  %155 = load i8, i8* @PHYS_NOENCRYPT, align 1
  %156 = sext i8 %155 to i32
  %157 = load i8*, i8** @pmap_phys_attributes, align 8
  %158 = load i64, i64* %10, align 8
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = or i32 %161, %156
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* %159, align 1
  br label %164

164:                                              ; preds = %154, %150, %146
  br label %165

165:                                              ; preds = %164, %127
  br label %166

166:                                              ; preds = %165
  %167 = load i64, i64* %10, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %10, align 8
  br label %121

169:                                              ; preds = %121
  br label %170

170:                                              ; preds = %169, %116
  %171 = load i32, i32* %8, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %8, align 4
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 1
  store %struct.TYPE_10__* %174, %struct.TYPE_10__** %9, align 8
  br label %106

175:                                              ; preds = %106
  br label %176

176:                                              ; preds = %179, %175
  %177 = load i32, i32* %4, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %176
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kernel_pmap, align 8
  %181 = load i64, i64* %5, align 8
  %182 = call i64 @pmap_find_phys(%struct.TYPE_11__* %180, i64 %181)
  store i64 %182, i64* %6, align 8
  %183 = load i8, i8* @PHYS_NOENCRYPT, align 1
  %184 = sext i8 %183 to i32
  %185 = load i8*, i8** @pmap_phys_attributes, align 8
  %186 = load i64, i64* %6, align 8
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = or i32 %189, %184
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %187, align 1
  %192 = load i32, i32* @PAGE_SIZE, align 4
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* %5, align 8
  %195 = add nsw i64 %194, %193
  store i64 %195, i64* %5, align 8
  %196 = load i32, i32* @PAGE_SIZE, align 4
  %197 = load i32, i32* %4, align 4
  %198 = sub nsw i32 %197, %196
  store i32 %198, i32* %4, align 4
  br label %176

199:                                              ; preds = %176
  store i32 4, i32* %3, align 4
  %200 = load i32, i32* %3, align 4
  %201 = load i32, i32* %3, align 4
  %202 = mul nsw i32 400, %201
  %203 = call i32 @zinit(i32 %200, i32 %202, i32 4096, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %203, i32* @pmap_zone, align 4
  %204 = load i32, i32* @pmap_zone, align 4
  %205 = load i32, i32* @Z_NOENCRYPT, align 4
  %206 = load i64, i64* @TRUE, align 8
  %207 = call i32 @zone_change(i32 %204, i32 %205, i64 %206)
  %208 = load i32, i32* @PAGE_SIZE, align 4
  %209 = load i32, i32* @task_max, align 4
  %210 = load i32, i32* @PAGE_SIZE, align 4
  %211 = call i32 @zinit(i32 %208, i32 %209, i32 %210, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 %211, i32* @pmap_anchor_zone, align 4
  %212 = load i32, i32* @pmap_anchor_zone, align 4
  %213 = load i32, i32* @Z_NOENCRYPT, align 4
  %214 = load i64, i64* @TRUE, align 8
  %215 = call i32 @zone_change(i32 %212, i32 %213, i64 %214)
  %216 = load i32, i32* @pmap_anchor_zone, align 4
  %217 = load i32, i32* @Z_ALIGNMENT_REQUIRED, align 4
  %218 = load i64, i64* @TRUE, align 8
  %219 = call i32 @zone_change(i32 %216, i32 %217, i64 %218)
  %220 = load i32, i32* @PAGE_SIZE, align 4
  %221 = load i32, i32* @task_max, align 4
  %222 = load i32, i32* @PAGE_SIZE, align 4
  %223 = call i32 @zinit(i32 %220, i32 %221, i32 %222, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 %223, i32* @pmap_uanchor_zone, align 4
  %224 = load i32, i32* @pmap_uanchor_zone, align 4
  %225 = load i32, i32* @Z_NOENCRYPT, align 4
  %226 = load i64, i64* @TRUE, align 8
  %227 = call i32 @zone_change(i32 %224, i32 %225, i64 %226)
  %228 = load i32, i32* @pmap_uanchor_zone, align 4
  %229 = load i32, i32* @Z_ALIGNMENT_REQUIRED, align 4
  %230 = load i64, i64* @TRUE, align 8
  %231 = call i32 @zone_change(i32 %228, i32 %229, i64 %230)
  store i32 4, i32* %3, align 4
  %232 = load i32, i32* %3, align 4
  %233 = load i32, i32* %3, align 4
  %234 = mul nsw i32 10000, %233
  %235 = call i32 @zinit(i32 %232, i32 %234, i32 12288, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %235, i32* @pv_hashed_list_zone, align 4
  %236 = load i32, i32* @pv_hashed_list_zone, align 4
  %237 = load i32, i32* @Z_NOENCRYPT, align 4
  %238 = load i64, i64* @TRUE, align 8
  %239 = call i32 @zone_change(i32 %236, i32 %237, i64 %238)
  %240 = load i32, i32* @pv_hashed_list_zone, align 4
  %241 = load i32, i32* @Z_GZALLOC_EXEMPT, align 4
  %242 = load i64, i64* @TRUE, align 8
  %243 = call i32 @zone_change(i32 %240, i32 %241, i64 %242)
  %244 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  store i64 %244, i64* %5, align 8
  %245 = load i64, i64* @VM_MIN_KERNEL_PAGE, align 8
  store i64 %245, i64* %6, align 8
  br label %246

246:                                              ; preds = %267, %199
  %247 = load i64, i64* %6, align 8
  %248 = load i32, i32* @avail_start, align 4
  %249 = call i64 @i386_btop(i32 %248)
  %250 = icmp ult i64 %247, %249
  br i1 %250, label %251, label %270

251:                                              ; preds = %246
  %252 = load i64, i64* %6, align 8
  %253 = call %struct.TYPE_9__* @pai_to_pvh(i64 %252)
  store %struct.TYPE_9__* %253, %struct.TYPE_9__** %11, align 8
  %254 = load i64, i64* %5, align 8
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 2
  store i64 %254, i64* %256, align 8
  %257 = load i32, i32* @PAGE_SIZE, align 4
  %258 = sext i32 %257 to i64
  %259 = load i64, i64* %5, align 8
  %260 = add nsw i64 %259, %258
  store i64 %260, i64* %5, align 8
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kernel_pmap, align 8
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 1
  store %struct.TYPE_11__* %261, %struct.TYPE_11__** %263, align 8
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 0
  %266 = call i32 @queue_init(i32* %265)
  br label %267

267:                                              ; preds = %251
  %268 = load i64, i64* %6, align 8
  %269 = add i64 %268, 1
  store i64 %269, i64* %6, align 8
  br label %246

270:                                              ; preds = %246
  %271 = load i64, i64* @TRUE, align 8
  store i64 %271, i64* @pmap_initialized, align 8
  %272 = load i64, i64* @MAX_PREEMPTION_LATENCY_NS, align 8
  %273 = trunc i64 %272 to i32
  %274 = load i32, i32* @tscFCvtn2t, align 4
  %275 = call i32 @tmrCvt(i32 %273, i32 %274)
  store i32 %275, i32* @max_preemption_latency_tsc, align 4
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kernel_pmap, align 8
  %277 = load i32, i32* @KERNEL_BASEMENT, align 4
  %278 = load i32, i32* @PMAP_EXPAND_OPTIONS_NONE, align 4
  %279 = call i32 @pmap_expand_pml4(%struct.TYPE_11__* %276, i32 %277, i32 %278)
  ret void
}

declare dso_local i32 @_vm_object_allocate(i32, i32*) #1

declare dso_local i64 @i386_btop(i32) #1

declare dso_local i32 @pv_lock_table_size(i64) #1

declare dso_local i32 @pv_hash_lock_table_size(i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i64 @kernel_memory_allocate(i32, i64*, i32, i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @pmap_find_phys(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @zinit(i32, i32, i32, i8*) #1

declare dso_local i32 @zone_change(i32, i32, i64) #1

declare dso_local %struct.TYPE_9__* @pai_to_pvh(i64) #1

declare dso_local i32 @queue_init(i32*) #1

declare dso_local i32 @tmrCvt(i32, i32) #1

declare dso_local i32 @pmap_expand_pml4(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
