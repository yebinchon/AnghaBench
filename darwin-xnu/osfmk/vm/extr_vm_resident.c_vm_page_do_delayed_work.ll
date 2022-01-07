; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_do_delayed_work.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_do_delayed_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i8*, i8*, %struct.TYPE_21__*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i64 }
%struct.vm_page_delayed_work = type { i32, %struct.TYPE_21__* }

@VM_PAGE_NULL = common dso_local global %struct.TYPE_21__* null, align 8
@DW_vm_pageout_throttle_up = common dso_local global i32 0, align 4
@DW_vm_page_wire = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@DW_vm_page_unwire = common dso_local global i32 0, align 4
@DW_vm_page_free = common dso_local global i32 0, align 4
@DW_vm_page_deactivate_internal = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@DW_vm_page_activate = common dso_local global i32 0, align 4
@VM_PAGE_ON_ACTIVE_Q = common dso_local global i64 0, align 8
@DW_vm_page_speculate = common dso_local global i32 0, align 4
@DW_enqueue_cleaned = common dso_local global i32 0, align 4
@VM_MEM_REFERENCED = common dso_local global i32 0, align 4
@vm_pageout_enqueued_cleaned = common dso_local global i32 0, align 4
@vm_pageout_cleaned_reactivated = common dso_local global i32 0, align 4
@DW_vm_page_lru = common dso_local global i32 0, align 4
@DW_VM_PAGE_QUEUES_REMOVE = common dso_local global i32 0, align 4
@VM_PAGE_ON_PAGEOUT_Q = common dso_local global i64 0, align 8
@DW_set_reference = common dso_local global i32 0, align 4
@DW_clear_reference = common dso_local global i32 0, align 4
@DW_move_page = common dso_local global i32 0, align 4
@kernel_object = common dso_local global i64 0, align 8
@DW_clear_busy = common dso_local global i32 0, align 4
@DW_PAGE_WAKEUP = common dso_local global i32 0, align 4
@VM_CHECK_MEMORYSTATUS = common dso_local global i32 0, align 4
@DW_vm_phantom_cache_update = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_do_delayed_work(i32 %0, i32 %1, %struct.vm_page_delayed_work* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_page_delayed_work*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.vm_page_delayed_work* %2, %struct.vm_page_delayed_work** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** @VM_PAGE_NULL, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %11, align 8
  %15 = call i32 (...) @vm_page_trylockspin_queues()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @vm_object_unlock(i32 %18)
  %20 = call i32 (...) @vm_page_lockspin_queues()
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %35, %17
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @vm_object_lock_avoid(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @_vm_object_lock_try(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %38

30:                                               ; preds = %25, %21
  %31 = call i32 (...) @vm_page_unlock_queues()
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @mutex_pause(i32 %32)
  %34 = call i32 (...) @vm_page_lockspin_queues()
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %21

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %4
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %305, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %310

44:                                               ; preds = %40
  %45 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %7, align 8
  %46 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %45, i32 0, i32 1
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %46, align 8
  store %struct.TYPE_21__* %47, %struct.TYPE_21__** %10, align 8
  %48 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %7, align 8
  %49 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DW_vm_pageout_throttle_up, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %56 = call i32 @vm_pageout_throttle_up(%struct.TYPE_21__* %55)
  br label %57

57:                                               ; preds = %54, %44
  %58 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %7, align 8
  %59 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @DW_vm_page_wire, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i8*, i8** @FALSE, align 8
  %68 = call i32 @vm_page_wire(%struct.TYPE_21__* %65, i32 %66, i8* %67)
  br label %95

69:                                               ; preds = %57
  %70 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %7, align 8
  %71 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @DW_vm_page_unwire, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %69
  %77 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %7, align 8
  %78 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @DW_vm_page_free, align 4
  %81 = load i32, i32* @DW_vm_page_deactivate_internal, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i8*, i8** @FALSE, align 8
  br label %89

87:                                               ; preds = %76
  %88 = load i8*, i8** @TRUE, align 8
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i8* [ %86, %85 ], [ %88, %87 ]
  store i8* %90, i8** %12, align 8
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = call i32 @vm_page_unwire(%struct.TYPE_21__* %91, i8* %92)
  br label %94

94:                                               ; preds = %89, %69
  br label %95

95:                                               ; preds = %94, %64
  %96 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %7, align 8
  %97 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @DW_vm_page_free, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %95
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %104 = call i32 @vm_page_free_prepare_queues(%struct.TYPE_21__* %103)
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br label %116

116:                                              ; preds = %110, %102
  %117 = phi i1 [ false, %102 ], [ %115, %110 ]
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 3
  store %struct.TYPE_21__* %120, %struct.TYPE_21__** %122, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %123, %struct.TYPE_21__** %11, align 8
  br label %304

124:                                              ; preds = %95
  %125 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %7, align 8
  %126 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @DW_vm_page_deactivate_internal, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %133 = load i8*, i8** @FALSE, align 8
  %134 = call i32 @vm_page_deactivate_internal(%struct.TYPE_21__* %132, i8* %133)
  br label %232

135:                                              ; preds = %124
  %136 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %7, align 8
  %137 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @DW_vm_page_activate, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %135
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @VM_PAGE_ON_ACTIVE_Q, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %150 = call i32 @vm_page_activate(%struct.TYPE_21__* %149)
  br label %151

151:                                              ; preds = %148, %142
  br label %231

152:                                              ; preds = %135
  %153 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %7, align 8
  %154 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @DW_vm_page_speculate, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %161 = load i8*, i8** @TRUE, align 8
  %162 = call i32 @vm_page_speculate(%struct.TYPE_21__* %160, i8* %161)
  br label %230

163:                                              ; preds = %152
  %164 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %7, align 8
  %165 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @DW_enqueue_cleaned, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %199

170:                                              ; preds = %163
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %172 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_21__* %171)
  %173 = call i32 @pmap_disconnect(i32 %172)
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* @VM_MEM_REFERENCED, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %192

178:                                              ; preds = %170
  %179 = load i32, i32* @vm_pageout_enqueued_cleaned, align 4
  %180 = call i32 @VM_PAGEOUT_DEBUG(i32 %179, i32 1)
  %181 = load i32, i32* @vm_pageout_cleaned_reactivated, align 4
  %182 = call i32 @VM_PAGEOUT_DEBUG(i32 %181, i32 1)
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @VM_PAGE_ON_ACTIVE_Q, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %178
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %190 = call i32 @vm_page_activate(%struct.TYPE_21__* %189)
  br label %191

191:                                              ; preds = %188, %178
  br label %198

192:                                              ; preds = %170
  %193 = load i8*, i8** @FALSE, align 8
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 2
  store i8* %193, i8** %195, align 8
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %197 = call i32 @vm_page_enqueue_cleaned(%struct.TYPE_21__* %196)
  br label %198

198:                                              ; preds = %192, %191
  br label %229

199:                                              ; preds = %163
  %200 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %7, align 8
  %201 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @DW_vm_page_lru, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %199
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %208 = call i32 @vm_page_lru(%struct.TYPE_21__* %207)
  br label %228

209:                                              ; preds = %199
  %210 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %7, align 8
  %211 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @DW_VM_PAGE_QUEUES_REMOVE, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %209
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @VM_PAGE_ON_PAGEOUT_Q, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %224 = load i8*, i8** @TRUE, align 8
  %225 = call i32 @vm_page_queues_remove(%struct.TYPE_21__* %223, i8* %224)
  br label %226

226:                                              ; preds = %222, %216
  br label %227

227:                                              ; preds = %226, %209
  br label %228

228:                                              ; preds = %227, %206
  br label %229

229:                                              ; preds = %228, %198
  br label %230

230:                                              ; preds = %229, %159
  br label %231

231:                                              ; preds = %230, %151
  br label %232

232:                                              ; preds = %231, %131
  %233 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %7, align 8
  %234 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @DW_set_reference, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %232
  %240 = load i8*, i8** @TRUE, align 8
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 2
  store i8* %240, i8** %242, align 8
  br label %255

243:                                              ; preds = %232
  %244 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %7, align 8
  %245 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @DW_clear_reference, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %243
  %251 = load i8*, i8** @FALSE, align 8
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 2
  store i8* %251, i8** %253, align 8
  br label %254

254:                                              ; preds = %250, %243
  br label %255

255:                                              ; preds = %254, %239
  %256 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %7, align 8
  %257 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @DW_move_page, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %282

262:                                              ; preds = %255
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @VM_PAGE_ON_PAGEOUT_Q, align 8
  %267 = icmp ne i64 %265, %266
  br i1 %267, label %268, label %281

268:                                              ; preds = %262
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %270 = load i8*, i8** @FALSE, align 8
  %271 = call i32 @vm_page_queues_remove(%struct.TYPE_21__* %269, i8* %270)
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %273 = call i64 @VM_PAGE_OBJECT(%struct.TYPE_21__* %272)
  %274 = load i64, i64* @kernel_object, align 8
  %275 = icmp ne i64 %273, %274
  %276 = zext i1 %275 to i32
  %277 = call i32 @assert(i32 %276)
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %279 = load i8*, i8** @FALSE, align 8
  %280 = call i32 @vm_page_enqueue_inactive(%struct.TYPE_21__* %278, i8* %279)
  br label %281

281:                                              ; preds = %268, %262
  br label %282

282:                                              ; preds = %281, %255
  %283 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %7, align 8
  %284 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @DW_clear_busy, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %282
  %290 = load i8*, i8** @FALSE, align 8
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %291, i32 0, i32 1
  store i8* %290, i8** %292, align 8
  br label %293

293:                                              ; preds = %289, %282
  %294 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %7, align 8
  %295 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @DW_PAGE_WAKEUP, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %293
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %302 = call i32 @PAGE_WAKEUP(%struct.TYPE_21__* %301)
  br label %303

303:                                              ; preds = %300, %293
  br label %304

304:                                              ; preds = %303, %116
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %9, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %9, align 4
  %308 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %7, align 8
  %309 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %308, i32 1
  store %struct.vm_page_delayed_work* %309, %struct.vm_page_delayed_work** %7, align 8
  br label %40

310:                                              ; preds = %40
  %311 = call i32 (...) @vm_page_unlock_queues()
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %313 = icmp ne %struct.TYPE_21__* %312, null
  br i1 %313, label %314, label %318

314:                                              ; preds = %310
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %316 = load i8*, i8** @TRUE, align 8
  %317 = call i32 @vm_page_free_list(%struct.TYPE_21__* %315, i8* %316)
  br label %318

318:                                              ; preds = %314, %310
  %319 = load i32, i32* @VM_CHECK_MEMORYSTATUS, align 4
  ret void
}

declare dso_local i32 @vm_page_trylockspin_queues(...) #1

declare dso_local i32 @vm_object_unlock(i32) #1

declare dso_local i32 @vm_page_lockspin_queues(...) #1

declare dso_local i32 @vm_object_lock_avoid(i32) #1

declare dso_local i64 @_vm_object_lock_try(i32) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

declare dso_local i32 @mutex_pause(i32) #1

declare dso_local i32 @vm_pageout_throttle_up(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_page_wire(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local i32 @vm_page_unwire(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @vm_page_free_prepare_queues(%struct.TYPE_21__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_page_deactivate_internal(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @vm_page_activate(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_page_speculate(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @pmap_disconnect(i32) #1

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_21__*) #1

declare dso_local i32 @VM_PAGEOUT_DEBUG(i32, i32) #1

declare dso_local i32 @vm_page_enqueue_cleaned(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_page_lru(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_page_queues_remove(%struct.TYPE_21__*, i8*) #1

declare dso_local i64 @VM_PAGE_OBJECT(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_page_enqueue_inactive(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @PAGE_WAKEUP(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_page_free_list(%struct.TYPE_21__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
