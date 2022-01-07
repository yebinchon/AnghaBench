; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_copyout_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_copyout_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_63__ = type { i64, i64, i64, i64, i64, i64, i8*, i64, i64, i32, i32, i32, i32, i8*, %struct.TYPE_63__*, i64, %struct.TYPE_60__, i32 }
%struct.TYPE_60__ = type { i64 }
%struct.TYPE_61__ = type { i64 }
%struct.TYPE_62__ = type { i64, i64, i64, i32, i32, %struct.TYPE_59__, i64, i32, i64, %struct.TYPE_63__* }
%struct.TYPE_59__ = type { i64 }
%struct.vm_object_fault_info = type { i32, i32 }

@VM_MAP_COPY_NULL = common dso_local global %struct.TYPE_63__* null, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i64 0, align 8
@VM_MAP_COPY_OBJECT = common dso_local global i64 0, align 8
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@VM_PROT_DEFAULT = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@VM_INHERIT_DEFAULT = common dso_local global i32 0, align 4
@vm_map_copy_zone = common dso_local global i32 0, align 4
@VM_MAP_COPY_KERNEL_BUFFER = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@KERN_NO_SPACE = common dso_local global i64 0, align 8
@THREAD_INTERRUPTIBLE = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Found an existing entry (%p) instead of potential hole at address: 0x%llx.\0A\00", align 1
@vm_map_entry_reserved_zone = common dso_local global i32 0, align 4
@vm_map_entry_zone = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_BEHAVIOR_DEFAULT = common dso_local global i32 0, align 4
@VM_PAGE_NULL = common dso_local global %struct.TYPE_61__* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"vm_map_copyout: wiring %p\00", align 1
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@DBG_CACHE_HIT_FAULT = common dso_local global i32 0, align 4
@PMAP_OPTIONS_ALT_ACCT = common dso_local global i32 0, align 4
@PAGE_SIZE_64 = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_map_copyout_internal(%struct.TYPE_62__* %0, i64* %1, %struct.TYPE_63__* %2, i64 %3, i64 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_62__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_63__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_63__*, align 8
  %23 = alloca %struct.TYPE_63__*, align 8
  %24 = alloca %struct.TYPE_63__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_63__*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_63__*, align 8
  %32 = alloca %struct.TYPE_63__*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca %struct.TYPE_61__*, align 8
  %39 = alloca %struct.vm_object_fault_info, align 4
  store %struct.TYPE_62__* %0, %struct.TYPE_62__** %10, align 8
  store i64* %1, i64** %11, align 8
  store %struct.TYPE_63__* %2, %struct.TYPE_63__** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %40 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %41 = load %struct.TYPE_63__*, %struct.TYPE_63__** @VM_MAP_COPY_NULL, align 8
  %42 = icmp eq %struct.TYPE_63__* %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %8
  %44 = load i64*, i64** %11, align 8
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %45, i64* %9, align 8
  br label %645

46:                                               ; preds = %8
  %47 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i64*, i64** %11, align 8
  store i64 0, i64* %53, align 8
  %54 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %54, i64* %9, align 8
  br label %645

55:                                               ; preds = %46
  %56 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @VM_MAP_COPY_OBJECT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %115

61:                                               ; preds = %55
  %62 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %62, i32 0, i32 17
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %25, align 4
  %65 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @vm_object_trunc_page(i64 %67)
  store i64 %68, i64* %27, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %27, align 8
  %74 = sub nsw i64 %72, %73
  %75 = add nsw i64 %69, %74
  %76 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %77 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_62__* %76)
  %78 = call i64 @vm_map_round_page(i64 %75, i32 %77)
  store i64 %78, i64* %18, align 8
  %79 = load i64*, i64** %11, align 8
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %81 = load i64*, i64** %11, align 8
  %82 = load i64, i64* %18, align 8
  %83 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %84 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %85 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %86 = load i32, i32* %25, align 4
  %87 = load i64, i64* %27, align 8
  %88 = load i8*, i8** @FALSE, align 8
  %89 = load i32, i32* @VM_PROT_DEFAULT, align 4
  %90 = load i32, i32* @VM_PROT_ALL, align 4
  %91 = load i32, i32* @VM_INHERIT_DEFAULT, align 4
  %92 = call i64 @vm_map_enter(%struct.TYPE_62__* %80, i64* %81, i64 %82, i64 0, i32 %83, i32 %84, i32 %85, i32 %86, i64 %87, i8* %88, i32 %89, i32 %90, i32 %91)
  store i64 %92, i64* %26, align 8
  %93 = load i64, i64* %26, align 8
  %94 = load i64, i64* @KERN_SUCCESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %61
  %97 = load i64, i64* %26, align 8
  store i64 %97, i64* %9, align 8
  br label %645

98:                                               ; preds = %61
  %99 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %27, align 8
  %103 = sub nsw i64 %101, %102
  %104 = load i64*, i64** %11, align 8
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, %103
  store i64 %106, i64* %104, align 8
  %107 = load i64, i64* %14, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %98
  %110 = load i32, i32* @vm_map_copy_zone, align 4
  %111 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %112 = call i32 @zfree(i32 %110, %struct.TYPE_63__* %111)
  br label %113

113:                                              ; preds = %109, %98
  %114 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %114, i64* %9, align 8
  br label %645

115:                                              ; preds = %55
  %116 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @VM_MAP_COPY_KERNEL_BUFFER, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %115
  %122 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %123 = load i64*, i64** %11, align 8
  %124 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %125 = load i64, i64* %13, align 8
  %126 = load i8*, i8** @FALSE, align 8
  %127 = load i64, i64* %14, align 8
  %128 = call i64 @vm_map_copyout_kernel_buffer(%struct.TYPE_62__* %122, i64* %123, %struct.TYPE_63__* %124, i64 %125, i8* %126, i64 %127)
  store i64 %128, i64* %9, align 8
  br label %645

129:                                              ; preds = %115
  %130 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %134 = call i32 @VM_MAP_COPY_PAGE_MASK(%struct.TYPE_63__* %133)
  %135 = call i64 @vm_map_trunc_page(i64 %132, i32 %134)
  store i64 %135, i64* %21, align 8
  %136 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %13, align 8
  %140 = add nsw i64 %138, %139
  %141 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %142 = call i32 @VM_MAP_COPY_PAGE_MASK(%struct.TYPE_63__* %141)
  %143 = call i64 @vm_map_round_page(i64 %140, i32 %142)
  %144 = load i64, i64* %21, align 8
  %145 = sub nsw i64 %143, %144
  store i64 %145, i64* %18, align 8
  br label %146

146:                                              ; preds = %240, %129
  %147 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %148 = call i32 @vm_map_lock(%struct.TYPE_62__* %147)
  %149 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @TRUE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %146
  %155 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %156 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %157 = load i64, i64* %20, align 8
  %158 = call i32 @VM_MAP_HIGHEST_ENTRY(%struct.TYPE_62__* %155, %struct.TYPE_63__* %156, i64 %157)
  %159 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  store %struct.TYPE_63__* %159, %struct.TYPE_63__** %22, align 8
  br label %205

160:                                              ; preds = %146
  %161 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %161, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %181

165:                                              ; preds = %160
  %166 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 8
  %169 = call %struct.TYPE_63__* @CAST_TO_VM_MAP_ENTRY(i32 %168)
  store %struct.TYPE_63__* %169, %struct.TYPE_63__** %24, align 8
  %170 = load %struct.TYPE_63__*, %struct.TYPE_63__** %24, align 8
  %171 = icmp eq %struct.TYPE_63__* %170, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %174 = call i32 @vm_map_unlock(%struct.TYPE_62__* %173)
  %175 = load i64, i64* @KERN_NO_SPACE, align 8
  store i64 %175, i64* %9, align 8
  br label %645

176:                                              ; preds = %165
  %177 = load %struct.TYPE_63__*, %struct.TYPE_63__** %24, align 8
  store %struct.TYPE_63__* %177, %struct.TYPE_63__** %22, align 8
  %178 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %179 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %20, align 8
  br label %200

181:                                              ; preds = %160
  %182 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %183 = call i32 @first_free_is_valid(%struct.TYPE_62__* %182)
  %184 = call i32 @assert(i32 %183)
  %185 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %185, i32 0, i32 9
  %187 = load %struct.TYPE_63__*, %struct.TYPE_63__** %186, align 8
  store %struct.TYPE_63__* %187, %struct.TYPE_63__** %22, align 8
  %188 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %189 = call %struct.TYPE_63__* @vm_map_to_entry(%struct.TYPE_62__* %188)
  %190 = icmp eq %struct.TYPE_63__* %187, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %181
  %192 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %193 = call i64 @vm_map_min(%struct.TYPE_62__* %192)
  br label %198

194:                                              ; preds = %181
  %195 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %196 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  br label %198

198:                                              ; preds = %194, %191
  %199 = phi i64 [ %193, %191 ], [ %197, %194 ]
  store i64 %199, i64* %20, align 8
  br label %200

200:                                              ; preds = %198, %176
  %201 = load i64, i64* %20, align 8
  %202 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %203 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_62__* %202)
  %204 = call i64 @vm_map_round_page(i64 %201, i32 %203)
  store i64 %204, i64* %20, align 8
  br label %205

205:                                              ; preds = %200, %154
  br label %206

206:                                              ; preds = %306, %205
  %207 = load i64, i64* @TRUE, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %311

209:                                              ; preds = %206
  %210 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %211 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %210, i32 0, i32 14
  %212 = load %struct.TYPE_63__*, %struct.TYPE_63__** %211, align 8
  store %struct.TYPE_63__* %212, %struct.TYPE_63__** %28, align 8
  %213 = load i64, i64* %20, align 8
  %214 = load i64, i64* %18, align 8
  %215 = add nsw i64 %213, %214
  store i64 %215, i64* %29, align 8
  %216 = load i64, i64* %29, align 8
  %217 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp sgt i64 %216, %219
  br i1 %220, label %225, label %221

221:                                              ; preds = %209
  %222 = load i64, i64* %29, align 8
  %223 = load i64, i64* %20, align 8
  %224 = icmp slt i64 %222, %223
  br i1 %224, label %225, label %254

225:                                              ; preds = %221, %209
  %226 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %226, i32 0, i32 8
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %250

230:                                              ; preds = %225
  %231 = load i64, i64* %18, align 8
  %232 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = sub nsw i64 %234, %237
  %239 = icmp sle i64 %231, %238
  br i1 %239, label %240, label %249

240:                                              ; preds = %230
  %241 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %242 = ptrtoint %struct.TYPE_62__* %241 to i32
  %243 = load i32, i32* @THREAD_INTERRUPTIBLE, align 4
  %244 = call i32 @assert_wait(i32 %242, i32 %243)
  %245 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %246 = call i32 @vm_map_unlock(%struct.TYPE_62__* %245)
  %247 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %248 = call i32 @thread_block(i32 %247)
  br label %146

249:                                              ; preds = %230
  br label %250

250:                                              ; preds = %249, %225
  %251 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %252 = call i32 @vm_map_unlock(%struct.TYPE_62__* %251)
  %253 = load i64, i64* @KERN_NO_SPACE, align 8
  store i64 %253, i64* %9, align 8
  br label %645

254:                                              ; preds = %221
  %255 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %255, i32 0, i32 6
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %267

259:                                              ; preds = %254
  %260 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %261 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* %29, align 8
  %264 = icmp sge i64 %262, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %259
  br label %311

266:                                              ; preds = %259
  br label %281

267:                                              ; preds = %254
  %268 = load %struct.TYPE_63__*, %struct.TYPE_63__** %28, align 8
  %269 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %270 = call %struct.TYPE_63__* @vm_map_to_entry(%struct.TYPE_62__* %269)
  %271 = icmp eq %struct.TYPE_63__* %268, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %267
  br label %311

273:                                              ; preds = %267
  %274 = load %struct.TYPE_63__*, %struct.TYPE_63__** %28, align 8
  %275 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %274, i32 0, i32 3
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* %29, align 8
  %278 = icmp sge i64 %276, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %273
  br label %311

280:                                              ; preds = %273
  br label %281

281:                                              ; preds = %280, %266
  %282 = load %struct.TYPE_63__*, %struct.TYPE_63__** %28, align 8
  store %struct.TYPE_63__* %282, %struct.TYPE_63__** %22, align 8
  %283 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %283, i32 0, i32 6
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %302

287:                                              ; preds = %281
  %288 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %289 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %289, i32 0, i32 7
  %291 = load i32, i32* %290, align 8
  %292 = call %struct.TYPE_63__* @CAST_TO_VM_MAP_ENTRY(i32 %291)
  %293 = icmp eq %struct.TYPE_63__* %288, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %287
  %295 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %296 = call i32 @vm_map_unlock(%struct.TYPE_62__* %295)
  %297 = load i64, i64* @KERN_NO_SPACE, align 8
  store i64 %297, i64* %9, align 8
  br label %645

298:                                              ; preds = %287
  %299 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %300 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %299, i32 0, i32 3
  %301 = load i64, i64* %300, align 8
  store i64 %301, i64* %20, align 8
  br label %306

302:                                              ; preds = %281
  %303 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %304 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %303, i32 0, i32 4
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %20, align 8
  br label %306

306:                                              ; preds = %302, %298
  %307 = load i64, i64* %20, align 8
  %308 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %309 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_62__* %308)
  %310 = call i64 @vm_map_round_page(i64 %307, i32 %309)
  store i64 %310, i64* %20, align 8
  br label %206

311:                                              ; preds = %279, %272, %265, %206
  %312 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %313 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %312, i32 0, i32 6
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %330

316:                                              ; preds = %311
  %317 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %318 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %319 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %318, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = call i64 @vm_map_lookup_entry(%struct.TYPE_62__* %317, i64 %320, %struct.TYPE_63__** %22)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %316
  %324 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %325 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %326 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %325, i32 0, i32 3
  %327 = load i64, i64* %326, align 8
  %328 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), %struct.TYPE_63__* %324, i64 %327)
  br label %329

329:                                              ; preds = %323, %316
  br label %330

330:                                              ; preds = %329, %311
  %331 = load i64, i64* %20, align 8
  %332 = load i64, i64* %21, align 8
  %333 = sub nsw i64 %331, %332
  store i64 %333, i64* %19, align 8
  %334 = load i64, i64* %14, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %337, label %336

336:                                              ; preds = %330
  br label %597

337:                                              ; preds = %330
  %338 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %339 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %338, i32 0, i32 16
  %340 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %343 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %342, i32 0, i32 5
  %344 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %341, %345
  br i1 %346, label %347, label %417

347:                                              ; preds = %337
  %348 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %349 = call %struct.TYPE_63__* @vm_map_copy_first_entry(%struct.TYPE_63__* %348)
  store %struct.TYPE_63__* %349, %struct.TYPE_63__** %23, align 8
  %350 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %351 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %352 = call i32 @vm_map_store_copy_reset(%struct.TYPE_63__* %350, %struct.TYPE_63__* %351)
  %353 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %354 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %353, i32 0, i32 5
  %355 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %358 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %357, i32 0, i32 16
  %359 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %358, i32 0, i32 0
  store i64 %356, i64* %359, align 8
  br label %360

360:                                              ; preds = %410, %347
  %361 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %362 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %363 = call %struct.TYPE_63__* @vm_map_copy_to_entry(%struct.TYPE_63__* %362)
  %364 = icmp ne %struct.TYPE_63__* %361, %363
  br i1 %364, label %365, label %416

365:                                              ; preds = %360
  %366 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %367 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %368 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %367, i32 0, i32 16
  %369 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  %372 = xor i1 %371, true
  %373 = zext i1 %372 to i32
  %374 = call %struct.TYPE_63__* @vm_map_copy_entry_create(%struct.TYPE_63__* %366, i32 %373)
  store %struct.TYPE_63__* %374, %struct.TYPE_63__** %32, align 8
  %375 = load %struct.TYPE_63__*, %struct.TYPE_63__** %32, align 8
  %376 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %377 = call i32 @vm_map_entry_copy_full(%struct.TYPE_63__* %375, %struct.TYPE_63__* %376)
  %378 = load %struct.TYPE_63__*, %struct.TYPE_63__** %32, align 8
  %379 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %378, i32 0, i32 8
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %380, 0
  %382 = xor i1 %381, true
  %383 = zext i1 %382 to i32
  %384 = call i32 @assert(i32 %383)
  %385 = load %struct.TYPE_63__*, %struct.TYPE_63__** %32, align 8
  %386 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %385, i32 0, i32 7
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %365
  %390 = load i8*, i8** @FALSE, align 8
  %391 = load %struct.TYPE_63__*, %struct.TYPE_63__** %32, align 8
  %392 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %391, i32 0, i32 6
  store i8* %390, i8** %392, align 8
  br label %393

393:                                              ; preds = %389, %365
  %394 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %395 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %396 = call %struct.TYPE_63__* @vm_map_copy_last_entry(%struct.TYPE_63__* %395)
  %397 = load %struct.TYPE_63__*, %struct.TYPE_63__** %32, align 8
  %398 = call i32 @vm_map_copy_entry_link(%struct.TYPE_63__* %394, %struct.TYPE_63__* %396, %struct.TYPE_63__* %397)
  %399 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %400 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %399, i32 0, i32 14
  %401 = load %struct.TYPE_63__*, %struct.TYPE_63__** %400, align 8
  store %struct.TYPE_63__* %401, %struct.TYPE_63__** %31, align 8
  %402 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %403 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %402, i32 0, i32 15
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %408

406:                                              ; preds = %393
  %407 = load i32, i32* @vm_map_entry_reserved_zone, align 4
  br label %410

408:                                              ; preds = %393
  %409 = load i32, i32* @vm_map_entry_zone, align 4
  br label %410

410:                                              ; preds = %408, %406
  %411 = phi i32 [ %407, %406 ], [ %409, %408 ]
  store i32 %411, i32* %30, align 4
  %412 = load i32, i32* %30, align 4
  %413 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %414 = call i32 @zfree(i32 %412, %struct.TYPE_63__* %413)
  %415 = load %struct.TYPE_63__*, %struct.TYPE_63__** %31, align 8
  store %struct.TYPE_63__* %415, %struct.TYPE_63__** %23, align 8
  br label %360

416:                                              ; preds = %360
  br label %417

417:                                              ; preds = %416, %337
  %418 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %419 = call %struct.TYPE_63__* @vm_map_copy_first_entry(%struct.TYPE_63__* %418)
  store %struct.TYPE_63__* %419, %struct.TYPE_63__** %23, align 8
  br label %420

420:                                              ; preds = %592, %417
  %421 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %422 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %423 = call %struct.TYPE_63__* @vm_map_copy_to_entry(%struct.TYPE_63__* %422)
  %424 = icmp ne %struct.TYPE_63__* %421, %423
  br i1 %424, label %425, label %596

425:                                              ; preds = %420
  %426 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %427 = call i64 @VM_MAP_PAGE_SHIFT(%struct.TYPE_62__* %426)
  %428 = load i64, i64* @PAGE_SHIFT, align 8
  %429 = icmp eq i64 %427, %428
  br i1 %429, label %430, label %434

430:                                              ; preds = %425
  %431 = load i8*, i8** @FALSE, align 8
  %432 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %433 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %432, i32 0, i32 13
  store i8* %431, i8** %433, align 8
  br label %434

434:                                              ; preds = %430, %425
  %435 = load i64, i64* %19, align 8
  %436 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %437 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %436, i32 0, i32 3
  %438 = load i64, i64* %437, align 8
  %439 = add nsw i64 %438, %435
  store i64 %439, i64* %437, align 8
  %440 = load i64, i64* %19, align 8
  %441 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %442 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %441, i32 0, i32 4
  %443 = load i64, i64* %442, align 8
  %444 = add nsw i64 %443, %440
  store i64 %444, i64* %442, align 8
  %445 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %446 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %445, i32 0, i32 13
  %447 = load i8*, i8** %446, align 8
  %448 = icmp ne i8* %447, null
  br i1 %448, label %449, label %464

449:                                              ; preds = %434
  %450 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %451 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %450, i32 0, i32 3
  %452 = load i64, i64* %451, align 8
  %453 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %454 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_62__* %453)
  %455 = call i32 @VM_MAP_PAGE_ALIGNED(i64 %452, i32 %454)
  %456 = call i32 @assert(i32 %455)
  %457 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %458 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %457, i32 0, i32 4
  %459 = load i64, i64* %458, align 8
  %460 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %461 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_62__* %460)
  %462 = call i32 @VM_MAP_PAGE_ALIGNED(i64 %459, i32 %461)
  %463 = call i32 @assert(i32 %462)
  br label %464

464:                                              ; preds = %449, %434
  %465 = load i32, i32* @VM_INHERIT_DEFAULT, align 4
  %466 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %467 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %466, i32 0, i32 12
  store i32 %465, i32* %467, align 4
  %468 = load i32, i32* @VM_PROT_DEFAULT, align 4
  %469 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %470 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %469, i32 0, i32 9
  store i32 %468, i32* %470, align 8
  %471 = load i32, i32* @VM_PROT_ALL, align 4
  %472 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %473 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %472, i32 0, i32 11
  store i32 %471, i32* %473, align 8
  %474 = load i32, i32* @VM_BEHAVIOR_DEFAULT, align 4
  %475 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %476 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %475, i32 0, i32 10
  store i32 %474, i32* %476, align 4
  %477 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %478 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %477, i32 0, i32 5
  %479 = load i64, i64* %478, align 8
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %591

481:                                              ; preds = %464
  %482 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %483 = call i32 @VME_OBJECT(%struct.TYPE_63__* %482)
  store i32 %483, i32* %35, align 4
  %484 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %485 = call i64 @VME_OFFSET(%struct.TYPE_63__* %484)
  store i64 %485, i64* %34, align 8
  %486 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %487 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %486, i32 0, i32 3
  %488 = load i64, i64* %487, align 8
  store i64 %488, i64* %33, align 8
  %489 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %490 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %489, i32 0, i32 4
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %493 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %492, i32 0, i32 3
  %494 = load i64, i64* %493, align 8
  %495 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %496 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %495, i32 0, i32 4
  %497 = load i64, i64* %496, align 8
  %498 = load i64, i64* @TRUE, align 8
  %499 = call i32 @pmap_pageable(i32 %491, i64 %494, i64 %497, i64 %498)
  br label %500

500:                                              ; preds = %569, %481
  %501 = load i64, i64* %33, align 8
  %502 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %503 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %502, i32 0, i32 4
  %504 = load i64, i64* %503, align 8
  %505 = icmp slt i64 %501, %504
  br i1 %505, label %506, label %590

506:                                              ; preds = %500
  %507 = bitcast %struct.vm_object_fault_info* %39 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %507, i8 0, i64 8, i1 false)
  %508 = load i32, i32* %35, align 4
  %509 = call i32 @vm_object_lock(i32 %508)
  %510 = load i32, i32* %35, align 4
  %511 = load i64, i64* %34, align 8
  %512 = call %struct.TYPE_61__* @vm_page_lookup(i32 %510, i64 %511)
  store %struct.TYPE_61__* %512, %struct.TYPE_61__** %38, align 8
  %513 = load %struct.TYPE_61__*, %struct.TYPE_61__** %38, align 8
  %514 = load %struct.TYPE_61__*, %struct.TYPE_61__** @VM_PAGE_NULL, align 8
  %515 = icmp eq %struct.TYPE_61__* %513, %514
  br i1 %515, label %525, label %516

516:                                              ; preds = %506
  %517 = load %struct.TYPE_61__*, %struct.TYPE_61__** %38, align 8
  %518 = call i32 @VM_PAGE_WIRED(%struct.TYPE_61__* %517)
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %525

520:                                              ; preds = %516
  %521 = load %struct.TYPE_61__*, %struct.TYPE_61__** %38, align 8
  %522 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %521, i32 0, i32 0
  %523 = load i64, i64* %522, align 8
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %528

525:                                              ; preds = %520, %516, %506
  %526 = load %struct.TYPE_61__*, %struct.TYPE_61__** %38, align 8
  %527 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_61__* %526)
  br label %528

528:                                              ; preds = %525, %520
  %529 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %530 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %529, i32 0, i32 9
  %531 = load i32, i32* %530, align 8
  store i32 %531, i32* %36, align 4
  %532 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %533 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %534 = call i32 @VME_ALIAS(%struct.TYPE_63__* %533)
  %535 = call i64 @override_nx(%struct.TYPE_62__* %532, i32 %534)
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %544

537:                                              ; preds = %528
  %538 = load i32, i32* %36, align 4
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %544

540:                                              ; preds = %537
  %541 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %542 = load i32, i32* %36, align 4
  %543 = or i32 %542, %541
  store i32 %543, i32* %36, align 4
  br label %544

544:                                              ; preds = %540, %537, %528
  %545 = load i32, i32* @DBG_CACHE_HIT_FAULT, align 4
  store i32 %545, i32* %37, align 4
  %546 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %547 = call i32 @VME_ALIAS(%struct.TYPE_63__* %546)
  %548 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %39, i32 0, i32 1
  store i32 %547, i32* %548, align 4
  %549 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %39, i32 0, i32 0
  store i32 0, i32* %549, align 4
  %550 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %551 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %550, i32 0, i32 8
  %552 = load i64, i64* %551, align 8
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %564, label %554

554:                                              ; preds = %544
  %555 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %556 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %555, i32 0, i32 7
  %557 = load i64, i64* %556, align 8
  %558 = icmp ne i64 %557, 0
  br i1 %558, label %569, label %559

559:                                              ; preds = %554
  %560 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %561 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %560, i32 0, i32 6
  %562 = load i8*, i8** %561, align 8
  %563 = icmp ne i8* %562, null
  br i1 %563, label %569, label %564

564:                                              ; preds = %559, %544
  %565 = load i32, i32* @PMAP_OPTIONS_ALT_ACCT, align 4
  %566 = getelementptr inbounds %struct.vm_object_fault_info, %struct.vm_object_fault_info* %39, i32 0, i32 0
  %567 = load i32, i32* %566, align 4
  %568 = or i32 %567, %565
  store i32 %568, i32* %566, align 4
  br label %569

569:                                              ; preds = %564, %559, %554
  %570 = load %struct.TYPE_61__*, %struct.TYPE_61__** %38, align 8
  %571 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %572 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %571, i32 0, i32 4
  %573 = load i32, i32* %572, align 4
  %574 = load i64, i64* %33, align 8
  %575 = load i32, i32* %36, align 4
  %576 = load i32, i32* %36, align 4
  %577 = load %struct.TYPE_61__*, %struct.TYPE_61__** %38, align 8
  %578 = call i32 @VM_PAGE_WIRED(%struct.TYPE_61__* %577)
  %579 = load i8*, i8** @FALSE, align 8
  %580 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %581 = call i32 @vm_fault_enter(%struct.TYPE_61__* %570, i32 %573, i64 %574, i32 %575, i32 %576, i32 %578, i8* %579, i32 %580, %struct.vm_object_fault_info* %39, i32* null, i32* %37)
  %582 = load i32, i32* %35, align 4
  %583 = call i32 @vm_object_unlock(i32 %582)
  %584 = load i64, i64* @PAGE_SIZE_64, align 8
  %585 = load i64, i64* %34, align 8
  %586 = add nsw i64 %585, %584
  store i64 %586, i64* %34, align 8
  %587 = load i64, i64* @PAGE_SIZE, align 8
  %588 = load i64, i64* %33, align 8
  %589 = add nsw i64 %588, %587
  store i64 %589, i64* %33, align 8
  br label %500

590:                                              ; preds = %500
  br label %591

591:                                              ; preds = %590, %464
  br label %592

592:                                              ; preds = %591
  %593 = load %struct.TYPE_63__*, %struct.TYPE_63__** %23, align 8
  %594 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %593, i32 0, i32 14
  %595 = load %struct.TYPE_63__*, %struct.TYPE_63__** %594, align 8
  store %struct.TYPE_63__* %595, %struct.TYPE_63__** %23, align 8
  br label %420

596:                                              ; preds = %420
  br label %597

597:                                              ; preds = %596, %336
  %598 = load i64, i64* %20, align 8
  %599 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %600 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %599, i32 0, i32 2
  %601 = load i64, i64* %600, align 8
  %602 = load i64, i64* %21, align 8
  %603 = sub nsw i64 %601, %602
  %604 = add nsw i64 %598, %603
  %605 = load i64*, i64** %11, align 8
  store i64 %604, i64* %605, align 8
  %606 = load i64, i64* %14, align 8
  %607 = icmp ne i64 %606, 0
  br i1 %607, label %608, label %613

608:                                              ; preds = %597
  %609 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %610 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %611 = call %struct.TYPE_63__* @vm_map_copy_last_entry(%struct.TYPE_63__* %610)
  %612 = call i32 @SAVE_HINT_MAP_WRITE(%struct.TYPE_62__* %609, %struct.TYPE_63__* %611)
  br label %617

613:                                              ; preds = %597
  %614 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %615 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %616 = call i32 @SAVE_HINT_MAP_WRITE(%struct.TYPE_62__* %614, %struct.TYPE_63__* %615)
  br label %617

617:                                              ; preds = %613, %608
  %618 = load i64, i64* %18, align 8
  %619 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %620 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %619, i32 0, i32 3
  %621 = load i32, i32* %620, align 8
  %622 = sext i32 %621 to i64
  %623 = add nsw i64 %622, %618
  %624 = trunc i64 %623 to i32
  store i32 %624, i32* %620, align 8
  %625 = load i64, i64* %14, align 8
  %626 = icmp ne i64 %625, 0
  br i1 %626, label %627, label %632

627:                                              ; preds = %617
  %628 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %629 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %630 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %631 = call i32 @vm_map_copy_insert(%struct.TYPE_62__* %628, %struct.TYPE_63__* %629, %struct.TYPE_63__* %630)
  br label %641

632:                                              ; preds = %617
  %633 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %634 = load %struct.TYPE_63__*, %struct.TYPE_63__** %22, align 8
  %635 = load %struct.TYPE_63__*, %struct.TYPE_63__** %12, align 8
  %636 = load i64, i64* %19, align 8
  %637 = load i32, i32* %15, align 4
  %638 = load i32, i32* %16, align 4
  %639 = load i32, i32* %17, align 4
  %640 = call i32 @vm_map_copy_remap(%struct.TYPE_62__* %633, %struct.TYPE_63__* %634, %struct.TYPE_63__* %635, i64 %636, i32 %637, i32 %638, i32 %639)
  br label %641

641:                                              ; preds = %632, %627
  %642 = load %struct.TYPE_62__*, %struct.TYPE_62__** %10, align 8
  %643 = call i32 @vm_map_unlock(%struct.TYPE_62__* %642)
  %644 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %644, i64* %9, align 8
  br label %645

645:                                              ; preds = %641, %294, %250, %172, %121, %113, %96, %52, %43
  %646 = load i64, i64* %9, align 8
  ret i64 %646
}

declare dso_local i64 @vm_object_trunc_page(i64) #1

declare dso_local i64 @vm_map_round_page(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(%struct.TYPE_62__*) #1

declare dso_local i64 @vm_map_enter(%struct.TYPE_62__*, i64*, i64, i64, i32, i32, i32, i32, i64, i8*, i32, i32, i32) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_63__*) #1

declare dso_local i64 @vm_map_copyout_kernel_buffer(%struct.TYPE_62__*, i64*, %struct.TYPE_63__*, i64, i8*, i64) #1

declare dso_local i64 @vm_map_trunc_page(i64, i32) #1

declare dso_local i32 @VM_MAP_COPY_PAGE_MASK(%struct.TYPE_63__*) #1

declare dso_local i32 @vm_map_lock(%struct.TYPE_62__*) #1

declare dso_local i32 @VM_MAP_HIGHEST_ENTRY(%struct.TYPE_62__*, %struct.TYPE_63__*, i64) #1

declare dso_local %struct.TYPE_63__* @CAST_TO_VM_MAP_ENTRY(i32) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_62__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @first_free_is_valid(%struct.TYPE_62__*) #1

declare dso_local %struct.TYPE_63__* @vm_map_to_entry(%struct.TYPE_62__*) #1

declare dso_local i64 @vm_map_min(%struct.TYPE_62__*) #1

declare dso_local i32 @assert_wait(i32, i32) #1

declare dso_local i32 @thread_block(i32) #1

declare dso_local i64 @vm_map_lookup_entry(%struct.TYPE_62__*, i64, %struct.TYPE_63__**) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local %struct.TYPE_63__* @vm_map_copy_first_entry(%struct.TYPE_63__*) #1

declare dso_local i32 @vm_map_store_copy_reset(%struct.TYPE_63__*, %struct.TYPE_63__*) #1

declare dso_local %struct.TYPE_63__* @vm_map_copy_to_entry(%struct.TYPE_63__*) #1

declare dso_local %struct.TYPE_63__* @vm_map_copy_entry_create(%struct.TYPE_63__*, i32) #1

declare dso_local i32 @vm_map_entry_copy_full(%struct.TYPE_63__*, %struct.TYPE_63__*) #1

declare dso_local i32 @vm_map_copy_entry_link(%struct.TYPE_63__*, %struct.TYPE_63__*, %struct.TYPE_63__*) #1

declare dso_local %struct.TYPE_63__* @vm_map_copy_last_entry(%struct.TYPE_63__*) #1

declare dso_local i64 @VM_MAP_PAGE_SHIFT(%struct.TYPE_62__*) #1

declare dso_local i32 @VM_MAP_PAGE_ALIGNED(i64, i32) #1

declare dso_local i32 @VME_OBJECT(%struct.TYPE_63__*) #1

declare dso_local i64 @VME_OFFSET(%struct.TYPE_63__*) #1

declare dso_local i32 @pmap_pageable(i32, i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @vm_object_lock(i32) #1

declare dso_local %struct.TYPE_61__* @vm_page_lookup(i32, i64) #1

declare dso_local i32 @VM_PAGE_WIRED(%struct.TYPE_61__*) #1

declare dso_local i64 @override_nx(%struct.TYPE_62__*, i32) #1

declare dso_local i32 @VME_ALIAS(%struct.TYPE_63__*) #1

declare dso_local i32 @vm_fault_enter(%struct.TYPE_61__*, i32, i64, i32, i32, i32, i8*, i32, %struct.vm_object_fault_info*, i32*, i32*) #1

declare dso_local i32 @vm_object_unlock(i32) #1

declare dso_local i32 @SAVE_HINT_MAP_WRITE(%struct.TYPE_62__*, %struct.TYPE_63__*) #1

declare dso_local i32 @vm_map_copy_insert(%struct.TYPE_62__*, %struct.TYPE_63__*, %struct.TYPE_63__*) #1

declare dso_local i32 @vm_map_copy_remap(%struct.TYPE_62__*, %struct.TYPE_63__*, %struct.TYPE_63__*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
