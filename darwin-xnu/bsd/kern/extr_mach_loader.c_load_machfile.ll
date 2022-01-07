; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_load_machfile.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_load_machfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.image_params = type { i64, i64, i32, i64, %struct.TYPE_6__*, %struct.vnode* }
%struct.TYPE_6__ = type { i64 }
%struct.vnode = type { i32 }
%struct.mach_header = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@IMGPF_EXEC = common dso_local global i32 0, align 4
@LOAD_BADMACHO = common dso_local global i64 0, align 8
@IMGPF_IS_64BIT_ADDR = common dso_local global i32 0, align 4
@IMGPF_IS_64BIT_DATA = common dso_local global i32 0, align 4
@MH_ALLOW_STACK_EXECUTION = common dso_local global i32 0, align 4
@MH_NO_HEAP_EXECUTION = common dso_local global i32 0, align 4
@IMGPF_ALLOW_DATA_EXEC = common dso_local global i32 0, align 4
@IMGPF_DISABLE_ASLR = common dso_local global i32 0, align 4
@load_result_null = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@LOAD_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@IMGPF_HIGH_BITS_ASLR = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@LOAD_FAILURE = common dso_local global i64 0, align 8
@FOURK_PAGE_SHIFT = common dso_local global i32 0, align 4
@MH_PIE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@SIXTEENK_PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_MAP_HIGH_START_BITS_COUNT = common dso_local global i32 0, align 4
@VM_MAP_HIGH_START_BITS_SHIFT = common dso_local global i32 0, align 4
@fourk_binary_compatibility_unsafe = common dso_local global i64 0, align 8
@page_shift_user32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @load_machfile(%struct.image_params* %0, %struct.mach_header* %1, i64 %2, i32* %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.image_params*, align 8
  %8 = alloca %struct.mach_header*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_7__, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
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
  store %struct.image_params* %0, %struct.image_params** %7, align 8
  store %struct.mach_header* %1, %struct.mach_header** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  %32 = load %struct.image_params*, %struct.image_params** %7, align 8
  %33 = getelementptr inbounds %struct.image_params, %struct.image_params* %32, i32 0, i32 5
  %34 = load %struct.vnode*, %struct.vnode** %33, align 8
  store %struct.vnode* %34, %struct.vnode** %12, align 8
  %35 = load %struct.image_params*, %struct.image_params** %7, align 8
  %36 = getelementptr inbounds %struct.image_params, %struct.image_params* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %13, align 8
  %38 = load %struct.image_params*, %struct.image_params** %7, align 8
  %39 = getelementptr inbounds %struct.image_params, %struct.image_params* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %14, align 8
  %41 = load %struct.image_params*, %struct.image_params** %7, align 8
  %42 = getelementptr inbounds %struct.image_params, %struct.image_params* %41, i32 0, i32 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %46 = load i64, i64* @TRUE, align 8
  store i64 %46, i64* %20, align 8
  %47 = load %struct.image_params*, %struct.image_params** %7, align 8
  %48 = getelementptr inbounds %struct.image_params, %struct.image_params* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IMGPF_EXEC, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %21, align 4
  %52 = call i32 (...) @current_task()
  store i32 %52, i32* %22, align 4
  %53 = call i32 (...) @current_proc()
  store i32 %53, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %15, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %5
  %58 = load i64, i64* @LOAD_BADMACHO, align 8
  store i64 %58, i64* %6, align 8
  br label %287

59:                                               ; preds = %5
  %60 = load %struct.image_params*, %struct.image_params** %7, align 8
  %61 = getelementptr inbounds %struct.image_params, %struct.image_params* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IMGPF_IS_64BIT_ADDR, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @IMGPF_IS_64BIT_ADDR, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.image_params*, %struct.image_params** %7, align 8
  %71 = getelementptr inbounds %struct.image_params, %struct.image_params* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @IMGPF_IS_64BIT_DATA, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @IMGPF_IS_64BIT_DATA, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.image_params*, %struct.image_params** %7, align 8
  %81 = getelementptr inbounds %struct.image_params, %struct.image_params* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %59
  %85 = load %struct.image_params*, %struct.image_params** %7, align 8
  %86 = getelementptr inbounds %struct.image_params, %struct.image_params* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @get_threadtask(i64 %87)
  store i32 %88, i32* %29, align 4
  br label %91

89:                                               ; preds = %59
  %90 = load i32, i32* %22, align 4
  store i32 %90, i32* %29, align 4
  br label %91

91:                                               ; preds = %89, %84
  %92 = load i32, i32* %29, align 4
  %93 = call i32 @get_task_ledger(i32 %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @pmap_create(i32 %93, i32 0, i32 %96)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @vm_compute_max_offset(i32 %101)
  %103 = load i64, i64* @TRUE, align 8
  %104 = call i32 @vm_map_create(i32 %98, i32 0, i32 %102, i64 %103)
  store i32 %104, i32* %17, align 4
  %105 = call i32 (...) @cs_process_global_enforcement()
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %91
  %108 = load %struct.mach_header*, %struct.mach_header** %8, align 8
  %109 = getelementptr inbounds %struct.mach_header, %struct.mach_header* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @MH_ALLOW_STACK_EXECUTION, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i32, i32* %17, align 4
  %116 = call i32 @vm_map_disable_NX(i32 %115)
  br label %117

117:                                              ; preds = %114, %107, %91
  %118 = load %struct.mach_header*, %struct.mach_header** %8, align 8
  %119 = getelementptr inbounds %struct.mach_header, %struct.mach_header* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @MH_NO_HEAP_EXECUTION, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  %125 = load %struct.image_params*, %struct.image_params** %7, align 8
  %126 = getelementptr inbounds %struct.image_params, %struct.image_params* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @IMGPF_ALLOW_DATA_EXEC, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %124
  %132 = load i32, i32* %17, align 4
  %133 = call i32 @vm_map_disallow_data_exec(i32 %132)
  br label %134

134:                                              ; preds = %131, %124, %117
  %135 = load %struct.image_params*, %struct.image_params** %7, align 8
  %136 = getelementptr inbounds %struct.image_params, %struct.image_params* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @IMGPF_DISABLE_ASLR, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %170, label %141

141:                                              ; preds = %134
  %142 = load i32, i32* %17, align 4
  %143 = call i32 @vm_map_get_max_aslr_slide_section(i32 %142, i32* %27, i32* %26)
  %144 = call i32 (...) @random()
  %145 = load i32, i32* %27, align 4
  %146 = srem i32 %144, %145
  %147 = load i32, i32* %26, align 4
  %148 = mul nsw i32 %146, %147
  store i32 %148, i32* %27, align 4
  %149 = call i32 (...) @random()
  store i32 %149, i32* %24, align 4
  %150 = load i32, i32* %17, align 4
  %151 = call i32 @vm_map_get_max_aslr_slide_pages(i32 %150)
  %152 = load i32, i32* %24, align 4
  %153 = srem i32 %152, %151
  store i32 %153, i32* %24, align 4
  %154 = load i32, i32* %17, align 4
  %155 = call i32 @vm_map_page_shift(i32 %154)
  %156 = load i32, i32* %24, align 4
  %157 = shl i32 %156, %155
  store i32 %157, i32* %24, align 4
  %158 = call i32 (...) @random()
  store i32 %158, i32* %25, align 4
  %159 = load i32, i32* %17, align 4
  %160 = call i32 @vm_map_get_max_loader_aslr_slide_pages(i32 %159)
  %161 = load i32, i32* %25, align 4
  %162 = srem i32 %161, %160
  store i32 %162, i32* %25, align 4
  %163 = load i32, i32* %17, align 4
  %164 = call i32 @vm_map_page_shift(i32 %163)
  %165 = load i32, i32* %25, align 4
  %166 = shl i32 %165, %164
  store i32 %166, i32* %25, align 4
  %167 = load i32, i32* %27, align 4
  %168 = load i32, i32* %24, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %24, align 4
  br label %170

170:                                              ; preds = %141, %134
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %172 = icmp ne %struct.TYPE_7__* %171, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %170
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %11, align 8
  br label %174

174:                                              ; preds = %173, %170
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %176 = bitcast %struct.TYPE_7__* %175 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %176, i8* align 8 bitcast (%struct.TYPE_7__* @load_result_null to i8*), i64 16, i1 false)
  %177 = load %struct.image_params*, %struct.image_params** %7, align 8
  %178 = getelementptr inbounds %struct.image_params, %struct.image_params* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @IMGPF_IS_64BIT_ADDR, align 4
  %181 = and i32 %179, %180
  %182 = load i32, i32* @IMGPF_IS_64BIT_ADDR, align 4
  %183 = icmp eq i32 %181, %182
  %184 = zext i1 %183 to i32
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.image_params*, %struct.image_params** %7, align 8
  %188 = getelementptr inbounds %struct.image_params, %struct.image_params* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @IMGPF_IS_64BIT_DATA, align 4
  %191 = and i32 %189, %190
  %192 = load i32, i32* @IMGPF_IS_64BIT_DATA, align 4
  %193 = icmp eq i32 %191, %192
  %194 = zext i1 %193 to i32
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.vnode*, %struct.vnode** %12, align 8
  %198 = load i32, i32* %17, align 4
  %199 = load i64, i64* %9, align 8
  %200 = load %struct.mach_header*, %struct.mach_header** %8, align 8
  %201 = load i64, i64* %13, align 8
  %202 = load i64, i64* %14, align 8
  %203 = load i32, i32* %24, align 4
  %204 = load i32, i32* %25, align 4
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %206 = load %struct.image_params*, %struct.image_params** %7, align 8
  %207 = call i64 @parse_machfile(%struct.vnode* %197, i32 %198, i64 %199, %struct.mach_header* %200, i64 %201, i64 %202, i32 0, i32 %203, i32 %204, %struct.TYPE_7__* %205, i32* null, %struct.image_params* %206)
  store i64 %207, i64* %19, align 8
  %208 = load i64, i64* %19, align 8
  %209 = load i64, i64* @LOAD_SUCCESS, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %174
  %212 = load i32, i32* %17, align 4
  %213 = call i32 @vm_map_deallocate(i32 %212)
  %214 = load i64, i64* %19, align 8
  store i64 %214, i64* %6, align 8
  br label %287

215:                                              ; preds = %174
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %215
  %221 = load i64, i64* @FALSE, align 8
  store i64 %221, i64* %20, align 8
  br label %222

222:                                              ; preds = %220, %215
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %243

227:                                              ; preds = %222
  %228 = load %struct.image_params*, %struct.image_params** %7, align 8
  %229 = getelementptr inbounds %struct.image_params, %struct.image_params* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @IMGPF_HIGH_BITS_ASLR, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %227
  %235 = call i32 (...) @random()
  store i32 %235, i32* %30, align 4
  %236 = load i32, i32* %30, align 4
  %237 = and i32 %236, 255
  store i32 %237, i32* %30, align 4
  %238 = load i32, i32* %30, align 4
  %239 = shl i32 %238, 27
  store i32 %239, i32* %31, align 4
  %240 = load i32, i32* %17, align 4
  %241 = load i32, i32* %31, align 4
  %242 = call i32 @vm_map_set_high_start(i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %234, %227, %222
  %244 = load i64, i64* %20, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %243
  %247 = load i32, i32* %17, align 4
  %248 = call i64 @vm_map_has_hard_pagezero(i32 %247, i32 4096)
  %249 = load i64, i64* @FALSE, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %255

251:                                              ; preds = %246
  %252 = load i32, i32* %17, align 4
  %253 = call i32 @vm_map_deallocate(i32 %252)
  %254 = load i64, i64* @LOAD_BADMACHO, align 8
  store i64 %254, i64* %6, align 8
  br label %287

255:                                              ; preds = %246, %243
  %256 = load i32, i32* %17, align 4
  %257 = call i32 @vm_commit_pagezero_status(i32 %256)
  %258 = load i32, i32* %21, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %283

260:                                              ; preds = %255
  %261 = load i32, i32* %22, align 4
  %262 = call i32 @task_start_halt(i32 %261)
  store i32 %262, i32* %28, align 4
  %263 = load i32, i32* %28, align 4
  %264 = load i32, i32* @KERN_SUCCESS, align 4
  %265 = icmp ne i32 %263, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %260
  %267 = load i32, i32* %17, align 4
  %268 = call i32 @vm_map_deallocate(i32 %267)
  %269 = load i64, i64* @LOAD_FAILURE, align 8
  store i64 %269, i64* %6, align 8
  br label %287

270:                                              ; preds = %260
  %271 = load i32, i32* %23, align 4
  %272 = call i32 @proc_transcommit(i32 %271, i32 0)
  %273 = load i32, i32* %23, align 4
  %274 = call i32 @workq_mark_exiting(i32 %273)
  %275 = load i32, i32* %22, align 4
  %276 = call i32 @task_complete_halt(i32 %275)
  %277 = load i32, i32* %23, align 4
  %278 = call i32 @workq_exit(i32 %277)
  %279 = load i64, i64* %9, align 8
  %280 = call i32 @get_threadtask(i64 %279)
  %281 = load i32, i32* %22, align 4
  %282 = call i32 @task_rollup_accounting_info(i32 %280, i32 %281)
  br label %283

283:                                              ; preds = %270, %255
  %284 = load i32, i32* %17, align 4
  %285 = load i32*, i32** %10, align 8
  store i32 %284, i32* %285, align 4
  %286 = load i64, i64* @LOAD_SUCCESS, align 8
  store i64 %286, i64* %6, align 8
  br label %287

287:                                              ; preds = %283, %266, %251, %211, %57
  %288 = load i64, i64* %6, align 8
  ret i64 %288
}

declare dso_local i32 @current_task(...) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @get_threadtask(i64) #1

declare dso_local i32 @pmap_create(i32, i32, i32) #1

declare dso_local i32 @get_task_ledger(i32) #1

declare dso_local i32 @vm_map_create(i32, i32, i32, i64) #1

declare dso_local i32 @vm_compute_max_offset(i32) #1

declare dso_local i32 @cs_process_global_enforcement(...) #1

declare dso_local i32 @vm_map_disable_NX(i32) #1

declare dso_local i32 @vm_map_disallow_data_exec(i32) #1

declare dso_local i32 @vm_map_get_max_aslr_slide_section(i32, i32*, i32*) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @vm_map_get_max_aslr_slide_pages(i32) #1

declare dso_local i32 @vm_map_page_shift(i32) #1

declare dso_local i32 @vm_map_get_max_loader_aslr_slide_pages(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @parse_machfile(%struct.vnode*, i32, i64, %struct.mach_header*, i64, i64, i32, i32, i32, %struct.TYPE_7__*, i32*, %struct.image_params*) #1

declare dso_local i32 @vm_map_deallocate(i32) #1

declare dso_local i32 @vm_map_set_high_start(i32, i32) #1

declare dso_local i64 @vm_map_has_hard_pagezero(i32, i32) #1

declare dso_local i32 @vm_commit_pagezero_status(i32) #1

declare dso_local i32 @task_start_halt(i32) #1

declare dso_local i32 @proc_transcommit(i32, i32) #1

declare dso_local i32 @workq_mark_exiting(i32) #1

declare dso_local i32 @task_complete_halt(i32) #1

declare dso_local i32 @workq_exit(i32) #1

declare dso_local i32 @task_rollup_accounting_info(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
