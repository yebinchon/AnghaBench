; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_names.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@IS_NULL = common dso_local global %struct.TYPE_9__* null, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@ipc_kernel_map = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_IPC = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_NONE = common dso_local global i64 0, align 8
@VM_MAP_COPY_NULL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_port_names(%struct.TYPE_9__* %0, i32** %1, i32* %2, i32** %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_10__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  %32 = call i32 @static_assert(i32 1)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @IS_NULL, align 8
  %35 = icmp eq %struct.TYPE_9__* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %37, i64* %6, align 8
  br label %343

38:                                               ; preds = %5
  store i64 0, i64* %20, align 8
  br label %39

39:                                               ; preds = %178, %38
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = call i32 @is_read_lock(%struct.TYPE_9__* %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = call i32 @is_active(%struct.TYPE_9__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = call i32 @is_read_unlock(%struct.TYPE_9__* %46)
  %48 = load i64, i64* %20, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32, i32* @ipc_kernel_map, align 4
  %52 = load i64, i64* %21, align 8
  %53 = load i64, i64* %20, align 8
  %54 = call i32 @kmem_free(i32 %51, i64 %52, i64 %53)
  %55 = load i32, i32* @ipc_kernel_map, align 4
  %56 = load i64, i64* %22, align 8
  %57 = load i64, i64* %20, align 8
  %58 = call i32 @kmem_free(i32 %55, i64 %56, i64 %57)
  br label %59

59:                                               ; preds = %50, %45
  %60 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %60, i64* %6, align 8
  br label %343

61:                                               ; preds = %39
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %25, align 4
  %65 = load i32, i32* %25, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = load i32, i32* @ipc_kernel_map, align 4
  %69 = call i32 @VM_MAP_PAGE_MASK(i32 %68)
  %70 = call i64 @vm_map_round_page(i64 %67, i32 %69)
  store i64 %70, i64* %26, align 8
  %71 = load i64, i64* %26, align 8
  %72 = load i64, i64* %20, align 8
  %73 = icmp sle i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %179

75:                                               ; preds = %61
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %77 = call i32 @is_read_unlock(%struct.TYPE_9__* %76)
  %78 = load i64, i64* %20, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load i32, i32* @ipc_kernel_map, align 4
  %82 = load i64, i64* %21, align 8
  %83 = load i64, i64* %20, align 8
  %84 = call i32 @kmem_free(i32 %81, i64 %82, i64 %83)
  %85 = load i32, i32* @ipc_kernel_map, align 4
  %86 = load i64, i64* %22, align 8
  %87 = load i64, i64* %20, align 8
  %88 = call i32 @kmem_free(i32 %85, i64 %86, i64 %87)
  br label %89

89:                                               ; preds = %80, %75
  %90 = load i64, i64* %26, align 8
  store i64 %90, i64* %20, align 8
  %91 = load i32, i32* @ipc_kernel_map, align 4
  %92 = load i64, i64* %20, align 8
  %93 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %94 = load i32, i32* @VM_KERN_MEMORY_IPC, align 4
  %95 = call i64 @vm_allocate_kernel(i32 %91, i64* %21, i64 %92, i32 %93, i32 %94)
  store i64 %95, i64* %19, align 8
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* @KERN_SUCCESS, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %100, i64* %6, align 8
  br label %343

101:                                              ; preds = %89
  %102 = load i32, i32* @ipc_kernel_map, align 4
  %103 = load i64, i64* %20, align 8
  %104 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %105 = load i32, i32* @VM_KERN_MEMORY_IPC, align 4
  %106 = call i64 @vm_allocate_kernel(i32 %102, i64* %22, i64 %103, i32 %104, i32 %105)
  store i64 %106, i64* %19, align 8
  %107 = load i64, i64* %19, align 8
  %108 = load i64, i64* @KERN_SUCCESS, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %101
  %111 = load i32, i32* @ipc_kernel_map, align 4
  %112 = load i64, i64* %21, align 8
  %113 = load i64, i64* %20, align 8
  %114 = call i32 @kmem_free(i32 %111, i64 %112, i64 %113)
  %115 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %115, i64* %6, align 8
  br label %343

116:                                              ; preds = %101
  %117 = load i32, i32* @ipc_kernel_map, align 4
  %118 = load i64, i64* %21, align 8
  %119 = load i32, i32* @ipc_kernel_map, align 4
  %120 = call i32 @VM_MAP_PAGE_MASK(i32 %119)
  %121 = call i32 @vm_map_trunc_page(i64 %118, i32 %120)
  %122 = load i64, i64* %21, align 8
  %123 = load i64, i64* %20, align 8
  %124 = add nsw i64 %122, %123
  %125 = load i32, i32* @ipc_kernel_map, align 4
  %126 = call i32 @VM_MAP_PAGE_MASK(i32 %125)
  %127 = call i64 @vm_map_round_page(i64 %124, i32 %126)
  %128 = load i32, i32* @VM_PROT_READ, align 4
  %129 = load i32, i32* @VM_PROT_WRITE, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @VM_KERN_MEMORY_IPC, align 4
  %132 = load i32, i32* @FALSE, align 4
  %133 = call i64 @vm_map_wire_kernel(i32 %117, i32 %121, i64 %127, i32 %130, i32 %131, i32 %132)
  store i64 %133, i64* %19, align 8
  %134 = load i64, i64* %19, align 8
  %135 = load i64, i64* @KERN_SUCCESS, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %116
  %138 = load i32, i32* @ipc_kernel_map, align 4
  %139 = load i64, i64* %21, align 8
  %140 = load i64, i64* %20, align 8
  %141 = call i32 @kmem_free(i32 %138, i64 %139, i64 %140)
  %142 = load i32, i32* @ipc_kernel_map, align 4
  %143 = load i64, i64* %22, align 8
  %144 = load i64, i64* %20, align 8
  %145 = call i32 @kmem_free(i32 %142, i64 %143, i64 %144)
  %146 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %146, i64* %6, align 8
  br label %343

147:                                              ; preds = %116
  %148 = load i32, i32* @ipc_kernel_map, align 4
  %149 = load i64, i64* %22, align 8
  %150 = load i32, i32* @ipc_kernel_map, align 4
  %151 = call i32 @VM_MAP_PAGE_MASK(i32 %150)
  %152 = call i32 @vm_map_trunc_page(i64 %149, i32 %151)
  %153 = load i64, i64* %22, align 8
  %154 = load i64, i64* %20, align 8
  %155 = add nsw i64 %153, %154
  %156 = load i32, i32* @ipc_kernel_map, align 4
  %157 = call i32 @VM_MAP_PAGE_MASK(i32 %156)
  %158 = call i64 @vm_map_round_page(i64 %155, i32 %157)
  %159 = load i32, i32* @VM_PROT_READ, align 4
  %160 = load i32, i32* @VM_PROT_WRITE, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @VM_KERN_MEMORY_IPC, align 4
  %163 = load i32, i32* @FALSE, align 4
  %164 = call i64 @vm_map_wire_kernel(i32 %148, i32 %152, i64 %158, i32 %161, i32 %162, i32 %163)
  store i64 %164, i64* %19, align 8
  %165 = load i64, i64* %19, align 8
  %166 = load i64, i64* @KERN_SUCCESS, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %147
  %169 = load i32, i32* @ipc_kernel_map, align 4
  %170 = load i64, i64* %21, align 8
  %171 = load i64, i64* %20, align 8
  %172 = call i32 @kmem_free(i32 %169, i64 %170, i64 %171)
  %173 = load i32, i32* @ipc_kernel_map, align 4
  %174 = load i64, i64* %22, align 8
  %175 = load i64, i64* %20, align 8
  %176 = call i32 @kmem_free(i32 %173, i64 %174, i64 %175)
  %177 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %177, i64* %6, align 8
  br label %343

178:                                              ; preds = %147
  br label %39

179:                                              ; preds = %74
  %180 = load i64, i64* %21, align 8
  %181 = inttoptr i64 %180 to i32*
  store i32* %181, i32** %17, align 8
  %182 = load i64, i64* %22, align 8
  %183 = inttoptr i64 %182 to i32*
  store i32* %183, i32** %18, align 8
  store i32 0, i32* %15, align 4
  %184 = call i32 (...) @ipc_port_timestamp()
  store i32 %184, i32* %16, align 4
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  store %struct.TYPE_10__* %187, %struct.TYPE_10__** %12, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  store i32 %190, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %191

191:                                              ; preds = %219, %179
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* %13, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %222

195:                                              ; preds = %191
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %197 = load i32, i32* %14, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i64 %198
  store %struct.TYPE_10__* %199, %struct.TYPE_10__** %27, align 8
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %28, align 4
  %203 = load i32, i32* %28, align 4
  %204 = call i64 @IE_BITS_TYPE(i32 %203)
  %205 = load i64, i64* @MACH_PORT_TYPE_NONE, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %218

207:                                              ; preds = %195
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %28, align 4
  %210 = call i32 @IE_BITS_GEN(i32 %209)
  %211 = call i32 @MACH_PORT_MAKE(i32 %208, i32 %210)
  store i32 %211, i32* %29, align 4
  %212 = load i32, i32* %16, align 4
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %214 = load i32, i32* %29, align 4
  %215 = load i32*, i32** %17, align 8
  %216 = load i32*, i32** %18, align 8
  %217 = call i32 @mach_port_names_helper(i32 %212, %struct.TYPE_10__* %213, i32 %214, i32* %215, i32* %216, i32* %15)
  br label %218

218:                                              ; preds = %207, %195
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %14, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %14, align 4
  br label %191

222:                                              ; preds = %191
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %224 = call i32 @is_read_unlock(%struct.TYPE_9__* %223)
  %225 = load i32, i32* %15, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %222
  %228 = load i64, i64* @VM_MAP_COPY_NULL, align 8
  store i64 %228, i64* %23, align 8
  %229 = load i64, i64* @VM_MAP_COPY_NULL, align 8
  store i64 %229, i64* %24, align 8
  %230 = load i64, i64* %20, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %227
  %233 = load i32, i32* @ipc_kernel_map, align 4
  %234 = load i64, i64* %21, align 8
  %235 = load i64, i64* %20, align 8
  %236 = call i32 @kmem_free(i32 %233, i64 %234, i64 %235)
  %237 = load i32, i32* @ipc_kernel_map, align 4
  %238 = load i64, i64* %22, align 8
  %239 = load i64, i64* %20, align 8
  %240 = call i32 @kmem_free(i32 %237, i64 %238, i64 %239)
  br label %241

241:                                              ; preds = %232, %227
  br label %331

242:                                              ; preds = %222
  %243 = load i32, i32* %15, align 4
  %244 = sext i32 %243 to i64
  %245 = mul i64 %244, 4
  store i64 %245, i64* %30, align 8
  %246 = load i64, i64* %30, align 8
  %247 = load i32, i32* @ipc_kernel_map, align 4
  %248 = call i32 @VM_MAP_PAGE_MASK(i32 %247)
  %249 = call i64 @vm_map_round_page(i64 %246, i32 %248)
  store i64 %249, i64* %31, align 8
  %250 = load i32, i32* @ipc_kernel_map, align 4
  %251 = load i64, i64* %21, align 8
  %252 = load i32, i32* @ipc_kernel_map, align 4
  %253 = call i32 @VM_MAP_PAGE_MASK(i32 %252)
  %254 = call i32 @vm_map_trunc_page(i64 %251, i32 %253)
  %255 = load i64, i64* %21, align 8
  %256 = load i64, i64* %31, align 8
  %257 = add nsw i64 %255, %256
  %258 = load i32, i32* @ipc_kernel_map, align 4
  %259 = call i32 @VM_MAP_PAGE_MASK(i32 %258)
  %260 = call i64 @vm_map_round_page(i64 %257, i32 %259)
  %261 = load i32, i32* @FALSE, align 4
  %262 = call i64 @vm_map_unwire(i32 %250, i32 %254, i64 %260, i32 %261)
  store i64 %262, i64* %19, align 8
  %263 = load i64, i64* %19, align 8
  %264 = load i64, i64* @KERN_SUCCESS, align 8
  %265 = icmp eq i64 %263, %264
  %266 = zext i1 %265 to i32
  %267 = call i32 @assert(i32 %266)
  %268 = load i32, i32* @ipc_kernel_map, align 4
  %269 = load i64, i64* %22, align 8
  %270 = load i32, i32* @ipc_kernel_map, align 4
  %271 = call i32 @VM_MAP_PAGE_MASK(i32 %270)
  %272 = call i32 @vm_map_trunc_page(i64 %269, i32 %271)
  %273 = load i64, i64* %22, align 8
  %274 = load i64, i64* %31, align 8
  %275 = add nsw i64 %273, %274
  %276 = load i32, i32* @ipc_kernel_map, align 4
  %277 = call i32 @VM_MAP_PAGE_MASK(i32 %276)
  %278 = call i64 @vm_map_round_page(i64 %275, i32 %277)
  %279 = load i32, i32* @FALSE, align 4
  %280 = call i64 @vm_map_unwire(i32 %268, i32 %272, i64 %278, i32 %279)
  store i64 %280, i64* %19, align 8
  %281 = load i64, i64* %19, align 8
  %282 = load i64, i64* @KERN_SUCCESS, align 8
  %283 = icmp eq i64 %281, %282
  %284 = zext i1 %283 to i32
  %285 = call i32 @assert(i32 %284)
  %286 = load i32, i32* @ipc_kernel_map, align 4
  %287 = load i64, i64* %21, align 8
  %288 = trunc i64 %287 to i32
  %289 = load i64, i64* %30, align 8
  %290 = trunc i64 %289 to i32
  %291 = load i32, i32* @TRUE, align 4
  %292 = call i64 @vm_map_copyin(i32 %286, i32 %288, i32 %290, i32 %291, i64* %23)
  store i64 %292, i64* %19, align 8
  %293 = load i64, i64* %19, align 8
  %294 = load i64, i64* @KERN_SUCCESS, align 8
  %295 = icmp eq i64 %293, %294
  %296 = zext i1 %295 to i32
  %297 = call i32 @assert(i32 %296)
  %298 = load i32, i32* @ipc_kernel_map, align 4
  %299 = load i64, i64* %22, align 8
  %300 = trunc i64 %299 to i32
  %301 = load i64, i64* %30, align 8
  %302 = trunc i64 %301 to i32
  %303 = load i32, i32* @TRUE, align 4
  %304 = call i64 @vm_map_copyin(i32 %298, i32 %300, i32 %302, i32 %303, i64* %24)
  store i64 %304, i64* %19, align 8
  %305 = load i64, i64* %19, align 8
  %306 = load i64, i64* @KERN_SUCCESS, align 8
  %307 = icmp eq i64 %305, %306
  %308 = zext i1 %307 to i32
  %309 = call i32 @assert(i32 %308)
  %310 = load i64, i64* %31, align 8
  %311 = load i64, i64* %20, align 8
  %312 = icmp ne i64 %310, %311
  br i1 %312, label %313, label %330

313:                                              ; preds = %242
  %314 = load i32, i32* @ipc_kernel_map, align 4
  %315 = load i64, i64* %21, align 8
  %316 = load i64, i64* %31, align 8
  %317 = add nsw i64 %315, %316
  %318 = load i64, i64* %20, align 8
  %319 = load i64, i64* %31, align 8
  %320 = sub nsw i64 %318, %319
  %321 = call i32 @kmem_free(i32 %314, i64 %317, i64 %320)
  %322 = load i32, i32* @ipc_kernel_map, align 4
  %323 = load i64, i64* %22, align 8
  %324 = load i64, i64* %31, align 8
  %325 = add nsw i64 %323, %324
  %326 = load i64, i64* %20, align 8
  %327 = load i64, i64* %31, align 8
  %328 = sub nsw i64 %326, %327
  %329 = call i32 @kmem_free(i32 %322, i64 %325, i64 %328)
  br label %330

330:                                              ; preds = %313, %242
  br label %331

331:                                              ; preds = %330, %241
  %332 = load i64, i64* %23, align 8
  %333 = inttoptr i64 %332 to i32*
  %334 = load i32**, i32*** %8, align 8
  store i32* %333, i32** %334, align 8
  %335 = load i32, i32* %15, align 4
  %336 = load i32*, i32** %9, align 8
  store i32 %335, i32* %336, align 4
  %337 = load i64, i64* %24, align 8
  %338 = inttoptr i64 %337 to i32*
  %339 = load i32**, i32*** %10, align 8
  store i32* %338, i32** %339, align 8
  %340 = load i32, i32* %15, align 4
  %341 = load i32*, i32** %11, align 8
  store i32 %340, i32* %341, align 4
  %342 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %342, i64* %6, align 8
  br label %343

343:                                              ; preds = %331, %168, %137, %110, %99, %59, %36
  %344 = load i64, i64* %6, align 8
  ret i64 %344
}

declare dso_local i32 @static_assert(i32) #1

declare dso_local i32 @is_read_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @is_active(%struct.TYPE_9__*) #1

declare dso_local i32 @is_read_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @kmem_free(i32, i64, i64) #1

declare dso_local i64 @vm_map_round_page(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i32) #1

declare dso_local i64 @vm_allocate_kernel(i32, i64*, i64, i32, i32) #1

declare dso_local i64 @vm_map_wire_kernel(i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @vm_map_trunc_page(i64, i32) #1

declare dso_local i32 @ipc_port_timestamp(...) #1

declare dso_local i64 @IE_BITS_TYPE(i32) #1

declare dso_local i32 @MACH_PORT_MAKE(i32, i32) #1

declare dso_local i32 @IE_BITS_GEN(i32) #1

declare dso_local i32 @mach_port_names_helper(i32, %struct.TYPE_10__*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @vm_map_unwire(i32, i32, i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vm_map_copyin(i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
