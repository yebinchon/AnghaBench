; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_mman.c_mmap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_mman.c_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8* }
%struct.vnode = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.mmap_args = type { i32, i32, i32, i32, i64, i64 }
%struct.fileproc = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64 }
%struct.vnode_attr = type { i32 }

@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@MEMORY_OBJECT_NULL = common dso_local global i64 0, align 8
@addr = common dso_local global i64 0, align 8
@len = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@PAGE_SIZE_64 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAP_JIT = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_RESILIENT_CODESIGN = common dso_local global i32 0, align 4
@MAP_RESILIENT_MEDIA = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VM_FLAGS_ALIAS_MASK = common dso_local global i32 0, align 4
@VM_FLAGS_SUPERPAGE_MASK = common dso_local global i32 0, align 4
@VM_FLAGS_PURGABLE = common dso_local global i32 0, align 4
@VM_FLAGS_4GB_CHUNK = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@VCHR = common dso_local global i64 0, align 8
@vnpath = common dso_local global i32 0, align 4
@ARG_VNODE1 = common dso_local global i32 0, align 4
@MNT_NOATIME = common dso_local global i32 0, align 4
@va_access_time = common dso_local global i32 0, align 4
@VSTR = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@KAUTH_VNODE_CHECKIMMUTABLE = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_FLAGS_FIXED = common dso_local global i32 0, align 4
@VM_FLAGS_OVERWRITE = common dso_local global i32 0, align 4
@MAP_NOCACHE = common dso_local global i32 0, align 4
@VM_FLAGS_NO_CACHE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@VM_FLAGS_RESILIENT_CODESIGN = common dso_local global i32 0, align 4
@IPC_PORT_NULL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@VM_INHERIT_SHARE = common dso_local global i32 0, align 4
@VM_INHERIT_DEFAULT = common dso_local global i32 0, align 4
@UBC_FLAGS_NONE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DBG_BSD_SC_EXTENDED_INFO = common dso_local global i32 0, align 4
@SYS_mmap = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@DBG_BSD_SC_EXTENDED_INFO2 = common dso_local global i32 0, align 4
@MAXDSIZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmap(%struct.TYPE_18__* %0, %struct.mmap_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.mmap_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fileproc*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_17__, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.vnode_attr, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.mmap_args* %1, %struct.mmap_args** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %19, align 4
  %35 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  store i32 %35, i32* %20, align 4
  %36 = bitcast %struct.TYPE_17__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 bitcast (%struct.TYPE_17__* @VM_MAP_KERNEL_FLAGS_NONE to i8*), i64 8, i1 false)
  %37 = load i64, i64* @MEMORY_OBJECT_NULL, align 8
  store i64 %37, i64* %25, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %38 = load %struct.mmap_args*, %struct.mmap_args** %6, align 8
  %39 = getelementptr inbounds %struct.mmap_args, %struct.mmap_args* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %41 = call i32 (...) @current_map()
  store i32 %41, i32* %13, align 4
  %42 = load %struct.mmap_args*, %struct.mmap_args** %6, align 8
  %43 = getelementptr inbounds %struct.mmap_args, %struct.mmap_args* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %15, align 8
  %46 = load %struct.mmap_args*, %struct.mmap_args** %6, align 8
  %47 = getelementptr inbounds %struct.mmap_args, %struct.mmap_args* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %16, align 8
  %49 = load i64, i64* @addr, align 8
  %50 = load i64, i64* %15, align 8
  %51 = call i32 (i64, ...) @AUDIT_ARG(i64 %49, i64 %50)
  %52 = load i32, i32* @len, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %16, align 8
  %55 = call i32 (i64, ...) @AUDIT_ARG(i64 %53, i64 %54)
  %56 = load i32, i32* %30, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.mmap_args*, %struct.mmap_args** %6, align 8
  %59 = getelementptr inbounds %struct.mmap_args, %struct.mmap_args* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i64, ...) @AUDIT_ARG(i64 %57, i32 %60)
  %62 = load %struct.mmap_args*, %struct.mmap_args** %6, align 8
  %63 = getelementptr inbounds %struct.mmap_args, %struct.mmap_args* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @VM_PROT_ALL, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %69 = load i32, i32* @VM_PROT_WRITE, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %3
  %74 = load i32, i32* @VM_PROT_READ, align 4
  %75 = load i32, i32* %11, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %73, %3
  %78 = load %struct.mmap_args*, %struct.mmap_args** %6, align 8
  %79 = getelementptr inbounds %struct.mmap_args, %struct.mmap_args* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %10, align 4
  %81 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %81, %struct.vnode** %9, align 8
  %82 = load %struct.mmap_args*, %struct.mmap_args** %6, align 8
  %83 = getelementptr inbounds %struct.mmap_args, %struct.mmap_args* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %18, align 8
  %85 = load i64, i64* %18, align 8
  %86 = load i64, i64* %16, align 8
  %87 = add nsw i64 %85, %86
  %88 = load i64, i64* @PAGE_SIZE_64, align 8
  %89 = sub nsw i64 0, %88
  %90 = icmp sgt i64 %87, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %77
  %92 = load i32, i32* @EINVAL, align 4
  store i32 %92, i32* %4, align 4
  br label %781

93:                                               ; preds = %77
  %94 = load i64, i64* %18, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i64 @vm_map_page_mask(i32 %95)
  %97 = and i64 %94, %96
  store i64 %97, i64* %17, align 8
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* %18, align 8
  %100 = sub nsw i64 %99, %98
  store i64 %100, i64* %18, align 8
  %101 = load i64, i64* %17, align 8
  %102 = load i64, i64* %16, align 8
  %103 = add nsw i64 %102, %101
  store i64 %103, i64* %16, align 8
  %104 = load i64, i64* %16, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i64 @vm_map_page_mask(i32 %105)
  %107 = call i64 @vm_map_round_page(i64 %104, i64 %106)
  store i64 %107, i64* %16, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @MAP_JIT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %140

112:                                              ; preds = %93
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @MAP_FIXED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %137, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @MAP_SHARED, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %137, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @MAP_ANON, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @MAP_RESILIENT_CODESIGN, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @MAP_RESILIENT_MEDIA, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132, %127, %122, %117, %112
  %138 = load i32, i32* @EINVAL, align 4
  store i32 %138, i32* %4, align 4
  br label %781

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %93
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @MAP_RESILIENT_CODESIGN, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @MAP_RESILIENT_MEDIA, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %172

150:                                              ; preds = %145, %140
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @MAP_ANON, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @MAP_JIT, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155, %150
  %161 = load i32, i32* @EINVAL, align 4
  store i32 %161, i32* %4, align 4
  br label %781

162:                                              ; preds = %155
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @VM_PROT_WRITE, align 4
  %165 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %166 = or i32 %164, %165
  %167 = and i32 %163, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %162
  %170 = load i32, i32* @EPERM, align 4
  store i32 %170, i32* %4, align 4
  br label %781

171:                                              ; preds = %162
  br label %172

172:                                              ; preds = %171, %145
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @MAP_FIXED, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %172
  %178 = load i64, i64* %17, align 8
  %179 = load i64, i64* %15, align 8
  %180 = sub nsw i64 %179, %178
  store i64 %180, i64* %15, align 8
  %181 = load i64, i64* %15, align 8
  %182 = load i32, i32* %13, align 4
  %183 = call i64 @vm_map_page_mask(i32 %182)
  %184 = and i64 %181, %183
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %177
  %187 = load i32, i32* @EINVAL, align 4
  store i32 %187, i32* %4, align 4
  br label %781

188:                                              ; preds = %177
  br label %189

189:                                              ; preds = %188, %172
  store i32 0, i32* %19, align 4
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* @MAP_ANON, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %222

194:                                              ; preds = %189
  %195 = load i32, i32* @VM_PROT_ALL, align 4
  store i32 %195, i32* %23, align 4
  %196 = load i32, i32* %30, align 4
  %197 = icmp ne i32 %196, -1
  br i1 %197, label %198, label %221

198:                                              ; preds = %194
  %199 = load i32, i32* %30, align 4
  %200 = load i32, i32* @VM_FLAGS_ALIAS_MASK, align 4
  %201 = load i32, i32* @VM_FLAGS_SUPERPAGE_MASK, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @VM_FLAGS_PURGABLE, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @VM_FLAGS_4GB_CHUNK, align 4
  %206 = or i32 %204, %205
  %207 = and i32 %199, %206
  store i32 %207, i32* %19, align 4
  %208 = load i32, i32* %19, align 4
  %209 = load i32, i32* %30, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %198
  %212 = load i32, i32* @EINVAL, align 4
  store i32 %212, i32* %4, align 4
  br label %781

213:                                              ; preds = %198
  %214 = load i32, i32* %19, align 4
  %215 = load i32, i32* %20, align 4
  %216 = call i32 @VM_GET_FLAGS_ALIAS(i32 %214, i32 %215)
  %217 = load i32, i32* @VM_FLAGS_ALIAS_MASK, align 4
  %218 = xor i32 %217, -1
  %219 = load i32, i32* %19, align 4
  %220 = and i32 %219, %218
  store i32 %220, i32* %19, align 4
  br label %221

221:                                              ; preds = %213, %194
  store i8* null, i8** %24, align 8
  store i64 0, i64* %18, align 8
  store i32 1, i32* %27, align 4
  br label %418

222:                                              ; preds = %189
  %223 = call i32 (...) @vfs_context_current()
  store i32 %223, i32* %33, align 4
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* @MAP_JIT, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %222
  %229 = load i32, i32* @EINVAL, align 4
  store i32 %229, i32* %4, align 4
  br label %781

230:                                              ; preds = %222
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %232 = load i32, i32* %30, align 4
  %233 = call i32 @fp_lookup(%struct.TYPE_18__* %231, i32 %232, %struct.fileproc** %8, i32 0)
  store i32 %233, i32* %12, align 4
  %234 = load i32, i32* %12, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %230
  %237 = load i32, i32* %12, align 4
  store i32 %237, i32* %4, align 4
  br label %781

238:                                              ; preds = %230
  store i32 1, i32* %28, align 4
  %239 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %240 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %239, i32 0, i32 0
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %240, align 8
  %242 = call i32 @FILEGLOB_DTYPE(%struct.TYPE_15__* %241)
  switch i32 %242, label %268 [
    i32 133, label %243
    i32 132, label %267
  ]

243:                                              ; preds = %238
  %244 = load i64, i64* %15, align 8
  %245 = trunc i64 %244 to i32
  %246 = load %struct.mmap_args*, %struct.mmap_args** %6, align 8
  %247 = getelementptr inbounds %struct.mmap_args, %struct.mmap_args* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 4
  %248 = load i64, i64* %16, align 8
  %249 = load %struct.mmap_args*, %struct.mmap_args** %6, align 8
  %250 = getelementptr inbounds %struct.mmap_args, %struct.mmap_args* %249, i32 0, i32 5
  store i64 %248, i64* %250, align 8
  %251 = load i32, i32* %11, align 4
  %252 = load %struct.mmap_args*, %struct.mmap_args** %6, align 8
  %253 = getelementptr inbounds %struct.mmap_args, %struct.mmap_args* %252, i32 0, i32 2
  store i32 %251, i32* %253, align 8
  %254 = load i32, i32* %10, align 4
  %255 = load %struct.mmap_args*, %struct.mmap_args** %6, align 8
  %256 = getelementptr inbounds %struct.mmap_args, %struct.mmap_args* %255, i32 0, i32 3
  store i32 %254, i32* %256, align 4
  %257 = load i64, i64* %18, align 8
  %258 = load %struct.mmap_args*, %struct.mmap_args** %6, align 8
  %259 = getelementptr inbounds %struct.mmap_args, %struct.mmap_args* %258, i32 0, i32 4
  store i64 %257, i64* %259, align 8
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %261 = load %struct.mmap_args*, %struct.mmap_args** %6, align 8
  %262 = load i32*, i32** %7, align 8
  %263 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %264 = load i64, i64* %17, align 8
  %265 = trunc i64 %264 to i32
  %266 = call i32 @pshm_mmap(%struct.TYPE_18__* %260, %struct.mmap_args* %261, i32* %262, %struct.fileproc* %263, i32 %265)
  store i32 %266, i32* %29, align 4
  br label %735

267:                                              ; preds = %238
  br label %270

268:                                              ; preds = %238
  %269 = load i32, i32* @EINVAL, align 4
  store i32 %269, i32* %29, align 4
  br label %735

270:                                              ; preds = %267
  %271 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %272 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %271, i32 0, i32 0
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = inttoptr i64 %275 to %struct.vnode*
  store %struct.vnode* %276, %struct.vnode** %9, align 8
  %277 = load %struct.vnode*, %struct.vnode** %9, align 8
  %278 = call i32 @vnode_getwithref(%struct.vnode* %277)
  store i32 %278, i32* %29, align 4
  %279 = load i32, i32* %29, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %270
  br label %735

282:                                              ; preds = %270
  %283 = load %struct.vnode*, %struct.vnode** %9, align 8
  %284 = getelementptr inbounds %struct.vnode, %struct.vnode* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @VREG, align 8
  %287 = icmp ne i64 %285, %286
  br i1 %287, label %288, label %298

288:                                              ; preds = %282
  %289 = load %struct.vnode*, %struct.vnode** %9, align 8
  %290 = getelementptr inbounds %struct.vnode, %struct.vnode* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @VCHR, align 8
  %293 = icmp ne i64 %291, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %288
  %295 = load %struct.vnode*, %struct.vnode** %9, align 8
  %296 = call i32 @vnode_put(%struct.vnode* %295)
  %297 = load i32, i32* @EINVAL, align 4
  store i32 %297, i32* %29, align 4
  br label %735

298:                                              ; preds = %288, %282
  %299 = load i32, i32* @vnpath, align 4
  %300 = sext i32 %299 to i64
  %301 = load %struct.vnode*, %struct.vnode** %9, align 8
  %302 = load i32, i32* @ARG_VNODE1, align 4
  %303 = call i32 (i64, ...) @AUDIT_ARG(i64 %300, %struct.vnode* %301, i32 %302)
  %304 = load %struct.vnode*, %struct.vnode** %9, align 8
  %305 = call i32 @vnode_vfsvisflags(%struct.vnode* %304)
  %306 = load i32, i32* @MNT_NOATIME, align 4
  %307 = and i32 %305, %306
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %318

309:                                              ; preds = %298
  %310 = call i32 @VATTR_INIT(%struct.vnode_attr* %32)
  %311 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %32, i32 0, i32 0
  %312 = call i32 @nanotime(i32* %311)
  %313 = load i32, i32* @va_access_time, align 4
  %314 = call i32 @VATTR_SET_ACTIVE(%struct.vnode_attr* %32, i32 %313)
  %315 = load %struct.vnode*, %struct.vnode** %9, align 8
  %316 = load i32, i32* %33, align 4
  %317 = call i32 @vnode_setattr(%struct.vnode* %315, %struct.vnode_attr* %32, i32 %316)
  br label %318

318:                                              ; preds = %309, %298
  %319 = load %struct.vnode*, %struct.vnode** %9, align 8
  %320 = getelementptr inbounds %struct.vnode, %struct.vnode* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @VCHR, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %330, label %324

324:                                              ; preds = %318
  %325 = load %struct.vnode*, %struct.vnode** %9, align 8
  %326 = getelementptr inbounds %struct.vnode, %struct.vnode* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @VSTR, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %334

330:                                              ; preds = %324, %318
  %331 = load %struct.vnode*, %struct.vnode** %9, align 8
  %332 = call i32 @vnode_put(%struct.vnode* %331)
  %333 = load i32, i32* @ENODEV, align 4
  store i32 %333, i32* %29, align 4
  br label %735

334:                                              ; preds = %324
  %335 = load i32, i32* @VM_PROT_EXECUTE, align 4
  store i32 %335, i32* %23, align 4
  %336 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %337 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %336, i32 0, i32 0
  %338 = load %struct.TYPE_15__*, %struct.TYPE_15__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @FREAD, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %334
  %345 = load i32, i32* @VM_PROT_READ, align 4
  %346 = load i32, i32* %23, align 4
  %347 = or i32 %346, %345
  store i32 %347, i32* %23, align 4
  br label %358

348:                                              ; preds = %334
  %349 = load i32, i32* %11, align 4
  %350 = load i32, i32* @PROT_READ, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %357

353:                                              ; preds = %348
  %354 = load %struct.vnode*, %struct.vnode** %9, align 8
  %355 = call i32 @vnode_put(%struct.vnode* %354)
  %356 = load i32, i32* @EACCES, align 4
  store i32 %356, i32* %29, align 4
  br label %735

357:                                              ; preds = %348
  br label %358

358:                                              ; preds = %357, %344
  %359 = load i32, i32* %10, align 4
  %360 = load i32, i32* @MAP_SHARED, align 4
  %361 = and i32 %359, %360
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %410

363:                                              ; preds = %358
  %364 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %365 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %364, i32 0, i32 0
  %366 = load %struct.TYPE_15__*, %struct.TYPE_15__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @FWRITE, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %399

372:                                              ; preds = %363
  %373 = load %struct.vnode*, %struct.vnode** %9, align 8
  %374 = call i64 @vnode_isswap(%struct.vnode* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %399, label %376

376:                                              ; preds = %372
  %377 = load %struct.vnode*, %struct.vnode** %9, align 8
  %378 = load i32, i32* @KAUTH_VNODE_CHECKIMMUTABLE, align 4
  %379 = load i32, i32* %33, align 4
  %380 = call i32 @vnode_authorize(%struct.vnode* %377, i32* null, i32 %378, i32 %379)
  store i32 %380, i32* %29, align 4
  %381 = load i32, i32* %11, align 4
  %382 = load i32, i32* @PROT_WRITE, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %391

385:                                              ; preds = %376
  %386 = load i32, i32* %29, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %391

388:                                              ; preds = %385
  %389 = load %struct.vnode*, %struct.vnode** %9, align 8
  %390 = call i32 @vnode_put(%struct.vnode* %389)
  br label %735

391:                                              ; preds = %385, %376
  %392 = load i32, i32* %29, align 4
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %398

394:                                              ; preds = %391
  %395 = load i32, i32* @VM_PROT_WRITE, align 4
  %396 = load i32, i32* %23, align 4
  %397 = or i32 %396, %395
  store i32 %397, i32* %23, align 4
  br label %398

398:                                              ; preds = %394, %391
  br label %409

399:                                              ; preds = %372, %363
  %400 = load i32, i32* %11, align 4
  %401 = load i32, i32* @PROT_WRITE, align 4
  %402 = and i32 %400, %401
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %408

404:                                              ; preds = %399
  %405 = load %struct.vnode*, %struct.vnode** %9, align 8
  %406 = call i32 @vnode_put(%struct.vnode* %405)
  %407 = load i32, i32* @EACCES, align 4
  store i32 %407, i32* %29, align 4
  br label %735

408:                                              ; preds = %399
  br label %409

409:                                              ; preds = %408, %398
  br label %414

410:                                              ; preds = %358
  %411 = load i32, i32* @VM_PROT_WRITE, align 4
  %412 = load i32, i32* %23, align 4
  %413 = or i32 %412, %411
  store i32 %413, i32* %23, align 4
  br label %414

414:                                              ; preds = %410, %409
  %415 = load %struct.vnode*, %struct.vnode** %9, align 8
  %416 = bitcast %struct.vnode* %415 to i8*
  store i8* %416, i8** %24, align 8
  br label %417

417:                                              ; preds = %414
  br label %418

418:                                              ; preds = %417, %221
  %419 = load i64, i64* %16, align 8
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %421, label %428

421:                                              ; preds = %418
  %422 = load i32, i32* %27, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %427, label %424

424:                                              ; preds = %421
  %425 = load %struct.vnode*, %struct.vnode** %9, align 8
  %426 = call i32 @vnode_put(%struct.vnode* %425)
  br label %427

427:                                              ; preds = %424, %421
  store i32 0, i32* %29, align 4
  br label %735

428:                                              ; preds = %418
  %429 = load i64, i64* %16, align 8
  %430 = load i32, i32* %13, align 4
  %431 = call i64 @vm_map_page_mask(i32 %430)
  %432 = call i64 @vm_map_round_page(i64 %429, i64 %431)
  store i64 %432, i64* %16, align 8
  %433 = load i64, i64* %18, align 8
  %434 = load i32, i32* %13, align 4
  %435 = call i64 @vm_map_page_mask(i32 %434)
  %436 = and i64 %433, %435
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %446

438:                                              ; preds = %428
  %439 = load i32, i32* %27, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %444, label %441

441:                                              ; preds = %438
  %442 = load %struct.vnode*, %struct.vnode** %9, align 8
  %443 = call i32 @vnode_put(%struct.vnode* %442)
  br label %444

444:                                              ; preds = %441, %438
  %445 = load i32, i32* @EINVAL, align 4
  store i32 %445, i32* %29, align 4
  br label %735

446:                                              ; preds = %428
  %447 = load i32, i32* %10, align 4
  %448 = load i32, i32* @MAP_FIXED, align 4
  %449 = and i32 %447, %448
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %459

451:                                              ; preds = %446
  %452 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %453 = load i32, i32* %19, align 4
  %454 = or i32 %453, %452
  store i32 %454, i32* %19, align 4
  %455 = load i64, i64* %15, align 8
  %456 = load i32, i32* %13, align 4
  %457 = call i64 @vm_map_page_mask(i32 %456)
  %458 = call i64 @vm_map_round_page(i64 %455, i64 %457)
  store i64 %458, i64* %15, align 8
  br label %480

459:                                              ; preds = %446
  %460 = load i64, i64* %15, align 8
  %461 = load i64, i64* %15, align 8
  %462 = load i32, i32* %13, align 4
  %463 = call i64 @vm_map_page_mask(i32 %462)
  %464 = call i64 @vm_map_trunc_page(i64 %461, i64 %463)
  %465 = icmp ne i64 %460, %464
  br i1 %465, label %466, label %474

466:                                              ; preds = %459
  %467 = load i32, i32* %27, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %472, label %469

469:                                              ; preds = %466
  %470 = load %struct.vnode*, %struct.vnode** %9, align 8
  %471 = call i32 @vnode_put(%struct.vnode* %470)
  br label %472

472:                                              ; preds = %469, %466
  %473 = load i32, i32* @EINVAL, align 4
  store i32 %473, i32* %29, align 4
  br label %735

474:                                              ; preds = %459
  %475 = load i32, i32* @VM_FLAGS_FIXED, align 4
  %476 = load i32, i32* @VM_FLAGS_OVERWRITE, align 4
  %477 = or i32 %475, %476
  %478 = load i32, i32* %19, align 4
  %479 = or i32 %478, %477
  store i32 %479, i32* %19, align 4
  br label %480

480:                                              ; preds = %474, %451
  %481 = load i32, i32* %10, align 4
  %482 = load i32, i32* @MAP_NOCACHE, align 4
  %483 = and i32 %481, %482
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %489

485:                                              ; preds = %480
  %486 = load i32, i32* @VM_FLAGS_NO_CACHE, align 4
  %487 = load i32, i32* %19, align 4
  %488 = or i32 %487, %486
  store i32 %488, i32* %19, align 4
  br label %489

489:                                              ; preds = %485, %480
  %490 = load i32, i32* %10, align 4
  %491 = load i32, i32* @MAP_JIT, align 4
  %492 = and i32 %490, %491
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %497

494:                                              ; preds = %489
  %495 = load i8*, i8** @TRUE, align 8
  %496 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  store i8* %495, i8** %496, align 8
  br label %497

497:                                              ; preds = %494, %489
  %498 = load i32, i32* %10, align 4
  %499 = load i32, i32* @MAP_RESILIENT_CODESIGN, align 4
  %500 = and i32 %498, %499
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %506

502:                                              ; preds = %497
  %503 = load i32, i32* @VM_FLAGS_RESILIENT_CODESIGN, align 4
  %504 = load i32, i32* %19, align 4
  %505 = or i32 %504, %503
  store i32 %505, i32* %19, align 4
  br label %506

506:                                              ; preds = %502, %497
  %507 = load i8*, i8** %24, align 8
  %508 = icmp eq i8* %507, null
  br i1 %508, label %509, label %572

509:                                              ; preds = %506
  store i32* null, i32** %26, align 8
  %510 = load i32, i32* %11, align 4
  %511 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %512 = load i32, i32* @VM_PROT_WRITE, align 4
  %513 = or i32 %511, %512
  %514 = and i32 %510, %513
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %520

516:                                              ; preds = %509
  %517 = load i32, i32* @VM_PROT_READ, align 4
  %518 = load i32, i32* %11, align 4
  %519 = or i32 %518, %517
  store i32 %519, i32* %11, align 4
  br label %520

520:                                              ; preds = %516, %509
  %521 = load i32, i32* %23, align 4
  %522 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %523 = load i32, i32* @VM_PROT_WRITE, align 4
  %524 = or i32 %522, %523
  %525 = and i32 %521, %524
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %531

527:                                              ; preds = %520
  %528 = load i32, i32* @VM_PROT_READ, align 4
  %529 = load i32, i32* %23, align 4
  %530 = or i32 %529, %528
  store i32 %530, i32* %23, align 4
  br label %531

531:                                              ; preds = %527, %520
  br label %532

532:                                              ; preds = %568, %531
  %533 = load i32, i32* %13, align 4
  %534 = load i64, i64* %16, align 8
  %535 = load i32, i32* %19, align 4
  %536 = load i32, i32* %20, align 4
  %537 = load i32, i32* @IPC_PORT_NULL, align 4
  %538 = load i8*, i8** @FALSE, align 8
  %539 = load i32, i32* %11, align 4
  %540 = load i32, i32* %23, align 4
  %541 = load i32, i32* %10, align 4
  %542 = load i32, i32* @MAP_SHARED, align 4
  %543 = and i32 %541, %542
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %547

545:                                              ; preds = %532
  %546 = load i32, i32* @VM_INHERIT_SHARE, align 4
  br label %549

547:                                              ; preds = %532
  %548 = load i32, i32* @VM_INHERIT_DEFAULT, align 4
  br label %549

549:                                              ; preds = %547, %545
  %550 = phi i32 [ %546, %545 ], [ %548, %547 ]
  %551 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %552 = load i8*, i8** %551, align 8
  %553 = call i32 @vm_map_enter_mem_object(i32 %533, i64* %15, i64 %534, i32 0, i32 %535, i8* %552, i32 %536, i32 %537, i32 0, i8* %538, i32 %539, i32 %540, i32 %550)
  store i32 %553, i32* %14, align 4
  %554 = load i32, i32* %14, align 4
  %555 = icmp eq i32 %554, 130
  br i1 %555, label %556, label %571

556:                                              ; preds = %549
  %557 = load i32, i32* %10, align 4
  %558 = load i32, i32* @MAP_FIXED, align 4
  %559 = and i32 %557, %558
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %571

561:                                              ; preds = %556
  %562 = load i64, i64* %15, align 8
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %571

564:                                              ; preds = %561
  %565 = load i32, i32* %31, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %31, align 4
  %567 = icmp eq i32 %565, 0
  br i1 %567, label %568, label %571

568:                                              ; preds = %564
  %569 = load i32, i32* %13, align 4
  %570 = call i64 @vm_map_page_size(i32 %569)
  store i64 %570, i64* %15, align 8
  br label %532

571:                                              ; preds = %564, %561, %556, %549
  br label %714

572:                                              ; preds = %506
  %573 = load %struct.vnode*, %struct.vnode** %9, align 8
  %574 = call i64 @vnode_isswap(%struct.vnode* %573)
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %576, label %586

576:                                              ; preds = %572
  store i32* null, i32** %26, align 8
  %577 = load %struct.vnode*, %struct.vnode** %9, align 8
  %578 = call i64 @swapfile_pager_setup(%struct.vnode* %577)
  store i64 %578, i64* %25, align 8
  %579 = load i64, i64* %25, align 8
  %580 = load i64, i64* @MEMORY_OBJECT_NULL, align 8
  %581 = icmp ne i64 %579, %580
  br i1 %581, label %582, label %585

582:                                              ; preds = %576
  %583 = load i64, i64* %25, align 8
  %584 = call i32* @swapfile_pager_control(i64 %583)
  store i32* %584, i32** %26, align 8
  br label %585

585:                                              ; preds = %582, %576
  br label %590

586:                                              ; preds = %572
  %587 = load %struct.vnode*, %struct.vnode** %9, align 8
  %588 = load i32, i32* @UBC_FLAGS_NONE, align 4
  %589 = call i32* @ubc_getobject(%struct.vnode* %587, i32 %588)
  store i32* %589, i32** %26, align 8
  br label %590

590:                                              ; preds = %586, %585
  %591 = load i32*, i32** %26, align 8
  %592 = icmp eq i32* %591, null
  br i1 %592, label %593, label %597

593:                                              ; preds = %590
  %594 = load %struct.vnode*, %struct.vnode** %9, align 8
  %595 = call i32 @vnode_put(%struct.vnode* %594)
  %596 = load i32, i32* @ENOMEM, align 4
  store i32 %596, i32* %29, align 4
  br label %735

597:                                              ; preds = %590
  %598 = load %struct.vnode*, %struct.vnode** %9, align 8
  %599 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %600 = call i32 (...) @current_thread()
  %601 = call i32 @ubc_setthreadcred(%struct.vnode* %598, %struct.TYPE_18__* %599, i32 %600)
  %602 = load i8*, i8** @FALSE, align 8
  store i8* %602, i8** %22, align 8
  %603 = load i32, i32* %10, align 4
  %604 = load i32, i32* @MAP_ANON, align 4
  %605 = load i32, i32* @MAP_SHARED, align 4
  %606 = or i32 %604, %605
  %607 = and i32 %603, %606
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %609, label %611

609:                                              ; preds = %597
  %610 = load i8*, i8** @TRUE, align 8
  store i8* %610, i8** %22, align 8
  br label %611

611:                                              ; preds = %609, %597
  %612 = load i32, i32* %11, align 4
  %613 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %614 = load i32, i32* @VM_PROT_WRITE, align 4
  %615 = or i32 %613, %614
  %616 = and i32 %612, %615
  %617 = icmp ne i32 %616, 0
  br i1 %617, label %618, label %622

618:                                              ; preds = %611
  %619 = load i32, i32* @VM_PROT_READ, align 4
  %620 = load i32, i32* %11, align 4
  %621 = or i32 %620, %619
  store i32 %621, i32* %11, align 4
  br label %622

622:                                              ; preds = %618, %611
  %623 = load i32, i32* %23, align 4
  %624 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %625 = load i32, i32* @VM_PROT_WRITE, align 4
  %626 = or i32 %624, %625
  %627 = and i32 %623, %626
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %633

629:                                              ; preds = %622
  %630 = load i32, i32* @VM_PROT_READ, align 4
  %631 = load i32, i32* %23, align 4
  %632 = or i32 %631, %630
  store i32 %632, i32* %23, align 4
  br label %633

633:                                              ; preds = %629, %622
  br label %634

634:                                              ; preds = %710, %633
  %635 = load i32, i32* %10, align 4
  %636 = load i32, i32* @MAP_RESILIENT_CODESIGN, align 4
  %637 = and i32 %635, %636
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %644, label %639

639:                                              ; preds = %634
  %640 = load i32, i32* %10, align 4
  %641 = load i32, i32* @MAP_RESILIENT_MEDIA, align 4
  %642 = and i32 %640, %641
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %644, label %664

644:                                              ; preds = %639, %634
  %645 = load i32, i32* %11, align 4
  %646 = load i32, i32* @VM_PROT_WRITE, align 4
  %647 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %648 = or i32 %646, %647
  %649 = and i32 %645, %648
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %660

651:                                              ; preds = %644
  %652 = load i32, i32* %27, align 4
  %653 = icmp ne i32 %652, 0
  %654 = xor i1 %653, true
  %655 = zext i1 %654 to i32
  %656 = call i32 @assert(i32 %655)
  %657 = load %struct.vnode*, %struct.vnode** %9, align 8
  %658 = call i32 @vnode_put(%struct.vnode* %657)
  %659 = load i32, i32* @EPERM, align 4
  store i32 %659, i32* %29, align 4
  br label %735

660:                                              ; preds = %644
  %661 = load i32, i32* %11, align 4
  %662 = load i32, i32* %23, align 4
  %663 = and i32 %662, %661
  store i32 %663, i32* %23, align 4
  br label %664

664:                                              ; preds = %660, %639
  store i64 0, i64* %34, align 8
  %665 = load i64, i64* %16, align 8
  %666 = load i64, i64* %18, align 8
  %667 = call i64 @os_add_overflow(i64 %665, i64 %666, i64* %34)
  %668 = icmp ne i64 %667, 0
  br i1 %668, label %669, label %673

669:                                              ; preds = %664
  %670 = load %struct.vnode*, %struct.vnode** %9, align 8
  %671 = call i32 @vnode_put(%struct.vnode* %670)
  %672 = load i32, i32* @EINVAL, align 4
  store i32 %672, i32* %29, align 4
  br label %735

673:                                              ; preds = %664
  %674 = load i32, i32* %13, align 4
  %675 = load i64, i64* %16, align 8
  %676 = load i32, i32* %19, align 4
  %677 = load i32, i32* %20, align 4
  %678 = load i32*, i32** %26, align 8
  %679 = load i64, i64* %18, align 8
  %680 = load i8*, i8** %22, align 8
  %681 = load i32, i32* %11, align 4
  %682 = load i32, i32* %23, align 4
  %683 = load i32, i32* %10, align 4
  %684 = load i32, i32* @MAP_SHARED, align 4
  %685 = and i32 %683, %684
  %686 = icmp ne i32 %685, 0
  br i1 %686, label %687, label %689

687:                                              ; preds = %673
  %688 = load i32, i32* @VM_INHERIT_SHARE, align 4
  br label %691

689:                                              ; preds = %673
  %690 = load i32, i32* @VM_INHERIT_DEFAULT, align 4
  br label %691

691:                                              ; preds = %689, %687
  %692 = phi i32 [ %688, %687 ], [ %690, %689 ]
  %693 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %694 = load i8*, i8** %693, align 8
  %695 = call i32 @vm_map_enter_mem_object_control(i32 %674, i64* %15, i64 %675, i32 0, i32 %676, i8* %694, i32 %677, i32* %678, i64 %679, i8* %680, i32 %681, i32 %682, i32 %692)
  store i32 %695, i32* %14, align 4
  %696 = load i32, i32* %14, align 4
  %697 = icmp eq i32 %696, 130
  br i1 %697, label %698, label %713

698:                                              ; preds = %691
  %699 = load i32, i32* %10, align 4
  %700 = load i32, i32* @MAP_FIXED, align 4
  %701 = and i32 %699, %700
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %703, label %713

703:                                              ; preds = %698
  %704 = load i64, i64* %15, align 8
  %705 = icmp ne i64 %704, 0
  br i1 %705, label %706, label %713

706:                                              ; preds = %703
  %707 = load i32, i32* %31, align 4
  %708 = add nsw i32 %707, 1
  store i32 %708, i32* %31, align 4
  %709 = icmp eq i32 %707, 0
  br i1 %709, label %710, label %713

710:                                              ; preds = %706
  %711 = load i32, i32* %13, align 4
  %712 = call i64 @vm_map_page_size(i32 %711)
  store i64 %712, i64* %15, align 8
  br label %634

713:                                              ; preds = %706, %703, %698, %691
  br label %714

714:                                              ; preds = %713, %571
  %715 = load i32, i32* %27, align 4
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %720, label %717

717:                                              ; preds = %714
  %718 = load %struct.vnode*, %struct.vnode** %9, align 8
  %719 = call i32 @vnode_put(%struct.vnode* %718)
  br label %720

720:                                              ; preds = %717, %714
  %721 = load i32, i32* %14, align 4
  switch i32 %721, label %732 [
    i32 128, label %722
    i32 131, label %728
    i32 130, label %728
    i32 129, label %730
  ]

722:                                              ; preds = %720
  %723 = load i64, i64* %15, align 8
  %724 = load i64, i64* %17, align 8
  %725 = add nsw i64 %723, %724
  %726 = trunc i64 %725 to i32
  %727 = load i32*, i32** %7, align 8
  store i32 %726, i32* %727, align 4
  store i32 0, i32* %29, align 4
  br label %734

728:                                              ; preds = %720, %720
  %729 = load i32, i32* @ENOMEM, align 4
  store i32 %729, i32* %29, align 4
  br label %734

730:                                              ; preds = %720
  %731 = load i32, i32* @EACCES, align 4
  store i32 %731, i32* %29, align 4
  br label %734

732:                                              ; preds = %720
  %733 = load i32, i32* @EINVAL, align 4
  store i32 %733, i32* %29, align 4
  br label %734

734:                                              ; preds = %732, %730, %728, %722
  br label %735

735:                                              ; preds = %734, %669, %651, %593, %472, %444, %427, %404, %388, %353, %330, %294, %281, %268, %243
  %736 = load i64, i64* %25, align 8
  %737 = load i64, i64* @MEMORY_OBJECT_NULL, align 8
  %738 = icmp ne i64 %736, %737
  br i1 %738, label %739, label %742

739:                                              ; preds = %735
  %740 = load i64, i64* %25, align 8
  %741 = call i32 @memory_object_deallocate(i64 %740)
  br label %742

742:                                              ; preds = %739, %735
  %743 = load i32, i32* %28, align 4
  %744 = icmp ne i32 %743, 0
  br i1 %744, label %745, label %750

745:                                              ; preds = %742
  %746 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %747 = load i32, i32* %30, align 4
  %748 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %749 = call i32 @fp_drop(%struct.TYPE_18__* %746, i32 %747, %struct.fileproc* %748, i32 0)
  br label %750

750:                                              ; preds = %745, %742
  %751 = load i32, i32* @DBG_BSD_SC_EXTENDED_INFO, align 4
  %752 = load i32, i32* @SYS_mmap, align 4
  %753 = call i32 @BSDDBG_CODE(i32 %751, i32 %752)
  %754 = load i32, i32* @DBG_FUNC_NONE, align 4
  %755 = or i32 %753, %754
  %756 = load i32, i32* %30, align 4
  %757 = load i32*, i32** %7, align 8
  %758 = load i32, i32* %757, align 4
  %759 = load i64, i64* %16, align 8
  %760 = trunc i64 %759 to i32
  %761 = load i32, i32* %29, align 4
  %762 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %755, i32 %756, i32 %758, i32 %760, i32 %761, i32 0)
  %763 = load i32, i32* @DBG_BSD_SC_EXTENDED_INFO2, align 4
  %764 = load i32, i32* @SYS_mmap, align 4
  %765 = call i32 @BSDDBG_CODE(i32 %763, i32 %764)
  %766 = load i32, i32* @DBG_FUNC_NONE, align 4
  %767 = or i32 %765, %766
  %768 = load i32*, i32** %7, align 8
  %769 = load i32, i32* %768, align 4
  %770 = ashr i32 %769, 32
  %771 = load i64, i64* %16, align 8
  %772 = ashr i64 %771, 32
  %773 = trunc i64 %772 to i32
  %774 = load i64, i64* %18, align 8
  %775 = ashr i64 %774, 32
  %776 = trunc i64 %775 to i32
  %777 = load i64, i64* %18, align 8
  %778 = trunc i64 %777 to i32
  %779 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %767, i32 %770, i32 %773, i32 %776, i32 %778, i32 0)
  %780 = load i32, i32* %29, align 4
  store i32 %780, i32* %4, align 4
  br label %781

781:                                              ; preds = %750, %236, %228, %211, %186, %169, %160, %137, %91
  %782 = load i32, i32* %4, align 4
  ret i32 %782
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @current_map(...) #2

declare dso_local i32 @AUDIT_ARG(i64, ...) #2

declare dso_local i64 @vm_map_page_mask(i32) #2

declare dso_local i64 @vm_map_round_page(i64, i64) #2

declare dso_local i32 @VM_GET_FLAGS_ALIAS(i32, i32) #2

declare dso_local i32 @vfs_context_current(...) #2

declare dso_local i32 @fp_lookup(%struct.TYPE_18__*, i32, %struct.fileproc**, i32) #2

declare dso_local i32 @FILEGLOB_DTYPE(%struct.TYPE_15__*) #2

declare dso_local i32 @pshm_mmap(%struct.TYPE_18__*, %struct.mmap_args*, i32*, %struct.fileproc*, i32) #2

declare dso_local i32 @vnode_getwithref(%struct.vnode*) #2

declare dso_local i32 @vnode_put(%struct.vnode*) #2

declare dso_local i32 @vnode_vfsvisflags(%struct.vnode*) #2

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #2

declare dso_local i32 @nanotime(i32*) #2

declare dso_local i32 @VATTR_SET_ACTIVE(%struct.vnode_attr*, i32) #2

declare dso_local i32 @vnode_setattr(%struct.vnode*, %struct.vnode_attr*, i32) #2

declare dso_local i64 @vnode_isswap(%struct.vnode*) #2

declare dso_local i32 @vnode_authorize(%struct.vnode*, i32*, i32, i32) #2

declare dso_local i64 @vm_map_trunc_page(i64, i64) #2

declare dso_local i32 @vm_map_enter_mem_object(i32, i64*, i64, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i32) #2

declare dso_local i64 @vm_map_page_size(i32) #2

declare dso_local i64 @swapfile_pager_setup(%struct.vnode*) #2

declare dso_local i32* @swapfile_pager_control(i64) #2

declare dso_local i32* @ubc_getobject(%struct.vnode*, i32) #2

declare dso_local i32 @ubc_setthreadcred(%struct.vnode*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @current_thread(...) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @os_add_overflow(i64, i64, i64*) #2

declare dso_local i32 @vm_map_enter_mem_object_control(i32, i64*, i64, i32, i32, i8*, i32, i32*, i64, i8*, i32, i32, i32) #2

declare dso_local i32 @memory_object_deallocate(i64) #2

declare dso_local i32 @fp_drop(%struct.TYPE_18__*, i32, %struct.fileproc*, i32) #2

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @BSDDBG_CODE(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
