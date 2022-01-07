; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_bsd_vm.c_memory_object_control_uiomove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_bsd_vm.c_memory_object_control_uiomove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_19__*, i32 }
%struct.TYPE_18__ = type { i64, i64, i64, i64, i32, i64, i64 }

@MAX_RUN = common dso_local global i32 0, align 4
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_19__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_PAGE_NULL = common dso_local global %struct.TYPE_18__* null, align 8
@THREAD_UNINT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@vm_cs_validated_resets = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@PAGE_SIZE_64 = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@TASK_WRITE_DEFERRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memory_object_control_uiomove(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %19, align 4
  %28 = load i32, i32* @MAX_RUN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %24, align 8
  %31 = alloca %struct.TYPE_18__*, i64 %29, align 16
  store i64 %29, i64* %25, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.TYPE_19__* @memory_object_control_to_vm_object(i32 %32)
  store %struct.TYPE_19__* %33, %struct.TYPE_19__** %16, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** @VM_OBJECT_NULL, align 8
  %36 = icmp eq %struct.TYPE_19__* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %287

38:                                               ; preds = %7
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %47 = call i32 @vm_object_lock(%struct.TYPE_19__* %46)
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %38
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** @VM_OBJECT_NULL, align 8
  %55 = icmp ne %struct.TYPE_19__* %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %58 = call i32 @vm_object_unlock(%struct.TYPE_19__* %57)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %287

59:                                               ; preds = %50, %38
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %23, align 4
  store i32 0, i32* %26, align 4
  br label %61

61:                                               ; preds = %266, %59
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %19, align 4
  %66 = icmp eq i32 %65, 0
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i1 [ false, %61 ], [ %66, %64 ]
  br i1 %68, label %69, label %267

69:                                               ; preds = %67
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = sub nsw i32 %73, 1
  %75 = add nsw i32 %72, %74
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = sdiv i32 %75, %76
  store i32 %77, i32* %21, align 4
  %78 = load i32, i32* %21, align 4
  %79 = load i32, i32* @MAX_RUN, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i32, i32* @MAX_RUN, align 4
  store i32 %82, i32* %21, align 4
  br label %83

83:                                               ; preds = %81, %69
  store i32 0, i32* %20, align 4
  br label %84

84:                                               ; preds = %158, %109, %83
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %21, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %172

88:                                               ; preds = %84
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call %struct.TYPE_18__* @vm_page_lookup(%struct.TYPE_19__* %89, i32 %90)
  store %struct.TYPE_18__* %91, %struct.TYPE_18__** %17, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** @VM_PAGE_NULL, align 8
  %93 = icmp eq %struct.TYPE_18__* %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %172

95:                                               ; preds = %88
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %100, %95
  %106 = load i32, i32* %20, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %172

109:                                              ; preds = %105
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %112 = load i32, i32* @THREAD_UNINT, align 4
  %113 = call i32 @PAGE_SLEEP(%struct.TYPE_19__* %110, %struct.TYPE_18__* %111, i32 %112)
  br label %84

114:                                              ; preds = %100
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %121 = load i64, i64* @FALSE, align 8
  %122 = call i32 @vm_pageout_steal_laundry(%struct.TYPE_18__* %120, i64 %121)
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %158

126:                                              ; preds = %123
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @FALSE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i32, i32* %26, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %26, align 4
  br label %135

135:                                              ; preds = %132, %126
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %137 = load i64, i64* @FALSE, align 8
  %138 = call i32 @SET_PAGE_DIRTY(%struct.TYPE_18__* %136, i64 %137)
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %135
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %143
  %149 = load i64, i64* @FALSE, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 3
  store i64 %149, i64* %151, align 8
  %152 = load i32, i32* @vm_cs_validated_resets, align 4
  %153 = call i32 @VM_PAGEOUT_DEBUG(i32 %152, i32 1)
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %155 = call i64 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_18__* %154)
  %156 = call i32 @pmap_disconnect(i64 %155)
  br label %157

157:                                              ; preds = %148, %143, %135
  br label %158

158:                                              ; preds = %157, %123
  %159 = load i64, i64* @TRUE, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 2
  store i64 %159, i64* %161, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %163 = load i32, i32* %20, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %20, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %31, i64 %165
  store %struct.TYPE_18__* %162, %struct.TYPE_18__** %166, align 8
  %167 = load i64, i64* @PAGE_SIZE_64, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %10, align 4
  br label %84

172:                                              ; preds = %108, %94, %84
  %173 = load i32, i32* %20, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  br label %267

176:                                              ; preds = %172
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %178 = call i32 @vm_object_unlock(%struct.TYPE_19__* %177)
  store i32 0, i32* %22, align 4
  br label %179

179:                                              ; preds = %212, %176
  %180 = load i32, i32* %22, align 4
  %181 = load i32, i32* %20, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %215

183:                                              ; preds = %179
  %184 = load i32, i32* %22, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %31, i64 %185
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %186, align 8
  store %struct.TYPE_18__* %187, %struct.TYPE_18__** %17, align 8
  %188 = load i32, i32* @PAGE_SIZE, align 4
  %189 = load i32, i32* %12, align 4
  %190 = sub nsw i32 %188, %189
  store i32 %190, i32* %18, align 4
  %191 = load i32, i32* %13, align 4
  %192 = icmp sgt i32 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %183
  %194 = load i32, i32* %13, align 4
  store i32 %194, i32* %18, align 4
  br label %195

195:                                              ; preds = %193, %183
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %197 = call i64 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_18__* %196)
  %198 = trunc i64 %197 to i32
  %199 = load i32, i32* @PAGE_SHIFT, align 4
  %200 = shl i32 %198, %199
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %200, %201
  %203 = load i32, i32* %18, align 4
  %204 = load i8*, i8** %11, align 8
  %205 = call i32 @uiomove64(i32 %202, i32 %203, i8* %204)
  store i32 %205, i32* %19, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %195
  br label %215

208:                                              ; preds = %195
  %209 = load i32, i32* %18, align 4
  %210 = load i32, i32* %13, align 4
  %211 = sub nsw i32 %210, %209
  store i32 %211, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %212

212:                                              ; preds = %208
  %213 = load i32, i32* %22, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %22, align 4
  br label %179

215:                                              ; preds = %207, %179
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %217 = call i32 @vm_object_lock(%struct.TYPE_19__* %216)
  %218 = load i32, i32* %15, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %243

220:                                              ; preds = %215
  %221 = load i32, i32* %20, align 4
  %222 = icmp sgt i32 %221, 1
  br i1 %222, label %226, label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %23, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %243

226:                                              ; preds = %223, %220
  %227 = call i32 (...) @vm_page_lockspin_queues()
  store i32 0, i32* %22, align 4
  br label %228

228:                                              ; preds = %238, %226
  %229 = load i32, i32* %22, align 4
  %230 = load i32, i32* %20, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %241

232:                                              ; preds = %228
  %233 = load i32, i32* %22, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %31, i64 %234
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %235, align 8
  %237 = call i32 @vm_page_lru(%struct.TYPE_18__* %236)
  br label %238

238:                                              ; preds = %232
  %239 = load i32, i32* %22, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %22, align 4
  br label %228

241:                                              ; preds = %228
  %242 = call i32 (...) @vm_page_unlock_queues()
  br label %243

243:                                              ; preds = %241, %223, %215
  store i32 0, i32* %22, align 4
  br label %244

244:                                              ; preds = %263, %243
  %245 = load i32, i32* %22, align 4
  %246 = load i32, i32* %20, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %266

248:                                              ; preds = %244
  %249 = load i32, i32* %22, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %31, i64 %250
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %251, align 8
  store %struct.TYPE_18__* %252, %struct.TYPE_18__** %17, align 8
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %248
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %259 = call i32 @VM_PAGE_CONSUME_CLUSTERED(%struct.TYPE_18__* %258)
  br label %260

260:                                              ; preds = %257, %248
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %262 = call i32 @PAGE_WAKEUP_DONE(%struct.TYPE_18__* %261)
  br label %263

263:                                              ; preds = %260
  %264 = load i32, i32* %22, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %22, align 4
  br label %244

266:                                              ; preds = %244
  store i32 0, i32* %23, align 4
  br label %61

267:                                              ; preds = %175, %67
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %283

272:                                              ; preds = %267
  %273 = call i32 (...) @current_task()
  %274 = load i32, i32* %26, align 4
  %275 = load i32, i32* @PAGE_SIZE, align 4
  %276 = mul nsw i32 %274, %275
  %277 = load i32, i32* @TASK_WRITE_DEFERRED, align 4
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @vnode_pager_lookup_vnode(i64 %280)
  %282 = call i32 @task_update_logical_writes(i32 %273, i32 %276, i32 %277, i32 %281)
  br label %283

283:                                              ; preds = %272, %267
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %285 = call i32 @vm_object_unlock(%struct.TYPE_19__* %284)
  %286 = load i32, i32* %19, align 4
  store i32 %286, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %287

287:                                              ; preds = %283, %56, %37
  %288 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %288)
  %289 = load i32, i32* %8, align 4
  ret i32 %289
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_19__* @memory_object_control_to_vm_object(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @vm_object_lock(%struct.TYPE_19__*) #2

declare dso_local i32 @vm_object_unlock(%struct.TYPE_19__*) #2

declare dso_local %struct.TYPE_18__* @vm_page_lookup(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @PAGE_SLEEP(%struct.TYPE_19__*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @vm_pageout_steal_laundry(%struct.TYPE_18__*, i64) #2

declare dso_local i32 @SET_PAGE_DIRTY(%struct.TYPE_18__*, i64) #2

declare dso_local i32 @VM_PAGEOUT_DEBUG(i32, i32) #2

declare dso_local i32 @pmap_disconnect(i64) #2

declare dso_local i64 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_18__*) #2

declare dso_local i32 @uiomove64(i32, i32, i8*) #2

declare dso_local i32 @vm_page_lockspin_queues(...) #2

declare dso_local i32 @vm_page_lru(%struct.TYPE_18__*) #2

declare dso_local i32 @vm_page_unlock_queues(...) #2

declare dso_local i32 @VM_PAGE_CONSUME_CLUSTERED(%struct.TYPE_18__*) #2

declare dso_local i32 @PAGE_WAKEUP_DONE(%struct.TYPE_18__*) #2

declare dso_local i32 @task_update_logical_writes(i32, i32, i32, i32) #2

declare dso_local i32 @current_task(...) #2

declare dso_local i32 @vnode_pager_lookup_vnode(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
