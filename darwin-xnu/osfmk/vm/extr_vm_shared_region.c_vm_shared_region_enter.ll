; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_shared_region_enter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_shared_region_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._vm_map = type opaque
%struct.task = type opaque
%struct.TYPE_5__ = type { i64, i64, i64, i64, i8* }

@.str = private unnamed_addr constant [70 x i8] c"shared_region: -> enter(map=%p,task=%p,root=%p,cpu=<%d,%d>,64bit=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"shared_region: -> enter(map=%p,task=%p,root=%p,cpu=<%d,%d>,64bit=%d): lookup failed !\0A\00", align 1
@KERN_FAILURE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@VM_FLAGS_FIXED = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VM_INHERIT_SHARE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [84 x i8] c"shared_region: enter(%p,%p,%p,%d,%d,%d): vm_map_enter(0x%llx,0x%llx,%p) error 0x%x\0A\00", align 1
@pmap_nesting_size_max = common dso_local global i64 0, align 8
@VM_MEMORY_SHARED_PMAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [91 x i8] c"shared_region: enter(%p,%p,%p,%d,%d,%d): nested vm_map_enter(0x%llx,0x%llx,%p) error 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"shared_region: enter(%p,%p,%p,%d,%d,%d) <- 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_shared_region_enter(%struct._vm_map* %0, %struct.task* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct._vm_map*, align 8
  %9 = alloca %struct.task*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct._vm_map* %0, %struct._vm_map** %8, align 8
  store %struct.task* %1, %struct.task** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %26 = load %struct._vm_map*, %struct._vm_map** %8, align 8
  %27 = bitcast %struct._vm_map* %26 to i8*
  %28 = call i64 @VM_KERNEL_ADDRPERM(i8* %27)
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.task*, %struct.task** %9, align 8
  %31 = bitcast %struct.task* %30 to i8*
  %32 = call i64 @VM_KERNEL_ADDRPERM(i8* %31)
  %33 = inttoptr i64 %32 to i8*
  %34 = load i8*, i8** %11, align 8
  %35 = call i64 @VM_KERNEL_ADDRPERM(i8* %34)
  %36 = inttoptr i64 %35 to i8*
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @SHARED_REGION_TRACE_DEBUG(i8* %41)
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call %struct.TYPE_5__* @vm_shared_region_lookup(i8* %43, i32 %44, i32 %45, i32 %46)
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %15, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %49 = icmp eq %struct.TYPE_5__* %48, null
  br i1 %49, label %50, label %69

50:                                               ; preds = %6
  %51 = load %struct._vm_map*, %struct._vm_map** %8, align 8
  %52 = bitcast %struct._vm_map* %51 to i8*
  %53 = call i64 @VM_KERNEL_ADDRPERM(i8* %52)
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.task*, %struct.task** %9, align 8
  %56 = bitcast %struct.task* %55 to i8*
  %57 = call i64 @VM_KERNEL_ADDRPERM(i8* %56)
  %58 = inttoptr i64 %57 to i8*
  %59 = load i8*, i8** %11, align 8
  %60 = call i64 @VM_KERNEL_ADDRPERM(i8* %59)
  %61 = inttoptr i64 %60 to i8*
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %66)
  %68 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %68, i64* %7, align 8
  br label %366

69:                                               ; preds = %6
  %70 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %70, i64* %14, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %16, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %19, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %23, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %21, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %22, align 8
  %86 = load i32, i32* @VM_PROT_READ, align 4
  store i32 %86, i32* %24, align 4
  %87 = load i32, i32* @VM_PROT_ALL, align 4
  store i32 %87, i32* %25, align 4
  store i64 0, i64* %17, align 8
  %88 = load i64, i64* %21, align 8
  %89 = load i64, i64* %16, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %164

91:                                               ; preds = %69
  %92 = load i64, i64* %16, align 8
  store i64 %92, i64* %18, align 8
  %93 = load i64, i64* %21, align 8
  %94 = load i64, i64* %16, align 8
  %95 = sub nsw i64 %93, %94
  store i64 %95, i64* %20, align 8
  %96 = load %struct._vm_map*, %struct._vm_map** %8, align 8
  %97 = bitcast %struct._vm_map* %96 to i8*
  %98 = load i64, i64* %20, align 8
  %99 = load i32, i32* @VM_FLAGS_FIXED, align 4
  %100 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %101 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %102 = load i8*, i8** %23, align 8
  %103 = load i64, i64* %17, align 8
  %104 = load i32, i32* @TRUE, align 4
  %105 = load i32, i32* %24, align 4
  %106 = load i32, i32* %25, align 4
  %107 = load i32, i32* @VM_INHERIT_SHARE, align 4
  %108 = call i64 @vm_map_enter_mem_object(i8* %97, i64* %18, i64 %98, i32 0, i32 %99, i32 %100, i32 %101, i8* %102, i64 %103, i32 %104, i32 %105, i32 %106, i32 %107)
  store i64 %108, i64* %14, align 8
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* @KERN_SUCCESS, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %135

112:                                              ; preds = %91
  %113 = load %struct._vm_map*, %struct._vm_map** %8, align 8
  %114 = bitcast %struct._vm_map* %113 to i8*
  %115 = call i64 @VM_KERNEL_ADDRPERM(i8* %114)
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.task*, %struct.task** %9, align 8
  %118 = bitcast %struct.task* %117 to i8*
  %119 = call i64 @VM_KERNEL_ADDRPERM(i8* %118)
  %120 = inttoptr i64 %119 to i8*
  %121 = load i8*, i8** %11, align 8
  %122 = call i64 @VM_KERNEL_ADDRPERM(i8* %121)
  %123 = inttoptr i64 %122 to i8*
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i64, i64* %18, align 8
  %128 = load i64, i64* %20, align 8
  %129 = load i8*, i8** %23, align 8
  %130 = call i64 @VM_KERNEL_ADDRPERM(i8* %129)
  %131 = inttoptr i64 %130 to i8*
  %132 = load i64, i64* %14, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %133)
  br label %332

135:                                              ; preds = %91
  %136 = load %struct._vm_map*, %struct._vm_map** %8, align 8
  %137 = bitcast %struct._vm_map* %136 to i8*
  %138 = call i64 @VM_KERNEL_ADDRPERM(i8* %137)
  %139 = inttoptr i64 %138 to i8*
  %140 = load %struct.task*, %struct.task** %9, align 8
  %141 = bitcast %struct.task* %140 to i8*
  %142 = call i64 @VM_KERNEL_ADDRPERM(i8* %141)
  %143 = inttoptr i64 %142 to i8*
  %144 = load i8*, i8** %11, align 8
  %145 = call i64 @VM_KERNEL_ADDRPERM(i8* %144)
  %146 = inttoptr i64 %145 to i8*
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i64, i64* %18, align 8
  %151 = load i64, i64* %20, align 8
  %152 = load i8*, i8** %23, align 8
  %153 = call i64 @VM_KERNEL_ADDRPERM(i8* %152)
  %154 = inttoptr i64 %153 to i8*
  %155 = load i64, i64* %14, align 8
  %156 = inttoptr i64 %155 to i8*
  %157 = call i32 @SHARED_REGION_TRACE_DEBUG(i8* %156)
  %158 = load i64, i64* %20, align 8
  %159 = load i64, i64* %17, align 8
  %160 = add nsw i64 %159, %158
  store i64 %160, i64* %17, align 8
  %161 = load i64, i64* %20, align 8
  %162 = load i64, i64* %19, align 8
  %163 = sub nsw i64 %162, %161
  store i64 %163, i64* %19, align 8
  br label %164

164:                                              ; preds = %135, %69
  br label %165

165:                                              ; preds = %241, %164
  %166 = load i64, i64* %22, align 8
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %251

168:                                              ; preds = %165
  %169 = load i64, i64* %16, align 8
  %170 = load i64, i64* %17, align 8
  %171 = add nsw i64 %169, %170
  store i64 %171, i64* %18, align 8
  %172 = load i64, i64* %22, align 8
  store i64 %172, i64* %20, align 8
  %173 = load i64, i64* %20, align 8
  %174 = load i64, i64* @pmap_nesting_size_max, align 8
  %175 = icmp sgt i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = load i64, i64* @pmap_nesting_size_max, align 8
  store i64 %177, i64* %20, align 8
  br label %178

178:                                              ; preds = %176, %168
  %179 = load %struct._vm_map*, %struct._vm_map** %8, align 8
  %180 = bitcast %struct._vm_map* %179 to i8*
  %181 = load i64, i64* %20, align 8
  %182 = load i32, i32* @VM_FLAGS_FIXED, align 4
  %183 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %184 = load i32, i32* @VM_MEMORY_SHARED_PMAP, align 4
  %185 = load i8*, i8** %23, align 8
  %186 = load i64, i64* %17, align 8
  %187 = load i32, i32* @TRUE, align 4
  %188 = load i32, i32* %24, align 4
  %189 = load i32, i32* %25, align 4
  %190 = load i32, i32* @VM_INHERIT_SHARE, align 4
  %191 = call i64 @vm_map_enter_mem_object(i8* %180, i64* %18, i64 %181, i32 0, i32 %182, i32 %183, i32 %184, i8* %185, i64 %186, i32 %187, i32 %188, i32 %189, i32 %190)
  store i64 %191, i64* %14, align 8
  %192 = load i64, i64* %14, align 8
  %193 = load i64, i64* @KERN_SUCCESS, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %218

195:                                              ; preds = %178
  %196 = load %struct._vm_map*, %struct._vm_map** %8, align 8
  %197 = bitcast %struct._vm_map* %196 to i8*
  %198 = call i64 @VM_KERNEL_ADDRPERM(i8* %197)
  %199 = inttoptr i64 %198 to i8*
  %200 = load %struct.task*, %struct.task** %9, align 8
  %201 = bitcast %struct.task* %200 to i8*
  %202 = call i64 @VM_KERNEL_ADDRPERM(i8* %201)
  %203 = inttoptr i64 %202 to i8*
  %204 = load i8*, i8** %11, align 8
  %205 = call i64 @VM_KERNEL_ADDRPERM(i8* %204)
  %206 = inttoptr i64 %205 to i8*
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* %10, align 4
  %210 = load i64, i64* %18, align 8
  %211 = load i64, i64* %20, align 8
  %212 = load i8*, i8** %23, align 8
  %213 = call i64 @VM_KERNEL_ADDRPERM(i8* %212)
  %214 = inttoptr i64 %213 to i8*
  %215 = load i64, i64* %14, align 8
  %216 = inttoptr i64 %215 to i8*
  %217 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %216)
  br label %332

218:                                              ; preds = %178
  %219 = load %struct._vm_map*, %struct._vm_map** %8, align 8
  %220 = bitcast %struct._vm_map* %219 to i8*
  %221 = call i64 @VM_KERNEL_ADDRPERM(i8* %220)
  %222 = inttoptr i64 %221 to i8*
  %223 = load %struct.task*, %struct.task** %9, align 8
  %224 = bitcast %struct.task* %223 to i8*
  %225 = call i64 @VM_KERNEL_ADDRPERM(i8* %224)
  %226 = inttoptr i64 %225 to i8*
  %227 = load i8*, i8** %11, align 8
  %228 = call i64 @VM_KERNEL_ADDRPERM(i8* %227)
  %229 = inttoptr i64 %228 to i8*
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* %13, align 4
  %232 = load i32, i32* %10, align 4
  %233 = load i64, i64* %18, align 8
  %234 = load i64, i64* %20, align 8
  %235 = load i8*, i8** %23, align 8
  %236 = call i64 @VM_KERNEL_ADDRPERM(i8* %235)
  %237 = inttoptr i64 %236 to i8*
  %238 = load i64, i64* %14, align 8
  %239 = inttoptr i64 %238 to i8*
  %240 = call i32 @SHARED_REGION_TRACE_DEBUG(i8* %239)
  br label %241

241:                                              ; preds = %218
  %242 = load i64, i64* %20, align 8
  %243 = load i64, i64* %17, align 8
  %244 = add nsw i64 %243, %242
  store i64 %244, i64* %17, align 8
  %245 = load i64, i64* %20, align 8
  %246 = load i64, i64* %19, align 8
  %247 = sub nsw i64 %246, %245
  store i64 %247, i64* %19, align 8
  %248 = load i64, i64* %20, align 8
  %249 = load i64, i64* %22, align 8
  %250 = sub nsw i64 %249, %248
  store i64 %250, i64* %22, align 8
  br label %165

251:                                              ; preds = %165
  %252 = load i64, i64* %19, align 8
  %253 = icmp sgt i64 %252, 0
  br i1 %253, label %254, label %327

254:                                              ; preds = %251
  %255 = load i64, i64* %16, align 8
  %256 = load i64, i64* %17, align 8
  %257 = add nsw i64 %255, %256
  store i64 %257, i64* %18, align 8
  %258 = load i64, i64* %19, align 8
  store i64 %258, i64* %20, align 8
  %259 = load %struct._vm_map*, %struct._vm_map** %8, align 8
  %260 = bitcast %struct._vm_map* %259 to i8*
  %261 = load i64, i64* %20, align 8
  %262 = load i32, i32* @VM_FLAGS_FIXED, align 4
  %263 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %264 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %265 = load i8*, i8** %23, align 8
  %266 = load i64, i64* %17, align 8
  %267 = load i32, i32* @TRUE, align 4
  %268 = load i32, i32* %24, align 4
  %269 = load i32, i32* %25, align 4
  %270 = load i32, i32* @VM_INHERIT_SHARE, align 4
  %271 = call i64 @vm_map_enter_mem_object(i8* %260, i64* %18, i64 %261, i32 0, i32 %262, i32 %263, i32 %264, i8* %265, i64 %266, i32 %267, i32 %268, i32 %269, i32 %270)
  store i64 %271, i64* %14, align 8
  %272 = load i64, i64* %14, align 8
  %273 = load i64, i64* @KERN_SUCCESS, align 8
  %274 = icmp ne i64 %272, %273
  br i1 %274, label %275, label %298

275:                                              ; preds = %254
  %276 = load %struct._vm_map*, %struct._vm_map** %8, align 8
  %277 = bitcast %struct._vm_map* %276 to i8*
  %278 = call i64 @VM_KERNEL_ADDRPERM(i8* %277)
  %279 = inttoptr i64 %278 to i8*
  %280 = load %struct.task*, %struct.task** %9, align 8
  %281 = bitcast %struct.task* %280 to i8*
  %282 = call i64 @VM_KERNEL_ADDRPERM(i8* %281)
  %283 = inttoptr i64 %282 to i8*
  %284 = load i8*, i8** %11, align 8
  %285 = call i64 @VM_KERNEL_ADDRPERM(i8* %284)
  %286 = inttoptr i64 %285 to i8*
  %287 = load i32, i32* %12, align 4
  %288 = load i32, i32* %13, align 4
  %289 = load i32, i32* %10, align 4
  %290 = load i64, i64* %18, align 8
  %291 = load i64, i64* %20, align 8
  %292 = load i8*, i8** %23, align 8
  %293 = call i64 @VM_KERNEL_ADDRPERM(i8* %292)
  %294 = inttoptr i64 %293 to i8*
  %295 = load i64, i64* %14, align 8
  %296 = inttoptr i64 %295 to i8*
  %297 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %296)
  br label %332

298:                                              ; preds = %254
  %299 = load %struct._vm_map*, %struct._vm_map** %8, align 8
  %300 = bitcast %struct._vm_map* %299 to i8*
  %301 = call i64 @VM_KERNEL_ADDRPERM(i8* %300)
  %302 = inttoptr i64 %301 to i8*
  %303 = load %struct.task*, %struct.task** %9, align 8
  %304 = bitcast %struct.task* %303 to i8*
  %305 = call i64 @VM_KERNEL_ADDRPERM(i8* %304)
  %306 = inttoptr i64 %305 to i8*
  %307 = load i8*, i8** %11, align 8
  %308 = call i64 @VM_KERNEL_ADDRPERM(i8* %307)
  %309 = inttoptr i64 %308 to i8*
  %310 = load i32, i32* %12, align 4
  %311 = load i32, i32* %13, align 4
  %312 = load i32, i32* %10, align 4
  %313 = load i64, i64* %18, align 8
  %314 = load i64, i64* %20, align 8
  %315 = load i8*, i8** %23, align 8
  %316 = call i64 @VM_KERNEL_ADDRPERM(i8* %315)
  %317 = inttoptr i64 %316 to i8*
  %318 = load i64, i64* %14, align 8
  %319 = inttoptr i64 %318 to i8*
  %320 = call i32 @SHARED_REGION_TRACE_DEBUG(i8* %319)
  %321 = load i64, i64* %20, align 8
  %322 = load i64, i64* %17, align 8
  %323 = add nsw i64 %322, %321
  store i64 %323, i64* %17, align 8
  %324 = load i64, i64* %20, align 8
  %325 = load i64, i64* %19, align 8
  %326 = sub nsw i64 %325, %324
  store i64 %326, i64* %19, align 8
  br label %327

327:                                              ; preds = %298, %251
  %328 = load i64, i64* %19, align 8
  %329 = icmp eq i64 %328, 0
  %330 = zext i1 %329 to i32
  %331 = call i32 @assert(i32 %330)
  br label %332

332:                                              ; preds = %327, %275, %195, %112
  %333 = load i64, i64* %14, align 8
  %334 = load i64, i64* @KERN_SUCCESS, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %341

336:                                              ; preds = %332
  %337 = load %struct.task*, %struct.task** %9, align 8
  %338 = bitcast %struct.task* %337 to i8*
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %340 = call i32 @vm_shared_region_set(i8* %338, %struct.TYPE_5__* %339)
  br label %347

341:                                              ; preds = %332
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %343 = call i32 @vm_shared_region_deallocate(%struct.TYPE_5__* %342)
  %344 = load %struct.task*, %struct.task** %9, align 8
  %345 = bitcast %struct.task* %344 to i8*
  %346 = call i32 @vm_shared_region_set(i8* %345, %struct.TYPE_5__* null)
  br label %347

347:                                              ; preds = %341, %336
  %348 = load %struct._vm_map*, %struct._vm_map** %8, align 8
  %349 = bitcast %struct._vm_map* %348 to i8*
  %350 = call i64 @VM_KERNEL_ADDRPERM(i8* %349)
  %351 = inttoptr i64 %350 to i8*
  %352 = load %struct.task*, %struct.task** %9, align 8
  %353 = bitcast %struct.task* %352 to i8*
  %354 = call i64 @VM_KERNEL_ADDRPERM(i8* %353)
  %355 = inttoptr i64 %354 to i8*
  %356 = load i8*, i8** %11, align 8
  %357 = call i64 @VM_KERNEL_ADDRPERM(i8* %356)
  %358 = inttoptr i64 %357 to i8*
  %359 = load i32, i32* %12, align 4
  %360 = load i32, i32* %13, align 4
  %361 = load i32, i32* %10, align 4
  %362 = load i64, i64* %14, align 8
  %363 = inttoptr i64 %362 to i8*
  %364 = call i32 @SHARED_REGION_TRACE_DEBUG(i8* %363)
  %365 = load i64, i64* %14, align 8
  store i64 %365, i64* %7, align 8
  br label %366

366:                                              ; preds = %347, %50
  %367 = load i64, i64* %7, align 8
  ret i64 %367
}

declare dso_local i32 @SHARED_REGION_TRACE_DEBUG(i8*) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(i8*) #1

declare dso_local %struct.TYPE_5__* @vm_shared_region_lookup(i8*, i32, i32, i32) #1

declare dso_local i32 @SHARED_REGION_TRACE_ERROR(i8*) #1

declare dso_local i64 @vm_map_enter_mem_object(i8*, i64*, i64, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_shared_region_set(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @vm_shared_region_deallocate(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
