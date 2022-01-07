; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_reap_pages.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_reap_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, %struct.TYPE_20__*, %struct.TYPE_19__, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_21__ = type { i32, i32, i32 }

@VM_PAGE_NULL = common dso_local global %struct.TYPE_20__* null, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@V_O_R_MAX_BATCH = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@vm_page_purged_wired = common dso_local global i32 0, align 4
@vm_page_purged_others = common dso_local global i32 0, align 4
@vm_page_purged_busy = common dso_local global i32 0, align 4
@kernel_object = common dso_local global i32 0, align 4
@PMAP_OPTIONS_NOFLUSH = common dso_local global i32 0, align 4
@PMAP_OPTIONS_NOREFMOD = common dso_local global i32 0, align 4
@vm_page_purged_count = common dso_local global i32 0, align 4
@vm_page_guard_addr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_object_reap_pages(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** @VM_PAGE_NULL, align 8
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %7, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 131
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i8*, i8** @TRUE, align 8
  store i8* %15, i8** %9, align 8
  br label %18

16:                                               ; preds = %2
  %17 = load i8*, i8** @FALSE, align 8
  store i8* %17, i8** %9, align 8
  br label %18

18:                                               ; preds = %16, %14
  br label %19

19:                                               ; preds = %280, %91, %18
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 2
  %22 = call i64 @vm_page_queue_empty(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %322

25:                                               ; preds = %19
  %26 = load i32, i32* @V_O_R_MAX_BATCH, align 4
  %27 = call i32 @BATCH_LIMIT(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 130
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 @pmap_flush_context_init(i32* %10)
  br label %32

32:                                               ; preds = %30, %25
  %33 = call i32 (...) @vm_page_lockspin_queues()
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 2
  %36 = call i64 @vm_page_queue_first(i32* %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %37, %struct.TYPE_20__** %6, align 8
  br label %38

38:                                               ; preds = %304, %174, %159, %122, %116, %32
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %42 = ptrtoint %struct.TYPE_20__* %41 to i32
  %43 = call i32 @vm_page_queue_end(i32* %40, i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %312

46:                                               ; preds = %38
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %47, %struct.TYPE_20__** %5, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 14
  %50 = call i64 @vm_page_queue_next(i32* %49)
  %51 = inttoptr i64 %50 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %51, %struct.TYPE_20__** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %46
  %56 = call i32 (...) @vm_page_unlock_queues()
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %58 = icmp ne %struct.TYPE_20__* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 130
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = call i32 @pmap_flush(i32* %10)
  %64 = call i32 @pmap_flush_context_init(i32* %10)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @VM_OBJ_REAP_FREELIST(%struct.TYPE_20__* %66, i8* %67)
  br label %71

69:                                               ; preds = %55
  %70 = call i32 @mutex_pause(i32 0)
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i32, i32* @V_O_R_MAX_BATCH, align 4
  %73 = call i32 @BATCH_LIMIT(i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = call i32 (...) @vm_page_lockspin_queues()
  br label %75

75:                                               ; preds = %71, %46
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 131
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %79, 128
  br i1 %80, label %81, label %110

81:                                               ; preds = %78, %75
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 12
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 13
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86, %81
  %92 = call i32 (...) @vm_page_unlock_queues()
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @VM_OBJ_REAP_FREELIST(%struct.TYPE_20__* %93, i8* %94)
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = load i32, i32* @THREAD_UNINT, align 4
  %99 = call i32 @PAGE_SLEEP(%struct.TYPE_21__* %96, %struct.TYPE_20__* %97, i32 %98)
  br label %19

100:                                              ; preds = %86
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %107 = load i8*, i8** @TRUE, align 8
  %108 = call i32 @vm_pageout_steal_laundry(%struct.TYPE_20__* %106, i8* %107)
  br label %109

109:                                              ; preds = %105, %100
  br label %110

110:                                              ; preds = %109, %78
  %111 = load i32, i32* %4, align 4
  switch i32 %111, label %290 [
    i32 131, label %112
    i32 130, label %118
    i32 128, label %200
    i32 129, label %289
  ]

112:                                              ; preds = %110
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %114 = call i32 @VM_PAGE_WIRED(%struct.TYPE_20__* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %38

117:                                              ; preds = %112
  br label %290

118:                                              ; preds = %110
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %120 = call i32 @VM_PAGE_WIRED(%struct.TYPE_20__* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* @vm_page_purged_wired, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* @vm_page_purged_wired, align 4
  br label %38

125:                                              ; preds = %118
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %125
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 12
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %130
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 13
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %135
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %142 = load i8*, i8** @TRUE, align 8
  %143 = call i32 @vm_pageout_steal_laundry(%struct.TYPE_20__* %141, i8* %142)
  br label %144

144:                                              ; preds = %140, %135, %130, %125
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 13
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %159, label %149

149:                                              ; preds = %144
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 11
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154, %149, %144
  %160 = load i32, i32* @vm_page_purged_others, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* @vm_page_purged_others, align 4
  br label %38

162:                                              ; preds = %154
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 12
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %162
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %169 = call i32 @VM_PAGE_PAGEABLE(%struct.TYPE_20__* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %173 = call i32 @vm_page_deactivate(%struct.TYPE_20__* %172)
  br label %174

174:                                              ; preds = %171, %167
  %175 = load i32, i32* @vm_page_purged_busy, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* @vm_page_purged_busy, align 4
  br label %38

177:                                              ; preds = %162
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %179 = call i32 @VM_PAGE_OBJECT(%struct.TYPE_20__* %178)
  %180 = load i32, i32* @kernel_object, align 4
  %181 = icmp ne i32 %179, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @assert(i32 %182)
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load i8*, i8** @TRUE, align 8
  %188 = icmp eq i8* %186, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %177
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %191 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_20__* %190)
  %192 = load i32, i32* @PMAP_OPTIONS_NOFLUSH, align 4
  %193 = load i32, i32* @PMAP_OPTIONS_NOREFMOD, align 4
  %194 = or i32 %192, %193
  %195 = bitcast i32* %10 to i8*
  %196 = call i32 @pmap_disconnect_options(i32 %191, i32 %194, i8* %195)
  br label %197

197:                                              ; preds = %189, %177
  %198 = load i32, i32* @vm_page_purged_count, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* @vm_page_purged_count, align 4
  br label %290

200:                                              ; preds = %110
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 11
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %200
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 10
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %205, %200
  br label %290

211:                                              ; preds = %205
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 9
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %211
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %218 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_20__* %217)
  %219 = load i32, i32* @vm_page_guard_addr, align 4
  %220 = icmp eq i32 %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @assert(i32 %221)
  br label %290

223:                                              ; preds = %211
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 7
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %239, label %228

228:                                              ; preds = %223
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 8
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %228
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %235 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_20__* %234)
  %236 = call i32 @pmap_is_modified(i32 %235)
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 7
  store i32 %236, i32* %238, align 8
  br label %239

239:                                              ; preds = %233, %228, %223
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %239
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %288

249:                                              ; preds = %244, %239
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %288, label %254

254:                                              ; preds = %249
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %288

259:                                              ; preds = %254
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  %264 = xor i1 %263, true
  %265 = zext i1 %264 to i32
  %266 = call i32 @assert(i32 %265)
  %267 = load i8*, i8** @TRUE, align 8
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 4
  store i8* %267, i8** %269, align 8
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %280, label %274

274:                                              ; preds = %259
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %276 = load i8*, i8** @TRUE, align 8
  %277 = call i32 @vm_page_queues_remove(%struct.TYPE_20__* %275, i8* %276)
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %279 = call i32 @vm_pageout_cluster(%struct.TYPE_20__* %278)
  br label %280

280:                                              ; preds = %274, %259
  %281 = call i32 (...) @vm_page_unlock_queues()
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %283 = load i8*, i8** %9, align 8
  %284 = call i32 @VM_OBJ_REAP_FREELIST(%struct.TYPE_20__* %282, i8* %283)
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %286 = load i32, i32* @THREAD_UNINT, align 4
  %287 = call i32 @vm_object_paging_wait(%struct.TYPE_21__* %285, i32 %286)
  br label %19

288:                                              ; preds = %254, %249, %244
  br label %290

289:                                              ; preds = %110
  br label %290

290:                                              ; preds = %110, %289, %288, %216, %210, %197, %117
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %292 = call i32 @vm_page_free_prepare_queues(%struct.TYPE_20__* %291)
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %290
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = icmp eq i64 %302, 0
  br label %304

304:                                              ; preds = %298, %290
  %305 = phi i1 [ false, %290 ], [ %303, %298 ]
  %306 = zext i1 %305 to i32
  %307 = call i32 @assert(i32 %306)
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %309 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 1
  store %struct.TYPE_20__* %308, %struct.TYPE_20__** %310, align 8
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %311, %struct.TYPE_20__** %7, align 8
  br label %38

312:                                              ; preds = %38
  %313 = call i32 (...) @vm_page_unlock_queues()
  %314 = load i32, i32* %4, align 4
  %315 = icmp eq i32 %314, 130
  br i1 %315, label %316, label %318

316:                                              ; preds = %312
  %317 = call i32 @pmap_flush(i32* %10)
  br label %318

318:                                              ; preds = %316, %312
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %320 = load i8*, i8** %9, align 8
  %321 = call i32 @VM_OBJ_REAP_FREELIST(%struct.TYPE_20__* %319, i8* %320)
  br label %322

322:                                              ; preds = %318, %24
  ret void
}

declare dso_local i64 @vm_page_queue_empty(i32*) #1

declare dso_local i32 @BATCH_LIMIT(i32) #1

declare dso_local i32 @pmap_flush_context_init(i32*) #1

declare dso_local i32 @vm_page_lockspin_queues(...) #1

declare dso_local i64 @vm_page_queue_first(i32*) #1

declare dso_local i32 @vm_page_queue_end(i32*, i32) #1

declare dso_local i64 @vm_page_queue_next(i32*) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

declare dso_local i32 @pmap_flush(i32*) #1

declare dso_local i32 @VM_OBJ_REAP_FREELIST(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @mutex_pause(i32) #1

declare dso_local i32 @PAGE_SLEEP(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @vm_pageout_steal_laundry(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @VM_PAGE_WIRED(%struct.TYPE_20__*) #1

declare dso_local i32 @VM_PAGE_PAGEABLE(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_page_deactivate(%struct.TYPE_20__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VM_PAGE_OBJECT(%struct.TYPE_20__*) #1

declare dso_local i32 @pmap_disconnect_options(i32, i32, i8*) #1

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_20__*) #1

declare dso_local i32 @pmap_is_modified(i32) #1

declare dso_local i32 @vm_page_queues_remove(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @vm_pageout_cluster(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_object_paging_wait(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @vm_page_free_prepare_queues(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
