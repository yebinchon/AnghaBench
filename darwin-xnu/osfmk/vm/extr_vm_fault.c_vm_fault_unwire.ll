; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_fault.c_vm_fault_unwire.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_fault.c_vm_fault_unwire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64, i64, i32, i32, i64, i64, i32 }
%struct.vm_object_fault_info = type { i32, i64, i32, i32, i64, i64, i32, i32, i32 }

@VM_OBJECT_NULL = common dso_local global %struct.TYPE_18__* null, align 8
@THREAD_UNINT = common dso_local global i32 0, align 4
@PMAP_OPTIONS_ALT_ACCT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@VM_PROT_NONE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@XPR_VM_FAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"vm_fault_unwire -> vm_fault_page\0A\00", align 1
@VM_PAGE_NULL = common dso_local global i32 0, align 4
@VM_FAULT_RETRY = common dso_local global i64 0, align 8
@VM_FAULT_MEMORY_ERROR = common dso_local global i64 0, align 8
@kernel_object = common dso_local global %struct.TYPE_18__* null, align 8
@VM_FAULT_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"vm_fault_unwire: failure\00", align 1
@vm_page_fictitious_addr = common dso_local global i64 0, align 8
@vm_page_guard_addr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_fault_unwire(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.vm_object_fault_info, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  %25 = bitcast %struct.vm_object_fault_info* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 56, i1 false)
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** @VM_OBJECT_NULL, align 8
  br label %35

32:                                               ; preds = %5
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %34 = call %struct.TYPE_18__* @VME_OBJECT(%struct.TYPE_20__* %33)
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi %struct.TYPE_18__* [ %31, %30 ], [ %34, %32 ]
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %13, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** @VM_OBJECT_NULL, align 8
  %39 = icmp ne %struct.TYPE_18__* %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %300

46:                                               ; preds = %40, %35
  %47 = load i32, i32* @THREAD_UNINT, align 4
  %48 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %14, i32 0, i32 8
  store i32 %47, i32* %48, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %14, i32 0, i32 7
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %54 = call i32 @VME_ALIAS(%struct.TYPE_20__* %53)
  %55 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %14, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %46
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65, %46
  %71 = load i32, i32* @PMAP_OPTIONS_ALT_ACCT, align 4
  %72 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %14, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %70, %65, %60
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %77 = call i64 @VME_OFFSET(%struct.TYPE_20__* %76)
  %78 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %14, i32 0, i32 5
  store i64 %77, i64* %78, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %87 = call i64 @VME_OFFSET(%struct.TYPE_20__* %86)
  %88 = add nsw i64 %85, %87
  %89 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %14, i32 0, i32 4
  store i64 %88, i64* %89, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %14, i32 0, i32 3
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @TRUE, align 4
  %95 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %14, i32 0, i32 2
  store i32 %94, i32* %95, align 8
  store i32 0, i32* %15, align 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %11, align 8
  br label %99

99:                                               ; preds = %274, %75
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %12, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %278

103:                                              ; preds = %99
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** @VM_OBJECT_NULL, align 8
  %106 = icmp eq %struct.TYPE_18__* %104, %105
  br i1 %106, label %107, label %131

107:                                              ; preds = %103
  %108 = load i64, i64* %9, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %107
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %113, %116
  %118 = add nsw i64 %112, %117
  %119 = load i64, i64* @FALSE, align 8
  %120 = call i32 @pmap_change_wiring(i64 %111, i64 %118, i64 %119)
  br label %121

121:                                              ; preds = %110, %107
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i32, i32* @VM_PROT_NONE, align 4
  %125 = load i32, i32* @TRUE, align 4
  %126 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %127 = load i32, i32* @THREAD_UNINT, align 4
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* %10, align 8
  %130 = call i32 @vm_fault(%struct.TYPE_19__* %122, i64 %123, i32 %124, i32 %125, i32 %126, i32 %127, i64 %128, i64 %129)
  br label %273

131:                                              ; preds = %103
  %132 = load i64, i64* %12, align 8
  %133 = load i64, i64* %11, align 8
  %134 = call i64 @os_sub_overflow(i64 %132, i64 %133, i64* %21)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i64, i64* @PAGE_SIZE, align 8
  %138 = sub nsw i64 0, %137
  store i64 %138, i64* %21, align 8
  br label %139

139:                                              ; preds = %136, %131
  %140 = load i64, i64* %21, align 8
  %141 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %14, i32 0, i32 1
  store i64 %140, i64* %141, align 8
  br label %142

142:                                              ; preds = %168, %139
  %143 = load i32, i32* @VM_PROT_NONE, align 4
  store i32 %143, i32* %16, align 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %145 = call i32 @vm_object_lock(%struct.TYPE_18__* %144)
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %147 = call i32 @vm_object_paging_begin(%struct.TYPE_18__* %146)
  %148 = load i32, i32* @XPR_VM_FAULT, align 4
  %149 = call i32 @XPR(i32 %148, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0)
  %150 = load i32, i32* @VM_PAGE_NULL, align 4
  store i32 %150, i32* %17, align 4
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %153 = call i64 @VME_OFFSET(%struct.TYPE_20__* %152)
  %154 = load i64, i64* %11, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %154, %157
  %159 = add nsw i64 %153, %158
  %160 = load i32, i32* @VM_PROT_NONE, align 4
  %161 = load i32, i32* @TRUE, align 4
  %162 = load i64, i64* @FALSE, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i64, i64* @FALSE, align 8
  %167 = call i64 @vm_fault_page(%struct.TYPE_18__* %151, i64 %159, i32 %160, i32 %161, i64 %162, i32* %16, i32* %17, i32* %18, i32* null, i32* null, i32 %165, i64 %166, %struct.vm_object_fault_info* %14)
  store i64 %167, i64* %20, align 8
  br label %168

168:                                              ; preds = %142
  %169 = load i64, i64* %20, align 8
  %170 = load i64, i64* @VM_FAULT_RETRY, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %142, label %172

172:                                              ; preds = %168
  %173 = load i64, i64* %20, align 8
  %174 = load i64, i64* @VM_FAULT_MEMORY_ERROR, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %172
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %176
  br label %274

182:                                              ; preds = %176, %172
  %183 = load i64, i64* %20, align 8
  %184 = load i64, i64* @VM_FAULT_MEMORY_ERROR, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %182
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** @kernel_object, align 8
  %189 = icmp eq %struct.TYPE_18__* %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @assert(i32 %191)
  br label %274

193:                                              ; preds = %186, %182
  %194 = load i64, i64* %20, align 8
  %195 = load i64, i64* @VM_FAULT_SUCCESS, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %193
  %200 = load i32, i32* %17, align 4
  %201 = call %struct.TYPE_18__* @VM_PAGE_OBJECT(i32 %200)
  store %struct.TYPE_18__* %201, %struct.TYPE_18__** %19, align 8
  %202 = load i32, i32* %8, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %223

204:                                              ; preds = %199
  %205 = load i32, i32* %17, align 4
  %206 = call i64 @VM_PAGE_GET_PHYS_PAGE(i32 %205)
  %207 = load i64, i64* @vm_page_fictitious_addr, align 8
  %208 = icmp ne i64 %206, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @assert(i32 %209)
  %211 = load i32, i32* %17, align 4
  %212 = call i64 @VM_PAGE_GET_PHYS_PAGE(i32 %211)
  %213 = call i32 @pmap_disconnect(i64 %212)
  %214 = load i32, i32* %17, align 4
  %215 = call i64 @VM_PAGE_WIRED(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %204
  %218 = load i32, i32* %15, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %15, align 4
  br label %220

220:                                              ; preds = %217, %204
  %221 = load i32, i32* %17, align 4
  %222 = call i32 @VM_PAGE_FREE(i32 %221)
  br label %269

223:                                              ; preds = %199
  %224 = load i64, i64* %9, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %242

226:                                              ; preds = %223
  %227 = load i32, i32* %17, align 4
  %228 = call i64 @VM_PAGE_GET_PHYS_PAGE(i32 %227)
  %229 = load i64, i64* @vm_page_guard_addr, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %242

231:                                              ; preds = %226
  %232 = load i64, i64* %9, align 8
  %233 = load i64, i64* %10, align 8
  %234 = load i64, i64* %11, align 8
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = sub nsw i64 %234, %237
  %239 = add nsw i64 %233, %238
  %240 = load i64, i64* @FALSE, align 8
  %241 = call i32 @pmap_change_wiring(i64 %232, i64 %239, i64 %240)
  br label %242

242:                                              ; preds = %231, %226, %223
  %243 = load i32, i32* %17, align 4
  %244 = call i64 @VM_PAGE_WIRED(i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %242
  %247 = call i32 (...) @vm_page_lockspin_queues()
  %248 = load i32, i32* %17, align 4
  %249 = load i32, i32* @TRUE, align 4
  %250 = call i32 @vm_page_unwire(i32 %248, i32 %249)
  %251 = call i32 (...) @vm_page_unlock_queues()
  %252 = load i32, i32* %15, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %15, align 4
  br label %254

254:                                              ; preds = %246, %242
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %254
  %260 = load i32, i32* %17, align 4
  %261 = call i64 @VM_PAGE_GET_PHYS_PAGE(i32 %260)
  %262 = call i32 @pmap_zero_page(i64 %261)
  %263 = load i64, i64* @FALSE, align 8
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 2
  store i64 %263, i64* %265, align 8
  br label %266

266:                                              ; preds = %259, %254
  %267 = load i32, i32* %17, align 4
  %268 = call i32 @PAGE_WAKEUP_DONE(i32 %267)
  br label %269

269:                                              ; preds = %266, %220
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %271 = load i32, i32* %18, align 4
  %272 = call i32 @vm_fault_cleanup(%struct.TYPE_18__* %270, i32 %271)
  br label %273

273:                                              ; preds = %269, %121
  br label %274

274:                                              ; preds = %273, %190, %181
  %275 = load i64, i64* @PAGE_SIZE, align 8
  %276 = load i64, i64* %11, align 8
  %277 = add nsw i64 %276, %275
  store i64 %277, i64* %11, align 8
  br label %99

278:                                              ; preds = %99
  %279 = load i64, i64* %9, align 8
  %280 = load i64, i64* %10, align 8
  %281 = load i64, i64* %10, align 8
  %282 = load i64, i64* %12, align 8
  %283 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = sub nsw i64 %282, %285
  %287 = add nsw i64 %281, %286
  %288 = load i32, i32* @TRUE, align 4
  %289 = call i32 @pmap_pageable(i64 %279, i64 %280, i64 %287, i32 %288)
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** @kernel_object, align 8
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %292 = icmp eq %struct.TYPE_18__* %290, %291
  br i1 %292, label %293, label %300

293:                                              ; preds = %278
  %294 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %14, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* %15, align 4
  %297 = call i32 @ptoa_64(i32 %296)
  %298 = sub nsw i32 0, %297
  %299 = call i32 @vm_tag_update_size(i32 %295, i32 %298)
  br label %300

300:                                              ; preds = %45, %293, %278
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_18__* @VME_OBJECT(%struct.TYPE_20__*) #2

declare dso_local i32 @VME_ALIAS(%struct.TYPE_20__*) #2

declare dso_local i64 @VME_OFFSET(%struct.TYPE_20__*) #2

declare dso_local i32 @pmap_change_wiring(i64, i64, i64) #2

declare dso_local i32 @vm_fault(%struct.TYPE_19__*, i64, i32, i32, i32, i32, i64, i64) #2

declare dso_local i64 @os_sub_overflow(i64, i64, i64*) #2

declare dso_local i32 @vm_object_lock(%struct.TYPE_18__*) #2

declare dso_local i32 @vm_object_paging_begin(%struct.TYPE_18__*) #2

declare dso_local i32 @XPR(i32, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i64 @vm_fault_page(%struct.TYPE_18__*, i64, i32, i32, i64, i32*, i32*, i32*, i32*, i32*, i32, i64, %struct.vm_object_fault_info*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local %struct.TYPE_18__* @VM_PAGE_OBJECT(i32) #2

declare dso_local i64 @VM_PAGE_GET_PHYS_PAGE(i32) #2

declare dso_local i32 @pmap_disconnect(i64) #2

declare dso_local i64 @VM_PAGE_WIRED(i32) #2

declare dso_local i32 @VM_PAGE_FREE(i32) #2

declare dso_local i32 @vm_page_lockspin_queues(...) #2

declare dso_local i32 @vm_page_unwire(i32, i32) #2

declare dso_local i32 @vm_page_unlock_queues(...) #2

declare dso_local i32 @pmap_zero_page(i64) #2

declare dso_local i32 @PAGE_WAKEUP_DONE(i32) #2

declare dso_local i32 @vm_fault_cleanup(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @pmap_pageable(i64, i64, i64, i32) #2

declare dso_local i32 @vm_tag_update_size(i32, i32) #2

declare dso_local i32 @ptoa_64(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
