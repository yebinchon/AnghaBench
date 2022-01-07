; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_unix.c__shared_region_map_and_slide.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_unix.c__shared_region_map_and_slide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i64, i32, i32 }
%struct.proc = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.vnode* }
%struct.shared_file_mapping_np = type { i32, i32, i32, i32, i32 }
%struct.fileproc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.vnode_attr = type { i64, i32 }
%struct.vm_shared_region = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"shared_region: %p [%d(%s)] -> map\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"shared_region: %p [%d(%s)] map: fd=%d lookup failed (error=%d)\0A\00", align 1
@DTYPE_VNODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"shared_region: %p [%d(%s)] map: fd=%d not a vnode (type=%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"shared_region: %p [%d(%s)] map: fd=%d not readable\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"shared_region: %p [%d(%s)] map: fd=%d getwithref failed (error=%d)\0A\00", align 1
@VREG = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [63 x i8] c"shared_region: %p [%d(%s)] map(%p:'%s'): not a file (type=%d)\0A\00", align 1
@rootvnode = common dso_local global %struct.vnode* null, align 8
@.str.6 = private unnamed_addr constant [71 x i8] c"shared_region: %p [%d(%s)] map(%p:'%s'): not on process's root volume\0A\00", align 1
@va_uid = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [78 x i8] c"shared_region: %p [%d(%s)] map(%p:'%s'): vnode_getattr(%p) failed (error=%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [71 x i8] c"shared_region: %p [%d(%s)] map(%p:'%s'): owned by uid=%d instead of 0\0A\00", align 1
@scdir_enforce = common dso_local global i64 0, align 8
@scdir_path = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [77 x i8] c"shared_region: %p [%d(%s)] map(%p:'%s'): vnode_lookup(%s) failed (error=%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [70 x i8] c"shared_region: %p [%d(%s)] map(%p:'%s'): shared cache file not in %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [75 x i8] c"shared_region: %p [%d(%s)] map(%p:'%s'): vnode_size(%p) failed (error=%d)\0A\00", align 1
@UBC_HOLDOBJECT = common dso_local global i32 0, align 4
@MEMORY_OBJECT_CONTROL_NULL = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [59 x i8] c"shared_region: %p [%d(%s)] map(%p:'%s'): no memory object\0A\00", align 1
@VM_PROT_ZF = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [109 x i8] c"shared_region: %p [%d(%s)] map(%p:'%s'): mapping #%d/%d [0x%llx:0x%llx:0x%llx:0x%x:0x%x] is not code-signed\0A\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"shared_region: %p [%d(%s)] map(%p:'%s'): no shared region\0A\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [85 x i8] c"shared_region: %p [%d(%s)] map(%p:'%s'): vm_shared_region_map_file() failed kr=0x%x\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VSHARED_DYLD = common dso_local global i32 0, align 4
@MNT_NOATIME = common dso_local global i32 0, align 4
@va_access_time = common dso_local global i32 0, align 4
@P_NOSHLIB = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [35 x i8] c"shared_region: %p [%d(%s)] <- map\0A\00", align 1
@MAP_FILE = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_shared_region_map_and_slide(%struct.proc* %0, i32 %1, i64 %2, %struct.shared_file_mapping_np* %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.shared_file_mapping_np*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.fileproc*, align 8
  %18 = alloca %struct.vnode*, align 8
  %19 = alloca %struct.vnode*, align 8
  %20 = alloca %struct.vnode*, align 8
  %21 = alloca %struct.vnode_attr, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.vm_shared_region*, align 8
  %26 = alloca i64, align 8
  store %struct.proc* %0, %struct.proc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store %struct.shared_file_mapping_np* %3, %struct.shared_file_mapping_np** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %27 = call %struct.vnode* (...) @current_thread()
  %28 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %27)
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.proc*, %struct.proc** %8, align 8
  %31 = getelementptr inbounds %struct.proc, %struct.proc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.proc*, %struct.proc** %8, align 8
  %34 = getelementptr inbounds %struct.proc, %struct.proc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @SHARED_REGION_TRACE_DEBUG(i8* %37)
  store %struct.vm_shared_region* null, %struct.vm_shared_region** %25, align 8
  store %struct.fileproc* null, %struct.fileproc** %17, align 8
  store %struct.vnode* null, %struct.vnode** %18, align 8
  store %struct.vnode* null, %struct.vnode** %20, align 8
  %39 = load %struct.proc*, %struct.proc** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @fp_lookup(%struct.proc* %39, i32 %40, %struct.fileproc** %17, i32 0)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %7
  %45 = call %struct.vnode* (...) @current_thread()
  %46 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %45)
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.proc*, %struct.proc** %8, align 8
  %49 = getelementptr inbounds %struct.proc, %struct.proc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.proc*, %struct.proc** %8, align 8
  %52 = getelementptr inbounds %struct.proc, %struct.proc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %57)
  br label %577

59:                                               ; preds = %7
  %60 = load %struct.fileproc*, %struct.fileproc** %17, align 8
  %61 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = call i64 @FILEGLOB_DTYPE(%struct.TYPE_5__* %62)
  %64 = load i64, i64* @DTYPE_VNODE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %59
  %67 = call %struct.vnode* (...) @current_thread()
  %68 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %67)
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.proc*, %struct.proc** %8, align 8
  %71 = getelementptr inbounds %struct.proc, %struct.proc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.proc*, %struct.proc** %8, align 8
  %74 = getelementptr inbounds %struct.proc, %struct.proc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.fileproc*, %struct.fileproc** %17, align 8
  %78 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = call i64 @FILEGLOB_DTYPE(%struct.TYPE_5__* %79)
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %81)
  %83 = load i32, i32* @EINVAL, align 4
  store i32 %83, i32* %15, align 4
  br label %577

84:                                               ; preds = %59
  %85 = load %struct.fileproc*, %struct.fileproc** %17, align 8
  %86 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @FREAD, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %108, label %93

93:                                               ; preds = %84
  %94 = call %struct.vnode* (...) @current_thread()
  %95 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %94)
  %96 = inttoptr i64 %95 to i8*
  %97 = load %struct.proc*, %struct.proc** %8, align 8
  %98 = getelementptr inbounds %struct.proc, %struct.proc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.proc*, %struct.proc** %8, align 8
  %101 = getelementptr inbounds %struct.proc, %struct.proc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %105)
  %107 = load i32, i32* @EPERM, align 4
  store i32 %107, i32* %15, align 4
  br label %577

108:                                              ; preds = %84
  %109 = load %struct.fileproc*, %struct.fileproc** %17, align 8
  %110 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @vnode_getwithref(i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %108
  %119 = call %struct.vnode* (...) @current_thread()
  %120 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %119)
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.proc*, %struct.proc** %8, align 8
  %123 = getelementptr inbounds %struct.proc, %struct.proc* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.proc*, %struct.proc** %8, align 8
  %126 = getelementptr inbounds %struct.proc, %struct.proc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %131)
  br label %577

133:                                              ; preds = %108
  %134 = load %struct.fileproc*, %struct.fileproc** %17, align 8
  %135 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %134, i32 0, i32 0
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to %struct.vnode*
  store %struct.vnode* %139, %struct.vnode** %18, align 8
  %140 = load %struct.vnode*, %struct.vnode** %18, align 8
  %141 = getelementptr inbounds %struct.vnode, %struct.vnode* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @VREG, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %167

145:                                              ; preds = %133
  %146 = call %struct.vnode* (...) @current_thread()
  %147 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %146)
  %148 = inttoptr i64 %147 to i8*
  %149 = load %struct.proc*, %struct.proc** %8, align 8
  %150 = getelementptr inbounds %struct.proc, %struct.proc* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.proc*, %struct.proc** %8, align 8
  %153 = getelementptr inbounds %struct.proc, %struct.proc* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.vnode*, %struct.vnode** %18, align 8
  %156 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %155)
  %157 = inttoptr i64 %156 to i8*
  %158 = load %struct.vnode*, %struct.vnode** %18, align 8
  %159 = getelementptr inbounds %struct.vnode, %struct.vnode* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.vnode*, %struct.vnode** %18, align 8
  %162 = getelementptr inbounds %struct.vnode, %struct.vnode* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i8*
  %165 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %164)
  %166 = load i32, i32* @EINVAL, align 4
  store i32 %166, i32* %15, align 4
  br label %577

167:                                              ; preds = %133
  %168 = load %struct.proc*, %struct.proc** %8, align 8
  %169 = getelementptr inbounds %struct.proc, %struct.proc* %168, i32 0, i32 3
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load %struct.vnode*, %struct.vnode** %171, align 8
  store %struct.vnode* %172, %struct.vnode** %19, align 8
  %173 = load %struct.vnode*, %struct.vnode** %19, align 8
  %174 = icmp eq %struct.vnode* %173, null
  br i1 %174, label %175, label %177

175:                                              ; preds = %167
  %176 = load %struct.vnode*, %struct.vnode** @rootvnode, align 8
  store %struct.vnode* %176, %struct.vnode** %19, align 8
  br label %179

177:                                              ; preds = %167
  %178 = load i32, i32* @EINVAL, align 4
  store i32 %178, i32* %15, align 4
  br label %577

179:                                              ; preds = %175
  %180 = load %struct.vnode*, %struct.vnode** %18, align 8
  %181 = getelementptr inbounds %struct.vnode, %struct.vnode* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.vnode*, %struct.vnode** %19, align 8
  %184 = getelementptr inbounds %struct.vnode, %struct.vnode* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %182, %185
  br i1 %186, label %187, label %207

187:                                              ; preds = %179
  %188 = call %struct.vnode* (...) @current_thread()
  %189 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %188)
  %190 = inttoptr i64 %189 to i8*
  %191 = load %struct.proc*, %struct.proc** %8, align 8
  %192 = getelementptr inbounds %struct.proc, %struct.proc* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.proc*, %struct.proc** %8, align 8
  %195 = getelementptr inbounds %struct.proc, %struct.proc* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.vnode*, %struct.vnode** %18, align 8
  %198 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %197)
  %199 = inttoptr i64 %198 to i8*
  %200 = load %struct.vnode*, %struct.vnode** %18, align 8
  %201 = getelementptr inbounds %struct.vnode, %struct.vnode* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = inttoptr i64 %203 to i8*
  %205 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %204)
  %206 = load i32, i32* @EPERM, align 4
  store i32 %206, i32* %15, align 4
  br label %577

207:                                              ; preds = %179
  %208 = call i32 @VATTR_INIT(%struct.vnode_attr* %21)
  %209 = load i32, i32* @va_uid, align 4
  %210 = call i32 @VATTR_WANTED(%struct.vnode_attr* %21, i32 %209)
  %211 = load %struct.vnode*, %struct.vnode** %18, align 8
  %212 = call i32 (...) @vfs_context_current()
  %213 = call i32 @vnode_getattr(%struct.vnode* %211, %struct.vnode_attr* %21, i32 %212)
  store i32 %213, i32* %15, align 4
  %214 = load i32, i32* %15, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %239

216:                                              ; preds = %207
  %217 = call %struct.vnode* (...) @current_thread()
  %218 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %217)
  %219 = inttoptr i64 %218 to i8*
  %220 = load %struct.proc*, %struct.proc** %8, align 8
  %221 = getelementptr inbounds %struct.proc, %struct.proc* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.proc*, %struct.proc** %8, align 8
  %224 = getelementptr inbounds %struct.proc, %struct.proc* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.vnode*, %struct.vnode** %18, align 8
  %227 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %226)
  %228 = inttoptr i64 %227 to i8*
  %229 = load %struct.vnode*, %struct.vnode** %18, align 8
  %230 = getelementptr inbounds %struct.vnode, %struct.vnode* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.vnode*, %struct.vnode** %18, align 8
  %233 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %232)
  %234 = inttoptr i64 %233 to i8*
  %235 = load i32, i32* %15, align 4
  %236 = sext i32 %235 to i64
  %237 = inttoptr i64 %236 to i8*
  %238 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %237)
  br label %577

239:                                              ; preds = %207
  %240 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %21, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %264

243:                                              ; preds = %239
  %244 = call %struct.vnode* (...) @current_thread()
  %245 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %244)
  %246 = inttoptr i64 %245 to i8*
  %247 = load %struct.proc*, %struct.proc** %8, align 8
  %248 = getelementptr inbounds %struct.proc, %struct.proc* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.proc*, %struct.proc** %8, align 8
  %251 = getelementptr inbounds %struct.proc, %struct.proc* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.vnode*, %struct.vnode** %18, align 8
  %254 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %253)
  %255 = inttoptr i64 %254 to i8*
  %256 = load %struct.vnode*, %struct.vnode** %18, align 8
  %257 = getelementptr inbounds %struct.vnode, %struct.vnode* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %21, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = inttoptr i64 %260 to i8*
  %262 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %261)
  %263 = load i32, i32* @EPERM, align 4
  store i32 %263, i32* %15, align 4
  br label %577

264:                                              ; preds = %239
  %265 = load i64, i64* @scdir_enforce, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %321

267:                                              ; preds = %264
  %268 = load i32, i32* @scdir_path, align 4
  %269 = call i32 (...) @vfs_context_current()
  %270 = call i32 @vnode_lookup(i32 %268, i32 0, %struct.vnode** %20, i32 %269)
  store i32 %270, i32* %15, align 4
  %271 = load i32, i32* %15, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %294

273:                                              ; preds = %267
  %274 = call %struct.vnode* (...) @current_thread()
  %275 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %274)
  %276 = inttoptr i64 %275 to i8*
  %277 = load %struct.proc*, %struct.proc** %8, align 8
  %278 = getelementptr inbounds %struct.proc, %struct.proc* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.proc*, %struct.proc** %8, align 8
  %281 = getelementptr inbounds %struct.proc, %struct.proc* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.vnode*, %struct.vnode** %18, align 8
  %284 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %283)
  %285 = inttoptr i64 %284 to i8*
  %286 = load %struct.vnode*, %struct.vnode** %18, align 8
  %287 = getelementptr inbounds %struct.vnode, %struct.vnode* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @scdir_path, align 4
  %290 = load i32, i32* %15, align 4
  %291 = sext i32 %290 to i64
  %292 = inttoptr i64 %291 to i8*
  %293 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %292)
  br label %577

294:                                              ; preds = %267
  %295 = load %struct.vnode*, %struct.vnode** %18, align 8
  %296 = call %struct.vnode* @vnode_parent(%struct.vnode* %295)
  %297 = load %struct.vnode*, %struct.vnode** %20, align 8
  %298 = icmp ne %struct.vnode* %296, %297
  br i1 %298, label %299, label %320

299:                                              ; preds = %294
  %300 = call %struct.vnode* (...) @current_thread()
  %301 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %300)
  %302 = inttoptr i64 %301 to i8*
  %303 = load %struct.proc*, %struct.proc** %8, align 8
  %304 = getelementptr inbounds %struct.proc, %struct.proc* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.proc*, %struct.proc** %8, align 8
  %307 = getelementptr inbounds %struct.proc, %struct.proc* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.vnode*, %struct.vnode** %18, align 8
  %310 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %309)
  %311 = inttoptr i64 %310 to i8*
  %312 = load %struct.vnode*, %struct.vnode** %18, align 8
  %313 = getelementptr inbounds %struct.vnode, %struct.vnode* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @scdir_path, align 4
  %316 = sext i32 %315 to i64
  %317 = inttoptr i64 %316 to i8*
  %318 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %317)
  %319 = load i32, i32* @EPERM, align 4
  store i32 %319, i32* %15, align 4
  br label %577

320:                                              ; preds = %294
  br label %321

321:                                              ; preds = %320, %264
  %322 = load %struct.vnode*, %struct.vnode** %18, align 8
  %323 = call i32 (...) @vfs_context_current()
  %324 = call i32 @vnode_size(%struct.vnode* %322, i32* %22, i32 %323)
  store i32 %324, i32* %15, align 4
  %325 = load i32, i32* %15, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %350

327:                                              ; preds = %321
  %328 = call %struct.vnode* (...) @current_thread()
  %329 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %328)
  %330 = inttoptr i64 %329 to i8*
  %331 = load %struct.proc*, %struct.proc** %8, align 8
  %332 = getelementptr inbounds %struct.proc, %struct.proc* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.proc*, %struct.proc** %8, align 8
  %335 = getelementptr inbounds %struct.proc, %struct.proc* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.vnode*, %struct.vnode** %18, align 8
  %338 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %337)
  %339 = inttoptr i64 %338 to i8*
  %340 = load %struct.vnode*, %struct.vnode** %18, align 8
  %341 = getelementptr inbounds %struct.vnode, %struct.vnode* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.vnode*, %struct.vnode** %18, align 8
  %344 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %343)
  %345 = inttoptr i64 %344 to i8*
  %346 = load i32, i32* %15, align 4
  %347 = sext i32 %346 to i64
  %348 = inttoptr i64 %347 to i8*
  %349 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %348)
  br label %577

350:                                              ; preds = %321
  %351 = load i32, i32* %22, align 4
  store i32 %351, i32* %23, align 4
  %352 = load %struct.vnode*, %struct.vnode** %18, align 8
  %353 = load i32, i32* @UBC_HOLDOBJECT, align 4
  %354 = call i64 @ubc_getobject(%struct.vnode* %352, i32 %353)
  store i64 %354, i64* %24, align 8
  %355 = load i64, i64* %24, align 8
  %356 = load i64, i64* @MEMORY_OBJECT_CONTROL_NULL, align 8
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %358, label %378

358:                                              ; preds = %350
  %359 = call %struct.vnode* (...) @current_thread()
  %360 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %359)
  %361 = inttoptr i64 %360 to i8*
  %362 = load %struct.proc*, %struct.proc** %8, align 8
  %363 = getelementptr inbounds %struct.proc, %struct.proc* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.proc*, %struct.proc** %8, align 8
  %366 = getelementptr inbounds %struct.proc, %struct.proc* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.vnode*, %struct.vnode** %18, align 8
  %369 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %368)
  %370 = inttoptr i64 %369 to i8*
  %371 = load %struct.vnode*, %struct.vnode** %18, align 8
  %372 = getelementptr inbounds %struct.vnode, %struct.vnode* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = sext i32 %373 to i64
  %375 = inttoptr i64 %374 to i8*
  %376 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %375)
  %377 = load i32, i32* @EINVAL, align 4
  store i32 %377, i32* %15, align 4
  br label %577

378:                                              ; preds = %350
  %379 = call i32 (...) @cs_system_enforcement()
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %382, label %381

381:                                              ; preds = %378
  br label %463

382:                                              ; preds = %378
  store i64 0, i64* %26, align 8
  br label %383

383:                                              ; preds = %459, %382
  %384 = load i64, i64* %26, align 8
  %385 = load i64, i64* %10, align 8
  %386 = icmp ult i64 %384, %385
  br i1 %386, label %387, label %462

387:                                              ; preds = %383
  %388 = load %struct.shared_file_mapping_np*, %struct.shared_file_mapping_np** %11, align 8
  %389 = load i64, i64* %26, align 8
  %390 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %388, i64 %389
  %391 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* @VM_PROT_ZF, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %387
  br label %459

397:                                              ; preds = %387
  %398 = load %struct.vnode*, %struct.vnode** %18, align 8
  %399 = load %struct.shared_file_mapping_np*, %struct.shared_file_mapping_np** %11, align 8
  %400 = load i64, i64* %26, align 8
  %401 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %399, i64 %400
  %402 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.shared_file_mapping_np*, %struct.shared_file_mapping_np** %11, align 8
  %405 = load i64, i64* %26, align 8
  %406 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %404, i64 %405
  %407 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 4
  %409 = call i64 @ubc_cs_is_range_codesigned(%struct.vnode* %398, i32 %403, i32 %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %397
  br label %459

412:                                              ; preds = %397
  %413 = call %struct.vnode* (...) @current_thread()
  %414 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %413)
  %415 = inttoptr i64 %414 to i8*
  %416 = load %struct.proc*, %struct.proc** %8, align 8
  %417 = getelementptr inbounds %struct.proc, %struct.proc* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 8
  %419 = load %struct.proc*, %struct.proc** %8, align 8
  %420 = getelementptr inbounds %struct.proc, %struct.proc* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.vnode*, %struct.vnode** %18, align 8
  %423 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %422)
  %424 = inttoptr i64 %423 to i8*
  %425 = load %struct.vnode*, %struct.vnode** %18, align 8
  %426 = getelementptr inbounds %struct.vnode, %struct.vnode* %425, i32 0, i32 3
  %427 = load i32, i32* %426, align 4
  %428 = load i64, i64* %26, align 8
  %429 = load i64, i64* %10, align 8
  %430 = load %struct.shared_file_mapping_np*, %struct.shared_file_mapping_np** %11, align 8
  %431 = load i64, i64* %26, align 8
  %432 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %430, i64 %431
  %433 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %432, i32 0, i32 4
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.shared_file_mapping_np*, %struct.shared_file_mapping_np** %11, align 8
  %436 = load i64, i64* %26, align 8
  %437 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %435, i64 %436
  %438 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %437, i32 0, i32 3
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.shared_file_mapping_np*, %struct.shared_file_mapping_np** %11, align 8
  %441 = load i64, i64* %26, align 8
  %442 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %440, i64 %441
  %443 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 4
  %445 = load %struct.shared_file_mapping_np*, %struct.shared_file_mapping_np** %11, align 8
  %446 = load i64, i64* %26, align 8
  %447 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %445, i64 %446
  %448 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.shared_file_mapping_np*, %struct.shared_file_mapping_np** %11, align 8
  %451 = load i64, i64* %26, align 8
  %452 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %450, i64 %451
  %453 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  %455 = sext i32 %454 to i64
  %456 = inttoptr i64 %455 to i8*
  %457 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %456)
  %458 = load i32, i32* @EINVAL, align 4
  store i32 %458, i32* %15, align 4
  br label %577

459:                                              ; preds = %411, %396
  %460 = load i64, i64* %26, align 8
  %461 = add i64 %460, 1
  store i64 %461, i64* %26, align 8
  br label %383

462:                                              ; preds = %383
  br label %463

463:                                              ; preds = %462, %381
  %464 = call i32 (...) @current_task()
  %465 = call %struct.vm_shared_region* @vm_shared_region_trim_and_get(i32 %464)
  store %struct.vm_shared_region* %465, %struct.vm_shared_region** %25, align 8
  %466 = load %struct.vm_shared_region*, %struct.vm_shared_region** %25, align 8
  %467 = icmp eq %struct.vm_shared_region* %466, null
  br i1 %467, label %468, label %488

468:                                              ; preds = %463
  %469 = call %struct.vnode* (...) @current_thread()
  %470 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %469)
  %471 = inttoptr i64 %470 to i8*
  %472 = load %struct.proc*, %struct.proc** %8, align 8
  %473 = getelementptr inbounds %struct.proc, %struct.proc* %472, i32 0, i32 2
  %474 = load i32, i32* %473, align 8
  %475 = load %struct.proc*, %struct.proc** %8, align 8
  %476 = getelementptr inbounds %struct.proc, %struct.proc* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.vnode*, %struct.vnode** %18, align 8
  %479 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %478)
  %480 = inttoptr i64 %479 to i8*
  %481 = load %struct.vnode*, %struct.vnode** %18, align 8
  %482 = getelementptr inbounds %struct.vnode, %struct.vnode* %481, i32 0, i32 3
  %483 = load i32, i32* %482, align 4
  %484 = sext i32 %483 to i64
  %485 = inttoptr i64 %484 to i8*
  %486 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %485)
  %487 = load i32, i32* @EINVAL, align 4
  store i32 %487, i32* %15, align 4
  br label %577

488:                                              ; preds = %463
  %489 = load %struct.vm_shared_region*, %struct.vm_shared_region** %25, align 8
  %490 = load i64, i64* %10, align 8
  %491 = load %struct.shared_file_mapping_np*, %struct.shared_file_mapping_np** %11, align 8
  %492 = load i64, i64* %24, align 8
  %493 = load i32, i32* %23, align 4
  %494 = load %struct.proc*, %struct.proc** %8, align 8
  %495 = getelementptr inbounds %struct.proc, %struct.proc* %494, i32 0, i32 3
  %496 = load %struct.TYPE_4__*, %struct.TYPE_4__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %496, i32 0, i32 0
  %498 = load %struct.vnode*, %struct.vnode** %497, align 8
  %499 = bitcast %struct.vnode* %498 to i8*
  %500 = load i64, i64* %12, align 8
  %501 = load i32, i32* %13, align 4
  %502 = load i32, i32* %14, align 4
  %503 = call i32 @vm_shared_region_map_file(%struct.vm_shared_region* %489, i64 %490, %struct.shared_file_mapping_np* %491, i64 %492, i32 %493, i8* %499, i64 %500, i32 %501, i32 %502)
  store i32 %503, i32* %16, align 4
  %504 = load i32, i32* %16, align 4
  %505 = load i32, i32* @KERN_SUCCESS, align 4
  %506 = icmp ne i32 %504, %505
  br i1 %506, label %507, label %538

507:                                              ; preds = %488
  %508 = call %struct.vnode* (...) @current_thread()
  %509 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %508)
  %510 = inttoptr i64 %509 to i8*
  %511 = load %struct.proc*, %struct.proc** %8, align 8
  %512 = getelementptr inbounds %struct.proc, %struct.proc* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 8
  %514 = load %struct.proc*, %struct.proc** %8, align 8
  %515 = getelementptr inbounds %struct.proc, %struct.proc* %514, i32 0, i32 1
  %516 = load i32, i32* %515, align 4
  %517 = load %struct.vnode*, %struct.vnode** %18, align 8
  %518 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %517)
  %519 = inttoptr i64 %518 to i8*
  %520 = load %struct.vnode*, %struct.vnode** %18, align 8
  %521 = getelementptr inbounds %struct.vnode, %struct.vnode* %520, i32 0, i32 3
  %522 = load i32, i32* %521, align 4
  %523 = load i32, i32* %16, align 4
  %524 = sext i32 %523 to i64
  %525 = inttoptr i64 %524 to i8*
  %526 = call i32 @SHARED_REGION_TRACE_ERROR(i8* %525)
  %527 = load i32, i32* %16, align 4
  switch i32 %527, label %535 [
    i32 131, label %528
    i32 128, label %530
    i32 129, label %532
    i32 132, label %534
    i32 130, label %534
  ]

528:                                              ; preds = %507
  %529 = load i32, i32* @EFAULT, align 4
  store i32 %529, i32* %15, align 4
  br label %537

530:                                              ; preds = %507
  %531 = load i32, i32* @EPERM, align 4
  store i32 %531, i32* %15, align 4
  br label %537

532:                                              ; preds = %507
  %533 = load i32, i32* @ENOMEM, align 4
  store i32 %533, i32* %15, align 4
  br label %537

534:                                              ; preds = %507, %507
  br label %535

535:                                              ; preds = %507, %534
  %536 = load i32, i32* @EINVAL, align 4
  store i32 %536, i32* %15, align 4
  br label %537

537:                                              ; preds = %535, %532, %530, %528
  br label %577

538:                                              ; preds = %488
  store i32 0, i32* %15, align 4
  %539 = load %struct.vnode*, %struct.vnode** %18, align 8
  %540 = call i32 @vnode_lock_spin(%struct.vnode* %539)
  %541 = load i32, i32* @VSHARED_DYLD, align 4
  %542 = load %struct.vnode*, %struct.vnode** %18, align 8
  %543 = getelementptr inbounds %struct.vnode, %struct.vnode* %542, i32 0, i32 2
  %544 = load i32, i32* %543, align 8
  %545 = or i32 %544, %541
  store i32 %545, i32* %543, align 8
  %546 = load %struct.vnode*, %struct.vnode** %18, align 8
  %547 = call i32 @vnode_unlock(%struct.vnode* %546)
  %548 = load %struct.vnode*, %struct.vnode** %18, align 8
  %549 = call i32 @vnode_vfsvisflags(%struct.vnode* %548)
  %550 = load i32, i32* @MNT_NOATIME, align 4
  %551 = and i32 %549, %550
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %562, label %553

553:                                              ; preds = %538
  %554 = call i32 @VATTR_INIT(%struct.vnode_attr* %21)
  %555 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %21, i32 0, i32 1
  %556 = call i32 @nanotime(i32* %555)
  %557 = load i32, i32* @va_access_time, align 4
  %558 = call i32 @VATTR_SET_ACTIVE(%struct.vnode_attr* %21, i32 %557)
  %559 = load %struct.vnode*, %struct.vnode** %18, align 8
  %560 = call i32 (...) @vfs_context_current()
  %561 = call i32 @vnode_setattr(%struct.vnode* %559, %struct.vnode_attr* %21, i32 %560)
  br label %562

562:                                              ; preds = %553, %538
  %563 = load %struct.proc*, %struct.proc** %8, align 8
  %564 = getelementptr inbounds %struct.proc, %struct.proc* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 8
  %566 = load i32, i32* @P_NOSHLIB, align 4
  %567 = and i32 %565, %566
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %576

569:                                              ; preds = %562
  %570 = load i32, i32* @P_NOSHLIB, align 4
  %571 = sext i32 %570 to i64
  %572 = xor i64 %571, -1
  %573 = load %struct.proc*, %struct.proc** %8, align 8
  %574 = getelementptr inbounds %struct.proc, %struct.proc* %573, i32 0, i32 0
  %575 = call i32 @OSBitAndAtomic(i64 %572, i32* %574)
  br label %576

576:                                              ; preds = %569, %562
  br label %577

577:                                              ; preds = %576, %537, %468, %412, %358, %327, %299, %273, %243, %216, %187, %177, %145, %118, %93, %66, %44
  %578 = load %struct.vnode*, %struct.vnode** %18, align 8
  %579 = icmp ne %struct.vnode* %578, null
  br i1 %579, label %580, label %583

580:                                              ; preds = %577
  %581 = load %struct.vnode*, %struct.vnode** %18, align 8
  %582 = call i32 @vnode_put(%struct.vnode* %581)
  store %struct.vnode* null, %struct.vnode** %18, align 8
  br label %583

583:                                              ; preds = %580, %577
  %584 = load %struct.fileproc*, %struct.fileproc** %17, align 8
  %585 = icmp ne %struct.fileproc* %584, null
  br i1 %585, label %586, label %591

586:                                              ; preds = %583
  %587 = load %struct.proc*, %struct.proc** %8, align 8
  %588 = load i32, i32* %9, align 4
  %589 = load %struct.fileproc*, %struct.fileproc** %17, align 8
  %590 = call i32 @fp_drop(%struct.proc* %587, i32 %588, %struct.fileproc* %589, i32 0)
  store %struct.fileproc* null, %struct.fileproc** %17, align 8
  br label %591

591:                                              ; preds = %586, %583
  %592 = load %struct.vnode*, %struct.vnode** %20, align 8
  %593 = icmp ne %struct.vnode* %592, null
  br i1 %593, label %594, label %597

594:                                              ; preds = %591
  %595 = load %struct.vnode*, %struct.vnode** %20, align 8
  %596 = call i32 @vnode_put(%struct.vnode* %595)
  store %struct.vnode* null, %struct.vnode** %20, align 8
  br label %597

597:                                              ; preds = %594, %591
  %598 = load %struct.vm_shared_region*, %struct.vm_shared_region** %25, align 8
  %599 = icmp ne %struct.vm_shared_region* %598, null
  br i1 %599, label %600, label %603

600:                                              ; preds = %597
  %601 = load %struct.vm_shared_region*, %struct.vm_shared_region** %25, align 8
  %602 = call i32 @vm_shared_region_deallocate(%struct.vm_shared_region* %601)
  br label %603

603:                                              ; preds = %600, %597
  %604 = call %struct.vnode* (...) @current_thread()
  %605 = call i64 @VM_KERNEL_ADDRPERM(%struct.vnode* %604)
  %606 = inttoptr i64 %605 to i8*
  %607 = load %struct.proc*, %struct.proc** %8, align 8
  %608 = getelementptr inbounds %struct.proc, %struct.proc* %607, i32 0, i32 2
  %609 = load i32, i32* %608, align 8
  %610 = load %struct.proc*, %struct.proc** %8, align 8
  %611 = getelementptr inbounds %struct.proc, %struct.proc* %610, i32 0, i32 1
  %612 = load i32, i32* %611, align 4
  %613 = sext i32 %612 to i64
  %614 = inttoptr i64 %613 to i8*
  %615 = call i32 @SHARED_REGION_TRACE_DEBUG(i8* %614)
  %616 = load i32, i32* %15, align 4
  ret i32 %616
}

declare dso_local i32 @SHARED_REGION_TRACE_DEBUG(i8*) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.vnode*) #1

declare dso_local %struct.vnode* @current_thread(...) #1

declare dso_local i32 @fp_lookup(%struct.proc*, i32, %struct.fileproc**, i32) #1

declare dso_local i32 @SHARED_REGION_TRACE_ERROR(i8*) #1

declare dso_local i64 @FILEGLOB_DTYPE(%struct.TYPE_5__*) #1

declare dso_local i32 @vnode_getwithref(i32) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_WANTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @vnode_getattr(%struct.vnode*, %struct.vnode_attr*, i32) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @vnode_lookup(i32, i32, %struct.vnode**, i32) #1

declare dso_local %struct.vnode* @vnode_parent(%struct.vnode*) #1

declare dso_local i32 @vnode_size(%struct.vnode*, i32*, i32) #1

declare dso_local i64 @ubc_getobject(%struct.vnode*, i32) #1

declare dso_local i32 @cs_system_enforcement(...) #1

declare dso_local i64 @ubc_cs_is_range_codesigned(%struct.vnode*, i32, i32) #1

declare dso_local %struct.vm_shared_region* @vm_shared_region_trim_and_get(i32) #1

declare dso_local i32 @current_task(...) #1

declare dso_local i32 @vm_shared_region_map_file(%struct.vm_shared_region*, i64, %struct.shared_file_mapping_np*, i64, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @vnode_lock_spin(%struct.vnode*) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

declare dso_local i32 @vnode_vfsvisflags(%struct.vnode*) #1

declare dso_local i32 @nanotime(i32*) #1

declare dso_local i32 @VATTR_SET_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i32 @vnode_setattr(%struct.vnode*, %struct.vnode_attr*, i32) #1

declare dso_local i32 @OSBitAndAtomic(i64, i32*) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

declare dso_local i32 @fp_drop(%struct.proc*, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @vm_shared_region_deallocate(%struct.vm_shared_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
